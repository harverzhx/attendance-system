<?php

namespace App\helpers;

class Validator
{
    private array $errors = [];

    public function required($value, string $field): self
    {
        if (empty($value)) {
            $this->errors[] = "$field is required";
        }
        return $this;
    }

    public function email($value, string $field): self
    {
        if (!empty($value) && !filter_var($value, FILTER_VALIDATE_EMAIL)) {
            $this->errors[] = "$field must be a valid email";
        }
        return $this;
    }

    public function minLength($value, int $min, string $field): self
    {
        if (!empty($value) && strlen($value) < $min) {
            $this->errors[] = "$field must be at least $min characters";
        }
        return $this;
    }

    public function unique($value, string $table, string $column, string $field): self
    {
        if (!empty($value)) {
            $db = \App\config\Database::getInstance()->getConnection();
            $stmt = $db->prepare("SELECT COUNT(*) FROM $table WHERE $column = ?");
            $stmt->execute([$value]);
            if ($stmt->fetchColumn() > 0) {
                $this->errors[] = "$field already exists";
            }
        }
        return $this;
    }

    public function isValid(): bool
    {
        return empty($this->errors);
    }

    public function getErrors(): array
    {
        return $this->errors;
    }
}
