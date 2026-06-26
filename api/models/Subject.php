<?php

namespace App\models;

class Subject extends Database
{
    public static function getAll(): array
    {
        $db = self::getDb();
        return $db->query("SELECT * FROM subjects ORDER BY subject_name")->fetchAll();
    }

    public static function getById(int $id): ?array
    {
        $db = self::getDb();
        $stmt = $db->prepare("SELECT * FROM subjects WHERE subject_id = ?");
        $stmt->execute([$id]);
        return $stmt->fetch() ?: null;
    }

    private static function generateCode(): string
    {
        $db = self::getDb();
        $stmt = $db->query("SELECT COALESCE(MAX(CAST(SPLIT_PART(subject_code, '-', 2) AS INTEGER)), 0) + 1 FROM subjects");
        $next = (int)$stmt->fetchColumn();
        return 'SUBJ-' . str_pad($next, 3, '0', STR_PAD_LEFT);
    }

    public static function create(array $data): ?int
    {
        $db = self::getDb();
        $code = !empty($data['subject_code']) ? strtoupper(trim($data['subject_code'])) : self::generateCode();
        $stmt = $db->prepare("INSERT INTO subjects (subject_name, subject_code, description, category) VALUES (?, ?, ?, ?) RETURNING subject_id");
        $stmt->execute([$data['subject_name'], $code, $data['description'] ?? null, $data['category'] ?? 'Other']);
        return $stmt->fetchColumn() ?: null;
    }

    public static function update(int $id, array $data): bool
    {
        $db = self::getDb();
        $fields = [];
        $params = [];
        foreach (['subject_name', 'subject_code', 'description', 'status', 'category'] as $f) {
            if (isset($data[$f])) { $fields[] = "$f = ?"; $params[] = $data[$f]; }
        }
        if (empty($fields)) return false;
        $fields[] = "updated_at = CURRENT_TIMESTAMP";
        $params[] = $id;
        $stmt = $db->prepare("UPDATE subjects SET " . implode(', ', $fields) . " WHERE subject_id = ?");
        return $stmt->execute($params);
    }

    public static function delete(int $id): bool
    {
        $db = self::getDb();
        $stmt = $db->prepare("DELETE FROM subjects WHERE subject_id = ?");
        return $stmt->execute([$id]);
    }

    public static function getTeacherSubjects(int $teacherId, ?int $sectionId = null): array
    {
        $db = self::getDb();
        $sql = "
            SELECT ts.id, ts.section_id, sec.grade_level, sec.section_name,
                   ts.subject_id, sub.subject_name, sub.subject_code
            FROM teacher_subjects ts
            JOIN sections sec ON ts.section_id = sec.section_id
            JOIN subjects sub ON ts.subject_id = sub.subject_id
            WHERE ts.teacher_id = ?
        ";
        $params = [$teacherId];
        if ($sectionId) {
            $sql .= " AND ts.section_id = ?";
            $params[] = $sectionId;
        }
        $sql .= " ORDER BY sec.grade_level, sec.section_name, sub.subject_name";
        $stmt = $db->prepare($sql);
        $stmt->execute($params);
        return $stmt->fetchAll();
    }

    const PRESET_SUBJECTS = [
        'JHS Core' => ['Filipino','English','Mathematics','Science','Araling Panlipunan','MAPEH','Edukasyon sa Pagpapakatao','TLE','Computer Science','Values Education','Music','Arts','Physical Education','Health'],
        'JHS Math & Science' => ['Algebra','Geometry','Trigonometry','Statistics and Probability','Biology','Chemistry','Physics','Earth Science'],
        'SHS Core' => ['Oral Communication','Reading and Writing','Komunikasyon at Pananaliksik sa Wika at Kulturang Filipino','21st Century Literature from the Philippines and the World','Contemporary Philippine Arts from the Regions','Media and Information Literacy','General Mathematics','Earth and Life Science','Physical Science','Personal Development','Understanding Culture, Society and Politics','Introduction to Philosophy of the Human Person'],
        'SHS Applied' => ['English for Academic and Professional Purposes','Practical Research 1','Practical Research 2','Filipino sa Piling Larangan','Empowerment Technologies','Inquiries, Investigation and Immersion'],
        'SHS ABM' => ['Organization and Management','Business Mathematics','Principles of Marketing','Applied Economics','Business Ethics and Social Responsibility','Fundamentals of Accountancy, Business and Management 1','Fundamentals of Accountancy, Business and Management 2'],
        'SHS HUMSS' => ['Creative Writing','Creative Nonfiction','World Religions and Belief Systems','Philippine Politics and Governance','Community Engagement, Solidarity, and Citizenship','Trends, Networks, and Critical Thinking in the 21st Century','Disciplines and Ideas in the Social Sciences','Disciplines and Ideas in the Applied Social Sciences'],
        'SHS STEM' => ['Pre-Calculus','Basic Calculus','General Biology 1','General Biology 2','General Chemistry 1','General Chemistry 2','General Physics 1','General Physics 2'],
        'SHS TVL' => ['Bread and Pastry Production','Food and Beverage Services','Cookery','Housekeeping','Front Office Services','Computer Systems Servicing','Programming','Animation','Dressmaking','Tailoring','Electrical Installation and Maintenance','Electronic Products Assembly and Servicing'],
    ];

    public static function seedPresets(): int
    {
        $db = self::getDb();
        $count = 0;
        foreach (self::PRESET_SUBJECTS as $category => $names) {
            foreach ($names as $name) {
                $stmt = $db->prepare("SELECT subject_id FROM subjects WHERE subject_name = ?");
                $stmt->execute([$name]);
                if (!$stmt->fetch()) {
                    $code = self::generateCode();
                    $ins = $db->prepare("INSERT INTO subjects (subject_name, subject_code, category) VALUES (?, ?, ?)");
                    $ins->execute([$name, $code, $category]);
                    $count++;
                }
            }
        }
        return $count;
    }

    public static function assign(int $teacherId, int $sectionId, int $subjectId): bool
    {
        $db = self::getDb();
        $stmt = $db->prepare("INSERT INTO teacher_subjects (teacher_id, section_id, subject_id) VALUES (?, ?, ?) ON CONFLICT DO NOTHING");
        return $stmt->execute([$teacherId, $sectionId, $subjectId]);
    }

    public static function unassign(int $teacherId, int $sectionId, int $subjectId): bool
    {
        $db = self::getDb();
        $stmt = $db->prepare("DELETE FROM teacher_subjects WHERE teacher_id = ? AND section_id = ? AND subject_id = ?");
        return $stmt->execute([$teacherId, $sectionId, $subjectId]);
    }

}
