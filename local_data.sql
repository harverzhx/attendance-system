--
-- PostgreSQL database dump
--

\restrict 0LGxfxNJ4X2vlXYxNUai9SBAl7wehhVZeShxkTauqnQKdxSN0c02bNcvJzUtyZX

-- Dumped from database version 18.3
-- Dumped by pg_dump version 18.3

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Data for Name: parents; Type: TABLE DATA; Schema: school_gate; Owner: -
--

INSERT INTO school_gate.parents (parent_id, first_name, middle_name, last_name, relationship, email, contact_number, username, password, status, created_at, updated_at) VALUES (1, 'Maria', NULL, 'Cruz', NULL, 'maria.cruz@email.com', '09171234567', 'parent1', '$2y$10$TsdlwWI./97h7XiyECvtJ.Bplb1xpzYVFtqGeDkOsfvqd/el0S9iG', 'Active', '2026-06-11 14:30:50.467072', '2026-06-11 14:30:50.467072');
INSERT INTO school_gate.parents (parent_id, first_name, middle_name, last_name, relationship, email, contact_number, username, password, status, created_at, updated_at) VALUES (2, 'Jose', NULL, 'Santos', NULL, 'jose.santos@email.com', '09171234568', 'parent2', '$2y$10$6VxWNbMllhsQkOt2ui23/erCrUHUOAMg6d7/UGwWgpCYJ0.hgXKIO', 'Active', '2026-06-11 14:30:50.596528', '2026-06-11 14:30:50.596528');
INSERT INTO school_gate.parents (parent_id, first_name, middle_name, last_name, relationship, email, contact_number, username, password, status, created_at, updated_at) VALUES (3, 'Ana', NULL, 'Garcia', NULL, 'ana.garcia@email.com', '09171234569', 'parent3', '$2y$10$z00clODtJJn1UhsjVAa3d.xgMWmUY073mbSV3ZaWTy1eDjZOADUie', 'Active', '2026-06-11 14:30:50.749224', '2026-06-11 14:30:50.749224');
INSERT INTO school_gate.parents (parent_id, first_name, middle_name, last_name, relationship, email, contact_number, username, password, status, created_at, updated_at) VALUES (4, 'Pedro', NULL, 'Ramos', NULL, 'pedro.ramos@email.com', '09171234570', 'parent4', '$2y$10$dDGYXSaINNqrInsN90oteOIni/0rHWhuM2ukjn5sNLnW.bWrDdngi', 'Active', '2026-06-11 14:30:50.876234', '2026-06-11 14:30:50.876234');
INSERT INTO school_gate.parents (parent_id, first_name, middle_name, last_name, relationship, email, contact_number, username, password, status, created_at, updated_at) VALUES (5, 'Luisa', NULL, 'Torres', NULL, 'luisa.torres@email.com', '09171234571', 'parent5', '$2y$10$ocHTR4yEREDOH/XF8j60luqQi//Jiow83iuOZQdTao7TbNqmugHiW', 'Active', '2026-06-11 14:30:50.99476', '2026-06-11 14:30:50.99476');
INSERT INTO school_gate.parents (parent_id, first_name, middle_name, last_name, relationship, email, contact_number, username, password, status, created_at, updated_at) VALUES (29, 'Deletable_1782387354085', NULL, 'Parentson', 'Parent', 'deletable_1782387354085@test.com', '+639123456789', 'deletableuser_1782387354085', '$2y$10$S.qVeB.5Udukrh7EhcZ5F.d2CBGfD9cp5SFtdOWIeYF9L8Z2asISS', 'Active', '2026-06-25 19:35:56.256667', '2026-06-25 19:35:56.256667');
INSERT INTO school_gate.parents (parent_id, first_name, middle_name, last_name, relationship, email, contact_number, username, password, status, created_at, updated_at) VALUES (6, 'Eren Grace', 'Sacal', 'Pactol', 'Parent', 'ervinpactol@gmail.com', '09544294635', 'eren', '$2y$10$MpjiLxGvMnUl5rfNJQ2NvOF9LoLJHln0UToEnYQ4OxjbIjKspjK1G', 'Active', '2026-06-14 17:01:48.735538', '2026-06-14 23:55:03.375559');
INSERT INTO school_gate.parents (parent_id, first_name, middle_name, last_name, relationship, email, contact_number, username, password, status, created_at, updated_at) VALUES (7, 'Rexon', 'Dampayla', 'Baje', 'Parent', 'rexon@gmail.com', '09000000012', 'Rexon', '$2y$10$Z4atOco7aNOlzhPIqQHK0uuoI8aq34Y7zQ2xS5LC/s8lotDVPx4gK', 'Active', '2026-06-17 18:46:57.517161', '2026-06-17 18:46:57.517161');
INSERT INTO school_gate.parents (parent_id, first_name, middle_name, last_name, relationship, email, contact_number, username, password, status, created_at, updated_at) VALUES (8, 'Parent', NULL, 'Tester', 'Father', 'parenttester1781872560@test.com', '09170000003', 'parenttester', '$2y$10$Brw54iXHpYXe8eoLtwFBguTdDYT5jZBZMZb.xdn6xWqtvpGoi2vxG', 'Active', '2026-06-19 12:36:02.670948', '2026-06-19 12:36:02.670948');
INSERT INTO school_gate.parents (parent_id, first_name, middle_name, last_name, relationship, email, contact_number, username, password, status, created_at, updated_at) VALUES (9, 'Test_1781870439175', NULL, 'Parentson', 'Parent', 'parent_1781870439175@test.com', '+639123456789', 'parentuser_1781870439175', '$2y$10$weZSbvmgdVFxdbmsInypUOqn.qQ3YSYTWNJ5fMMtWQUGfH1dV/Moq', 'Active', '2026-06-19 20:00:42.225002', '2026-06-19 20:00:42.225002');
INSERT INTO school_gate.parents (parent_id, first_name, middle_name, last_name, relationship, email, contact_number, username, password, status, created_at, updated_at) VALUES (10, 'Editable_1781870476844', NULL, 'Parentson', 'Guardian', 'editable_1781870476844@test.com', '+639123456789', 'editableuser_1781870476844', '$2y$10$HL/55CVDaFrKdkcWXYI/sO7iE1/hyFJBEOS8jP260EKE6e1vaG9qG', 'Active', '2026-06-19 20:01:19.426947', '2026-06-19 20:01:19.426947');
INSERT INTO school_gate.parents (parent_id, first_name, middle_name, last_name, relationship, email, contact_number, username, password, status, created_at, updated_at) VALUES (11, 'Deletable_1781870499245', NULL, 'Parentson', 'Parent', 'deletable_1781870499245@test.com', '+639123456789', 'deletableuser_1781870499245', '$2y$10$EHQzbzV0SVKPJVtfDDF3o.fGeDWF3sfQhHsGS260MnRnbm.dd.uXW', 'Active', '2026-06-19 20:01:57.69139', '2026-06-19 20:01:57.69139');
INSERT INTO school_gate.parents (parent_id, first_name, middle_name, last_name, relationship, email, contact_number, username, password, status, created_at, updated_at) VALUES (12, 'Test_1781888673375', NULL, 'Parentson', 'Parent', 'parent_1781888673375@test.com', '+639123456789', 'parentuser_1781888673375', '$2y$10$SFBj3So0Z1TfpMErgyC/R.Cz1futcHmmKp9RiuS/o1c3qAelG/4qi', 'Active', '2026-06-20 01:04:35.190691', '2026-06-20 01:04:35.190691');
INSERT INTO school_gate.parents (parent_id, first_name, middle_name, last_name, relationship, email, contact_number, username, password, status, created_at, updated_at) VALUES (13, 'Editable_1781888710250', NULL, 'Parentson', 'Guardian', 'editable_1781888710250@test.com', '+639123456789', 'editableuser_1781888710250', '$2y$10$.p2r3wEBcDuXmVpAB7pGk.G8wmRSBdzJtckXswRj14LP9IB4eCS3O', 'Active', '2026-06-20 01:05:11.15077', '2026-06-20 01:05:11.15077');
INSERT INTO school_gate.parents (parent_id, first_name, middle_name, last_name, relationship, email, contact_number, username, password, status, created_at, updated_at) VALUES (14, 'Deletable_1781888730484', NULL, 'Parentson', 'Parent', 'deletable_1781888730484@test.com', '+639123456789', 'deletableuser_1781888730484', '$2y$10$XkB5BVfBVBUyDxsSI1F/BuViUswHglBBXjYIBUHM/G.GfNZHp..li', 'Active', '2026-06-20 01:05:31.369728', '2026-06-20 01:05:31.369728');
INSERT INTO school_gate.parents (parent_id, first_name, middle_name, last_name, relationship, email, contact_number, username, password, status, created_at, updated_at) VALUES (15, 'Test_1781916936414', NULL, 'Parentson', 'Parent', 'parent_1781916936414@test.com', '+639123456789', 'parentuser_1781916936414', '$2y$10$8dz9bXr1f4dlRE8gBEjyTOPz.kgiR1qFm/E3xC9VOrSoHn.Ay3y4O', 'Active', '2026-06-20 08:55:37.526041', '2026-06-20 08:55:37.526041');
INSERT INTO school_gate.parents (parent_id, first_name, middle_name, last_name, relationship, email, contact_number, username, password, status, created_at, updated_at) VALUES (16, 'Editable_1781916972862', NULL, 'Parentson', 'Guardian', 'editable_1781916972862@test.com', '+639123456789', 'editableuser_1781916972862', '$2y$10$mLgNdO0BnROlF8uBDFtkfOAiWXTQS4j3w7Xp3J1.lI.4ENONMYOIO', 'Active', '2026-06-20 08:56:13.689643', '2026-06-20 08:56:13.689643');
INSERT INTO school_gate.parents (parent_id, first_name, middle_name, last_name, relationship, email, contact_number, username, password, status, created_at, updated_at) VALUES (17, 'Deletable_1781916993180', NULL, 'Parentson', 'Parent', 'deletable_1781916993180@test.com', '+639123456789', 'deletableuser_1781916993180', '$2y$10$GNdD9NB/BbnfIev/lOSlIuYh4OfVewKZz5TP4s/L1S5/gDTUkoxNG', 'Active', '2026-06-20 08:56:34.148927', '2026-06-20 08:56:34.148927');
INSERT INTO school_gate.parents (parent_id, first_name, middle_name, last_name, relationship, email, contact_number, username, password, status, created_at, updated_at) VALUES (18, 'Test_1781931470302', NULL, 'Parentson', 'Parent', 'parent_1781931470302@test.com', '+639123456789', 'parentuser_1781931470302', '$2y$10$zBFnaM8ddQqxTdrreRzf/.v5V.ywvg9MDyrpmATUTgl4ljY7/qQhW', 'Active', '2026-06-20 12:57:51.258318', '2026-06-20 12:57:51.258318');
INSERT INTO school_gate.parents (parent_id, first_name, middle_name, last_name, relationship, email, contact_number, username, password, status, created_at, updated_at) VALUES (19, 'Editable_1781931507428', NULL, 'Parentson', 'Guardian', 'editable_1781931507428@test.com', '+639123456789', 'editableuser_1781931507428', '$2y$10$PJOb5yAXs.lqoedfhsIY1uyHkOfKlk7sUSq5e1p6DZfAk1EHysIcy', 'Active', '2026-06-20 12:58:28.430233', '2026-06-20 12:58:28.430233');
INSERT INTO school_gate.parents (parent_id, first_name, middle_name, last_name, relationship, email, contact_number, username, password, status, created_at, updated_at) VALUES (20, 'Deletable_1781931528947', NULL, 'Parentson', 'Parent', 'deletable_1781931528947@test.com', '+639123456789', 'deletableuser_1781931528947', '$2y$10$XNmTcM8zhQBqcpDwzeqKb.mvYEYarFrG.1c7hxfO26cI8KjrbfS1a', 'Active', '2026-06-20 12:58:49.974864', '2026-06-20 12:58:49.974864');
INSERT INTO school_gate.parents (parent_id, first_name, middle_name, last_name, relationship, email, contact_number, username, password, status, created_at, updated_at) VALUES (21, 'Test_1781934750910', NULL, 'Parentson', 'Parent', 'parent_1781934750910@test.com', '+639123456789', 'parentuser_1781934750910', '$2y$10$4MpP72yazQQBQU4o6L.2FugTCNJAoMnSs8u4Tho6P/Mzwp0JDXokG', 'Active', '2026-06-20 13:52:31.780068', '2026-06-20 13:52:31.780068');
INSERT INTO school_gate.parents (parent_id, first_name, middle_name, last_name, relationship, email, contact_number, username, password, status, created_at, updated_at) VALUES (22, 'Editable_1781934785876', NULL, 'Parentson', 'Guardian', 'editable_1781934785876@test.com', '+639123456789', 'editableuser_1781934785876', '$2y$10$Mc9vqpM6cw6i1P7OIEmK2eBZL.JEH7sw.e7OesR3qbqk0bPnDPRvO', 'Active', '2026-06-20 13:53:06.906489', '2026-06-20 13:53:06.906489');
INSERT INTO school_gate.parents (parent_id, first_name, middle_name, last_name, relationship, email, contact_number, username, password, status, created_at, updated_at) VALUES (23, 'Deletable_1781934805876', NULL, 'Parentson', 'Parent', 'deletable_1781934805876@test.com', '+639123456789', 'deletableuser_1781934805876', '$2y$10$Dfv3r0li0LzNzTFoN1MrPOVVvRUyApADSzjMHFWfXdv/h2FSDAsfm', 'Active', '2026-06-20 13:53:26.606372', '2026-06-20 13:53:26.606372');
INSERT INTO school_gate.parents (parent_id, first_name, middle_name, last_name, relationship, email, contact_number, username, password, status, created_at, updated_at) VALUES (24, 'Test_1781938059207', NULL, 'Parentson', 'Parent', 'parent_1781938059207@test.com', '+639123456789', 'parentuser_1781938059207', '$2y$10$zQgLwekVZo8YZF2lu8U0tOzCxVpFPuN5TfN.dqM46ANVbYfkQqra6', 'Active', '2026-06-20 14:47:40.191815', '2026-06-20 14:47:40.191815');
INSERT INTO school_gate.parents (parent_id, first_name, middle_name, last_name, relationship, email, contact_number, username, password, status, created_at, updated_at) VALUES (25, 'Editable_1781938094687', NULL, 'Parentson', 'Guardian', 'editable_1781938094687@test.com', '+639123456789', 'editableuser_1781938094687', '$2y$10$5iU64rKD6LY/8rTg1tL5q.aJqSs40HJJx6e5jT3MpPcl7hNkKDStq', 'Active', '2026-06-20 14:48:15.456778', '2026-06-20 14:48:15.456778');
INSERT INTO school_gate.parents (parent_id, first_name, middle_name, last_name, relationship, email, contact_number, username, password, status, created_at, updated_at) VALUES (26, 'Deletable_1781938114850', NULL, 'Parentson', 'Parent', 'deletable_1781938114850@test.com', '+639123456789', 'deletableuser_1781938114850', '$2y$10$.5PLpaPZrjoGXZdRHc5bwOEVlY4BgdO0a48wkHZme2nMW8w4fEO1q', 'Active', '2026-06-20 14:48:35.721711', '2026-06-20 14:48:35.721711');
INSERT INTO school_gate.parents (parent_id, first_name, middle_name, last_name, relationship, email, contact_number, username, password, status, created_at, updated_at) VALUES (27, 'Test_1782387292737', NULL, 'Parentson', 'Parent', 'parent_1782387292737@test.com', '+639123456789', 'parentuser_1782387292737', '$2y$10$1VgU9Q.po4U8XooGx52IUuBvrvq9dB3Cco8apPh2VsU6/xU4VHPOK', 'Active', '2026-06-25 19:34:53.884938', '2026-06-25 19:34:53.884938');
INSERT INTO school_gate.parents (parent_id, first_name, middle_name, last_name, relationship, email, contact_number, username, password, status, created_at, updated_at) VALUES (28, 'Editable_1782387331180', NULL, 'Parentson', 'Guardian', 'editable_1782387331180@test.com', '+639123456789', 'editableuser_1782387331180', '$2y$10$tevhUPEiC0M4fXaS3OakT.IQZiMCXbnXKgRcW29ZZteGoeWpDE.bq', 'Active', '2026-06-25 19:35:32.856813', '2026-06-25 19:35:32.856813');


--
-- Data for Name: roles; Type: TABLE DATA; Schema: school_gate; Owner: -
--

INSERT INTO school_gate.roles (role_id, role_name, created_at, updated_at) VALUES (1, 'Admin', '2026-06-11 08:03:41.564494', '2026-06-11 08:03:41.564494');
INSERT INTO school_gate.roles (role_id, role_name, created_at, updated_at) VALUES (2, 'Teacher', '2026-06-11 08:03:41.564494', '2026-06-11 08:03:41.564494');
INSERT INTO school_gate.roles (role_id, role_name, created_at, updated_at) VALUES (3, 'Adviser', '2026-06-11 08:03:41.564494', '2026-06-11 08:03:41.564494');
INSERT INTO school_gate.roles (role_id, role_name, created_at, updated_at) VALUES (4, 'Staff', '2026-06-11 08:03:41.564494', '2026-06-11 08:03:41.564494');
INSERT INTO school_gate.roles (role_id, role_name, created_at, updated_at) VALUES (5, 'Viewer', '2026-06-11 08:03:41.564494', '2026-06-11 08:03:41.564494');
INSERT INTO school_gate.roles (role_id, role_name, created_at, updated_at) VALUES (6, 'Parent', '2026-06-11 08:03:41.564494', '2026-06-11 08:03:41.564494');


--
-- Data for Name: users; Type: TABLE DATA; Schema: school_gate; Owner: -
--

INSERT INTO school_gate.users (user_id, employee_id, first_name, middle_name, last_name, email, contact_number, username, password, role_id, status, created_at, updated_at, specialization) VALUES (139, 'EMP-1781888024529', 'Create', '', 'Test', 'create1781888024529@example.com', '', 'Create1781888024529', '$2y$10$Cd4gmiLs89sKoZtW7LI/4.O.InaRMF0qWnh9yngcWKT3g9PQh/9ki', 5, 'Active', '2026-06-20 00:53:58.429198', '2026-06-20 00:53:58.429198', NULL);
INSERT INTO school_gate.users (user_id, employee_id, first_name, middle_name, last_name, email, contact_number, username, password, role_id, status, created_at, updated_at, specialization) VALUES (21, NULL, 'Testing', '', 'Testing', 'Testing1@sdaj.com', '', 'Testing123', '$2y$10$KrvmdLVzH433ZFE..y48g.Tdk5YvezRKzNom/rcHSGM4vKM8GEMaa', 2, 'Inactive', '2026-06-18 12:37:10.044525', '2026-06-19 02:13:11.941872', NULL);
INSERT INTO school_gate.users (user_id, employee_id, first_name, middle_name, last_name, email, contact_number, username, password, role_id, status, created_at, updated_at, specialization) VALUES (5, NULL, 'Staff', '', 'Staff', 'staff@gmail.com', '', 'Staff', '$2y$10$L2WDP133MJb.YUWQOARPhOrP0gsSI/rk5O7eLtz7Bx/hCPgEn0dMy', 4, 'Active', '2026-06-11 14:13:14.013699', '2026-06-14 23:41:21.531232', NULL);
INSERT INTO school_gate.users (user_id, employee_id, first_name, middle_name, last_name, email, contact_number, username, password, role_id, status, created_at, updated_at, specialization) VALUES (14, NULL, 'Luzilito', '', 'Daan', 'Luzilito@gmail.com', '', 'Luzilito', '$2y$10$D5hXbFpATfTEehYP36kk4u/nt78XZs4RXFfQ4KPFyBRLlEIZzQjI.', 3, 'Active', '2026-06-14 15:31:41.091524', '2026-06-19 02:14:25.921671', 'ICT');
INSERT INTO school_gate.users (user_id, employee_id, first_name, middle_name, last_name, email, contact_number, username, password, role_id, status, created_at, updated_at, specialization) VALUES (6, 'TCH-001', 'Alice', NULL, 'Dimagiba', 'alice@school.edu', NULL, 'alice', '$2y$10$gSBCxoDhyPcfoi7bTIETmuENhHNd5efqA/3tobL3LV1DQ0X0cMxDG', 2, 'Active', '2026-06-11 14:30:48.961774', '2026-06-11 14:30:48.961774', NULL);
INSERT INTO school_gate.users (user_id, employee_id, first_name, middle_name, last_name, email, contact_number, username, password, role_id, status, created_at, updated_at, specialization) VALUES (7, 'ADV-001', 'Robert', NULL, 'Garcia', 'robert@school.edu', NULL, 'robert', '$2y$10$jtuJMHMkD3vgZbxG.gSduOmw5z.h79qQPMc7DcifeXKo4BWMs6cDy', 3, 'Active', '2026-06-11 14:30:49.111615', '2026-06-11 14:30:49.111615', NULL);
INSERT INTO school_gate.users (user_id, employee_id, first_name, middle_name, last_name, email, contact_number, username, password, role_id, status, created_at, updated_at, specialization) VALUES (8, 'ADV-002', 'Catherine', NULL, 'Villanueva', 'catherine@school.edu', NULL, 'catherine', '$2y$10$kTCiXw.5XZq4KIvid/ZLUuAQG9wi04R6YeiqBvMBR6/Wop1M3vSJS', 3, 'Active', '2026-06-11 14:30:49.249847', '2026-06-11 14:30:49.249847', NULL);
INSERT INTO school_gate.users (user_id, employee_id, first_name, middle_name, last_name, email, contact_number, username, password, role_id, status, created_at, updated_at, specialization) VALUES (146, 'EMP-1781890590332', 'Ui', '', 'Test', 'uitest1781890590332@example.com', '', 'Uitest1781890590332', '$2y$10$H8TfH4/ik/WLmoKEQQv5lenpCJu6TeNyoXWFMlUXwNRQvZGe397/O', 5, 'Active', '2026-06-20 01:36:44.159013', '2026-06-20 01:36:44.159013', NULL);
INSERT INTO school_gate.users (user_id, employee_id, first_name, middle_name, last_name, email, contact_number, username, password, role_id, status, created_at, updated_at, specialization) VALUES (47, NULL, 'Dup', NULL, 'User', 'dupuser_1781808446@example.com', NULL, 'Dupuser_1781808446', '$2y$10$7ohNZhJ9OdiuJ8ioA8bWUeu/mqP.wwNq/sOekhq0qTWa9SosvsmtS', 5, 'Active', '2026-06-19 02:47:27.183043', '2026-06-19 02:47:27.183043', NULL);
INSERT INTO school_gate.users (user_id, employee_id, first_name, middle_name, last_name, email, contact_number, username, password, role_id, status, created_at, updated_at, specialization) VALUES (1, 'ADM-001', 'SystemAdmin', NULL, 'Administrator', 'admin@school.edu', NULL, 'admin', '$2y$10$YE6RWDd8kssMp2RlQSEPxOCuxZUeqZDFpLBNNTEKDnmCzrumZB2pu', 1, 'Active', '2026-06-11 08:03:41.564494', '2026-06-14 15:30:33.140223', NULL);
INSERT INTO school_gate.users (user_id, employee_id, first_name, middle_name, last_name, email, contact_number, username, password, role_id, status, created_at, updated_at, specialization) VALUES (4, NULL, 'Eren Grace', '', 'Pactol', 'erengrace@gmail.com', '', 'Eren', '$2y$10$/BpengIdXSE59K9AFtfMbeDcRsl1VQQ0B873KV1qxP/3QyBqSqtS6', 2, 'Active', '2026-06-11 14:05:05.036236', '2026-06-17 04:02:40.918152', 'English');
INSERT INTO school_gate.users (user_id, employee_id, first_name, middle_name, last_name, email, contact_number, username, password, role_id, status, created_at, updated_at, specialization) VALUES (37, NULL, 'Dup', NULL, 'User', 'dupuser_1781808358@example.com', NULL, 'Dupuser_1781808358', '$2y$10$DCcx/ZIUaCID91rx37AZp.Vv/PGGYX5WlAfa4FHZwKWYpOLtxrGu6', 5, 'Active', '2026-06-19 02:45:58.970553', '2026-06-19 02:45:58.970553', NULL);
INSERT INTO school_gate.users (user_id, employee_id, first_name, middle_name, last_name, email, contact_number, username, password, role_id, status, created_at, updated_at, specialization) VALUES (3, NULL, 'Techer', '', 'Teacher', 'Techer@gmail.com', '', 'Techer', '$2y$10$Lksd.3Pd0R78gNdxJ7cAW.uLQCed0U0ke7u4N/.NWGvIfbVtLhVTi', 2, 'Active', '2026-06-11 13:06:21.64444', '2026-06-18 10:19:34.572746', NULL);
INSERT INTO school_gate.users (user_id, employee_id, first_name, middle_name, last_name, email, contact_number, username, password, role_id, status, created_at, updated_at, specialization) VALUES (25, NULL, 'T', NULL, 'U', 'dup_1781808183@example.com', NULL, 'Admin', '$2y$10$CwY6YGe0b80EFjYi05II8Ok5Tp./RwfEne8q3GGapjyZ3P1afHXCG', 5, 'Active', '2026-06-19 02:43:04.006', '2026-06-19 02:43:04.006', NULL);
INSERT INTO school_gate.users (user_id, employee_id, first_name, middle_name, last_name, email, contact_number, username, password, role_id, status, created_at, updated_at, specialization) VALUES (17, NULL, 'Justine', 'Dampayla', 'Baje', 'justine@gmail.com', '', 'Justine', '$2y$10$/f7HKQNe06wg63TEIAf6x.db8BQFFWsS7zGyZFjA3/CNq7qgvTcJS', 2, 'Active', '2026-06-14 23:01:15.053507', '2026-06-18 12:17:23.648635', NULL);
INSERT INTO school_gate.users (user_id, employee_id, first_name, middle_name, last_name, email, contact_number, username, password, role_id, status, created_at, updated_at, specialization) VALUES (39, NULL, 'New', NULL, 'User', 'reg_1781808360@example.com', '09171234567', 'Reg_1781808360', '$2y$10$hUWT7B6lGbdXlJq6YzDEIeeSJGnA4QFeHdeN8G6j3g9Hom57Q9BsG', 5, 'Inactive', '2026-06-19 02:46:00.910908', '2026-06-19 02:46:00.910908', NULL);
INSERT INTO school_gate.users (user_id, employee_id, first_name, middle_name, last_name, email, contact_number, username, password, role_id, status, created_at, updated_at, specialization) VALUES (11, NULL, 'Test', '', 'User', 'test@gmail.com', '', 'Testuser', '$2y$10$5xLvhfzpblZhOuca6zolSOAIpW/p2UY89vKc40rOIbiUcp2XMmhiO', 5, 'Active', '2026-06-11 15:36:53.084161', '2026-06-18 12:27:37.756056', NULL);
INSERT INTO school_gate.users (user_id, employee_id, first_name, middle_name, last_name, email, contact_number, username, password, role_id, status, created_at, updated_at, specialization) VALUES (9, 'VIW-001', 'David', '', 'Santos', 'david@gmail.com', '', 'david', '$2y$10$spNrB27NPMUR.mui5H1SAeFW7vYjfxHeM/vTZcyUJiJ1eTrrTVpyq', 5, 'Active', '2026-06-11 14:30:49.369395', '2026-06-18 12:28:03.741466', NULL);
INSERT INTO school_gate.users (user_id, employee_id, first_name, middle_name, last_name, email, contact_number, username, password, role_id, status, created_at, updated_at, specialization) VALUES (49, NULL, 'New', NULL, 'User', 'reg_1781808448@example.com', '09171234567', 'Reg_1781808448', '$2y$10$n43j9f987jJhJsUGKK6kP.XNdpxZyTyNSc1n2lt4nnzu963PzwI8C', 5, 'Inactive', '2026-06-19 02:47:29.071443', '2026-06-19 02:47:29.071443', NULL);
INSERT INTO school_gate.users (user_id, employee_id, first_name, middle_name, last_name, email, contact_number, username, password, role_id, status, created_at, updated_at, specialization) VALUES (28, NULL, 'Dup', NULL, 'User', 'dupuser_1781808253@example.com', NULL, 'Dupuser_1781808253', '$2y$10$7P9WURKLqPXMm5yMbHWj/.mBAJ9ndRjTbXJQ1TjES.9ekxZCOV23G', 5, 'Active', '2026-06-19 02:44:13.963391', '2026-06-19 02:44:13.963391', NULL);
INSERT INTO school_gate.users (user_id, employee_id, first_name, middle_name, last_name, email, contact_number, username, password, role_id, status, created_at, updated_at, specialization) VALUES (42, NULL, 'Dup', NULL, 'User', 'dupuser_1781808398@example.com', NULL, 'Dupuser_1781808398', '$2y$10$i0Zw2JB/y1UEgxoHG1zt..8Q8TzHSx/rIN3.srFU91ss3Bw4hYaLm', 5, 'Active', '2026-06-19 02:46:38.889739', '2026-06-19 02:46:38.889739', NULL);
INSERT INTO school_gate.users (user_id, employee_id, first_name, middle_name, last_name, email, contact_number, username, password, role_id, status, created_at, updated_at, specialization) VALUES (32, NULL, 'Dup', NULL, 'User', 'dupuser_1781808302@example.com', NULL, 'Dupuser_1781808302', '$2y$10$a7O7hoieSvGfa2fYIyd9XOMGizFXSFCmAy9lUqKKCFDQni4MP1E1K', 5, 'Active', '2026-06-19 02:45:03.331163', '2026-06-19 02:45:03.331163', NULL);
INSERT INTO school_gate.users (user_id, employee_id, first_name, middle_name, last_name, email, contact_number, username, password, role_id, status, created_at, updated_at, specialization) VALUES (34, NULL, 'New', NULL, 'User', 'reg_1781808304@example.com', '09171234567', 'Reg_1781808304', '$2y$10$ibJJL1ov4ROukae4tHdJueMBWq4UQ7prDFC598BOW1CpjpEs.JqeG', 5, 'Inactive', '2026-06-19 02:45:05.352224', '2026-06-19 02:45:05.352224', NULL);
INSERT INTO school_gate.users (user_id, employee_id, first_name, middle_name, last_name, email, contact_number, username, password, role_id, status, created_at, updated_at, specialization) VALUES (44, NULL, 'New', NULL, 'User', 'reg_1781808400@example.com', '09171234567', 'Reg_1781808400', '$2y$10$wZArUd9xTGH/Kz7em5AZ0.VBVOOfQaWxWUawMOEoYV/LYUcOcv.HW', 5, 'Inactive', '2026-06-19 02:46:40.737961', '2026-06-19 02:46:40.737961', NULL);
INSERT INTO school_gate.users (user_id, employee_id, first_name, middle_name, last_name, email, contact_number, username, password, role_id, status, created_at, updated_at, specialization) VALUES (64, NULL, 'New', NULL, 'User', 'reg_1781808624@example.com', '09171234567', 'Reg_1781808624', '$2y$10$RJ6kKzRa6d9sHS7hKhOONOv83l5hlbXdtZI7QB4yZ1.AFLC3Mc7Su', 5, 'Inactive', '2026-06-19 02:50:24.490774', '2026-06-19 02:50:24.490774', NULL);
INSERT INTO school_gate.users (user_id, employee_id, first_name, middle_name, last_name, email, contact_number, username, password, role_id, status, created_at, updated_at, specialization) VALUES (57, NULL, 'Dup', NULL, 'User', 'dupuser_1781808567@example.com', NULL, 'Dupuser_1781808567', '$2y$10$cCrTHBomBv7jNE0aB/S45uYZFaRmY3qFA8rC9bovn5vaYGWFAuOhy', 5, 'Active', '2026-06-19 02:49:28.288795', '2026-06-19 02:49:28.288795', NULL);
INSERT INTO school_gate.users (user_id, employee_id, first_name, middle_name, last_name, email, contact_number, username, password, role_id, status, created_at, updated_at, specialization) VALUES (59, NULL, 'New', NULL, 'User', 'reg_1781808569@example.com', '09171234567', 'Reg_1781808569', '$2y$10$zcUspE8GfHakt8dZrZTwIe9cOGMy7dk5tZ0xdBpqkJcQqQ5txDktm', 5, 'Inactive', '2026-06-19 02:49:30.253433', '2026-06-19 02:49:30.253433', NULL);
INSERT INTO school_gate.users (user_id, employee_id, first_name, middle_name, last_name, email, contact_number, username, password, role_id, status, created_at, updated_at, specialization) VALUES (52, NULL, 'Dup', NULL, 'User', 'dupuser_1781808478@example.com', NULL, 'Dupuser_1781808478', '$2y$10$YFKa8m/AwioExtvO4c.nlexKva4pW0c4OU1Gb5TH5h13mwXlCrNJ6', 5, 'Active', '2026-06-19 02:47:59.338913', '2026-06-19 02:47:59.338913', NULL);
INSERT INTO school_gate.users (user_id, employee_id, first_name, middle_name, last_name, email, contact_number, username, password, role_id, status, created_at, updated_at, specialization) VALUES (54, NULL, 'New', NULL, 'User', 'reg_1781808481@example.com', '09171234567', 'Reg_1781808481', '$2y$10$4V35Q.N/qnO3VDhYXxeyP.gNhL1QLJd4kC6E/GMPMAks3BEP4X75a', 5, 'Inactive', '2026-06-19 02:48:01.494575', '2026-06-19 02:48:01.494575', NULL);
INSERT INTO school_gate.users (user_id, employee_id, first_name, middle_name, last_name, email, contact_number, username, password, role_id, status, created_at, updated_at, specialization) VALUES (69, NULL, 'New', NULL, 'User', 'reg_1781808660@example.com', '09171234567', 'Reg_1781808660', '$2y$10$F0a5pbLphhxLIgt.26oc6ew1v6I2ssFnvCRSDGXlGZcF5Aw/QTZna', 5, 'Inactive', '2026-06-19 02:51:01.035296', '2026-06-19 02:51:01.035296', NULL);
INSERT INTO school_gate.users (user_id, employee_id, first_name, middle_name, last_name, email, contact_number, username, password, role_id, status, created_at, updated_at, specialization) VALUES (62, NULL, 'Dup', NULL, 'User', 'dupuser_1781808622@example.com', NULL, 'Dupuser_1781808622', '$2y$10$0njPe6BALjMhXiFUXfA54uIwZ.uPMuL3lo/9FKZwT7J7sUZ2Tz3r6', 5, 'Active', '2026-06-19 02:50:22.810096', '2026-06-19 02:50:22.810096', NULL);
INSERT INTO school_gate.users (user_id, employee_id, first_name, middle_name, last_name, email, contact_number, username, password, role_id, status, created_at, updated_at, specialization) VALUES (71, 'EMP-1781811435651', 'Ui', '', 'Test', 'uitest1781811435651@example.com', '', 'Uitest1781811435651', '$2y$10$VZeZffnK8sDjOBMXfuRyXumOHWaIn8dMz9TR7KfSpeC8XlDsyKt0y', 5, 'Active', '2026-06-19 03:37:20.405836', '2026-06-19 03:37:20.405836', NULL);
INSERT INTO school_gate.users (user_id, employee_id, first_name, middle_name, last_name, email, contact_number, username, password, role_id, status, created_at, updated_at, specialization) VALUES (67, NULL, 'Dup', NULL, 'User', 'dupuser_1781808658@example.com', NULL, 'Dupuser_1781808658', '$2y$10$uj2BfPBABbwopvCseQete.HAazrQjf7quNQXKeq3i8xUCFH49Qy6e', 5, 'Active', '2026-06-19 02:50:59.218792', '2026-06-19 02:50:59.218792', NULL);
INSERT INTO school_gate.users (user_id, employee_id, first_name, middle_name, last_name, email, contact_number, username, password, role_id, status, created_at, updated_at, specialization) VALUES (72, 'EMP-1781811580697', 'Ui', '', 'Test', 'uitest1781811580697@example.com', '', 'Uitest1781811580697', '$2y$10$Vc4k/C1QocjG.N1/KvevqOjecrzTrafq3ZO6oSAz6xNta5uLgZXAy', 5, 'Active', '2026-06-19 03:39:44.235602', '2026-06-19 03:39:44.235602', NULL);
INSERT INTO school_gate.users (user_id, employee_id, first_name, middle_name, last_name, email, contact_number, username, password, role_id, status, created_at, updated_at, specialization) VALUES (73, 'EMP-1781811882402', 'Ui', '', 'Test', 'uitest1781811882402@example.com', '', 'Uitest1781811882402', '$2y$10$KSAoLC4rhyyY.A9NRgjkEuyktvY47PkgkV.eziYLyaEElY.P0H.3.', 5, 'Active', '2026-06-19 03:44:45.880805', '2026-06-19 03:44:45.880805', NULL);
INSERT INTO school_gate.users (user_id, employee_id, first_name, middle_name, last_name, email, contact_number, username, password, role_id, status, created_at, updated_at, specialization) VALUES (74, NULL, 'Register', '', 'Test', 'reg1781811894465@example.com', '09171234567', 'Reg1781811894465', '$2y$10$Rjt90Ufw65n0lcV3r.yZlOx7l5uprD3iFTlQxs0pukc6tCYqfLRKi', 2, 'Inactive', '2026-06-19 03:44:57.056521', '2026-06-19 03:44:57.056521', NULL);
INSERT INTO school_gate.users (user_id, employee_id, first_name, middle_name, last_name, email, contact_number, username, password, role_id, status, created_at, updated_at, specialization) VALUES (75, 'EMP-1781812075664', 'Ui', '', 'Test', 'uitest1781812075664@example.com', '', 'Uitest1781812075664', '$2y$10$hm82ll4dp6pKFHBPKOKavOoho0KJEeR21GPHjCr.ZfQS8hspNZK7m', 5, 'Active', '2026-06-19 03:47:57.805006', '2026-06-19 03:47:57.805006', NULL);
INSERT INTO school_gate.users (user_id, employee_id, first_name, middle_name, last_name, email, contact_number, username, password, role_id, status, created_at, updated_at, specialization) VALUES (76, NULL, 'Register', '', 'Test', 'reg1781812087725@example.com', '09171234567', 'Reg1781812087725', '$2y$10$rY3y4snNs9XYl5ig8I60cuxA3JxenO1wjUJqE6VT28dkgWmwq/fpy', 2, 'Inactive', '2026-06-19 03:48:10.577694', '2026-06-19 03:48:10.577694', NULL);
INSERT INTO school_gate.users (user_id, employee_id, first_name, middle_name, last_name, email, contact_number, username, password, role_id, status, created_at, updated_at, specialization) VALUES (77, 'EMP-1781813021018', 'Ui', '', 'Test', 'uitest1781813021018@example.com', '', 'Uitest1781813021018', '$2y$10$TEPVvFTbHAoQ54LYnS/tbOJOFuPnRammGJ5NQwBfTT60rmaEmIdi6', 5, 'Active', '2026-06-19 04:03:45.831787', '2026-06-19 04:03:45.831787', NULL);
INSERT INTO school_gate.users (user_id, employee_id, first_name, middle_name, last_name, email, contact_number, username, password, role_id, status, created_at, updated_at, specialization) VALUES (78, NULL, 'Register', '', 'Test', 'reg1781813032508@example.com', '09171234567', 'Reg1781813032508', '$2y$10$vxwwSoqOCcQCOOvEflMcmOI3LtfJseXmPxfkl02cCqIr5/jE4ruhW', 2, 'Inactive', '2026-06-19 04:03:54.764549', '2026-06-19 04:03:54.764549', NULL);
INSERT INTO school_gate.users (user_id, employee_id, first_name, middle_name, last_name, email, contact_number, username, password, role_id, status, created_at, updated_at, specialization) VALUES (79, 'EMP-1781813411703', 'Ui', '', 'Test', 'uitest1781813411703@example.com', '', 'Uitest1781813411703', '$2y$10$zbelYYF6EWuUP3rFhUofvOUGmrwytsA6KWXmNoALoVINUbpgPnvD2', 5, 'Active', '2026-06-19 04:10:17.965178', '2026-06-19 04:10:17.965178', NULL);
INSERT INTO school_gate.users (user_id, employee_id, first_name, middle_name, last_name, email, contact_number, username, password, role_id, status, created_at, updated_at, specialization) VALUES (80, NULL, 'Register', '', 'Test', 'reg1781813431288@example.com', '09171234567', 'Reg1781813431288', '$2y$10$8AAKAwxeOjupwThEz1311e9Qlie5TvGn4IOXVthh4gpaG8dtUitly', 2, 'Inactive', '2026-06-19 04:10:37.373942', '2026-06-19 04:10:37.373942', NULL);
INSERT INTO school_gate.users (user_id, employee_id, first_name, middle_name, last_name, email, contact_number, username, password, role_id, status, created_at, updated_at, specialization) VALUES (81, 'EMP-1781813744356', 'Ui', '', 'Test', 'uitest1781813744356@example.com', '', 'Uitest1781813744356', '$2y$10$h8h7o44K9VTh7m9f5kcHgeDXpuusFN8gt90JT4Q3JCyhZtqAoGgZW', 5, 'Active', '2026-06-19 04:15:49.781683', '2026-06-19 04:15:49.781683', NULL);
INSERT INTO school_gate.users (user_id, employee_id, first_name, middle_name, last_name, email, contact_number, username, password, role_id, status, created_at, updated_at, specialization) VALUES (82, NULL, 'Register', '', 'Test', 'reg1781813759245@example.com', '09171234567', 'Reg1781813759245', '$2y$10$Culx7KSGTYacxpkZFN.CJ.uomtFJis0o47qHb4l24V7V74K1aH0Xa', 2, 'Inactive', '2026-06-19 04:16:05.099636', '2026-06-19 04:16:05.099636', NULL);
INSERT INTO school_gate.users (user_id, employee_id, first_name, middle_name, last_name, email, contact_number, username, password, role_id, status, created_at, updated_at, specialization) VALUES (83, 'EMP-1781813924801', 'Ui', '', 'Test', 'uitest1781813924801@example.com', '', 'Uitest1781813924801', '$2y$10$RASg/CXshfO/cJuLVGca0.Yy7uR5By/rKn8gVUBbDmecqH0TY2lE6', 5, 'Active', '2026-06-19 04:18:50.22742', '2026-06-19 04:18:50.22742', NULL);
INSERT INTO school_gate.users (user_id, employee_id, first_name, middle_name, last_name, email, contact_number, username, password, role_id, status, created_at, updated_at, specialization) VALUES (84, NULL, 'Register', '', 'Test', 'reg1781813939870@example.com', '09171234567', 'Reg1781813939870', '$2y$10$0OPQTh931.3q7KKtvIUW0.uUgAeo7PyxUxh53TS4C.G0IOaT/ZSzO', 2, 'Inactive', '2026-06-19 04:19:05.711509', '2026-06-19 04:19:05.711509', NULL);
INSERT INTO school_gate.users (user_id, employee_id, first_name, middle_name, last_name, email, contact_number, username, password, role_id, status, created_at, updated_at, specialization) VALUES (85, 'EMP-1781814232340', 'Ui', '', 'Test', 'uitest1781814232340@example.com', '', 'Uitest1781814232340', '$2y$10$0oe3YwM7ZICKvDeBTwLsV.fshwTKxmjZnsEhM9CZMQUMwb5wyctPy', 5, 'Active', '2026-06-19 04:24:05.775706', '2026-06-19 04:24:05.775706', NULL);
INSERT INTO school_gate.users (user_id, employee_id, first_name, middle_name, last_name, email, contact_number, username, password, role_id, status, created_at, updated_at, specialization) VALUES (86, NULL, 'Register', '', 'Test', 'reg1781814262743@example.com', '09171234567', 'Reg1781814262743', '$2y$10$TOzgl27ThtkGVFjmMVbSTOTvMeQiBxvmvNeSK52EFb13oVG6jzQ7O', 2, 'Inactive', '2026-06-19 04:24:36.607481', '2026-06-19 04:24:36.607481', NULL);
INSERT INTO school_gate.users (user_id, employee_id, first_name, middle_name, last_name, email, contact_number, username, password, role_id, status, created_at, updated_at, specialization) VALUES (87, 'STF-1781872446', 'Staff', NULL, 'Tester', 'staff1781872446@test.com', '09170000001', 'Stafftester', '$2y$10$LTjNIKfjOkvodUpLRfbQ.e2iSvTf8IQ3luQ7Ypph562qlopPjxk0W', 5, 'Active', '2026-06-19 12:34:08.524186', '2026-06-19 12:34:08.524186', NULL);
INSERT INTO school_gate.users (user_id, employee_id, first_name, middle_name, last_name, email, contact_number, username, password, role_id, status, created_at, updated_at, specialization) VALUES (88, 'VWR-1781872446', 'Viewer', NULL, 'Tester', 'viewer1781872446@test.com', '09170000002', 'Viewertester', '$2y$10$t82Z6/Qb9pI1o.9ADOvWCOdv/Pljezmo7rSDUkIuavd08PyWz9lqq', 5, 'Active', '2026-06-19 12:34:09.027323', '2026-06-19 12:34:09.027323', NULL);
INSERT INTO school_gate.users (user_id, employee_id, first_name, middle_name, last_name, email, contact_number, username, password, role_id, status, created_at, updated_at, specialization) VALUES (89, 'STF-1781872857', 'Staffuser', NULL, 'Tester', 'staffuser1781872857@test.com', '09170000004', 'Stafftester2', '$2y$10$wufhhOr2EQbnZe4Lqq8GF.O5BgQ0nX9u0ntK7YgT1qb2LnCWvEHGS', 5, 'Active', '2026-06-19 12:40:58.402424', '2026-06-19 12:40:58.402424', NULL);
INSERT INTO school_gate.users (user_id, employee_id, first_name, middle_name, last_name, email, contact_number, username, password, role_id, status, created_at, updated_at, specialization) VALUES (91, 'STF-1781872919', 'Staffuser', NULL, 'Tester', 'staffuser1781872919@test.com', '09170000004', 'Stafftester_1781872919', '$2y$10$rHK0FWGBSYS2XgasxQrIuOY2PpUheLD21lVnCqIShSVq0E0t8.hPi', 4, 'Active', '2026-06-19 12:42:01.003124', '2026-06-19 12:42:01.003124', NULL);
INSERT INTO school_gate.users (user_id, employee_id, first_name, middle_name, last_name, email, contact_number, username, password, role_id, status, created_at, updated_at, specialization) VALUES (92, NULL, 'Pending', '', 'Test', 'pending1781859467659@example.com', '09171234567', 'Pendinguser1781859467659', '$2y$10$y8ZHNCIJFgZJk7F2A7/St.AExTMcc3koDrMKySRi/cj74CLHCLzlm', 2, 'Inactive', '2026-06-19 16:57:59.687425', '2026-06-19 16:57:59.687425', NULL);
INSERT INTO school_gate.users (user_id, employee_id, first_name, middle_name, last_name, email, contact_number, username, password, role_id, status, created_at, updated_at, specialization) VALUES (93, NULL, 'Pending', '', 'Test', 'pending1781859784410@example.com', '09171234567', 'Pendinguser1781859784410', '$2y$10$H0.kRgu6eTOj9FSFX1PS6eUX3hK8RrgBBCtZPoa6gcYPcc8dhwIli', 2, 'Inactive', '2026-06-19 17:03:16.533104', '2026-06-19 17:03:16.533104', NULL);
INSERT INTO school_gate.users (user_id, employee_id, first_name, middle_name, last_name, email, contact_number, username, password, role_id, status, created_at, updated_at, specialization) VALUES (95, NULL, 'Pending', '', 'Test', 'pending1781860186395@example.com', '09171234567', 'Pendinguser1781860186395', '$2y$10$3HVjj6XNvftBtmEcu9r0Deylsaaz3xclsZbsz9m.hjB9zfDX5FzK.', 2, 'Inactive', '2026-06-19 17:09:58.553058', '2026-06-19 17:09:58.553058', NULL);
INSERT INTO school_gate.users (user_id, employee_id, first_name, middle_name, last_name, email, contact_number, username, password, role_id, status, created_at, updated_at, specialization) VALUES (97, NULL, 'Pending', '', 'Test', 'pending1781860530013@example.com', '09171234567', 'Pendinguser1781860530013', '$2y$10$h4IcI2MU1zcbQ9Jg4scn1OkkKaPzThZMj.mx6ZokBln9AEOy6g2sy', 2, 'Inactive', '2026-06-19 17:15:42.589124', '2026-06-19 17:15:42.589124', NULL);
INSERT INTO school_gate.users (user_id, employee_id, first_name, middle_name, last_name, email, contact_number, username, password, role_id, status, created_at, updated_at, specialization) VALUES (158, 'EMP-1781916454696', 'Empid', '', 'Test', 'empid1781916454696@example.com', '', 'Empid1781916454696', '$2y$10$.ko6K2qDOo.FmLqeOssVD.OcOVkyc9hlzVYoaDupnPw.S652URbJO', 5, 'Active', '2026-06-20 08:47:48.707067', '2026-06-20 08:47:48.707067', NULL);
INSERT INTO school_gate.users (user_id, employee_id, first_name, middle_name, last_name, email, contact_number, username, password, role_id, status, created_at, updated_at, specialization) VALUES (99, NULL, 'Pending', '', 'Test', 'pending1781860842048@example.com', '09171234567', 'Pendinguser1781860842048', '$2y$10$dl.kg/5zOx.E1taIWlD1v.dLKQVuQKoNLhZTNSaGWSvJSyxD0OXfa', 2, 'Inactive', '2026-06-19 17:21:00.344863', '2026-06-19 17:21:00.344863', NULL);
INSERT INTO school_gate.users (user_id, employee_id, first_name, middle_name, last_name, email, contact_number, username, password, role_id, status, created_at, updated_at, specialization) VALUES (150, NULL, 'Pending', '', 'Test', 'pending1781915671260@example.com', '09171234567', 'Pendinguser1781915671260', '$2y$10$RQZHIqhASdKpl5ANYSY.g.HOAuKmiA2rpMLdJb7ewOgu9qcPP5kFu', 2, 'Active', '2026-06-20 08:34:42.914951', '2026-06-20 08:34:42.914951', NULL);
INSERT INTO school_gate.users (user_id, employee_id, first_name, middle_name, last_name, email, contact_number, username, password, role_id, status, created_at, updated_at, specialization) VALUES (101, NULL, 'Pending', '', 'Test', 'pending1781861909671@example.com', '09171234567', 'Pendinguser1781861909671', '$2y$10$iv9c5abvENiB8Qfa7pmx/OeGkIjTYMmNilsw6Qy.9/nmB.TvMjzi6', 2, 'Inactive', '2026-06-19 17:38:46.574232', '2026-06-19 19:14:29.419845', NULL);
INSERT INTO school_gate.users (user_id, employee_id, first_name, middle_name, last_name, email, contact_number, username, password, role_id, status, created_at, updated_at, specialization) VALUES (140, NULL, 'Teacher', '', 'Spec', 'teacher1781888052786@example.com', '', 'Teacher1781888052786', '$2y$10$6OtrcfoCm4HwsDapUs87suAFlp98568QdrBnSrISj16Fismqxs.me', 2, 'Active', '2026-06-20 00:54:26.786156', '2026-06-20 00:54:26.786156', 'Mathematics');
INSERT INTO school_gate.users (user_id, employee_id, first_name, middle_name, last_name, email, contact_number, username, password, role_id, status, created_at, updated_at, specialization) VALUES (142, NULL, 'Edited', '', 'Success', 'edit1781888118307@example.com', '', 'Edit1781888118307', '$2y$10$z3JkX0Njasn/./MOtwveV..Ksry8q3CBcC4Q9uFV5Oq1eX19zD56.', 5, 'Active', '2026-06-20 00:55:30.484848', '2026-06-20 00:55:41.659251', NULL);
INSERT INTO school_gate.users (user_id, employee_id, first_name, middle_name, last_name, email, contact_number, username, password, role_id, status, created_at, updated_at, specialization) VALUES (137, NULL, 'Pending', '', 'Test', 'pending1781887413396@example.com', '09171234567', 'Pendinguser1781887413396', '$2y$10$d2EYeatpq2RB/MIrnueE1uG.fid6b93S.FP2i.SAk13BYWQOT7ZRe', 2, 'Active', '2026-06-20 00:43:45.572282', '2026-06-20 00:43:45.572282', NULL);
INSERT INTO school_gate.users (user_id, employee_id, first_name, middle_name, last_name, email, contact_number, username, password, role_id, status, created_at, updated_at, specialization) VALUES (147, NULL, 'Register', '', 'Test', 'reg1781890621826@example.com', '09171234567', 'Reg1781890621826', '$2y$10$kr/PPMUIfcd8QQpJR0Q8mO2moy5S.2gOTaGa6Ctn6kY359aRd5v5e', 2, 'Inactive', '2026-06-20 01:37:15.910582', '2026-06-20 01:37:15.910582', NULL);
INSERT INTO school_gate.users (user_id, employee_id, first_name, middle_name, last_name, email, contact_number, username, password, role_id, status, created_at, updated_at, specialization) VALUES (148, NULL, 'Pending', '', 'Test', 'pending1781915415465@example.com', '09171234567', 'Pendinguser1781915415465', '$2y$10$zf0TXnCHgHeer4Njtyo9lOT8JKsQ3y0MPyS18KOAX2AyuofldixzW', 2, 'Inactive', '2026-06-20 08:30:27.484744', '2026-06-20 08:30:27.484744', NULL);
INSERT INTO school_gate.users (user_id, employee_id, first_name, middle_name, last_name, email, contact_number, username, password, role_id, status, created_at, updated_at, specialization) VALUES (160, NULL, 'Register', '', 'Test', 'reg1781918906905@example.com', '09171234567', 'Reg1781918906905', '$2y$10$HIxan4H//q79e9dPCOiVeu6PdEMpXnM537tgM0jgb1pvECNtnYkhS', 2, 'Inactive', '2026-06-20 09:28:41.107008', '2026-06-20 09:28:41.107008', NULL);
INSERT INTO school_gate.users (user_id, employee_id, first_name, middle_name, last_name, email, contact_number, username, password, role_id, status, created_at, updated_at, specialization) VALUES (162, '', 'Inac', NULL, 'Tester', 'inactuser1781930180095@test.com', '09170000099', 'Inactuser1781930180095', '$2y$10$B3gP6a8fdvaPinGLyQmoTuHmX7lc3JeyfyUzqn.6ebYPwOQf0tbKG', 5, 'Inactive', '2026-06-20 12:36:21.214554', '2026-06-20 12:36:21.717741', NULL);
INSERT INTO school_gate.users (user_id, employee_id, first_name, middle_name, last_name, email, contact_number, username, password, role_id, status, created_at, updated_at, specialization) VALUES (164, NULL, 'Teacher', '', 'Spec', 'teacher1781930811855@example.com', '', 'Teacher1781930811855', '$2y$10$wkZudkjLhN/MBmZjO.sgzedDHvPLOl8Znf0nFbhibUBvGRLflmNe6', 2, 'Active', '2026-06-20 12:47:07.028797', '2026-06-20 12:47:07.028797', 'Mathematics');
INSERT INTO school_gate.users (user_id, employee_id, first_name, middle_name, last_name, email, contact_number, username, password, role_id, status, created_at, updated_at, specialization) VALUES (166, NULL, 'Edited', '', 'Success', 'edit1781930882012@example.com', '', 'Edit1781930882012', '$2y$10$WQtfr02JhEGEoDq3lK58ge3MYJV3RNqpcAbQaG9UuJ0en2uAKCmAe', 5, 'Active', '2026-06-20 12:48:14.499781', '2026-06-20 12:48:25.86063', NULL);
INSERT INTO school_gate.users (user_id, employee_id, first_name, middle_name, last_name, email, contact_number, username, password, role_id, status, created_at, updated_at, specialization) VALUES (170, 'EMP-1781933532084', 'Ui', '', 'Test', 'uitest1781933532084@example.com', '', 'Uitest1781933532084', '$2y$10$1NuFOoTur/A5w64fhztnQ.hv0I8UcP.r8QrDu38SeV9LP69O1w2BO', 5, 'Active', '2026-06-20 13:32:27.77408', '2026-06-20 13:32:27.77408', NULL);
INSERT INTO school_gate.users (user_id, employee_id, first_name, middle_name, last_name, email, contact_number, username, password, role_id, status, created_at, updated_at, specialization) VALUES (172, '', 'Inac', NULL, 'Tester', 'inactuser1781933814981@test.com', '09170000099', 'Inactuser1781933814981', '$2y$10$ijsgQ3g196twvEX2tgTsUeC4IpSpQs3Efc0zUeNdmoKih/3CqnRde', 5, 'Inactive', '2026-06-20 13:36:55.959168', '2026-06-20 13:36:56.488663', NULL);
INSERT INTO school_gate.users (user_id, employee_id, first_name, middle_name, last_name, email, contact_number, username, password, role_id, status, created_at, updated_at, specialization) VALUES (174, NULL, 'Teacher', '', 'Spec', 'teacher1781934418679@example.com', '', 'Teacher1781934418679', '$2y$10$x6HViYFFRLB2NaG5V8U6teEvna2GJZMv5deUGq3GFJ61BJiP8Poky', 2, 'Active', '2026-06-20 13:47:12.46046', '2026-06-20 13:47:12.46046', 'Mathematics');
INSERT INTO school_gate.users (user_id, employee_id, first_name, middle_name, last_name, email, contact_number, username, password, role_id, status, created_at, updated_at, specialization) VALUES (138, '', 'Inac', NULL, 'Tester', 'inactuser1781887437361@test.com', '09170000099', 'Inactuser1781887437361', '$2y$10$/IwlsYmzTcoXmIEcRDSYuOfdO.0D9VxXk0ivctKggDX0dU7Ecyub6', 5, 'Inactive', '2026-06-20 00:43:59.724823', '2026-06-20 00:44:00.226765', NULL);
INSERT INTO school_gate.users (user_id, employee_id, first_name, middle_name, last_name, email, contact_number, username, password, role_id, status, created_at, updated_at, specialization) VALUES (167, 'EMP-1781930918472', 'Deact', NULL, 'Test', 'deact1781930918472@example.com', '09170000099', 'Deact1781930918472', '$2y$10$xCCkGirpVuTE8h5SB./aAOXFoL2gBKzaMr0xSYjtrTrCbVEO.YM2W', 5, 'Inactive', '2026-06-20 12:48:39.170593', '2026-06-20 12:48:46.160621', NULL);
INSERT INTO school_gate.users (user_id, employee_id, first_name, middle_name, last_name, email, contact_number, username, password, role_id, status, created_at, updated_at, specialization) VALUES (169, 'EMP-1781930978287', 'Empid', '', 'Test', 'empid1781930978287@example.com', '', 'Empid1781930978287', '$2y$10$5xby2uQezP6./SJh1uLEOeu6Ycxqe1W/NDYNHTzmQC6e9coyS63Fe', 5, 'Active', '2026-06-20 12:49:52.146086', '2026-06-20 12:49:52.146086', NULL);
INSERT INTO school_gate.users (user_id, employee_id, first_name, middle_name, last_name, email, contact_number, username, password, role_id, status, created_at, updated_at, specialization) VALUES (161, NULL, 'Pending', '', 'Test', 'pending1781930155783@example.com', '09171234567', 'Pendinguser1781930155783', '$2y$10$Y0Lyz6GF7ZykKbuS6i8F3ur3lUe1TjaJ6b07FvEzN7zYEDOkX3VXS', 2, 'Active', '2026-06-20 12:36:07.955942', '2026-06-20 12:36:07.955942', NULL);
INSERT INTO school_gate.users (user_id, employee_id, first_name, middle_name, last_name, email, contact_number, username, password, role_id, status, created_at, updated_at, specialization) VALUES (171, NULL, 'Pending', '', 'Test', 'pending1781933790387@example.com', '09171234567', 'Pendinguser1781933790387', '$2y$10$cc6tn/wAQzxDFqXH3cTKHefoPSKbvk9DW9wO1Fg6.6SSZRme77cpy', 2, 'Inactive', '2026-06-20 13:36:42.785329', '2026-06-20 13:36:42.785329', NULL);
INSERT INTO school_gate.users (user_id, employee_id, first_name, middle_name, last_name, email, contact_number, username, password, role_id, status, created_at, updated_at, specialization) VALUES (173, 'EMP-1781934391075', 'Create', '', 'Test', 'create1781934391075@example.com', '', 'Create1781934391075', '$2y$10$6WXyDGT.OyYX.ys.4a7YfOYZce1mHUoXNhxQa/3lBaW8top7l4nIi', 5, 'Active', '2026-06-20 13:46:44.978399', '2026-06-20 13:46:44.978399', NULL);
INSERT INTO school_gate.users (user_id, employee_id, first_name, middle_name, last_name, email, contact_number, username, password, role_id, status, created_at, updated_at, specialization) VALUES (176, NULL, 'Edited', '', 'Success', 'edit1781934482415@example.com', '', 'Edit1781934482415', '$2y$10$3aQhjOnslmF7fiza/FUWleibLABr.0VycOAasbgQXOesWJk5reVDq', 5, 'Active', '2026-06-20 13:48:14.839705', '2026-06-20 13:48:25.92402', NULL);
INSERT INTO school_gate.users (user_id, employee_id, first_name, middle_name, last_name, email, contact_number, username, password, role_id, status, created_at, updated_at, specialization) VALUES (177, 'EMP-1781934518090', 'Deact', NULL, 'Test', 'deact1781934518090@example.com', '09170000099', 'Deact1781934518090', '$2y$10$9W/i.thyIKmaNxK7yksZm.WLasRki7pIEaPpdV.fKMFHFet/uE8Ze', 5, 'Inactive', '2026-06-20 13:48:38.893597', '2026-06-20 13:48:44.42886', NULL);
INSERT INTO school_gate.users (user_id, employee_id, first_name, middle_name, last_name, email, contact_number, username, password, role_id, status, created_at, updated_at, specialization) VALUES (143, 'EMP-1781888154547', 'Deact', NULL, 'Test', 'deact1781888154547@example.com', '09170000099', 'Deact1781888154547', '$2y$10$yL9YZaw2.tkCo0Mw4uCy6ezer9MAQ8won/DTzZE9BUG0Jj8EqR5wK', 5, 'Inactive', '2026-06-20 00:55:55.137886', '2026-06-20 00:56:00.589089', NULL);
INSERT INTO school_gate.users (user_id, employee_id, first_name, middle_name, last_name, email, contact_number, username, password, role_id, status, created_at, updated_at, specialization) VALUES (145, 'EMP-1781888212148', 'Empid', '', 'Test', 'empid1781888212148@example.com', '', 'Empid1781888212148', '$2y$10$G2vq/ErwIo9KuugWKFAUPuYZ/ec3G6crO4eZhXoBL6qPDmPINLV92', 5, 'Active', '2026-06-20 00:57:06.091886', '2026-06-20 00:57:06.091886', NULL);
INSERT INTO school_gate.users (user_id, employee_id, first_name, middle_name, last_name, email, contact_number, username, password, role_id, status, created_at, updated_at, specialization) VALUES (192, 'EMP-1782386596065', 'Create', '', 'Test', 'create1782386596065@example.com', '', 'Create1782386596065', '$2y$10$5kl3DZqXEzSuoKwZIN4rL.5B0d6.vVnGtVVzSljI7ser9rLAn3Cxu', 5, 'Active', '2026-06-25 19:23:30.464796', '2026-06-25 19:23:30.464796', NULL);
INSERT INTO school_gate.users (user_id, employee_id, first_name, middle_name, last_name, email, contact_number, username, password, role_id, status, created_at, updated_at, specialization) VALUES (193, NULL, 'Teacher', '', 'Spec', 'teacher1782386626595@example.com', '', 'Teacher1782386626595', '$2y$10$nU9VBfJre7Yu46ZKf6X5w.rFno0rzOpGBxpQwz6jY7h/4kYvZZqQS', 2, 'Active', '2026-06-25 19:24:02.3257', '2026-06-25 19:24:02.3257', 'Mathematics');
INSERT INTO school_gate.users (user_id, employee_id, first_name, middle_name, last_name, email, contact_number, username, password, role_id, status, created_at, updated_at, specialization) VALUES (159, 'EMP-1781918875020', 'Ui', '', 'Test', 'uitest1781918875020@example.com', '', 'Uitest1781918875020', '$2y$10$4hPa2b4JHRN/Y7Kwr4QOD.VcYLqyKCeB01d1oIdFaYZsuW5XyTdna', 5, 'Active', '2026-06-20 09:28:09.073421', '2026-06-20 09:28:09.073421', NULL);
INSERT INTO school_gate.users (user_id, employee_id, first_name, middle_name, last_name, email, contact_number, username, password, role_id, status, created_at, updated_at, specialization) VALUES (163, 'EMP-1781930780827', 'Create', '', 'Test', 'create1781930780827@example.com', '', 'Create1781930780827', '$2y$10$o63ACJ1lSqfz/R91uDAuwOP149e6CkU.a73UX/CX2gX/JPYAjr/.u', 5, 'Active', '2026-06-20 12:46:36.420138', '2026-06-20 12:46:36.420138', NULL);
INSERT INTO school_gate.users (user_id, employee_id, first_name, middle_name, last_name, email, contact_number, username, password, role_id, status, created_at, updated_at, specialization) VALUES (179, 'EMP-1781934575431', 'Empid', '', 'Test', 'empid1781934575431@example.com', '', 'Empid1781934575431', '$2y$10$WegC.hr86xg5rPgJJiOVB.jepVv5w2xhWXX.Voth9/KqBX9uyLpya', 5, 'Active', '2026-06-20 13:49:49.387595', '2026-06-20 13:49:49.387595', NULL);
INSERT INTO school_gate.users (user_id, employee_id, first_name, middle_name, last_name, email, contact_number, username, password, role_id, status, created_at, updated_at, specialization) VALUES (181, '', 'Inac', NULL, 'Tester', 'inactuser1781936832225@test.com', '09170000099', 'Inactuser1781936832225', '$2y$10$7qdNabhMzStg18jpqnz5ueLdPNh6EG8sHoFxavtQ0wk5NwtpJvcfS', 5, 'Inactive', '2026-06-20 14:27:13.227035', '2026-06-20 14:27:13.731851', NULL);
INSERT INTO school_gate.users (user_id, employee_id, first_name, middle_name, last_name, email, contact_number, username, password, role_id, status, created_at, updated_at, specialization) VALUES (186, 'EMP-1781937535149', 'Deact', NULL, 'Test', 'deact1781937535149@example.com', '09170000099', 'Deact1781937535149', '$2y$10$Da2Zp0jyBpkQPPZ1m8gE1emI0V/KknXN2Q06uzttaRfal.UuJLu6y', 5, 'Inactive', '2026-06-20 14:38:55.793975', '2026-06-20 14:39:02.316134', NULL);
INSERT INTO school_gate.users (user_id, employee_id, first_name, middle_name, last_name, email, contact_number, username, password, role_id, status, created_at, updated_at, specialization) VALUES (195, NULL, 'Edited', '', 'Success', 'edit1782386696412@example.com', '', 'Edit1782386696412', '$2y$10$OyLWX9WW69onn85hJOfMvuNEMmbaWeVjzga01SD5GBg504eIosQU6', 5, 'Active', '2026-06-25 19:25:09.434624', '2026-06-25 19:25:20.507629', NULL);
INSERT INTO school_gate.users (user_id, employee_id, first_name, middle_name, last_name, email, contact_number, username, password, role_id, status, created_at, updated_at, specialization) VALUES (180, NULL, 'Pending', '', 'Test', 'pending1781936809154@example.com', '09171234567', 'Pendinguser1781936809154', '$2y$10$UXw3kh8/6S8zPmj7XKvLUuM/Blfnhxo3KeOSHEQfDZ0ruSk6qmTv2', 2, 'Active', '2026-06-20 14:27:00.933181', '2026-06-20 14:27:00.933181', NULL);
INSERT INTO school_gate.users (user_id, employee_id, first_name, middle_name, last_name, email, contact_number, username, password, role_id, status, created_at, updated_at, specialization) VALUES (189, NULL, 'Hacker', '', 'Attack', 'hacker@evil.com', '', 'Hacker_admin', '$2y$10$s9eXB.RDb7dSG4GV8h7zd.7Q9JttLACTgQ7AqMGUMuhUBW2Twr9m2', 5, 'Inactive', '2026-06-20 16:07:47.752985', '2026-06-20 21:13:50.942257', NULL);
INSERT INTO school_gate.users (user_id, employee_id, first_name, middle_name, last_name, email, contact_number, username, password, role_id, status, created_at, updated_at, specialization) VALUES (191, '', 'Inac', NULL, 'Tester', 'inactuser1782385727766@test.com', '09170000099', 'Inactuser1782385727766', '$2y$10$wWQ4XNKOsatr1b.P2fQwzuiFGmeRv7CCvgb.ZgDK/qnhKes7aSfZy', 5, 'Inactive', '2026-06-25 19:08:49.468758', '2026-06-25 19:08:49.907467', NULL);
INSERT INTO school_gate.users (user_id, employee_id, first_name, middle_name, last_name, email, contact_number, username, password, role_id, status, created_at, updated_at, specialization) VALUES (196, 'EMP-1782386732944', 'Deact', NULL, 'Test', 'deact1782386732944@example.com', '09170000099', 'Deact1782386732944', '$2y$10$4edqxjxe8T/dPBGmJ9EvMuNVTg4bX4XwOVOVusl57EEhf23xFRJem', 5, 'Inactive', '2026-06-25 19:25:33.543324', '2026-06-25 19:25:39.553931', NULL);
INSERT INTO school_gate.users (user_id, employee_id, first_name, middle_name, last_name, email, contact_number, username, password, role_id, status, created_at, updated_at, specialization) VALUES (198, 'EMP-1782386806898', 'Empid', '', 'Test', 'empid1782386806898@example.com', '', 'Empid1782386806898', '$2y$10$bRx0t9YIf9O47vQCqhQwaeYia8Zuu64w/dpRwlwNjwgNK8MJlw1Xu', 5, 'Active', '2026-06-25 19:27:01.383198', '2026-06-25 19:27:01.383198', NULL);
INSERT INTO school_gate.users (user_id, employee_id, first_name, middle_name, last_name, email, contact_number, username, password, role_id, status, created_at, updated_at, specialization) VALUES (190, NULL, 'Pending', '', 'Test', 'pending1782385705453@example.com', '09171234567', 'Pendinguser1782385705453', '$2y$10$3V2qb/8KUnVTW1tqrxVmTeUCRKlT.YQpmxT1oGq372ybtjO41AamG', 2, 'Active', '2026-06-25 19:08:36.962997', '2026-06-25 19:08:36.962997', NULL);
INSERT INTO school_gate.users (user_id, employee_id, first_name, middle_name, last_name, email, contact_number, username, password, role_id, status, created_at, updated_at, specialization) VALUES (199, 'EMP-1782389586455', 'Ui', '', 'Test', 'uitest1782389586455@example.com', '', 'Uitest1782389586455', '$2y$10$C/7vvegYJ95PBZmZzR4TGe4DRajz3dKbGWvHpZyT1s17t/Xd7IEnO', 5, 'Active', '2026-06-25 20:13:20.617556', '2026-06-25 20:13:20.617556', NULL);
INSERT INTO school_gate.users (user_id, employee_id, first_name, middle_name, last_name, email, contact_number, username, password, role_id, status, created_at, updated_at, specialization) VALUES (200, NULL, 'Register', '', 'Test', 'reg1782389618080@example.com', '09171234567', 'Reg1782389618080', '$2y$10$JTrXd0zSQtU25n6j8f8aVeEXjs6/vnBeEPFoazH5BuY5c87COulq2', 2, 'Inactive', '2026-06-25 20:13:52.419542', '2026-06-25 20:13:52.419542', NULL);
INSERT INTO school_gate.users (user_id, employee_id, first_name, middle_name, last_name, email, contact_number, username, password, role_id, status, created_at, updated_at, specialization) VALUES (201, NULL, 'Pending', '', 'Test', 'pending1782480473106@example.com', '09171234567', 'Pendinguser1782480473106', '$2y$10$/HUnG7b7NBCX.INHSXb1C.R063Q48dlusAoUUig69FzOVpBNv/43u', 2, 'Inactive', '2026-06-26 21:27:55.382773', '2026-06-26 21:27:55.382773', NULL);
INSERT INTO school_gate.users (user_id, employee_id, first_name, middle_name, last_name, email, contact_number, username, password, role_id, status, created_at, updated_at, specialization) VALUES (202, '', 'Inac', NULL, 'Tester', 'inactuser1782480481723@test.com', '09170000099', 'Inactuser1782480481723', '$2y$10$tCNjYsqHUPdP10yh//aRxud0D28Hc5jfFwmgoLWtKfI6Sl/0JoErW', 5, 'Inactive', '2026-06-26 21:28:02.769911', '2026-06-26 21:28:03.245857', NULL);


--
-- Data for Name: sections; Type: TABLE DATA; Schema: school_gate; Owner: -
--

INSERT INTO school_gate.sections (section_id, grade_level, section_name, adviser_id, school_year, status, created_at, updated_at) VALUES (8, 'Grade 7', 'Rizal', NULL, '2026-2027', 'Active', '2026-06-14 17:52:23.485611', '2026-06-14 17:52:23.485611');
INSERT INTO school_gate.sections (section_id, grade_level, section_name, adviser_id, school_year, status, created_at, updated_at) VALUES (9, 'Grade 7', 'Bonifacio', NULL, '2026-2027', 'Active', '2026-06-14 17:52:42.109083', '2026-06-14 17:52:42.109083');
INSERT INTO school_gate.sections (section_id, grade_level, section_name, adviser_id, school_year, status, created_at, updated_at) VALUES (10, 'Grade 8', 'Vinus', NULL, '2026-2027', 'Active', '2026-06-14 17:52:57.730897', '2026-06-14 17:52:57.730897');
INSERT INTO school_gate.sections (section_id, grade_level, section_name, adviser_id, school_year, status, created_at, updated_at) VALUES (11, 'Grade 8', 'Marsh', NULL, '2026-2027', 'Active', '2026-06-14 17:53:25.841855', '2026-06-14 17:53:25.841855');
INSERT INTO school_gate.sections (section_id, grade_level, section_name, adviser_id, school_year, status, created_at, updated_at) VALUES (12, 'Grade 8', 'Earth', NULL, '2026-2027', 'Active', '2026-06-14 17:53:37.930781', '2026-06-14 17:53:37.930781');
INSERT INTO school_gate.sections (section_id, grade_level, section_name, adviser_id, school_year, status, created_at, updated_at) VALUES (13, 'Grade 9', 'Diamon', NULL, '2026-2027', 'Active', '2026-06-14 17:54:04.46629', '2026-06-14 17:54:04.46629');
INSERT INTO school_gate.sections (section_id, grade_level, section_name, adviser_id, school_year, status, created_at, updated_at) VALUES (14, 'Grade 9', 'Saiphipre', NULL, '2026-2027', 'Active', '2026-06-14 17:54:38.876288', '2026-06-14 17:54:38.876288');
INSERT INTO school_gate.sections (section_id, grade_level, section_name, adviser_id, school_year, status, created_at, updated_at) VALUES (15, 'Grade 10', 'Milton ', NULL, '2026-2027', 'Active', '2026-06-14 17:54:57.07425', '2026-06-14 17:54:57.07425');
INSERT INTO school_gate.sections (section_id, grade_level, section_name, adviser_id, school_year, status, created_at, updated_at) VALUES (22, 'Grade 12', 'BPP', NULL, '2026-2027', 'Active', '2026-06-14 17:59:18.606789', '2026-06-14 17:59:18.606789');
INSERT INTO school_gate.sections (section_id, grade_level, section_name, adviser_id, school_year, status, created_at, updated_at) VALUES (23, 'Grade 12', 'STEM', NULL, '2026-2027', 'Active', '2026-06-14 17:59:29.235651', '2026-06-14 17:59:29.235651');
INSERT INTO school_gate.sections (section_id, grade_level, section_name, adviser_id, school_year, status, created_at, updated_at) VALUES (24, 'Grade 11', 'STEM', NULL, '2026-2027', 'Active', '2026-06-14 17:59:43.94731', '2026-06-14 17:59:43.94731');
INSERT INTO school_gate.sections (section_id, grade_level, section_name, adviser_id, school_year, status, created_at, updated_at) VALUES (16, 'Grade 10', 'Longfellow', NULL, '2026-2027', 'Active', '2026-06-14 17:55:09.674431', '2026-06-14 23:35:40.861343');
INSERT INTO school_gate.sections (section_id, grade_level, section_name, adviser_id, school_year, status, created_at, updated_at) VALUES (19, 'Grade 11', 'BPP', NULL, '2026-2027', 'Active', '2026-06-14 17:58:44.494517', '2026-06-15 10:27:49.249798');
INSERT INTO school_gate.sections (section_id, grade_level, section_name, adviser_id, school_year, status, created_at, updated_at) VALUES (17, 'Grade 11', 'CSS', NULL, '2026-2027', 'Active', '2026-06-14 17:57:51.305003', '2026-06-15 10:27:58.085763');
INSERT INTO school_gate.sections (section_id, grade_level, section_name, adviser_id, school_year, status, created_at, updated_at) VALUES (21, 'Grade 12', 'CSS', 14, '2026-2027', 'Active', '2026-06-14 17:59:09.872441', '2026-06-17 05:05:48.749708');
INSERT INTO school_gate.sections (section_id, grade_level, section_name, adviser_id, school_year, status, created_at, updated_at) VALUES (43, 'Grade 7', 'TestSection_1782387558308', NULL, '2026-2027', 'Active', '2026-06-25 19:39:18.819607', '2026-06-25 19:39:18.819607');
INSERT INTO school_gate.sections (section_id, grade_level, section_name, adviser_id, school_year, status, created_at, updated_at) VALUES (44, 'Grade 8', 'EditSection_1782387576186', NULL, '2026-2027', 'Active', '2026-06-25 19:39:36.707875', '2026-06-25 19:39:36.707875');
INSERT INTO school_gate.sections (section_id, grade_level, section_name, adviser_id, school_year, status, created_at, updated_at) VALUES (45, 'Grade 9', 'DeleteSection_1782387595663', NULL, '2026-2027', 'Active', '2026-06-25 19:39:56.177782', '2026-06-25 19:39:56.177782');


--
-- Data for Name: students; Type: TABLE DATA; Schema: school_gate; Owner: -
--

INSERT INTO school_gate.students (student_id, student_number, lrn, first_name, middle_name, last_name, gender, birthdate, address, section_id, parent_id, qr_code, barcode, photo, status, created_at, updated_at, contact_number, email) VALUES (22, '2026-0010', '123456789014', 'Ana', NULL, 'Ramos', 'Female', '2008-11-05', '321 Aguinaldo Rd', NULL, 3, 'QR-2026-0010', 'INHS-00010', NULL, 'Active', '2026-06-11 14:30:52.912728', '2026-06-11 15:39:36.943796', NULL, NULL);
INSERT INTO school_gate.students (student_id, student_number, lrn, first_name, middle_name, last_name, gender, birthdate, address, section_id, parent_id, qr_code, barcode, photo, status, created_at, updated_at, contact_number, email) VALUES (23, '2026-0011', '123456789015', 'Pedro', NULL, 'Torres', 'Male', '2009-05-18', '654 Luna St', NULL, 2, 'QR-2026-0011', 'INHS-00011', NULL, 'Active', '2026-06-11 14:30:52.914148', '2026-06-14 22:17:09.120452', NULL, NULL);
INSERT INTO school_gate.students (student_id, student_number, lrn, first_name, middle_name, last_name, gender, birthdate, address, section_id, parent_id, qr_code, barcode, photo, status, created_at, updated_at, contact_number, email) VALUES (21, '2026-0009', '123456789013', 'Jose', '', 'Garcia', 'Male', '2009-01-10', '789 Bonifacio St', 24, 5, 'QR-2026-0009', 'INHS-00009', NULL, 'Active', '2026-06-11 14:30:52.911291', '2026-06-16 19:07:37.182895', '', 'Garcia@gmail.com');
INSERT INTO school_gate.students (student_id, student_number, lrn, first_name, middle_name, last_name, gender, birthdate, address, section_id, parent_id, qr_code, barcode, photo, status, created_at, updated_at, contact_number, email) VALUES (19, '2026-0007', '123456789011', 'Juan', '', 'Cruz', 'Male', '2008-03-15', '123 Rizal St', 19, 5, 'QR-2026-0007', 'INHS-00007', NULL, 'Active', '2026-06-11 14:30:52.904627', '2026-06-16 19:10:06.695126', '', '');
INSERT INTO school_gate.students (student_id, student_number, lrn, first_name, middle_name, last_name, gender, birthdate, address, section_id, parent_id, qr_code, barcode, photo, status, created_at, updated_at, contact_number, email) VALUES (32, '2026-0002', '123456789018', 'John Ervin', 'Pactol', 'Baje', 'Male', '2005-06-24', 'Ilaya Dapitan city', 21, 6, NULL, 'INHS-00002', '/uploads/students/student_32_1781555987.png', 'Active', '2026-06-14 22:06:26.295775', '2026-06-16 19:10:09.92306', '09000000000', 'ervin@gmail.com');
INSERT INTO school_gate.students (student_id, student_number, lrn, first_name, middle_name, last_name, gender, birthdate, address, section_id, parent_id, qr_code, barcode, photo, status, created_at, updated_at, contact_number, email) VALUES (35, '2026-0003', '123456789019', 'Judre Dyxon ', '', 'Baje', 'Male', '2000-03-20', 'Ilaya Dapitan City', 17, 7, NULL, 'INHS-00000', NULL, 'Active', '2026-06-17 18:50:53.92451', '2026-06-17 18:51:20.020736', '', 'rexon@gmail.com');


--
-- Data for Name: attendance; Type: TABLE DATA; Schema: school_gate; Owner: -
--

INSERT INTO school_gate.attendance (attendance_id, student_id, attendance_date, time_in, time_out, status, remarks, created_at) VALUES (5, 32, '2026-06-15', '17:48:19', '17:49:00', 'Late', 'Time-out recorded', '2026-06-15 02:48:19.854775');
INSERT INTO school_gate.attendance (attendance_id, student_id, attendance_date, time_in, time_out, status, remarks, created_at) VALUES (12, 23, '2026-06-16', '02:30:03', NULL, 'Present', 'On time', '2026-06-15 11:30:03.193827');
INSERT INTO school_gate.attendance (attendance_id, student_id, attendance_date, time_in, time_out, status, remarks, created_at) VALUES (8, 32, '2026-06-16', '02:24:45', '02:50:15', 'Present', 'Exit: Parent Pickup', '2026-06-15 11:24:45.517435');
INSERT INTO school_gate.attendance (attendance_id, student_id, attendance_date, time_in, time_out, status, remarks, created_at) VALUES (10, 21, '2026-06-16', '02:26:03', '02:53:39', 'Present', 'Exit: Medical Emergency', '2026-06-15 11:26:03.256339');
INSERT INTO school_gate.attendance (attendance_id, student_id, attendance_date, time_in, time_out, status, remarks, created_at) VALUES (9, 19, '2026-06-16', '02:25:44', '03:09:38', 'Present', 'Exit: Official School Activity', '2026-06-15 11:25:44.118925');
INSERT INTO school_gate.attendance (attendance_id, student_id, attendance_date, time_in, time_out, status, remarks, created_at) VALUES (11, 22, '2026-06-16', '02:26:15', '03:10:57', 'Present', 'Exit: Teacher Request', '2026-06-15 11:26:15.718856');
INSERT INTO school_gate.attendance (attendance_id, student_id, attendance_date, time_in, time_out, status, remarks, created_at) VALUES (14, 19, '2026-06-17', '12:07:07', '14:34:29', 'Late', 'Exit: Lunch Pass', '2026-06-17 12:07:07.289227');
INSERT INTO school_gate.attendance (attendance_id, student_id, attendance_date, time_in, time_out, status, remarks, created_at) VALUES (15, 21, '2026-06-17', '12:07:55', '14:34:50', 'Late', 'Exit: Lunch Pass', '2026-06-17 12:07:55.451459');
INSERT INTO school_gate.attendance (attendance_id, student_id, attendance_date, time_in, time_out, status, remarks, created_at) VALUES (17, 23, '2026-06-17', '12:08:40', '14:35:15', 'Late', 'Exit: Lunch Pass', '2026-06-17 12:08:40.377939');
INSERT INTO school_gate.attendance (attendance_id, student_id, attendance_date, time_in, time_out, status, remarks, created_at) VALUES (13, 32, '2026-06-17', '11:09:58', '11:27:04', 'Present', 'Marked by teacher [Subject: 77]', '2026-06-17 11:09:58.574815');
INSERT INTO school_gate.attendance (attendance_id, student_id, attendance_date, time_in, time_out, status, remarks, created_at) VALUES (16, 22, '2026-06-17', '12:08:21', '18:35:06', 'Late', 'Exit: Dismissal', '2026-06-17 12:08:21.216586');
INSERT INTO school_gate.attendance (attendance_id, student_id, attendance_date, time_in, time_out, status, remarks, created_at) VALUES (18, 35, '2026-06-17', '18:52:00', NULL, 'Present', 'Marked by teacher [Subject: 78]', '2026-06-17 18:52:00.489623');
INSERT INTO school_gate.attendance (attendance_id, student_id, attendance_date, time_in, time_out, status, remarks, created_at) VALUES (19, 32, '2026-06-18', '11:12:06', '11:13:06', 'Late', 'Exit: Dismissal', '2026-06-18 11:12:06.881344');
INSERT INTO school_gate.attendance (attendance_id, student_id, attendance_date, time_in, time_out, status, remarks, created_at) VALUES (20, 35, '2026-06-18', '23:55:06', NULL, 'Late', 'Late by 985 minutes', '2026-06-18 23:55:06.432973');
INSERT INTO school_gate.attendance (attendance_id, student_id, attendance_date, time_in, time_out, status, remarks, created_at) VALUES (21, 19, '2026-06-18', '23:55:27', NULL, 'Late', 'Late by 985 minutes', '2026-06-18 23:55:27.726772');
INSERT INTO school_gate.attendance (attendance_id, student_id, attendance_date, time_in, time_out, status, remarks, created_at) VALUES (22, 21, '2026-06-18', '23:55:47', NULL, 'Late', 'Late by 985 minutes', '2026-06-18 23:55:47.697839');
INSERT INTO school_gate.attendance (attendance_id, student_id, attendance_date, time_in, time_out, status, remarks, created_at) VALUES (23, 22, '2026-06-18', '23:56:05', NULL, 'Late', 'Late by 986 minutes', '2026-06-18 23:56:05.483963');
INSERT INTO school_gate.attendance (attendance_id, student_id, attendance_date, time_in, time_out, status, remarks, created_at) VALUES (24, 23, '2026-06-18', '23:56:23', NULL, 'Late', 'Late by 986 minutes', '2026-06-18 23:56:23.471605');
INSERT INTO school_gate.attendance (attendance_id, student_id, attendance_date, time_in, time_out, status, remarks, created_at) VALUES (25, 32, '2026-06-20', '20:51:39', '20:53:21', 'Late', 'Exit: Dismissal', '2026-06-20 20:51:39.538567');
INSERT INTO school_gate.attendance (attendance_id, student_id, attendance_date, time_in, time_out, status, remarks, created_at) VALUES (26, 19, '2026-06-20', '20:54:16', '20:54:57', 'Late', 'Exit: Dismissal', '2026-06-20 20:54:16.161164');
INSERT INTO school_gate.attendance (attendance_id, student_id, attendance_date, time_in, time_out, status, remarks, created_at) VALUES (27, 22, '2026-06-20', '20:55:57', '21:02:18', 'Late', 'Exit: Dismissal', '2026-06-20 20:55:57.753066');
INSERT INTO school_gate.attendance (attendance_id, student_id, attendance_date, time_in, time_out, status, remarks, created_at) VALUES (28, 23, '2026-06-20', '20:57:48', '21:02:37', 'Late', 'Exit: Dismissal', '2026-06-20 20:57:48.973577');
INSERT INTO school_gate.attendance (attendance_id, student_id, attendance_date, time_in, time_out, status, remarks, created_at) VALUES (29, 21, '2026-06-20', '21:03:11', NULL, 'Late', 'Late by 813 minutes', '2026-06-20 21:03:11.241488');
INSERT INTO school_gate.attendance (attendance_id, student_id, attendance_date, time_in, time_out, status, remarks, created_at) VALUES (30, 35, '2026-06-20', '21:03:37', NULL, 'Late', 'Late by 813 minutes', '2026-06-20 21:03:37.14073');


--
-- Data for Name: audit_logs; Type: TABLE DATA; Schema: school_gate; Owner: -
--

INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-11 09:10:17.442576');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2, 1, 'LOGIN', 'User logged in', '::1', '2026-06-11 09:10:41.425672');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (3, 1, 'LOGIN', 'User logged in', '::1', '2026-06-11 09:11:37.765965');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (4, 1, 'LOGIN', 'User logged in', '::1', '2026-06-11 09:22:34.945404');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (5, 1, 'LOGIN', 'User logged in', '::1', '2026-06-11 09:24:35.376993');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (6, 1, 'LOGIN', 'User logged in', '::1', '2026-06-11 09:24:48.196833');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (7, 1, 'LOGIN', 'User logged in', '::1', '2026-06-11 09:26:36.627975');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (8, 1, 'LOGIN', 'User logged in', '::1', '2026-06-11 09:27:33.145739');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (9, 1, 'CREATE', 'Created section #1', '::1', '2026-06-11 09:27:34.037683');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (10, 1, 'LOGIN', 'User logged in', '::1', '2026-06-11 09:38:06.751086');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (11, 1, 'CREATE', 'Created student #3', '::1', '2026-06-11 09:38:07.501195');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (12, 1, 'LOGIN', 'User logged in', '::1', '2026-06-11 09:43:01.2886');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (13, 3, 'REGISTER', 'New Teacher registration submitted', '::1', '2026-06-11 13:06:21.692519');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (14, 1, 'LOGIN', 'User logged in', '::1', '2026-06-11 13:19:43.613327');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (15, 1, 'GENERATE_BARCODE', 'Barcode for student #3', '::1', '2026-06-11 13:20:03.103218');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (16, 1, 'CREATE', 'Backup created', '::1', '2026-06-11 13:20:28.45815');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (17, 1, 'UPDATE', 'Activated user #3', '::1', '2026-06-11 13:21:54.719163');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (18, 1, 'LOGIN', 'User logged in', '::1', '2026-06-11 13:24:24.466791');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (19, 1, 'UPDATE', 'Updated user #3', '::1', '2026-06-11 13:24:58.631535');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (20, 3, 'LOGIN', 'User logged in', '::1', '2026-06-11 13:34:18.010271');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (21, 3, 'LOGIN', 'User logged in', '::1', '2026-06-11 13:35:56.645447');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (22, 1, 'LOGIN', 'User logged in', '::1', '2026-06-11 13:39:14.018159');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (23, 1, 'LOGIN', 'User logged in', '::1', '2026-06-11 13:39:50.09548');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (24, 1, 'UPDATE', 'Updated settings', '::1', '2026-06-11 13:39:56.92207');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (25, 1, 'LOGIN', 'User logged in', '::1', '2026-06-11 13:40:40.610634');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (26, 3, 'LOGIN', 'User logged in', '::1', '2026-06-11 13:49:00.561271');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (27, 1, 'LOGIN', 'User logged in', '::1', '2026-06-11 13:52:46.689738');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (28, 1, 'GENERATE_BARCODE', 'Barcode for student #3', '::1', '2026-06-11 13:53:07.765003');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (29, 1, 'GENERATE_QR', 'QR for student #3', '::1', '2026-06-11 13:53:10.82374');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (30, 1, 'LOGIN', 'User logged in', '::1', '2026-06-11 13:55:30.481206');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (31, 1, 'UPDATE', 'Updated settings', '::1', '2026-06-11 13:56:13.627325');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (32, 1, 'UPDATE', 'Updated settings', '::1', '2026-06-11 13:56:16.566612');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (33, 1, 'LOGIN', 'User logged in', '::1', '2026-06-11 13:58:41.704422');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (34, 1, 'UPDATE', 'Updated settings', '::1', '2026-06-11 14:02:17.078463');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (35, 3, 'LOGIN', 'User logged in', '::1', '2026-06-11 14:02:34.177154');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (36, 4, 'REGISTER', 'New Teacher registration submitted', '::1', '2026-06-11 14:05:05.05551');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (37, 1, 'LOGIN', 'User logged in', '::1', '2026-06-11 14:05:56.181627');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (38, 1, 'UPDATE', 'Activated user #4', '::1', '2026-06-11 14:06:27.325243');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (39, 1, 'UPDATE', 'Updated user #4', '::1', '2026-06-11 14:07:32.585472');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (40, 1, 'APPROVE', 'Registration #2 approved', '::1', '2026-06-11 14:07:39.665838');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (41, 1, 'UPDATE', 'Adviser assigned to section #1', '::1', '2026-06-11 14:08:00.23079');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (42, 1, 'UPDATE', 'Updated section #1', '::1', '2026-06-11 14:10:18.089618');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (43, 1, 'UPDATE', 'Updated settings', '::1', '2026-06-11 14:11:06.387512');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (44, 1, 'CREATE', 'Created user #5', '::1', '2026-06-11 14:13:14.02661');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (45, 5, 'LOGIN', 'User logged in', '::1', '2026-06-11 14:15:00.968879');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (46, 1, 'GENERATE_QR', 'QR for student #3', '::1', '2026-06-11 14:18:17.653086');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (47, 1, 'GENERATE_BARCODE', 'Barcode for student #3', '::1', '2026-06-11 14:18:46.123682');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (48, 1, 'GENERATE_BARCODE', 'Barcode for student #14', '::1', '2026-06-11 14:22:59.209309');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (49, 1, 'GENERATE_BARCODE', 'Barcode for student #14', '::1', '2026-06-11 14:24:15.220971');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (50, 1, 'GENERATE_QR', 'QR for student #14', '::1', '2026-06-11 14:24:18.492925');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (51, 1, 'CREATE', 'Backup created', '::1', '2026-06-11 14:28:11.038878');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (52, 1, 'DELETE', 'Deleted backup #2', '::1', '2026-06-11 14:28:16.767524');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (53, 1, 'LOGIN', 'User logged in', '::1', '2026-06-11 15:03:46.241054');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (54, 1, 'GENERATE_BARCODE', 'Barcode for student #3', '::1', '2026-06-11 15:04:34.930674');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (55, 9, 'LOGIN', 'User logged in', '::1', '2026-06-11 15:07:30.219477');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (56, 1, 'GENERATE_BARCODE', 'Barcode for student #14', '::1', '2026-06-11 15:11:47.047269');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (57, 1, 'GENERATE_BARCODE', 'Barcode for student #14', '::1', '2026-06-11 15:11:49.661148');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (58, 1, 'GENERATE_BARCODE', 'Barcode for student #3', '::1', '2026-06-11 15:11:51.985218');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (59, 1, 'UPDATE', 'Updated settings', '::1', '2026-06-11 15:19:25.534083');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (60, 1, 'GENERATE_BARCODE', 'Barcode for student #19', '::1', '2026-06-11 15:25:38.022376');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (61, 1, 'GENERATE_BARCODE', 'Barcode for student #19', '::1', '2026-06-11 15:25:39.915357');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (62, 1, 'GENERATE_BARCODE', 'Barcode for student #19', '::1', '2026-06-11 15:25:41.813043');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (63, 1, 'GENERATE_BARCODE', 'Barcode for student #3', '::1', '2026-06-11 15:25:44.933541');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (64, 1, 'GENERATE_BARCODE', 'Barcode for student #14', '::1', '2026-06-11 15:25:54.248794');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (65, 5, 'LOGIN', 'User logged in', '::1', '2026-06-11 15:26:24.25441');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (66, 1, 'UPDATE', 'Adviser assigned to section #4', '::1', '2026-06-11 15:29:34.847449');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (67, 1, 'UPDATE', 'Updated section #1', '::1', '2026-06-11 15:29:51.665614');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (68, 1, 'UPDATE', 'Updated section #1', '::1', '2026-06-11 15:30:08.149415');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (69, 1, 'UPDATE', 'Updated section #1', '::1', '2026-06-11 15:30:40.811904');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (70, 1, 'LOGIN', 'User logged in', '::1', '2026-06-11 15:33:26.294273');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (71, 1, 'LOGIN', 'User logged in', '::1', '2026-06-11 15:36:09.445598');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (72, 1, 'UPDATE', 'Updated settings', '::1', '2026-06-11 15:36:10.129332');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (73, 1, 'GENERATE_BARCODE', 'Barcode for student #3', '::1', '2026-06-11 15:36:10.477458');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (74, 1, 'LOGIN', 'User logged in', '::1', '2026-06-11 15:36:52.113401');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (75, 11, 'REGISTER', 'New Viewer registration submitted', '::1', '2026-06-11 15:36:53.191209');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (76, 1, 'UPDATE', 'Updated settings', '::1', '2026-06-11 15:36:54.466412');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (77, 1, 'UPDATE', 'Updated settings', '::1', '2026-06-11 15:37:57.704039');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (78, 1, 'GENERATE_BARCODE', 'Barcode for student #17', '::1', '2026-06-11 15:38:06.483409');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (79, 1, 'GENERATE_BARCODE', 'Barcode for student #15', '::1', '2026-06-11 15:38:08.567608');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (80, 1, 'GENERATE_BARCODE', 'Barcode for student #25', '::1', '2026-06-11 15:38:10.402105');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (81, 1, 'GENERATE_BARCODE', 'Barcode for student #18', '::1', '2026-06-11 15:38:18.686147');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (82, 1, 'GENERATE_BARCODE', 'Barcode for student #23', '::1', '2026-06-11 15:38:20.282083');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (83, 1, 'GENERATE_BARCODE', 'Barcode for student #19', '::1', '2026-06-11 15:38:22.513442');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (84, 1, 'GENERATE_BARCODE', 'Barcode for student #3', '::1', '2026-06-11 15:38:24.196624');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (85, 1, 'GENERATE_BARCODE', 'Barcode for student #14', '::1', '2026-06-11 15:38:31.916758');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (86, 1, 'GENERATE_BARCODE', 'Barcode for student #16', '::1', '2026-06-11 15:38:34.715427');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (87, 1, 'GENERATE_BARCODE', 'Barcode for student #21', '::1', '2026-06-11 15:39:33.093251');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (88, 1, 'GENERATE_BARCODE', 'Barcode for student #22', '::1', '2026-06-11 15:39:36.953714');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (89, 1, 'UPDATE', 'Updated settings', '::1', '2026-06-11 15:41:47.446329');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (90, 1, 'UPDATE', 'Updated settings', '::1', '2026-06-11 15:41:49.919166');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (91, 1, 'APPROVE', 'Registration #3 approved', '::1', '2026-06-11 15:44:56.863315');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (92, 1, 'UPDATE', 'Updated settings', '::1', '2026-06-11 15:46:39.879163');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (93, 1, 'UPDATE', 'Updated section #4', '::1', '2026-06-11 15:49:02.414765');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (94, 1, 'DELETE', 'Deleted section #4', '::1', '2026-06-11 15:49:16.926344');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (95, 1, 'LOGIN', 'User logged in', '::1', '2026-06-11 15:55:54.872932');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (96, 1, 'LOGIN', 'User logged in', '::1', '2026-06-11 16:03:08.63971');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (97, 1, 'CREATE', 'Created user #13', '::1', '2026-06-11 16:03:09.519493');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (98, 6, 'LOGIN', 'User logged in', '::1', '2026-06-11 16:03:10.465865');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (99, 1, 'CREATE', 'Created section #7', '::1', '2026-06-11 16:06:00.223598');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (100, 1, 'LOGIN', 'User logged in', '::1', '2026-06-14 15:23:58.955604');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (101, 1, 'LOGIN', 'User logged in', '::1', '2026-06-14 15:29:38.90016');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (102, 1, 'UPDATE', 'Updated user #1', '::1', '2026-06-14 15:30:25.002677');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (103, 1, 'UPDATE', 'Deactivated user #1', '::1', '2026-06-14 15:30:28.876877');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (104, 1, 'UPDATE', 'Activated user #1', '::1', '2026-06-14 15:30:33.152464');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (105, 1, 'UPDATE', 'Deactivated user #3', '::1', '2026-06-14 15:30:36.297782');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (106, 1, 'UPDATE', 'Activated user #3', '::1', '2026-06-14 15:30:40.078209');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (107, 1, 'CREATE', 'Created user #14', '::1', '2026-06-14 15:31:41.102876');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (108, 1, 'UPDATE', 'Updated user #14', '::1', '2026-06-14 15:31:55.375369');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (109, 1, 'UPDATE', 'Updated user #14', '::1', '2026-06-14 15:32:43.306683');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (110, 1, 'UPDATE', 'Updated user #14', '::1', '2026-06-14 15:32:53.569535');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (111, 1, 'UPDATE', 'Updated user #14', '::1', '2026-06-14 15:32:58.196832');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (112, 1, 'UPDATE', 'Updated user #14', '::1', '2026-06-14 15:33:03.924232');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (113, 1, 'UPDATE', 'Updated user #14', '::1', '2026-06-14 15:33:13.342127');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (114, 1, 'UPDATE', 'Updated user #14', '::1', '2026-06-14 15:33:20.321952');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (115, 1, 'LOGIN', 'User logged in', '::1', '2026-06-14 16:51:37.588694');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (116, 1, 'UPDATE', 'Updated settings', '::1', '2026-06-14 16:53:48.735079');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (117, 1, 'CREATE', 'Created student #30', '::1', '2026-06-14 16:56:48.175958');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (118, 1, 'GENERATE_BARCODE', 'Barcode for student #30', '::1', '2026-06-14 16:56:54.875864');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (119, 1, 'CREATE', 'Created parent #6', '::1', '2026-06-14 17:01:48.74491');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (120, 1, 'UPDATE', 'Updated parent #6', '::1', '2026-06-14 17:02:07.291837');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (121, 1, 'UPDATE', 'Updated parent #6', '::1', '2026-06-14 17:04:34.428962');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (122, 1, 'CREATE', 'Created section #8', '::1', '2026-06-14 17:52:23.495955');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (123, 1, 'CREATE', 'Created section #9', '::1', '2026-06-14 17:52:42.114594');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (124, 1, 'CREATE', 'Created section #10', '::1', '2026-06-14 17:52:57.736316');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (125, 1, 'CREATE', 'Created section #11', '::1', '2026-06-14 17:53:25.847965');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (126, 1, 'CREATE', 'Created section #12', '::1', '2026-06-14 17:53:37.937053');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (127, 1, 'CREATE', 'Created section #13', '::1', '2026-06-14 17:54:04.477619');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (128, 1, 'CREATE', 'Created section #14', '::1', '2026-06-14 17:54:38.882862');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (129, 1, 'CREATE', 'Created section #15', '::1', '2026-06-14 17:54:57.081771');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (130, 1, 'CREATE', 'Created section #16', '::1', '2026-06-14 17:55:09.680641');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (131, 1, 'DELETE', 'Deleted section #3', '::1', '2026-06-14 17:55:13.577251');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (132, 1, 'DELETE', 'Deleted section #6', '::1', '2026-06-14 17:55:21.714106');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (133, 1, 'DELETE', 'Deleted section #5', '::1', '2026-06-14 17:55:23.968673');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (134, 1, 'DELETE', 'Deleted section #7', '::1', '2026-06-14 17:57:07.301311');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (135, 1, 'CREATE', 'Created section #17', '::1', '2026-06-14 17:57:51.311303');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (136, 1, 'CREATE', 'Created section #18', '::1', '2026-06-14 17:58:01.912839');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (137, 1, 'CREATE', 'Created section #19', '::1', '2026-06-14 17:58:44.500783');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (138, 1, 'CREATE', 'Created section #20', '::1', '2026-06-14 17:58:52.715075');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (139, 1, 'DELETE', 'Deleted section #20', '::1', '2026-06-14 17:59:00.367598');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (140, 1, 'CREATE', 'Created section #21', '::1', '2026-06-14 17:59:09.878935');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (141, 1, 'CREATE', 'Created section #22', '::1', '2026-06-14 17:59:18.613002');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (142, 1, 'CREATE', 'Created section #23', '::1', '2026-06-14 17:59:29.242139');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (143, 1, 'DELETE', 'Deleted section #18', '::1', '2026-06-14 17:59:34.101812');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (144, 1, 'CREATE', 'Created section #24', '::1', '2026-06-14 17:59:43.953178');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (145, 1, 'CREATE', 'Backup created', '::1', '2026-06-14 18:00:31.582329');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (146, 1, 'DELETE', 'Deleted backup #1', '::1', '2026-06-14 18:00:36.570027');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (147, 1, 'CREATE', 'Created user #15', '::1', '2026-06-14 18:02:08.10768');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (148, 1, 'DELETE', 'Deleted attendance #1', '::1', '2026-06-14 20:41:22.070046');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (149, 1, 'DELETE', 'Deleted attendance #3', '::1', '2026-06-14 20:41:24.234764');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (150, 1, 'DELETE', 'Deleted attendance #2', '::1', '2026-06-14 20:41:26.246009');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (151, 1, 'UPDATE', 'Updated student #14', '::1', '2026-06-14 20:42:05.413026');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (152, 1, 'UPDATE', 'Updated student #3', '::1', '2026-06-14 20:42:19.616497');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (153, 1, 'UPDATE', 'Updated student #16', '::1', '2026-06-14 20:42:53.686508');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (154, 1, 'DELETE', 'Deleted student #14', '::1', '2026-06-14 20:51:39.755778');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (155, 1, 'DELETE', 'Deleted student #3', '::1', '2026-06-14 20:51:42.372939');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (156, 1, 'DELETE', 'Deleted student #16', '::1', '2026-06-14 20:51:44.426054');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (157, 1, 'DELETE', 'Deleted student #17', '::1', '2026-06-14 20:51:47.148617');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (158, 1, 'DELETE', 'Deleted student #15', '::1', '2026-06-14 20:51:49.158516');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (159, 1, 'DELETE', 'Deleted student #25', '::1', '2026-06-14 20:51:51.241669');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (160, 1, 'DELETE', 'Deleted student #18', '::1', '2026-06-14 20:51:53.786191');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (161, 1, 'LOGIN', 'User logged in', '::1', '2026-06-14 21:24:11.620539');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (162, 1, 'UPDATE', 'Updated user #15', '::1', '2026-06-14 21:26:17.608068');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (163, 1, 'CREATE', 'Created user #16', '::1', '2026-06-14 21:28:07.444256');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (164, 1, 'DELETE', 'Deleted user #16', '::1', '2026-06-14 21:35:15.712102');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (165, 1, 'DELETE', 'Deleted user #15', '::1', '2026-06-14 21:35:17.437797');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (166, 1, 'GENERATE_BARCODE', 'Barcode for student #30', '::1', '2026-06-14 21:37:45.935539');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (167, 1, 'GENERATE_BARCODE', 'Barcode for student #30', '::1', '2026-06-14 21:37:50.094739');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (168, 1, 'DELETE', 'Deleted student #30', '::1', '2026-06-14 21:44:16.248898');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (169, 1, 'CREATE', 'Created student #32', '::1', '2026-06-14 22:06:26.316066');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (170, 1, 'UPDATE', 'Updated student #32', '::1', '2026-06-14 22:10:20.041248');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (171, 1, 'UPDATE', 'Updated student #32', '::1', '2026-06-14 22:10:47.505404');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (172, 1, 'UPDATE', 'Updated parent #6', '::1', '2026-06-14 22:11:37.995079');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (173, 1, 'GENERATE_BARCODE', 'Barcode for student #32', '::1', '2026-06-14 22:17:02.498053');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (174, 1, 'GENERATE_BARCODE', 'Barcode for student #19', '::1', '2026-06-14 22:17:04.638552');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (175, 1, 'GENERATE_BARCODE', 'Barcode for student #21', '::1', '2026-06-14 22:17:06.520082');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (176, 1, 'GENERATE_BARCODE', 'Barcode for student #23', '::1', '2026-06-14 22:17:09.129069');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (177, 1, 'UPDATE', 'Updated student #32', '::1', '2026-06-14 22:18:38.63869');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (178, 1, 'GENERATE_BARCODE', 'Barcode for student #32', '::1', '2026-06-14 22:18:41.158644');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (179, 1, 'UPDATE', 'Updated student #32', '::1', '2026-06-14 22:18:55.21269');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (180, 1, 'GENERATE_BARCODE', 'Barcode for student #32', '::1', '2026-06-14 22:18:57.303614');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (181, 1, 'GENERATE_BARCODE', 'Barcode for student #32', '::1', '2026-06-14 22:22:07.29949');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (182, 1, 'DELETE', 'Deleted section #2', '::1', '2026-06-14 22:24:00.398733');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (183, 1, 'DELETE', 'Deleted section #1', '::1', '2026-06-14 22:24:03.906969');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (184, 1, 'UPDATE', 'Adviser assigned to section #16', '::1', '2026-06-14 22:50:05.540121');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (185, 1, 'UPDATE', 'Updated section #16', '::1', '2026-06-14 22:50:14.975788');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (186, 1, 'UPDATE', 'Updated section #16', '::1', '2026-06-14 22:50:38.947905');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (187, 1, 'UPDATE', 'Updated section #16', '::1', '2026-06-14 22:52:47.965244');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (188, 1, 'UPDATE', 'Adviser assigned to section #16', '::1', '2026-06-14 22:52:57.455573');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (189, 1, 'UPDATE', 'Adviser assigned to section #16', '::1', '2026-06-14 22:53:01.742031');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (190, 1, 'UPDATE', 'Adviser assigned to section #16', '::1', '2026-06-14 22:53:05.96386');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (191, 1, 'UPDATE', 'Adviser assigned to section #16', '::1', '2026-06-14 22:54:23.904933');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (192, 1, 'UPDATE', 'Updated section #16', '::1', '2026-06-14 22:54:40.158684');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (193, 1, 'UPDATE', 'Adviser assigned to section #16', '::1', '2026-06-14 22:54:48.528682');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (194, 1, 'UPDATE', 'Adviser assigned to section #16', '::1', '2026-06-14 22:55:59.143811');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (195, 1, 'UPDATE', 'Adviser assigned to section #16', '::1', '2026-06-14 22:57:14.369834');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (196, 1, 'GENERATE_BARCODE', 'Barcode for student #32', '::1', '2026-06-14 22:58:02.810483');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (197, 1, 'UPDATE', 'Updated student #32', '::1', '2026-06-14 22:58:38.146653');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (198, 1, 'UPDATE', 'Updated student #32', '::1', '2026-06-14 22:59:16.442388');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (199, 1, 'GENERATE_BARCODE', 'Barcode for student #32', '::1', '2026-06-14 23:00:04.22189');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (200, 1, 'CREATE', 'Created user #17', '::1', '2026-06-14 23:01:15.06396');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (201, 1, 'UPDATE', 'Deactivated user #17', '::1', '2026-06-14 23:01:31.10873');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (202, 1, 'UPDATE', 'Activated user #17', '::1', '2026-06-14 23:01:32.805406');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (203, 1, 'UPDATE', 'Deactivated user #17', '::1', '2026-06-14 23:01:38.771404');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (204, 1, 'UPDATE', 'Activated user #17', '::1', '2026-06-14 23:05:03.475194');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (205, 1, 'UPDATE', 'Deactivated user #17', '::1', '2026-06-14 23:05:06.004846');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (206, 1, 'UPDATE', 'Activated user #17', '::1', '2026-06-14 23:05:07.402046');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (207, 1, 'UPDATE', 'Deactivated user #17', '::1', '2026-06-14 23:05:11.317271');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (208, 1, 'UPDATE', 'Activated user #17', '::1', '2026-06-14 23:05:43.980487');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (209, 1, 'UPDATE', 'Activated user #17', '::1', '2026-06-14 23:05:46.604497');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (210, 1, 'UPDATE', 'Deactivated user #17', '::1', '2026-06-14 23:05:53.389475');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (211, 1, 'UPDATE', 'Activated user #17', '::1', '2026-06-14 23:05:57.598862');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (212, 1, 'UPDATE', 'Deactivated user #17', '::1', '2026-06-14 23:06:05.15624');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (213, 1, 'UPDATE', 'Activated user #17', '::1', '2026-06-14 23:06:39.335516');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (214, 1, 'UPDATE', 'Deactivated user #17', '::1', '2026-06-14 23:06:44.225916');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (215, 1, 'UPDATE', 'Activated user #17', '::1', '2026-06-14 23:06:48.006383');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (216, 1, 'UPDATE', 'Deactivated user #17', '::1', '2026-06-14 23:07:39.190686');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (217, 1, 'GENERATE_BARCODE', 'Barcode for student #32', '::1', '2026-06-14 23:07:46.389316');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (218, 1, 'UPDATE', 'Updated student #32', '::1', '2026-06-14 23:07:56.742328');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (219, 1, 'UPDATE', 'Updated student #32', '::1', '2026-06-14 23:08:15.621449');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (220, 1, 'UPDATE', 'Adviser assigned to section #16', '::1', '2026-06-14 23:09:53.689608');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (221, 1, 'UPDATE', 'Activated user #17', '::1', '2026-06-14 23:10:11.34197');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (222, 1, 'UPDATE', 'Deactivated user #17', '::1', '2026-06-14 23:13:34.994203');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (223, 1, 'UPDATE', 'Activated user #17', '::1', '2026-06-14 23:13:41.245825');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (224, 1, 'UPDATE', 'Deactivated user #17', '::1', '2026-06-14 23:16:15.737709');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (225, 1, 'UPDATE', 'Activated user #17', '::1', '2026-06-14 23:16:20.065223');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (226, 1, 'UPDATE', 'Deactivated user #17', '::1', '2026-06-14 23:16:36.668058');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (227, 1, 'UPDATE', 'Activated user #17', '::1', '2026-06-14 23:18:41.03872');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (228, 1, 'UPDATE', 'Deactivated user #17', '::1', '2026-06-14 23:21:07.450024');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (229, 1, 'UPDATE', 'Activated user #17', '::1', '2026-06-14 23:21:13.233917');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (230, 1, 'UPDATE', 'Deactivated user #17', '::1', '2026-06-14 23:21:22.647466');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (231, 1, 'UPDATE', 'Activated user #17', '::1', '2026-06-14 23:21:31.606976');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (232, 1, 'UPDATE', 'Deactivated user #17', '::1', '2026-06-14 23:21:40.783079');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (233, 1, 'UPDATE', 'Activated user #17', '::1', '2026-06-14 23:21:44.86874');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (234, 1, 'GENERATE_BARCODE', 'Barcode for student #32', '::1', '2026-06-14 23:21:56.529773');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (235, 1, 'UPDATE', 'Updated user #9', '::1', '2026-06-14 23:26:07.665676');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (236, 1, 'DELETE', 'Deleted user #13', '::1', '2026-06-14 23:32:59.192723');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (237, 1, 'UPDATE', 'Adviser assigned to section #16', '::1', '2026-06-14 23:35:40.872454');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (238, 1, 'UPDATE', 'Updated user #5', '::1', '2026-06-14 23:41:21.566409');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (239, 5, 'LOGIN', 'User logged in', '::1', '2026-06-14 23:41:37.361252');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (240, 6, 'LOGIN', 'User logged in', '::1', '2026-06-14 23:45:05.691826');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (241, 7, 'LOGIN', 'User logged in', '::1', '2026-06-14 23:46:18.127696');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (242, 1, 'UPDATE', 'Updated student #32', '::1', '2026-06-14 23:48:47.475565');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (243, 5, 'LOGIN', 'User logged in', '::1', '2026-06-14 23:49:12.158875');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (244, 1, 'UPDATE', 'Updated parent #6', '::1', '2026-06-14 23:52:24.895319');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (245, 1, 'UPDATE', 'Updated parent #6', '::1', '2026-06-14 23:55:03.385336');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (246, 1, 'UPDATE', 'Updated settings', '::1', '2026-06-15 00:15:50.293149');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (247, 1, 'UPDATE', 'Updated settings', '::1', '2026-06-15 00:18:09.755851');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (248, 1, 'UPDATE', 'Updated settings', '::1', '2026-06-15 00:18:41.350512');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (249, 1, 'UPDATE', 'Updated settings', '::1', '2026-06-15 00:20:27.082703');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (250, 1, 'UPDATE', 'Updated settings', '::1', '2026-06-15 00:21:02.793432');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (251, 5, 'LOGIN', 'User logged in', '::1', '2026-06-15 00:54:08.345456');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (252, 1, 'DELETE', 'Deleted attendance #4', '::1', '2026-06-15 02:48:00.206068');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (253, 1, 'LOGIN', 'User logged in', '::1', '2026-06-15 09:29:58.619539');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (254, 5, 'LOGIN', 'User logged in', '::1', '2026-06-15 09:35:09.013881');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (255, 1, 'DELETE', 'Deleted attendance #6', '::1', '2026-06-15 10:07:41.373739');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (256, 1, 'UPDATE', 'Adviser assigned to section #17', '::1', '2026-06-15 10:27:28.148445');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (257, 1, 'UPDATE', 'Adviser assigned to section #19', '::1', '2026-06-15 10:27:40.527346');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (258, 1, 'UPDATE', 'Adviser assigned to section #19', '::1', '2026-06-15 10:27:49.25908');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (259, 1, 'UPDATE', 'Adviser assigned to section #17', '::1', '2026-06-15 10:27:58.0993');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (260, 1, 'DELETE', 'Deleted attendance #7', '::1', '2026-06-15 11:24:37.004611');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (261, 1, 'LOGIN', 'User logged in', '10.0.9.151', '2026-06-16 02:58:00.793203');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (262, 1, 'LOGIN', 'User logged in', '10.0.9.151', '2026-06-16 03:00:19.434657');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (263, 5, 'LOGIN', 'User logged in', '10.0.9.151', '2026-06-16 03:01:50.939583');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (264, 1, 'UPDATE', 'Updated settings', '127.0.0.1', '2026-06-16 03:26:31.090085');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (265, 1, 'GENERATE_BARCODE', 'Barcode for student #32', '127.0.0.1', '2026-06-16 03:26:35.889706');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (266, 1, 'GENERATE_BARCODE', 'Barcode for student #19', '127.0.0.1', '2026-06-16 03:26:41.378978');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (267, 1, 'UPDATE', 'Updated settings', '127.0.0.1', '2026-06-16 03:32:46.738741');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (268, 1, 'UPDATE', 'Updated user #14', '10.0.9.151', '2026-06-16 03:53:54.126259');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (269, 14, 'LOGIN', 'User logged in', '10.0.9.151', '2026-06-16 03:54:06.436191');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (270, 1, 'UPLOAD_PHOTO', 'Photo uploaded for student #32', '10.0.9.151', '2026-06-16 04:39:47.39821');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (271, 1, 'UPDATE', 'Updated user #14', '10.0.9.151', '2026-06-16 04:40:32.058087');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (272, 14, 'LOGIN', 'User logged in', '10.0.9.151', '2026-06-16 04:41:21.910469');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (273, 1, 'SEED', 'Seeded 34 preset subjects', '10.0.9.151', '2026-06-16 04:50:57.152241');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (274, 1, 'CREATE', 'Created subject #35', '10.0.9.151', '2026-06-16 04:51:26.557625');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (275, 1, 'SEED', 'Seeded 0 preset subjects', '10.0.9.151', '2026-06-16 04:51:47.347832');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (276, 1, 'CREATE', 'Created subject #36', '10.0.9.151', '2026-06-16 04:52:10.347762');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (277, 1, 'SEED', 'Seeded 0 preset subjects', '10.0.9.151', '2026-06-16 04:52:17.17929');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (278, 1, 'SEED', 'Seeded 0 preset subjects', '10.0.9.151', '2026-06-16 05:00:24.951639');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (279, 1, 'DELETE', 'Deleted subject #24', '10.0.9.151', '2026-06-16 05:01:12.084764');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (280, 14, 'LOGIN', 'User logged in', '10.0.9.151', '2026-06-16 16:15:10.293567');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (281, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-16 16:24:01.728565');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (282, 1, 'SEED', 'Seeded 0 preset subjects', '127.0.0.1', '2026-06-16 16:25:07.338745');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (283, 1, 'SEED', 'Seeded 0 preset subjects', '127.0.0.1', '2026-06-16 16:30:58.218262');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (284, 14, 'LOGIN', 'User logged in', '10.0.9.151', '2026-06-16 17:30:27.490903');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (285, 1, 'SEED', 'Seeded 0 preset subjects', '127.0.0.1', '2026-06-16 17:43:24.167955');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (286, 1, 'UPDATE', 'Updated user #14', '127.0.0.1', '2026-06-16 19:01:17.016821');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (287, 1, 'UPDATE', 'Updated student #32', '127.0.0.1', '2026-06-16 19:04:13.469635');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (288, 1, 'UPDATE', 'Updated student #19', '127.0.0.1', '2026-06-16 19:06:37.145008');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (289, 1, 'UPDATE', 'Updated student #21', '127.0.0.1', '2026-06-16 19:07:37.199829');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (290, 1, 'GENERATE_BARCODE', 'Barcode for student #19', '127.0.0.1', '2026-06-16 19:10:06.704955');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (291, 1, 'GENERATE_BARCODE', 'Barcode for student #32', '127.0.0.1', '2026-06-16 19:10:09.93211');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (292, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-17 03:32:35.908855');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (293, 14, 'LOGIN', 'User logged in', '10.0.9.151', '2026-06-17 03:34:12.050256');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (294, 1, 'UPDATE', 'Updated user #4', '127.0.0.1', '2026-06-17 04:02:40.981531');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (295, 4, 'LOGIN', 'User logged in', '10.0.9.151', '2026-06-17 04:04:44.638832');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (296, 7, 'LOGIN', 'User logged in', '10.0.9.151', '2026-06-17 04:11:08.104738');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (297, 7, 'LOGIN', 'User logged in', '10.0.9.151', '2026-06-17 04:11:15.173993');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (298, 7, 'LOGIN', 'User logged in', '10.0.9.151', '2026-06-17 04:11:23.580538');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (299, 7, 'LOGIN', 'User logged in', '10.0.9.151', '2026-06-17 04:11:38.674361');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (300, 7, 'LOGIN', 'User logged in', '10.0.9.151', '2026-06-17 04:11:47.076846');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (301, 7, 'LOGIN', 'User logged in', '10.0.9.151', '2026-06-17 04:11:55.477868');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (302, 8, 'LOGIN', 'User logged in', '10.0.9.151', '2026-06-17 04:12:05.343309');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (303, 6, 'LOGIN', 'User logged in', '10.0.9.151', '2026-06-17 04:12:14.851485');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (304, 6, 'LOGIN', 'User logged in', '10.0.9.151', '2026-06-17 04:12:30.910816');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (305, 14, 'LOGIN', 'User logged in', '10.0.9.151', '2026-06-17 04:28:31.504523');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (306, 4, 'LOGIN', 'User logged in', '10.0.9.151', '2026-06-17 04:40:44.151166');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (307, 4, 'LOGIN', 'User logged in', '10.0.9.151', '2026-06-17 04:51:15.631295');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (308, 4, 'LOGIN', 'User logged in', '10.0.9.151', '2026-06-17 04:51:46.180747');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (309, 1, 'UPDATE', 'Adviser assigned to section #21', '127.0.0.1', '2026-06-17 05:05:48.764174');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (310, 14, 'LOGIN', 'User logged in', '10.0.9.151', '2026-06-17 05:06:16.002434');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (311, 1, 'SEED', 'Seeded 0 preset subjects', '127.0.0.1', '2026-06-17 08:17:06.894686');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (312, 1, 'SEED', 'Seeded 0 preset subjects', '127.0.0.1', '2026-06-17 08:26:30.192518');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (313, 1, 'DELETE', 'Deleted user #10', '127.0.0.1', '2026-06-17 08:33:36.438497');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (314, 1, 'LOGIN', 'User logged in', '10.0.1.4', '2026-06-17 08:35:15.857445');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (315, 1, 'CREATE', 'Backup created', '10.0.1.4', '2026-06-17 08:36:43.390848');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (316, 1, 'DELETE', 'Deleted user #11', '127.0.0.1', '2026-06-17 08:40:53.725113');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (317, 11, 'LOGIN', 'User logged in', '10.0.1.4', '2026-06-17 08:43:01.686529');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (318, 5, 'LOGIN', 'User logged in', '10.0.1.4', '2026-06-17 08:59:21.483311');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (319, 5, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-17 09:26:15.114792');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (320, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-17 09:30:35.699083');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (321, 5, 'LOGIN', 'User logged in', '10.0.25.217', '2026-06-17 09:30:49.410599');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (322, 5, 'LOGIN', 'User logged in', '10.0.25.217', '2026-06-17 09:34:46.421149');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (323, 5, 'LOGIN', 'User logged in', '10.0.9.151', '2026-06-17 09:38:33.853896');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (324, 5, 'LOGIN', 'User logged in', '10.0.9.151', '2026-06-17 10:14:44.148499');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (325, 5, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-17 10:17:22.332273');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (326, 5, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-17 10:34:37.480433');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (327, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-17 10:43:04.209425');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (328, 5, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-17 11:06:36.196494');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (329, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-17 11:08:39.983692');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (330, 5, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-17 11:09:44.307946');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (331, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-17 11:13:07.81892');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (332, 14, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-17 11:19:09.50176');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (333, 5, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-17 11:21:26.331475');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (334, 1, 'LOGIN', 'User logged in', '10.0.25.217', '2026-06-17 11:26:08.731731');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (335, 1, 'LOGIN', 'User logged in', '10.0.25.217', '2026-06-17 11:37:04.396727');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (336, 1, 'LOGIN', 'User logged in', '10.0.1.4', '2026-06-17 11:52:01.363868');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (337, 5, 'LOGIN', 'User logged in', '10.0.1.4', '2026-06-17 11:55:56.77322');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (338, 5, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-17 12:02:53.929887');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (339, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-17 12:04:47.022767');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (340, 5, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-17 12:10:39.59163');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (341, 5, 'LOGIN', 'User logged in', '10.0.9.151', '2026-06-17 12:11:28.784373');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (342, 5, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-17 14:28:00.114132');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (343, 5, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-17 14:32:02.881893');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (344, 5, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-17 14:33:11.87776');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (345, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-17 14:33:42.00837');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (346, 1, 'LOGIN', 'User logged in', '10.0.1.4', '2026-06-17 14:37:08.683925');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (347, 5, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-17 14:39:46.101459');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (348, 5, 'LOGIN', 'User logged in', '10.0.9.151', '2026-06-17 14:42:06.208971');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (349, 1, 'LOGIN', 'User logged in', '10.0.26.179', '2026-06-17 14:44:33.281443');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (350, 5, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-17 14:47:22.581078');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (351, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-17 14:58:47.768895');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (352, 5, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-17 15:00:17.257879');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (353, 14, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-17 15:06:09.346002');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (354, 14, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-17 17:57:13.187762');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (355, 5, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-17 18:32:00.512646');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (356, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-17 18:38:49.506855');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (357, 1, 'CREATE', 'Created parent #7', '127.0.0.1', '2026-06-17 18:46:57.529207');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (358, 1, 'CREATE', 'Created student #35', '127.0.0.1', '2026-06-17 18:50:53.942359');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (359, 1, 'UPDATE', 'Updated student #35', '127.0.0.1', '2026-06-17 18:51:20.037605');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (360, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-17 14:32:44.227916');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (361, 14, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-17 14:34:29.163607');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (362, 5, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-17 15:32:51.338766');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (363, 5, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-17 15:36:23.646416');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (364, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-18 09:26:38.843649');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (365, 1, 'UPDATE', 'Updated user #3', '127.0.0.1', '2026-06-18 10:19:34.59842');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (366, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-18 10:40:25.214738');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (367, 1, 'UPDATE', 'Updated settings', '127.0.0.1', '2026-06-18 10:40:33.094397');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (368, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-18 10:46:58.584636');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (369, 1, 'DELETE', 'Deleted user #11', '127.0.0.1', '2026-06-18 10:47:12.692534');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (370, 1, 'DELETE', 'Deleted user #11', '127.0.0.1', '2026-06-18 10:47:20.105414');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (371, 6, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-18 10:58:04.723406');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (372, 7, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-18 10:58:30.668731');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (373, 5, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-18 11:02:12.671143');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (374, 11, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-18 11:05:57.881222');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (375, 5, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-18 11:11:41.279873');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (376, 1, 'UPDATE', 'Updated user #14', '127.0.0.1', '2026-06-18 12:14:53.280256');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (377, 1, 'UPDATE', 'Updated user #17', '127.0.0.1', '2026-06-18 12:17:09.981515');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (378, 1, 'UPDATE', 'Updated user #17', '127.0.0.1', '2026-06-18 12:17:23.66125');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (379, 1, 'CREATE', 'Created user #18', '127.0.0.1', '2026-06-18 12:23:27.345273');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (380, 1, 'UPDATE', 'Deactivated user #18', '127.0.0.1', '2026-06-18 12:23:56.931912');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (381, 1, 'UPDATE', 'Activated user #18', '127.0.0.1', '2026-06-18 12:24:01.947155');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (382, 1, 'DELETE', 'Deleted user #18', '127.0.0.1', '2026-06-18 12:25:24.168907');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (383, 14, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-18 12:26:16.473403');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (384, 1, 'UPDATE', 'Updated user #11', '127.0.0.1', '2026-06-18 12:27:37.767705');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (385, 1, 'UPDATE', 'Updated user #9', '127.0.0.1', '2026-06-18 12:28:03.753372');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (386, 21, 'REGISTER', 'New Teacher registration submitted', '127.0.0.1', '2026-06-18 12:37:10.063832');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (387, 1, 'APPROVE', 'Registration #4 approved', '127.0.0.1', '2026-06-18 12:40:56.294271');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (388, 21, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-18 12:41:10.248927');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (389, 1, 'DELETE', 'Deleted user #21', '127.0.0.1', '2026-06-18 12:42:36.53297');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (390, 1, 'UPDATE', 'Deactivated user #21', '127.0.0.1', '2026-06-18 12:43:11.01754');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (391, 1, 'DELETE', 'Deleted user #21', '127.0.0.1', '2026-06-18 12:43:14.58212');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (392, 1, 'DELETE', 'Deleted user #21', '127.0.0.1', '2026-06-18 12:43:49.967507');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (393, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-18 12:44:07.811529');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (394, 1, 'DELETE', 'Deleted user #21', '127.0.0.1', '2026-06-18 12:45:50.245282');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (395, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-18 23:00:56.601813');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (396, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-18 23:51:40.773447');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (397, 5, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-18 23:52:36.953491');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (398, 1, 'LOGIN', 'User logged in', '10.0.10.26', '2026-06-18 23:54:05.464439');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (399, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 02:10:34.853827');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (400, 1, 'DELETE', 'Deleted user #21', '127.0.0.1', '2026-06-19 02:11:40.027381');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (401, 1, 'UPDATE', 'Updated user #21', '127.0.0.1', '2026-06-19 02:12:26.582871');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (402, 1, 'UPDATE', 'Updated user #21', '127.0.0.1', '2026-06-19 02:13:11.960807');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (403, 1, 'UPDATE', 'Updated user #14', '127.0.0.1', '2026-06-19 02:14:24.937145');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (404, 1, 'UPDATE', 'Updated user #14', '127.0.0.1', '2026-06-19 02:14:25.937536');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (405, 1, 'DELETE', 'Deleted user #21', '127.0.0.1', '2026-06-19 02:14:32.418794');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (406, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 02:41:36.447656');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (407, 6, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 02:41:36.902892');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (408, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 02:42:57.798224');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (409, 6, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 02:42:58.284107');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (410, 1, 'CREATE', 'Created user #24', '127.0.0.1', '2026-06-19 02:43:01.765458');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (411, 1, 'UPDATE', 'Updated user #24', '127.0.0.1', '2026-06-19 02:43:02.114028');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (412, 1, 'UPDATE', 'Activated user #24', '127.0.0.1', '2026-06-19 02:43:02.457039');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (413, 1, 'UPDATE', 'Deactivated user #24', '127.0.0.1', '2026-06-19 02:43:02.823649');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (414, 1, 'DELETE', 'Deleted user #24', '127.0.0.1', '2026-06-19 02:43:03.569889');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (415, 1, 'CREATE', 'Created user #25', '127.0.0.1', '2026-06-19 02:43:04.022524');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (416, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 02:44:07.455429');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (417, 6, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 02:44:07.904261');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (418, 1, 'CREATE', 'Created user #27', '127.0.0.1', '2026-06-19 02:44:11.569431');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (419, 1, 'UPDATE', 'Updated user #27', '127.0.0.1', '2026-06-19 02:44:11.928479');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (420, 1, 'UPDATE', 'Activated user #27', '127.0.0.1', '2026-06-19 02:44:12.310432');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (421, 1, 'UPDATE', 'Deactivated user #27', '127.0.0.1', '2026-06-19 02:44:12.671751');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (422, 1, 'DELETE', 'Deleted user #27', '127.0.0.1', '2026-06-19 02:44:13.520512');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (423, 1, 'CREATE', 'Created user #28', '127.0.0.1', '2026-06-19 02:44:13.972701');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (424, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 02:44:56.96316');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (425, 6, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 02:44:57.445315');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (426, 1, 'CREATE', 'Created user #31', '127.0.0.1', '2026-06-19 02:45:00.936945');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (427, 1, 'UPDATE', 'Updated user #31', '127.0.0.1', '2026-06-19 02:45:01.315124');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (428, 1, 'UPDATE', 'Activated user #31', '127.0.0.1', '2026-06-19 02:45:01.654944');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (429, 1, 'UPDATE', 'Deactivated user #31', '127.0.0.1', '2026-06-19 02:45:02.012064');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (430, 1, 'DELETE', 'Deleted user #31', '127.0.0.1', '2026-06-19 02:45:02.880147');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (431, 1, 'CREATE', 'Created user #32', '127.0.0.1', '2026-06-19 02:45:03.34777');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (432, 34, 'REGISTER', 'New Viewer registration submitted', '127.0.0.1', '2026-06-19 02:45:05.370584');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (433, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 02:45:52.577746');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (434, 6, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 02:45:53.065661');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (435, 1, 'CREATE', 'Created user #36', '127.0.0.1', '2026-06-19 02:45:56.645456');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (436, 1, 'UPDATE', 'Updated user #36', '127.0.0.1', '2026-06-19 02:45:57.002588');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (437, 1, 'UPDATE', 'Activated user #36', '127.0.0.1', '2026-06-19 02:45:57.396496');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (438, 1, 'UPDATE', 'Deactivated user #36', '127.0.0.1', '2026-06-19 02:45:57.760798');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (439, 1, 'DELETE', 'Deleted user #36', '127.0.0.1', '2026-06-19 02:45:58.517387');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (440, 1, 'CREATE', 'Created user #37', '127.0.0.1', '2026-06-19 02:45:58.984938');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (441, 39, 'REGISTER', 'New Viewer registration submitted', '127.0.0.1', '2026-06-19 02:46:00.93595');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (442, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 02:46:32.381991');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (443, 6, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 02:46:32.954059');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (444, 1, 'CREATE', 'Created user #41', '127.0.0.1', '2026-06-19 02:46:36.524828');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (445, 1, 'UPDATE', 'Updated user #41', '127.0.0.1', '2026-06-19 02:46:36.896372');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (446, 1, 'UPDATE', 'Activated user #41', '127.0.0.1', '2026-06-19 02:46:37.246332');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (447, 1, 'UPDATE', 'Deactivated user #41', '127.0.0.1', '2026-06-19 02:46:37.596836');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (448, 1, 'DELETE', 'Deleted user #41', '127.0.0.1', '2026-06-19 02:46:38.366613');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (449, 1, 'CREATE', 'Created user #42', '127.0.0.1', '2026-06-19 02:46:38.906333');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (450, 44, 'REGISTER', 'New Viewer registration submitted', '127.0.0.1', '2026-06-19 02:46:40.753165');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (451, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 02:47:20.689658');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (452, 6, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 02:47:21.169516');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (453, 1, 'CREATE', 'Created user #46', '127.0.0.1', '2026-06-19 02:47:24.724297');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (454, 1, 'UPDATE', 'Updated user #46', '127.0.0.1', '2026-06-19 02:47:25.107165');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (455, 1, 'UPDATE', 'Activated user #46', '127.0.0.1', '2026-06-19 02:47:25.460437');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (456, 1, 'UPDATE', 'Deactivated user #46', '127.0.0.1', '2026-06-19 02:47:25.799123');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (457, 1, 'DELETE', 'Deleted user #46', '127.0.0.1', '2026-06-19 02:47:26.70676');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (458, 1, 'CREATE', 'Created user #47', '127.0.0.1', '2026-06-19 02:47:27.193877');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (459, 49, 'REGISTER', 'New Viewer registration submitted', '127.0.0.1', '2026-06-19 02:47:29.091238');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (460, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 02:47:53.071293');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (461, 6, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 02:47:53.508489');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (462, 1, 'CREATE', 'Created user #51', '127.0.0.1', '2026-06-19 02:47:57.007899');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (463, 1, 'UPDATE', 'Updated user #51', '127.0.0.1', '2026-06-19 02:47:57.380083');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (464, 1, 'UPDATE', 'Activated user #51', '127.0.0.1', '2026-06-19 02:47:57.746161');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (465, 1, 'UPDATE', 'Deactivated user #51', '127.0.0.1', '2026-06-19 02:47:58.096166');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (466, 1, 'DELETE', 'Deleted user #51', '127.0.0.1', '2026-06-19 02:47:58.898578');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (467, 1, 'CREATE', 'Created user #52', '127.0.0.1', '2026-06-19 02:47:59.35408');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (468, 54, 'REGISTER', 'New Viewer registration submitted', '127.0.0.1', '2026-06-19 02:48:01.510385');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (469, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 02:49:22.217402');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (470, 6, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 02:49:22.632527');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (471, 1, 'CREATE', 'Created user #56', '127.0.0.1', '2026-06-19 02:49:26.037356');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (472, 1, 'UPDATE', 'Updated user #56', '127.0.0.1', '2026-06-19 02:49:26.342893');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (473, 1, 'UPDATE', 'Activated user #56', '127.0.0.1', '2026-06-19 02:49:26.807319');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (474, 1, 'UPDATE', 'Deactivated user #56', '127.0.0.1', '2026-06-19 02:49:27.135483');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (475, 1, 'DELETE', 'Deleted user #56', '127.0.0.1', '2026-06-19 02:49:27.907503');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (476, 1, 'CREATE', 'Created user #57', '127.0.0.1', '2026-06-19 02:49:28.297738');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (477, 59, 'REGISTER', 'New Viewer registration submitted', '127.0.0.1', '2026-06-19 02:49:30.267066');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (478, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 02:50:16.324885');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (479, 6, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 02:50:16.715904');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (480, 1, 'CREATE', 'Created user #61', '127.0.0.1', '2026-06-19 02:50:20.417514');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (481, 1, 'UPDATE', 'Updated user #61', '127.0.0.1', '2026-06-19 02:50:20.795998');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (482, 1, 'UPDATE', 'Activated user #61', '127.0.0.1', '2026-06-19 02:50:21.185598');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (483, 1, 'UPDATE', 'Deactivated user #61', '127.0.0.1', '2026-06-19 02:50:21.540932');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (484, 1, 'DELETE', 'Deleted user #61', '127.0.0.1', '2026-06-19 02:50:22.44157');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (485, 1, 'CREATE', 'Created user #62', '127.0.0.1', '2026-06-19 02:50:22.819564');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (486, 64, 'REGISTER', 'New Viewer registration submitted', '127.0.0.1', '2026-06-19 02:50:24.502888');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (487, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 02:50:52.800736');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (488, 6, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 02:50:53.224923');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (489, 1, 'CREATE', 'Created user #66', '127.0.0.1', '2026-06-19 02:50:56.935692');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (490, 1, 'UPDATE', 'Updated user #66', '127.0.0.1', '2026-06-19 02:50:57.30709');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (491, 1, 'UPDATE', 'Activated user #66', '127.0.0.1', '2026-06-19 02:50:57.675967');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (492, 1, 'UPDATE', 'Deactivated user #66', '127.0.0.1', '2026-06-19 02:50:57.976901');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (493, 1, 'DELETE', 'Deleted user #66', '127.0.0.1', '2026-06-19 02:50:58.76653');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (494, 1, 'CREATE', 'Created user #67', '127.0.0.1', '2026-06-19 02:50:59.227865');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (495, 69, 'REGISTER', 'New Viewer registration submitted', '127.0.0.1', '2026-06-19 02:51:01.048805');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (496, 1, 'DELETE', 'Deleted user #69', '127.0.0.1', '2026-06-19 02:58:01.323876');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (497, 1, 'DELETE', 'Deleted user #69', '127.0.0.1', '2026-06-19 02:58:17.354278');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (498, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 03:35:51.841324');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (499, 6, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 03:35:55.632456');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (500, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 03:36:02.145087');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (501, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 03:36:08.187563');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (502, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 03:36:13.662534');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (503, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 03:36:19.265061');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (504, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 03:36:23.997137');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (505, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 03:36:28.132409');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (506, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 03:36:33.830015');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (507, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 03:36:40.371157');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (508, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 03:36:44.44475');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (509, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 03:36:56.126075');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (510, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 03:37:02.01165');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (511, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 03:37:06.860291');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (512, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 03:37:13.645332');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (513, 1, 'CREATE', 'Created user #71', '127.0.0.1', '2026-06-19 03:37:20.421141');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (514, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 03:38:26.418612');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (515, 6, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 03:38:29.930199');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (516, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 03:38:35.200976');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (517, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 03:38:40.741743');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (518, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 03:38:46.170421');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (519, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 03:38:51.013386');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (520, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 03:38:55.569006');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (521, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 03:38:59.952046');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (522, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 03:39:03.959199');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (523, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 03:39:08.163676');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (524, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 03:39:12.782965');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (525, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 03:39:23.312997');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (526, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 03:39:28.195656');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (527, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 03:39:32.915767');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (528, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 03:39:38.798755');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (529, 1, 'CREATE', 'Created user #72', '127.0.0.1', '2026-06-19 03:39:44.250662');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (530, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 03:39:47.149771');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (531, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 03:43:32.556165');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (532, 6, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 03:43:36.358582');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (533, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 03:43:43.348779');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (534, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 03:43:48.976906');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (535, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 03:43:54.250727');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (536, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 03:43:58.714499');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (537, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 03:44:03.908571');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (538, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 03:44:07.752556');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (539, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 03:44:11.425338');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (540, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 03:44:15.584693');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (541, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 03:44:19.145814');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (542, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 03:44:24.759642');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (543, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 03:44:29.893464');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (544, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 03:44:34.649945');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (545, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 03:44:40.636583');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (546, 1, 'CREATE', 'Created user #73', '127.0.0.1', '2026-06-19 03:44:45.917827');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (547, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 03:44:49.002401');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (548, 74, 'REGISTER', 'New Teacher registration submitted', '127.0.0.1', '2026-06-19 03:44:57.079161');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (549, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 03:46:47.910429');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (550, 6, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 03:46:51.419279');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (551, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 03:46:57.33506');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (552, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 03:47:02.728059');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (553, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 03:47:07.799222');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (554, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 03:47:11.879129');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (555, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 03:47:16.549798');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (556, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 03:47:20.498673');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (557, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 03:47:24.546721');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (558, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 03:47:28.50356');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (559, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 03:47:32.034641');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (560, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 03:47:37.810438');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (561, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 03:47:43.744308');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (562, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 03:47:48.385115');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (563, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 03:47:54.303689');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (564, 1, 'CREATE', 'Created user #75', '127.0.0.1', '2026-06-19 03:47:57.824917');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (565, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 03:48:01.760771');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (566, 76, 'REGISTER', 'New Teacher registration submitted', '127.0.0.1', '2026-06-19 03:48:10.598982');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (567, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 04:02:49.404689');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (568, 6, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 04:02:52.641907');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (569, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 04:02:57.273646');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (570, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 04:03:00.566951');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (571, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 04:03:04.366094');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (572, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 04:03:07.801379');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (573, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 04:03:11.884455');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (574, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 04:03:14.800462');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (575, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 04:03:17.776874');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (576, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 04:03:20.857118');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (577, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 04:03:23.976815');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (578, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 04:03:27.777596');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (579, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 04:03:31.294716');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (580, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 04:03:35.413947');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (581, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 04:03:39.684305');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (582, 1, 'CREATE', 'Created user #77', '127.0.0.1', '2026-06-19 04:03:45.844135');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (583, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 04:03:48.119565');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (584, 78, 'REGISTER', 'New Teacher registration submitted', '127.0.0.1', '2026-06-19 04:03:54.786157');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (585, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 04:08:24.220799');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (586, 6, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 04:08:30.063132');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (587, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 04:08:40.941929');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (588, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 04:08:48.581313');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (589, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 04:08:56.188479');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (590, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 04:09:03.184458');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (591, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 04:09:09.610983');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (592, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 04:09:15.290876');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (593, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 04:09:21.151312');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (594, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 04:09:27.1675');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (595, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 04:09:34.757101');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (596, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 04:09:42.220115');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (597, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 04:09:50.242808');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (598, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 04:09:58.974413');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (599, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 04:10:09.970166');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (600, 1, 'CREATE', 'Created user #79', '127.0.0.1', '2026-06-19 04:10:18.007734');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (601, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 04:10:22.64045');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (602, 80, 'REGISTER', 'New Teacher registration submitted', '127.0.0.1', '2026-06-19 04:10:37.392905');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (603, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 04:14:19.923357');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (604, 6, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 04:14:24.59453');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (605, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 04:14:32.97066');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (606, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 04:14:39.220029');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (607, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 04:14:44.397259');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (608, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 04:14:49.802114');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (609, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 04:14:55.216318');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (610, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 04:14:59.983507');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (611, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 04:15:04.79042');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (612, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 04:15:09.422006');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (613, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 04:15:14.188664');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (614, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 04:15:19.970778');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (615, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 04:15:26.200671');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (616, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 04:15:32.999563');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (617, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 04:15:42.577235');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (618, 1, 'CREATE', 'Created user #81', '127.0.0.1', '2026-06-19 04:15:49.796267');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (619, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 04:15:53.686173');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (620, 82, 'REGISTER', 'New Teacher registration submitted', '127.0.0.1', '2026-06-19 04:16:05.115141');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (621, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 04:17:20.786191');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (622, 6, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 04:17:25.407838');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (623, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 04:17:33.743147');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (624, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 04:17:39.443994');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (625, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 04:17:44.894894');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (626, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 04:17:49.978552');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (627, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 04:17:55.241576');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (628, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 04:18:00.103322');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (629, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 04:18:04.857024');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (630, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 04:18:09.589241');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (631, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 04:18:14.112578');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (632, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 04:18:20.129815');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (633, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 04:18:26.261355');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (634, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 04:18:33.327728');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (635, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 04:18:42.827743');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (636, 1, 'CREATE', 'Created user #83', '127.0.0.1', '2026-06-19 04:18:50.24593');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (637, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 04:18:54.162296');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (638, 84, 'REGISTER', 'New Teacher registration submitted', '127.0.0.1', '2026-06-19 04:19:05.72726');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (639, 1, 'DELETE', 'Deleted user #84', '127.0.0.1', '2026-06-19 04:19:39.235306');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (640, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 04:21:24.467385');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (641, 6, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 04:21:32.452506');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (642, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 04:21:48.095481');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (643, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 04:21:58.15378');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (644, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 04:22:06.452689');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (645, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 04:22:14.634529');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (646, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 04:22:22.533506');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (647, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 04:22:30.722608');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (648, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 04:22:38.604948');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (649, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 04:22:46.782238');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (650, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 04:22:54.446641');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (651, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 04:23:04.362371');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (652, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 04:23:16.099204');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (653, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 04:23:29.131651');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (654, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 04:23:48.892014');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (655, 1, 'CREATE', 'Created user #85', '127.0.0.1', '2026-06-19 04:24:05.787587');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (656, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 04:24:13.760938');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (657, 86, 'REGISTER', 'New Teacher registration submitted', '127.0.0.1', '2026-06-19 04:24:36.628122');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (658, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 12:33:26.782198');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (659, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 12:33:46.577761');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (660, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 12:34:05.801306');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (661, 1, 'CREATE', 'Created user #87', '127.0.0.1', '2026-06-19 12:34:08.535928');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (662, 1, 'CREATE', 'Created user #88', '127.0.0.1', '2026-06-19 12:34:09.040878');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (663, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 12:34:18.743586');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (664, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 12:35:59.659595');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (665, 1, 'CREATE', 'Created parent #8', '127.0.0.1', '2026-06-19 12:36:02.686698');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (666, 87, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 12:36:03.231402');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (667, 88, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 12:36:03.772805');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (668, 6, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 12:36:04.802665');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (669, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 12:40:23.451167');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (670, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 12:40:40.695156');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (671, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 12:40:56.428885');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (672, 1, 'CREATE', 'Created user #89', '127.0.0.1', '2026-06-19 12:40:58.418608');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (673, 89, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 12:40:59.462826');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (674, 88, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 12:40:59.971963');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (675, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 12:41:36.020511');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (676, 87, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 12:41:38.754831');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (677, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 12:41:58.855362');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (678, 1, 'CREATE', 'Created user #91', '127.0.0.1', '2026-06-19 12:42:01.015447');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (679, 91, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 12:42:01.542441');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (680, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 12:44:24.62523');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (681, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 12:45:51.485234');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (682, 6, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 12:47:33.699099');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (683, 91, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 12:48:20.723995');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (684, 88, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 12:48:45.595129');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (685, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 13:00:33.751355');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (686, 6, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 13:02:19.245028');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (687, 91, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 13:03:08.071238');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (688, 88, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 13:03:34.287506');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (689, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 13:05:31.244176');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (690, 6, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 13:07:14.663773');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (691, 91, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 13:08:02.856414');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (692, 88, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 13:08:28.978399');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (693, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 16:55:45.544415');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (694, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 16:55:53.951228');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (695, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 16:56:14.140191');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (696, 6, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 16:56:22.695739');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (697, 91, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 16:56:31.453376');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (698, 88, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 16:56:39.910908');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (699, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 16:57:00.59212');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (700, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 16:57:14.391008');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (701, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 16:57:37.706771');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (702, 92, 'REGISTER', 'New Teacher registration submitted', '127.0.0.1', '2026-06-19 16:57:59.739309');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (703, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 16:58:13.670596');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (704, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 16:58:28.040417');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (705, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 17:01:18.199148');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (706, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 17:01:26.41715');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (707, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 17:01:43.659371');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (708, 6, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 17:01:51.662418');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (709, 91, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 17:02:00.531791');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (710, 88, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 17:02:08.699179');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (711, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 17:02:26.604921');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (712, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 17:02:40.147775');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (713, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 17:02:54.653766');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (714, 93, 'REGISTER', 'New Teacher registration submitted', '127.0.0.1', '2026-06-19 17:03:16.55945');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (715, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 17:03:28.121994');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (716, 1, 'CREATE', 'Created user #94', '127.0.0.1', '2026-06-19 17:03:29.201006');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (717, 1, 'UPDATE', 'Deactivated user #94', '127.0.0.1', '2026-06-19 17:03:29.721161');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (718, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 17:03:44.213167');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (719, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 17:06:37.980695');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (720, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 17:06:49.387953');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (721, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 17:07:06.081604');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (722, 6, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 17:07:15.552585');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (723, 91, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 17:07:24.960547');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (724, 88, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 17:07:34.129828');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (725, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 17:09:08.192448');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (726, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 17:09:22.103818');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (727, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 17:09:36.214559');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (728, 95, 'REGISTER', 'New Teacher registration submitted', '127.0.0.1', '2026-06-19 17:09:58.575387');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (729, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 17:10:10.059996');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (730, 1, 'CREATE', 'Created user #96', '127.0.0.1', '2026-06-19 17:10:10.88653');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (731, 1, 'UPDATE', 'Deactivated user #96', '127.0.0.1', '2026-06-19 17:10:11.400564');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (732, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 17:10:25.766948');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (733, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 17:13:45.225077');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (734, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 17:13:53.667093');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (735, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 17:14:10.231714');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (736, 6, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 17:14:18.67186');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (737, 91, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 17:14:27.076987');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (738, 88, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 17:14:35.400042');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (739, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 17:14:52.165044');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (740, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 17:15:05.726816');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (741, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 17:15:19.760297');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (742, 97, 'REGISTER', 'New Teacher registration submitted', '127.0.0.1', '2026-06-19 17:15:42.615856');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (743, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 17:15:54.109428');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (744, 1, 'CREATE', 'Created user #98', '127.0.0.1', '2026-06-19 17:15:57.139269');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (745, 1, 'UPDATE', 'Deactivated user #98', '127.0.0.1', '2026-06-19 17:15:57.625402');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (746, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 17:16:11.947161');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (747, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 17:18:57.787111');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (748, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 17:19:06.370662');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (749, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 17:19:23.202896');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (750, 6, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 17:19:31.635126');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (751, 91, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 17:19:39.874113');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (752, 88, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 17:19:48.191044');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (753, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 17:20:05.192849');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (754, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 17:20:18.860361');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (755, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 17:20:33.004019');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (756, 99, 'REGISTER', 'New Teacher registration submitted', '127.0.0.1', '2026-06-19 17:21:00.371687');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (757, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 17:21:20.56253');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (758, 1, 'CREATE', 'Created user #100', '127.0.0.1', '2026-06-19 17:21:48.0712');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (759, 1, 'UPDATE', 'Deactivated user #100', '127.0.0.1', '2026-06-19 17:21:48.639491');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (760, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 17:22:03.165816');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (761, 101, 'REGISTER', 'New Teacher registration submitted', '127.0.0.1', '2026-06-19 17:38:46.596933');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (762, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 17:49:32.829427');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (763, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 17:49:41.767891');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (764, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 17:49:50.876695');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (765, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 17:50:05.292486');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (766, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 17:50:19.935369');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (767, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 17:50:28.580897');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (768, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 17:50:37.247119');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (769, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 17:50:50.787149');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (770, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 17:50:59.318211');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (771, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 17:51:07.776421');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (772, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 17:51:16.304546');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (773, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 17:51:24.632279');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (774, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 17:51:32.892627');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (775, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 17:51:41.044646');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (776, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 17:51:51.485569');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (777, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 17:52:00.531977');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (778, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 17:52:09.299597');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (779, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 17:52:17.674184');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (780, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 17:52:25.856166');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (781, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 17:52:33.958635');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (782, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 17:52:42.206868');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (783, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 17:52:50.948758');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (784, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 17:53:00.268869');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (785, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 17:53:12.61242');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (786, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 17:53:20.676295');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (787, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 17:53:28.932403');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (788, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 17:53:38.621172');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (789, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 17:53:46.567765');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (790, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 17:54:00.239049');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (791, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 17:57:20.947732');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (792, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 17:59:50.956981');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (793, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 17:59:59.735623');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (794, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 18:00:11.717003');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (795, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 18:00:21.297083');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (796, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 18:00:30.22721');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (797, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 18:00:38.783501');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (798, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 18:00:47.352609');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (799, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 18:01:00.78194');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (800, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 18:01:09.600644');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (801, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 18:01:17.963716');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (802, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 18:01:26.019114');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (803, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 18:01:34.596266');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (804, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 18:01:42.982489');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (805, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 18:01:50.955371');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (806, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 18:02:01.151754');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (807, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 18:02:09.075218');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (808, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 18:02:17.952555');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (809, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 18:02:26.269295');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (810, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 18:02:34.715742');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (811, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 18:02:43.274896');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (812, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 18:02:51.217962');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (813, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 18:02:59.482562');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (814, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 18:03:08.32993');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (815, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 18:03:21.158118');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (816, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 18:03:29.503749');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (817, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 18:03:37.689873');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (818, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 18:03:47.99052');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (819, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 18:03:56.407838');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (820, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 18:04:09.519744');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (821, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 18:06:04.786568');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (822, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 18:06:15.456973');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (823, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 18:06:37.112234');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (824, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 18:06:50.548038');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (825, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 18:07:04.531425');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (826, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 18:07:18.450137');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (827, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 18:07:31.667178');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (828, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 18:07:44.783996');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (829, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 18:08:00.87612');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (830, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 18:08:12.992577');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (831, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 18:08:25.653475');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (832, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 18:08:41.071398');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (833, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 18:08:55.39373');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (834, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 18:09:10.45153');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (835, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 18:09:29.159419');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (836, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 18:09:49.219478');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (837, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 18:10:10.956463');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (838, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 18:10:24.772076');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (839, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 18:10:38.571223');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (840, 1, 'CREATE', 'Created user #102', '127.0.0.1', '2026-06-19 18:10:55.990721');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (841, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 18:11:05.716002');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (842, 1, 'CREATE', 'Created user #103', '127.0.0.1', '2026-06-19 18:11:22.716365');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (843, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 18:11:32.950503');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (844, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 18:11:56.690812');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (845, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 18:12:08.853987');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (846, 1, 'CREATE', 'Created user #105', '127.0.0.1', '2026-06-19 18:12:24.322997');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (847, 1, 'UPDATE', 'Updated user #105', '127.0.0.1', '2026-06-19 18:12:35.427304');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (848, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 18:12:43.151197');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (849, 1, 'CREATE', 'Created user #106', '127.0.0.1', '2026-06-19 18:12:58.578235');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (850, 1, 'UPDATE', 'Deactivated user #106', '127.0.0.1', '2026-06-19 18:13:06.08222');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (851, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 18:13:27.491937');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (852, 1, 'CREATE', 'Created user #107', '127.0.0.1', '2026-06-19 18:13:44.837335');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (853, 1, 'UPDATE', 'Activated user #107', '127.0.0.1', '2026-06-19 18:13:52.50057');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (854, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 18:14:25.073502');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (855, 1, 'DELETE', 'Deleted user #107', '127.0.0.1', '2026-06-19 18:14:30.937027');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (856, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 18:14:41.176735');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (857, 1, 'CREATE', 'Created user #108', '127.0.0.1', '2026-06-19 18:14:59.514155');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (858, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 18:15:12.550866');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (859, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 18:15:28.117572');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (860, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 18:19:03.856665');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (861, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 18:19:25.108004');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (862, 1, 'CREATE', 'Created user #109', '127.0.0.1', '2026-06-19 18:19:42.946772');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (863, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 18:19:53.818933');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (864, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 18:20:20.674752');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (865, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 18:20:34.038572');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (866, 1, 'CREATE', 'Created user #111', '127.0.0.1', '2026-06-19 18:20:52.425698');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (867, 1, 'UPDATE', 'Updated user #111', '127.0.0.1', '2026-06-19 18:21:03.357778');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (868, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 18:21:12.063508');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (869, 1, 'CREATE', 'Created user #112', '127.0.0.1', '2026-06-19 18:21:30.616568');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (870, 1, 'UPDATE', 'Deactivated user #112', '127.0.0.1', '2026-06-19 18:21:37.44519');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (871, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 18:22:35.995109');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (872, 1, 'CREATE', 'Created user #113', '127.0.0.1', '2026-06-19 18:22:53.568394');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (873, 1, 'UPDATE', 'Activated user #113', '127.0.0.1', '2026-06-19 18:23:01.090382');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (874, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 18:23:22.754679');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (875, 1, 'DELETE', 'Deleted user #113', '127.0.0.1', '2026-06-19 18:23:28.571117');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (876, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 18:23:38.493701');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (877, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 18:25:17.68827');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (878, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 18:25:38.568441');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (879, 1, 'CREATE', 'Created user #114', '127.0.0.1', '2026-06-19 18:25:56.055594');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (880, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 18:26:06.508078');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (881, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 18:26:31.661162');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (882, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 18:26:43.936331');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (883, 1, 'CREATE', 'Created user #116', '127.0.0.1', '2026-06-19 18:27:00.39353');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (884, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 18:30:06.873992');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (885, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 18:30:21.217501');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (886, 1, 'CREATE', 'Created user #117', '127.0.0.1', '2026-06-19 18:30:38.356969');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (887, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 18:30:48.669767');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (888, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 18:31:13.75662');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (889, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 18:31:27.530763');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (890, 1, 'CREATE', 'Created user #119', '127.0.0.1', '2026-06-19 18:31:43.459813');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (891, 1, 'UPDATE', 'Updated user #119', '127.0.0.1', '2026-06-19 18:31:55.2708');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (892, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 18:32:03.423548');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (893, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 18:32:08.057363');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (894, 1, 'CREATE', 'Created user #120', '127.0.0.1', '2026-06-19 18:32:08.720916');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (895, 1, 'UPDATE', 'Deactivated user #120', '127.0.0.1', '2026-06-19 18:32:18.256397');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (896, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 18:32:40.580635');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (897, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 18:32:45.181524');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (898, 1, 'CREATE', 'Created user #121', '127.0.0.1', '2026-06-19 18:32:45.923718');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (899, 1, 'UPDATE', 'Activated user #121', '127.0.0.1', '2026-06-19 18:32:55.563923');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (900, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 18:33:15.60817');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (901, 1, 'DELETE', 'Deleted user #121', '127.0.0.1', '2026-06-19 18:33:22.250877');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (902, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 18:33:32.164292');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (903, 1, 'CREATE', 'Created user #122', '127.0.0.1', '2026-06-19 18:33:50.240646');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (904, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 18:34:03.036458');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (905, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 18:34:19.52988');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (906, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 18:35:27.468507');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (907, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 18:35:32.090255');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (908, 1, 'CREATE', 'Created user #123', '127.0.0.1', '2026-06-19 18:35:32.961166');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (909, 1, 'UPDATE', 'Deactivated user #123', '127.0.0.1', '2026-06-19 18:35:42.492496');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (910, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 18:36:03.506977');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (911, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 18:36:08.045651');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (912, 1, 'CREATE', 'Created user #124', '127.0.0.1', '2026-06-19 18:36:08.813812');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (913, 1, 'UPDATE', 'Activated user #124', '127.0.0.1', '2026-06-19 18:36:18.142482');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (914, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 18:37:05.692125');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (915, 1, 'CREATE', 'Created user #125', '127.0.0.1', '2026-06-19 18:37:08.363848');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (916, 1, 'UPDATE', 'Deactivated user #125', '127.0.0.1', '2026-06-19 18:37:08.848642');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (917, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 18:38:01.212069');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (918, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 18:38:06.048291');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (919, 1, 'CREATE', 'Created user #126', '127.0.0.1', '2026-06-19 18:38:06.859212');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (920, 1, 'UPDATE', 'Deactivated user #126', '127.0.0.1', '2026-06-19 18:38:13.57422');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (921, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 18:38:35.243632');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (922, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 18:38:40.247872');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (923, 1, 'CREATE', 'Created user #127', '127.0.0.1', '2026-06-19 18:38:40.994278');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (924, 1, 'UPDATE', 'Activated user #127', '127.0.0.1', '2026-06-19 18:38:47.216834');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (925, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 18:43:40.476801');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (926, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 18:43:44.506094');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (927, 1, 'CREATE', 'Created user #128', '127.0.0.1', '2026-06-19 18:43:47.885864');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (928, 1, 'UPDATE', 'Deactivated user #128', '127.0.0.1', '2026-06-19 18:43:54.070787');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (929, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 18:44:05.025955');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (930, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 18:44:10.97581');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (931, 1, 'CREATE', 'Created user #129', '127.0.0.1', '2026-06-19 18:44:11.974431');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (932, 1, 'UPDATE', 'Activated user #129', '127.0.0.1', '2026-06-19 18:44:18.195688');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (933, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 18:45:11.750847');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (934, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 18:45:23.199137');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (935, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 18:45:38.311905');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (936, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 18:45:52.380046');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (937, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 18:46:06.263035');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (938, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 18:46:19.085309');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (939, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 18:46:32.663287');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (940, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 18:46:46.47092');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (941, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 18:47:02.68804');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (942, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 18:47:15.322063');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (943, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 18:47:28.00053');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (944, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 18:47:43.817854');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (945, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 18:47:58.267405');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (946, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 18:48:13.927793');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (947, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 18:48:31.347294');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (948, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 18:48:52.038284');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (949, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 18:49:14.187799');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (950, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 18:49:27.954862');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (951, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 18:49:42.426136');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (952, 1, 'CREATE', 'Created user #130', '127.0.0.1', '2026-06-19 18:50:02.671707');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (953, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 18:50:12.399402');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (954, 1, 'CREATE', 'Created user #131', '127.0.0.1', '2026-06-19 18:50:34.621416');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (955, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 18:50:43.944449');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (956, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 18:51:08.104088');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (957, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 18:51:20.31121');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (958, 1, 'CREATE', 'Created user #133', '127.0.0.1', '2026-06-19 18:51:36.314339');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (959, 1, 'UPDATE', 'Updated user #133', '127.0.0.1', '2026-06-19 18:51:47.314185');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (960, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 18:51:55.309886');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (961, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 18:51:59.557376');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (962, 1, 'CREATE', 'Created user #134', '127.0.0.1', '2026-06-19 18:52:00.161224');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (963, 1, 'UPDATE', 'Deactivated user #134', '127.0.0.1', '2026-06-19 18:52:05.553433');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (964, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 18:52:15.971216');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (965, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 18:52:20.702164');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (966, 1, 'CREATE', 'Created user #135', '127.0.0.1', '2026-06-19 18:52:21.333514');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (967, 1, 'UPDATE', 'Activated user #135', '127.0.0.1', '2026-06-19 18:52:26.77762');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (968, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 18:52:37.073177');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (969, 1, 'DELETE', 'Deleted user #135', '127.0.0.1', '2026-06-19 18:52:42.870929');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (970, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 18:52:52.010429');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (971, 1, 'CREATE', 'Created user #136', '127.0.0.1', '2026-06-19 18:53:09.971545');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (972, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 18:53:22.987606');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (973, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 18:53:39.014538');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (974, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 19:04:56.028663');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (975, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 19:05:07.299125');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (976, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 19:05:21.467243');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (977, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 19:05:35.524039');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (978, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 19:05:48.425119');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (979, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 19:06:01.907416');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (980, 1, 'APPROVE', 'Registration #25 approved', '127.0.0.1', '2026-06-19 19:06:11.101458');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (981, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 19:06:21.538925');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (982, 1, 'REJECT', 'Registration #24 rejected', '127.0.0.1', '2026-06-19 19:06:31.058488');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (983, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 19:06:40.331385');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (984, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 19:06:51.31069');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (985, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 19:07:01.499913');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (986, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 19:12:26.670619');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (987, 1, 'DELETE', 'Deleted user #136', '127.0.0.1', '2026-06-19 19:12:50.714339');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (988, 1, 'DELETE', 'Deleted user #134', '127.0.0.1', '2026-06-19 19:12:54.821242');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (989, 1, 'DELETE', 'Deleted user #133', '127.0.0.1', '2026-06-19 19:12:58.903034');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (990, 1, 'DELETE', 'Deleted user #131', '127.0.0.1', '2026-06-19 19:13:03.05068');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (991, 1, 'DELETE', 'Deleted user #130', '127.0.0.1', '2026-06-19 19:13:07.480083');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (992, 1, 'DELETE', 'Deleted user #129', '127.0.0.1', '2026-06-19 19:13:11.9428');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (993, 1, 'DELETE', 'Deleted user #128', '127.0.0.1', '2026-06-19 19:13:17.200443');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (994, 1, 'DELETE', 'Deleted user #127', '127.0.0.1', '2026-06-19 19:13:22.360037');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (995, 1, 'DELETE', 'Deleted user #126', '127.0.0.1', '2026-06-19 19:13:25.457979');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (996, 1, 'DELETE', 'Deleted user #125', '127.0.0.1', '2026-06-19 19:13:27.74627');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (997, 1, 'DELETE', 'Deleted user #124', '127.0.0.1', '2026-06-19 19:13:29.362857');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (998, 1, 'DELETE', 'Deleted user #123', '127.0.0.1', '2026-06-19 19:13:30.878987');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (999, 1, 'DELETE', 'Deleted user #122', '127.0.0.1', '2026-06-19 19:13:33.424981');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1000, 1, 'DELETE', 'Deleted user #120', '127.0.0.1', '2026-06-19 19:13:35.140674');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1001, 1, 'DELETE', 'Deleted user #119', '127.0.0.1', '2026-06-19 19:13:37.728299');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1002, 1, 'DELETE', 'Deleted user #117', '127.0.0.1', '2026-06-19 19:13:40.309649');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1003, 1, 'DELETE', 'Deleted user #116', '127.0.0.1', '2026-06-19 19:13:44.491562');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1004, 1, 'DELETE', 'Deleted user #114', '127.0.0.1', '2026-06-19 19:13:46.265472');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1005, 1, 'DELETE', 'Deleted user #112', '127.0.0.1', '2026-06-19 19:13:47.711283');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1006, 1, 'DELETE', 'Deleted user #111', '127.0.0.1', '2026-06-19 19:13:50.035967');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1007, 1, 'DELETE', 'Deleted user #109', '127.0.0.1', '2026-06-19 19:13:52.283078');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1008, 1, 'DELETE', 'Deleted user #108', '127.0.0.1', '2026-06-19 19:13:54.880448');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1009, 1, 'DELETE', 'Deleted user #106', '127.0.0.1', '2026-06-19 19:13:56.506475');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1010, 1, 'DELETE', 'Deleted user #105', '127.0.0.1', '2026-06-19 19:13:57.988111');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1011, 1, 'DELETE', 'Deleted user #103', '127.0.0.1', '2026-06-19 19:14:00.231411');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1012, 1, 'DELETE', 'Deleted user #102', '127.0.0.1', '2026-06-19 19:14:03.77597');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1013, 1, 'DELETE', 'Deleted user #101', '127.0.0.1', '2026-06-19 19:14:06.29222');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1014, 1, 'DELETE', 'Deleted user #101', '127.0.0.1', '2026-06-19 19:14:08.04913');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1015, 1, 'DELETE', 'Deleted user #101', '127.0.0.1', '2026-06-19 19:14:10.385813');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1016, 1, 'DELETE', 'Deleted user #101', '127.0.0.1', '2026-06-19 19:14:12.996637');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1017, 1, 'DELETE', 'Deleted user #101', '127.0.0.1', '2026-06-19 19:14:15.045759');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1018, 1, 'DELETE', 'Deleted user #101', '127.0.0.1', '2026-06-19 19:14:16.761574');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1019, 1, 'DELETE', 'Deleted user #101', '127.0.0.1', '2026-06-19 19:14:19.550777');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1020, 1, 'DELETE', 'Deleted user #101', '127.0.0.1', '2026-06-19 19:14:21.743304');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1021, 1, 'DELETE', 'Deleted user #101', '127.0.0.1', '2026-06-19 19:14:24.238975');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1022, 1, 'DELETE', 'Deleted user #101', '127.0.0.1', '2026-06-19 19:14:25.742044');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1023, 1, 'UPDATE', 'Deactivated user #101', '127.0.0.1', '2026-06-19 19:14:29.430045');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1024, 1, 'DELETE', 'Deleted user #101', '127.0.0.1', '2026-06-19 19:14:33.136895');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1025, 1, 'DELETE', 'Deleted user #101', '127.0.0.1', '2026-06-19 19:14:35.464774');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1026, 1, 'DELETE', 'Deleted user #101', '127.0.0.1', '2026-06-19 19:14:37.914218');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1027, 1, 'DELETE', 'Deleted user #100', '127.0.0.1', '2026-06-19 19:14:40.129819');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1028, 1, 'DELETE', 'Deleted user #99', '127.0.0.1', '2026-06-19 19:14:42.5483');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1029, 1, 'DELETE', 'Deleted user #98', '127.0.0.1', '2026-06-19 19:14:45.157637');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1030, 1, 'DELETE', 'Deleted user #96', '127.0.0.1', '2026-06-19 19:14:47.718429');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1031, 1, 'DELETE', 'Deleted user #94', '127.0.0.1', '2026-06-19 19:14:50.39785');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1032, 1, 'DELETE', 'Deleted user #93', '127.0.0.1', '2026-06-19 19:14:52.475727');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1033, 1, 'DELETE', 'Deleted user #93', '127.0.0.1', '2026-06-19 19:14:54.011239');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1034, 1, 'DELETE', 'Deleted user #93', '127.0.0.1', '2026-06-19 19:14:56.964915');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1035, 1, 'DELETE', 'Deleted user #93', '127.0.0.1', '2026-06-19 19:14:59.112466');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1036, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 19:35:22.645335');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1037, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 19:35:34.50043');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1038, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 19:35:54.779963');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1039, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 19:36:09.001042');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1040, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 19:36:24.84516');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1041, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 19:36:39.30799');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1042, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 19:36:55.499407');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1043, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 19:37:10.946499');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1044, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 19:37:25.429401');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1045, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 19:37:39.860639');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1046, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 19:44:20.064383');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1047, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 19:45:53.549327');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1048, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 19:45:55.086276');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1049, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 19:46:05.200179');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1050, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 19:46:29.389339');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1051, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 19:46:33.975884');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1052, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 19:46:42.930268');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1053, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 19:46:47.581629');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1054, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 19:46:57.355336');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1055, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 19:47:00.63543');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1056, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 19:47:11.780786');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1057, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 19:47:14.055836');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1058, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 19:47:25.4569');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1059, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 19:47:27.792949');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1060, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 19:47:41.409989');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1061, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 19:47:42.928244');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1062, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 19:47:57.473473');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1063, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 19:47:59.098093');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1064, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 19:48:13.153626');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1065, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 19:48:14.649223');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1066, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 19:48:31.824288');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1067, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 19:48:33.919288');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1068, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 19:48:49.205312');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1069, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 19:48:51.413513');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1070, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 19:49:05.961745');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1071, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 19:49:19.326089');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1072, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 19:58:34.153618');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1073, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 19:58:51.418047');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1074, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 19:59:10.152024');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1075, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 19:59:26.920942');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1076, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 19:59:43.129909');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1077, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 20:00:00.699447');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1078, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 20:00:18.427255');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1079, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 20:00:36.240827');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1080, 1, 'CREATE', 'Created parent #9', '127.0.0.1', '2026-06-19 20:00:42.24041');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1081, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 20:00:56.964547');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1082, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 20:01:13.915525');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1083, 1, 'CREATE', 'Created parent #10', '127.0.0.1', '2026-06-19 20:01:19.43309');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1084, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 20:01:35.962764');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1085, 1, 'CREATE', 'Created parent #11', '127.0.0.1', '2026-06-19 20:01:57.698357');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1086, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 20:02:14.215084');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1087, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 20:02:30.327747');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1088, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 20:02:45.148586');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1089, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 20:03:00.810024');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1090, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 20:03:17.160061');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1091, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 20:03:33.253523');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1092, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 20:03:50.533533');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1093, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 20:04:07.854159');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1094, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 20:04:25.277596');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1095, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 20:04:42.585208');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1096, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 20:05:01.042942');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1097, 1, 'CREATE', 'Created section #25', '127.0.0.1', '2026-06-19 20:05:04.582423');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1098, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 20:05:20.000696');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1099, 1, 'CREATE', 'Created section #26', '127.0.0.1', '2026-06-19 20:05:23.645719');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1100, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 20:05:41.030456');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1101, 1, 'CREATE', 'Created section #27', '127.0.0.1', '2026-06-19 20:05:44.886649');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1102, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 20:06:10.056261');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1103, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 20:06:26.940356');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1104, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 20:18:23.223539');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1105, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 20:18:48.662789');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1106, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 20:19:03.387321');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1107, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 20:19:20.220399');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1108, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 20:19:39.344206');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1109, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 20:20:01.858283');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1110, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 20:20:16.88793');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1111, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 20:20:31.831108');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1112, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 20:20:47.070489');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1113, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 20:21:02.317104');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1114, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 20:21:18.350698');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1115, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 20:21:34.747021');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1116, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 20:21:50.03778');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1117, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 20:22:07.437794');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1118, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 20:22:25.13129');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1119, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 20:22:48.400259');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1120, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 20:23:07.4769');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1121, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 20:23:31.83761');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1122, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 20:23:46.18623');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1123, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 20:24:00.379841');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1124, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 20:24:15.01159');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1125, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 20:24:31.970056');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1126, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 20:24:47.652375');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1127, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 20:25:05.391118');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1128, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-19 20:25:23.140853');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1129, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 00:02:53.400498');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1130, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 00:03:11.764898');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1131, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 00:03:26.366087');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1132, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 00:03:43.710464');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1133, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 00:04:05.414596');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1134, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 00:04:24.162714');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1135, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 00:04:43.624541');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1136, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 00:05:02.049383');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1137, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 00:05:19.561412');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1138, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 00:05:36.116738');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1139, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 00:05:51.416654');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1140, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 00:06:08.775974');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1141, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 00:06:24.144895');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1142, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 00:06:42.050002');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1143, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 00:06:58.985171');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1144, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 00:07:16.914655');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1145, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 00:07:36.567712');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1146, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 00:07:53.166637');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1147, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 00:08:07.146451');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1148, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 00:08:21.212455');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1149, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 00:08:35.179989');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1150, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 00:08:51.228138');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1151, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 00:09:07.97759');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1152, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 00:09:25.818197');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1153, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 00:09:44.148866');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1154, 1, 'DELETE', 'Deleted user #101', '127.0.0.1', '2026-06-20 00:10:47.121154');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1155, 1, 'DELETE', 'Deleted user #101', '127.0.0.1', '2026-06-20 00:10:50.831601');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1156, 6, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 00:10:56.746104');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1157, 6, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 00:11:12.160746');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1158, 6, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 00:11:26.328871');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1159, 6, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 00:11:41.636546');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1160, 6, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 00:12:00.473977');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1161, 6, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 00:12:16.800052');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1162, 6, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 00:12:32.813766');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1163, 6, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 00:20:30.427607');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1164, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 00:22:44.612754');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1165, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 00:23:02.923765');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1166, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 00:23:18.807531');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1167, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 00:23:36.972718');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1168, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 00:23:53.20326');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1169, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 00:24:10.842165');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1170, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 00:24:28.655209');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1171, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 00:24:47.62465');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1172, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 00:25:01.692458');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1173, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 00:25:16.091646');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1174, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 00:25:29.734833');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1175, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 00:25:45.195332');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1176, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 00:26:02.816131');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1177, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 00:26:21.940086');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1178, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 00:26:38.781831');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1179, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 00:26:53.207309');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1180, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 00:27:07.110723');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1181, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 00:27:20.921954');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1182, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 00:27:34.749162');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1183, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 00:27:48.673322');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1184, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 00:28:05.494214');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1185, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 00:28:19.280563');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1186, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 00:28:33.030874');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1187, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 00:28:50.004332');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1188, 1, 'UPDATE', 'Updated settings', '127.0.0.1', '2026-06-20 00:28:57.788938');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1189, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 00:29:08.580269');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1190, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 00:29:23.935857');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1191, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 00:29:38.724743');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1192, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 00:29:53.883868');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1193, 1, 'CREATE', 'Backup created', '127.0.0.1', '2026-06-20 00:30:01.819079');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1194, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 00:30:11.75748');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1195, 1, 'CREATE', 'Backup created', '127.0.0.1', '2026-06-20 00:30:19.567995');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1196, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 00:30:29.252197');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1197, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 00:34:34.999132');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1198, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 00:38:55.584764');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1199, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 00:41:29.38002');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1200, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 00:41:39.628883');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1201, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 00:42:02.274335');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1202, 6, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 00:42:13.822886');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1203, 91, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 00:42:24.136216');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1204, 88, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 00:42:32.871573');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1205, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 00:42:52.59312');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1206, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 00:43:08.66971');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1207, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 00:43:23.219831');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1208, 137, 'REGISTER', 'New Teacher registration submitted', '127.0.0.1', '2026-06-20 00:43:45.6356');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1209, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 00:43:57.345186');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1210, 1, 'CREATE', 'Created user #138', '127.0.0.1', '2026-06-20 00:43:59.737695');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1211, 1, 'UPDATE', 'Deactivated user #138', '127.0.0.1', '2026-06-20 00:44:00.238771');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1212, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 00:44:14.542867');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1213, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 00:44:23.568766');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1214, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 00:44:33.111102');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1215, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 00:44:44.795068');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1216, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 00:44:54.66467');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1217, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 00:45:03.737868');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1218, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 00:45:12.244277');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1219, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 00:45:20.750236');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1220, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 00:45:34.554332');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1221, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 00:45:43.364957');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1222, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 00:45:51.963907');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1223, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 00:46:00.713315');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1224, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 00:46:09.328222');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1225, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 00:46:17.760319');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1226, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 00:46:26.088344');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1227, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 00:46:36.858355');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1228, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 00:46:45.543645');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1229, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 00:46:54.007869');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1230, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 00:47:02.43088');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1231, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 00:47:10.893488');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1232, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 00:47:19.312715');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1233, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 00:47:27.606199');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1234, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 00:47:35.996815');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1235, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 00:47:44.611102');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1236, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 00:47:57.147267');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1237, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 00:48:05.619988');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1238, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 00:48:14.227793');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1239, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 00:48:24.626325');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1240, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 00:48:33.052968');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1241, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 00:48:45.90954');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1242, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 00:48:56.739944');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1243, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 00:49:08.537387');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1244, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 00:49:23.513065');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1245, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 00:49:37.159308');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1246, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 00:49:51.22913');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1247, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 00:50:05.047151');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1248, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 00:50:19.881484');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1249, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 00:50:34.063117');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1250, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 00:50:50.464402');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1251, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 00:51:04.031224');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1252, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 00:51:17.607484');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1253, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 00:51:40.512874');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1254, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 00:51:54.572723');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1255, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 00:52:10.899476');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1256, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 00:52:29.231377');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1257, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 00:52:49.699357');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1258, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 00:53:11.948507');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1259, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 00:53:25.877217');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1260, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 00:53:40.573146');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1261, 1, 'CREATE', 'Created user #139', '127.0.0.1', '2026-06-20 00:53:58.445804');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1262, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 00:54:08.988351');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1263, 1, 'CREATE', 'Created user #140', '127.0.0.1', '2026-06-20 00:54:26.805757');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1264, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 00:54:37.349603');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1265, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 00:55:02.095616');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1266, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 00:55:14.095032');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1267, 1, 'CREATE', 'Created user #142', '127.0.0.1', '2026-06-20 00:55:30.505317');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1268, 1, 'UPDATE', 'Updated user #142', '127.0.0.1', '2026-06-20 00:55:41.678199');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1269, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 00:55:49.833739');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1270, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 00:55:54.526275');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1271, 1, 'CREATE', 'Created user #143', '127.0.0.1', '2026-06-20 00:55:55.155699');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1272, 1, 'UPDATE', 'Deactivated user #143', '127.0.0.1', '2026-06-20 00:56:00.605538');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1273, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 00:56:11.119477');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1274, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 00:56:15.707894');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1275, 1, 'CREATE', 'Created user #144', '127.0.0.1', '2026-06-20 00:56:16.440349');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1276, 1, 'UPDATE', 'Activated user #144', '127.0.0.1', '2026-06-20 00:56:22.439519');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1277, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 00:56:33.39723');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1278, 1, 'DELETE', 'Deleted user #144', '127.0.0.1', '2026-06-20 00:56:38.900677');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1279, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 00:56:48.633997');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1280, 1, 'CREATE', 'Created user #145', '127.0.0.1', '2026-06-20 00:57:06.107581');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1281, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 00:57:18.925835');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1282, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 00:57:35.173865');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1283, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 00:57:53.834554');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1284, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 00:58:04.372868');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1285, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 00:58:18.19731');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1286, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 00:58:31.198956');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1287, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 00:58:44.545017');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1288, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 00:58:58.013457');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1289, 1, 'APPROVE', 'Registration #26 approved', '127.0.0.1', '2026-06-20 00:59:07.544927');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1290, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 00:59:18.783125');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1291, 1, 'REJECT', 'Registration #23 rejected', '127.0.0.1', '2026-06-20 00:59:28.233073');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1292, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 00:59:37.663252');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1293, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 00:59:48.605388');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1294, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 01:00:00.299586');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1295, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 01:00:16.547526');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1296, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 01:00:28.372014');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1297, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 01:00:41.756957');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1298, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 01:00:54.688094');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1299, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 01:01:10.377365');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1300, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 01:01:23.364437');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1301, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 01:01:39.227234');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1302, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 01:01:55.034876');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1303, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 01:02:08.566747');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1304, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 01:02:23.285488');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1305, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 01:02:36.16296');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1306, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 01:02:50.710727');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1307, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 01:03:06.281501');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1308, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 01:03:22.041717');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1309, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 01:03:38.276646');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1310, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 01:03:55.317996');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1311, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 01:04:12.634459');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1312, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 01:04:30.608844');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1313, 1, 'CREATE', 'Created parent #12', '127.0.0.1', '2026-06-20 01:04:35.199228');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1314, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 01:04:49.916525');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1315, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 01:05:07.198602');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1316, 1, 'CREATE', 'Created parent #13', '127.0.0.1', '2026-06-20 01:05:11.160277');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1317, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 01:05:27.61686');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1318, 1, 'CREATE', 'Created parent #14', '127.0.0.1', '2026-06-20 01:05:31.378671');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1319, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 01:05:47.520088');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1320, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 01:06:03.726921');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1321, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 01:06:18.437653');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1322, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 01:06:34.020697');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1323, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 01:06:49.777647');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1324, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 01:07:05.602257');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1325, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 01:07:22.77384');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1326, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 01:07:39.766203');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1327, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 01:07:57.364774');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1328, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 01:08:14.48128');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1329, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 01:08:31.877181');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1330, 1, 'CREATE', 'Created section #28', '127.0.0.1', '2026-06-20 01:08:35.278293');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1331, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 01:08:49.883515');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1332, 1, 'CREATE', 'Created section #29', '127.0.0.1', '2026-06-20 01:08:53.500988');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1333, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 01:09:10.204871');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1334, 1, 'CREATE', 'Created section #30', '127.0.0.1', '2026-06-20 01:09:13.493108');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1335, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 01:09:29.998673');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1336, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 01:09:47.93496');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1337, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 01:10:03.787541');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1338, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 01:10:18.420225');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1339, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 01:10:33.344728');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1340, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 01:10:49.649635');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1341, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 01:11:07.995473');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1342, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 01:11:25.491205');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1343, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 01:11:40.468918');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1344, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 01:11:55.017256');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1345, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 01:12:09.374606');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1346, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 01:12:25.140158');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1347, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 01:12:40.759102');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1348, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 01:12:57.274798');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1349, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 01:13:12.649337');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1350, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 01:13:29.653941');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1351, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 01:13:46.759285');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1352, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 01:14:04.354727');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1353, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 01:14:22.919565');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1354, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 01:14:39.278139');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1355, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 01:14:53.017427');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1356, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 01:15:06.824107');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1357, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 01:15:20.723221');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1358, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 01:15:36.639484');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1359, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 01:15:52.495464');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1360, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 01:16:10.618303');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1361, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 01:16:28.630876');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1362, 6, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 01:16:49.947062');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1363, 6, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 01:17:05.219301');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1364, 6, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 01:17:19.69597');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1365, 6, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 01:17:34.676294');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1366, 6, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 01:17:49.972577');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1367, 6, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 01:18:05.17823');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1368, 6, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 01:18:20.741634');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1369, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 01:22:12.613781');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1370, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 01:22:26.906392');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1371, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 01:22:41.219485');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1372, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 01:22:56.369822');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1373, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 01:23:11.761932');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1374, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 01:23:28.536223');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1375, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 01:23:45.600346');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1376, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 01:24:02.444545');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1377, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 01:24:16.951354');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1378, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 01:24:30.856248');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1379, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 01:24:44.604617');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1380, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 01:25:00.175709');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1381, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 01:25:17.579985');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1382, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 01:25:36.973663');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1383, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 01:25:54.183485');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1384, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 01:26:08.416189');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1385, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 01:26:22.131639');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1386, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 01:26:36.015202');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1387, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 01:26:50.091872');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1388, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 01:27:04.053013');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1389, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 01:27:21.326661');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1390, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 01:27:35.20528');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1391, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 01:27:48.993802');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1392, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 01:28:04.51054');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1393, 1, 'UPDATE', 'Updated settings', '127.0.0.1', '2026-06-20 01:28:12.520814');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1394, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 01:28:23.006479');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1395, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 01:28:38.108894');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1396, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 01:28:52.738808');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1397, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 01:29:07.990436');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1398, 1, 'CREATE', 'Backup created', '127.0.0.1', '2026-06-20 01:29:15.782149');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1399, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 01:29:25.352138');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1400, 1, 'CREATE', 'Backup created', '127.0.0.1', '2026-06-20 01:29:33.307539');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1401, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 01:29:42.878422');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1402, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 01:29:57.276736');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1403, 6, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 01:31:37.880442');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1404, 91, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 01:32:25.051907');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1405, 88, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 01:32:49.824451');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1406, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 01:33:56.020279');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1407, 6, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 01:34:04.22917');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1408, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 01:34:20.461269');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1409, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 01:34:31.106661');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1410, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 01:34:39.995046');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1411, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 01:34:48.371458');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1412, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 01:34:57.222373');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1413, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 01:35:05.343662');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1414, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 01:35:13.558365');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1415, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 01:35:22.089338');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1416, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 01:35:30.379401');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1417, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 01:35:41.191018');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1418, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 01:35:53.738201');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1419, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 01:36:07.248878');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1420, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 01:36:27.017628');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1421, 1, 'CREATE', 'Created user #146', '127.0.0.1', '2026-06-20 01:36:44.176084');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1422, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 01:36:52.142217');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1423, 147, 'REGISTER', 'New Teacher registration submitted', '127.0.0.1', '2026-06-20 01:37:15.926961');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1424, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 08:28:29.247315');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1425, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 08:28:37.46909');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1426, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 08:28:54.592823');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1427, 6, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 08:29:03.550381');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1428, 91, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 08:29:13.061741');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1429, 88, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 08:29:20.994954');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1430, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 08:29:38.462309');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1431, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 08:29:51.333439');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1432, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 08:30:05.740988');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1433, 148, 'REGISTER', 'New Teacher registration submitted', '127.0.0.1', '2026-06-20 08:30:27.534374');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1434, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 08:30:38.743043');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1435, 1, 'CREATE', 'Created user #149', '127.0.0.1', '2026-06-20 08:30:39.963307');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1436, 1, 'UPDATE', 'Deactivated user #149', '127.0.0.1', '2026-06-20 08:30:40.438562');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1437, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 08:30:57.708331');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1438, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 08:32:43.660292');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1439, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 08:32:53.326019');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1440, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 08:33:10.904688');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1441, 6, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 08:33:19.987274');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1442, 91, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 08:33:28.982779');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1443, 88, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 08:33:37.49743');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1444, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 08:33:54.113278');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1445, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 08:34:07.424184');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1446, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 08:34:21.197643');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1447, 150, 'REGISTER', 'New Teacher registration submitted', '127.0.0.1', '2026-06-20 08:34:42.949899');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1448, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 08:34:54.514249');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1449, 1, 'CREATE', 'Created user #151', '127.0.0.1', '2026-06-20 08:34:55.46285');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1450, 1, 'UPDATE', 'Deactivated user #151', '127.0.0.1', '2026-06-20 08:34:56.170191');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1451, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 08:35:10.658672');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1452, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 08:35:19.256607');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1453, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 08:35:28.005003');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1454, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 08:35:39.491125');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1455, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 08:35:48.468701');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1456, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 08:35:57.231734');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1457, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 08:36:05.52393');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1458, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 08:36:13.757013');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1459, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 08:36:27.217014');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1460, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 08:36:35.578744');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1461, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 08:36:43.898835');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1462, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 08:36:52.14148');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1463, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 08:37:00.464241');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1464, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 08:37:08.710276');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1465, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 08:37:16.903276');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1466, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 08:37:27.604105');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1467, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 08:37:36.184492');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1468, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 08:37:45.560096');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1469, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 08:37:54.346591');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1470, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 08:38:02.706916');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1471, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 08:38:10.910636');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1472, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 08:38:19.486462');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1473, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 08:38:27.779468');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1474, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 08:38:36.141063');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1475, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 08:38:48.197208');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1476, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 08:38:56.489667');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1477, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 08:39:05.648208');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1478, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 08:39:16.313932');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1479, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 08:39:25.051664');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1480, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 08:39:38.131627');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1481, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 08:39:48.946637');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1482, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 08:40:00.879545');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1483, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 08:40:15.340364');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1484, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 08:40:28.964032');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1485, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 08:40:42.849516');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1486, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 08:40:56.607667');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1487, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 08:41:10.305786');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1488, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 08:41:24.119482');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1489, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 08:41:40.800157');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1490, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 08:41:53.568928');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1491, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 08:42:06.840594');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1492, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 08:42:22.5248');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1493, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 08:42:36.769837');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1494, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 08:42:53.205328');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1495, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 08:43:11.35631');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1496, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 08:43:32.912684');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1497, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 08:43:55.482325');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1498, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 08:44:09.630395');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1499, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 08:44:23.925302');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1500, 1, 'CREATE', 'Created user #152', '127.0.0.1', '2026-06-20 08:44:41.326647');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1501, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 08:44:51.667238');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1502, 1, 'CREATE', 'Created user #153', '127.0.0.1', '2026-06-20 08:45:09.244935');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1503, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 08:45:19.742864');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1504, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 08:45:43.780793');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1505, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 08:45:56.878323');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1506, 1, 'CREATE', 'Created user #155', '127.0.0.1', '2026-06-20 08:46:12.997339');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1507, 1, 'UPDATE', 'Updated user #155', '127.0.0.1', '2026-06-20 08:46:24.523171');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1508, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 08:46:32.57571');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1509, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 08:46:36.877001');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1510, 1, 'CREATE', 'Created user #156', '127.0.0.1', '2026-06-20 08:46:37.522895');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1511, 1, 'UPDATE', 'Deactivated user #156', '127.0.0.1', '2026-06-20 08:46:43.798703');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1512, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 08:46:54.060506');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1513, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 08:46:58.449666');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1514, 1, 'CREATE', 'Created user #157', '127.0.0.1', '2026-06-20 08:46:59.087389');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1515, 1, 'UPDATE', 'Activated user #157', '127.0.0.1', '2026-06-20 08:47:05.305186');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1516, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 08:47:15.593276');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1517, 1, 'DELETE', 'Deleted user #157', '127.0.0.1', '2026-06-20 08:47:21.794646');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1518, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 08:47:31.011907');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1519, 1, 'CREATE', 'Created user #158', '127.0.0.1', '2026-06-20 08:47:48.726588');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1520, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 08:48:01.712822');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1521, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 08:48:17.609459');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1522, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 08:48:35.723556');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1523, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 08:48:47.310262');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1524, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 08:49:00.81265');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1525, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 08:49:14.651349');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1526, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 08:49:30.053313');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1527, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 08:49:43.668543');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1528, 1, 'APPROVE', 'Registration #29 approved', '127.0.0.1', '2026-06-20 08:49:52.966955');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1529, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 08:50:03.399834');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1530, 1, 'REJECT', 'Registration #28 rejected', '127.0.0.1', '2026-06-20 08:50:12.61668');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1531, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 08:50:22.123754');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1532, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 08:50:33.513507');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1533, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 08:50:44.927689');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1534, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 08:51:03.153605');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1535, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 08:51:16.101718');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1536, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 08:51:31.235669');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1537, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 08:51:45.513705');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1538, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 08:52:03.199037');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1539, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 08:52:17.942885');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1540, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 08:52:34.301105');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1541, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 08:52:50.995761');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1542, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 08:53:06.263261');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1543, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 08:53:22.05891');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1544, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 08:53:36.06287');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1545, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 08:53:51.395654');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1546, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 08:54:07.593183');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1547, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 08:54:24.134335');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1548, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 08:54:40.614343');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1549, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 08:54:58.318252');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1550, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 08:55:15.817599');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1551, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 08:55:33.614292');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1552, 1, 'CREATE', 'Created parent #15', '127.0.0.1', '2026-06-20 08:55:37.538693');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1553, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 08:55:52.681443');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1554, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 08:56:10.011502');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1555, 1, 'CREATE', 'Created parent #16', '127.0.0.1', '2026-06-20 08:56:13.697888');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1556, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 08:56:30.265117');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1557, 1, 'CREATE', 'Created parent #17', '127.0.0.1', '2026-06-20 08:56:34.156737');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1558, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 08:56:50.647914');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1559, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 08:57:06.595394');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1560, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 08:57:21.303438');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1561, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 08:57:37.01784');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1562, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 08:57:52.986677');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1563, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 08:58:08.551315');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1564, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 08:58:25.923852');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1565, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 08:58:43.314353');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1566, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 08:59:00.681781');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1567, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 08:59:17.872686');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1568, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 08:59:35.042208');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1569, 1, 'CREATE', 'Created section #31', '127.0.0.1', '2026-06-20 08:59:38.603904');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1570, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 08:59:53.366551');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1571, 1, 'CREATE', 'Created section #32', '127.0.0.1', '2026-06-20 08:59:56.78106');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1572, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 09:00:13.953172');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1573, 1, 'CREATE', 'Created section #33', '127.0.0.1', '2026-06-20 09:00:17.352859');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1574, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 09:00:34.336103');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1575, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 09:00:49.796607');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1576, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 09:01:07.191477');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1577, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 09:01:22.133212');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1578, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 09:01:36.901062');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1579, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 09:01:53.771551');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1580, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 09:02:12.510613');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1581, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 09:02:30.136367');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1582, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 09:02:45.211181');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1583, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 09:03:00.31625');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1584, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 09:03:15.19789');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1585, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 09:03:30.88645');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1586, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 09:03:47.353407');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1587, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 09:04:03.720157');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1588, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 09:04:19.241266');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1589, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 09:04:36.626065');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1590, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 09:04:53.784763');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1591, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 09:05:11.513983');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1592, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 09:05:30.150492');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1593, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 09:05:46.881721');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1594, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 09:06:00.871547');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1595, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 09:06:14.874474');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1596, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 09:06:28.969379');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1597, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 09:06:44.984833');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1598, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 09:07:00.948347');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1599, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 09:07:19.054655');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1600, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 09:07:36.95212');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1601, 6, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 09:07:58.720578');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1602, 6, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 09:08:14.527173');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1603, 6, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 09:08:29.419457');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1604, 6, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 09:08:44.788862');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1605, 6, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 09:09:00.211644');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1606, 6, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 09:09:15.547219');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1607, 6, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 09:09:30.871993');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1608, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 09:13:23.45079');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1609, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 09:13:38.11081');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1610, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 09:13:52.06748');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1611, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 09:14:07.500774');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1612, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 09:14:22.95335');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1613, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 09:14:40.031501');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1614, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 09:14:57.02188');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1615, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 09:15:14.152788');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1616, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 09:15:29.073743');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1617, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 09:15:43.233136');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1618, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 09:15:57.177074');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1619, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 09:16:12.923684');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1620, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 09:16:30.703983');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1621, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 09:16:50.121732');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1622, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 09:17:07.235254');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1623, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 09:17:21.906673');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1624, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 09:17:35.958292');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1625, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 09:17:49.854061');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1626, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 09:18:04.26751');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1627, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 09:18:18.356872');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1628, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 09:18:35.474236');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1629, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 09:18:49.355535');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1630, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 09:19:03.319706');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1631, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 09:19:19.258529');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1632, 1, 'UPDATE', 'Updated settings', '127.0.0.1', '2026-06-20 09:19:27.255798');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1633, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 09:19:37.897157');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1634, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 09:19:53.625662');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1635, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 09:20:07.985642');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1636, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 09:20:23.339875');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1637, 1, 'CREATE', 'Backup created', '127.0.0.1', '2026-06-20 09:20:31.330246');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1638, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 09:20:40.868165');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1639, 1, 'CREATE', 'Backup created', '127.0.0.1', '2026-06-20 09:20:48.757287');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1640, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 09:20:58.903182');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1641, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 09:21:13.284127');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1642, 6, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 09:22:56.933512');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1643, 91, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 09:23:44.519203');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1644, 88, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 09:24:09.986656');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1645, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 09:25:17.759246');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1646, 6, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 09:25:26.439636');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1647, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 09:25:43.076205');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1648, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 09:25:53.5109');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1649, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 09:26:02.741772');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1650, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 09:26:11.538042');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1651, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 09:26:20.185991');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1652, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 09:26:28.807308');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1653, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 09:26:37.267859');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1654, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 09:26:45.856104');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1655, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 09:26:54.473564');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1656, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 09:27:05.009231');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1657, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 09:27:17.133522');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1658, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 09:27:31.125096');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1659, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 09:27:51.736277');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1660, 1, 'CREATE', 'Created user #159', '127.0.0.1', '2026-06-20 09:28:09.089378');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1661, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 09:28:17.176922');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1662, 160, 'REGISTER', 'New Teacher registration submitted', '127.0.0.1', '2026-06-20 09:28:41.131719');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1663, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 12:34:02.494822');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1664, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 12:34:11.863361');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1665, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 12:34:29.765567');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1666, 6, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 12:34:39.20874');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1667, 91, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 12:34:48.232909');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1668, 88, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 12:34:57.105487');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1669, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 12:35:16.669843');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1670, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 12:35:30.144969');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1671, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 12:35:45.30078');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1672, 161, 'REGISTER', 'New Teacher registration submitted', '127.0.0.1', '2026-06-20 12:36:07.988334');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1673, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 12:36:20.07605');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1674, 1, 'CREATE', 'Created user #162', '127.0.0.1', '2026-06-20 12:36:21.228705');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1675, 1, 'UPDATE', 'Deactivated user #162', '127.0.0.1', '2026-06-20 12:36:21.737748');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1676, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 12:36:37.26653');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1677, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 12:36:47.032075');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1678, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 12:36:57.647841');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1679, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 12:37:10.120632');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1680, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 12:37:21.227649');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1681, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 12:37:31.330465');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1682, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 12:37:40.261971');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1683, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 12:37:49.015702');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1684, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 12:38:02.709778');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1685, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 12:38:11.728067');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1686, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 12:38:20.423722');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1687, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 12:38:30.238144');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1688, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 12:38:38.718378');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1689, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 12:38:47.743789');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1690, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 12:38:56.821757');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1691, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 12:39:07.411388');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1692, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 12:39:16.732484');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1693, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 12:39:25.199414');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1694, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 12:39:34.390178');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1695, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 12:39:43.291848');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1696, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 12:39:52.680814');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1697, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 12:40:01.333851');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1698, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 12:40:10.916731');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1699, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 12:40:19.676554');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1700, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 12:40:32.475571');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1701, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 12:40:41.433539');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1702, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 12:40:50.780109');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1703, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 12:41:01.691811');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1704, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 12:41:10.381932');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1705, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 12:41:23.992263');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1706, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 12:41:35.540921');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1707, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 12:41:47.579754');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1708, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 12:42:01.250835');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1709, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 12:42:15.48819');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1710, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 12:42:29.26676');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1711, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 12:42:43.554582');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1712, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 12:42:57.217821');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1713, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 12:43:11.348418');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1714, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 12:43:27.433025');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1715, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 12:43:40.185657');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1716, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 12:43:53.344879');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1717, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 12:44:09.449842');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1718, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 12:44:23.569584');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1719, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 12:44:40.699888');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1720, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 12:44:58.263634');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1721, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 12:45:21.038246');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1722, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 12:45:45.801105');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1723, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 12:46:02.123168');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1724, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 12:46:17.266085');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1725, 1, 'CREATE', 'Created user #163', '127.0.0.1', '2026-06-20 12:46:36.44062');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1726, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 12:46:47.319354');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1727, 1, 'CREATE', 'Created user #164', '127.0.0.1', '2026-06-20 12:47:07.04655');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1728, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 12:47:18.601956');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1729, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 12:47:44.884296');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1730, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 12:47:58.383419');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1731, 1, 'CREATE', 'Created user #166', '127.0.0.1', '2026-06-20 12:48:14.515152');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1732, 1, 'UPDATE', 'Updated user #166', '127.0.0.1', '2026-06-20 12:48:25.877162');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1733, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 12:48:33.863848');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1734, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 12:48:38.440721');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1735, 1, 'CREATE', 'Created user #167', '127.0.0.1', '2026-06-20 12:48:39.182973');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1736, 1, 'UPDATE', 'Deactivated user #167', '127.0.0.1', '2026-06-20 12:48:46.189006');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1737, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 12:48:57.687322');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1738, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 12:49:01.945632');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1739, 1, 'CREATE', 'Created user #168', '127.0.0.1', '2026-06-20 12:49:02.574215');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1740, 1, 'UPDATE', 'Activated user #168', '127.0.0.1', '2026-06-20 12:49:08.816722');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1741, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 12:49:18.972792');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1742, 1, 'DELETE', 'Deleted user #168', '127.0.0.1', '2026-06-20 12:49:25.449589');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1743, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 12:49:34.796136');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1744, 1, 'CREATE', 'Created user #169', '127.0.0.1', '2026-06-20 12:49:52.159531');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1745, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 12:50:05.075643');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1746, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 12:50:20.669701');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1747, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 12:50:38.325853');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1748, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 12:50:48.982983');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1749, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 12:51:02.18642');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1750, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 12:51:15.177891');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1751, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 12:51:28.297436');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1752, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 12:51:42.971265');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1753, 1, 'APPROVE', 'Registration #31 approved', '127.0.0.1', '2026-06-20 12:51:54.993003');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1754, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 12:52:11.802773');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1755, 1, 'REJECT', 'Registration #30 rejected', '127.0.0.1', '2026-06-20 12:52:22.103406');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1756, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 12:52:32.770237');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1757, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 12:52:44.737486');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1758, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 12:52:57.063084');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1759, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 12:53:14.843494');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1760, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 12:53:27.979608');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1761, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 12:53:43.620211');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1762, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 12:53:58.237184');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1763, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 12:54:14.830771');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1764, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 12:54:30.304261');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1765, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 12:54:46.554991');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1766, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 12:55:03.65302');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1767, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 12:55:19.68472');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1768, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 12:55:35.221665');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1769, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 12:55:50.435957');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1770, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 12:56:05.283998');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1771, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 12:56:21.641297');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1772, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 12:56:38.221953');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1773, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 12:56:54.298624');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1774, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 12:57:11.877884');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1775, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 12:57:29.906');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1776, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 12:57:47.282181');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1777, 1, 'CREATE', 'Created parent #18', '127.0.0.1', '2026-06-20 12:57:51.26823');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1778, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 12:58:06.716508');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1779, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 12:58:24.418883');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1780, 1, 'CREATE', 'Created parent #19', '127.0.0.1', '2026-06-20 12:58:28.438755');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1781, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 12:58:45.988549');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1782, 1, 'CREATE', 'Created parent #20', '127.0.0.1', '2026-06-20 12:58:49.988359');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1783, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 12:59:07.163957');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1784, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 12:59:24.197588');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1785, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 12:59:39.623464');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1786, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 12:59:55.842468');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1787, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 13:00:12.012157');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1788, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 13:00:28.389819');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1789, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 13:00:46.840291');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1790, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 13:01:04.443053');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1791, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 13:01:22.920641');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1792, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 13:01:40.937636');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1793, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 13:01:59.230226');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1794, 1, 'CREATE', 'Created section #34', '127.0.0.1', '2026-06-20 13:02:02.397261');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1795, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 13:02:18.310082');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1796, 1, 'CREATE', 'Created section #35', '127.0.0.1', '2026-06-20 13:02:21.897207');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1797, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 13:02:39.284477');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1798, 1, 'CREATE', 'Created section #36', '127.0.0.1', '2026-06-20 13:02:42.72276');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1799, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 13:03:00.396028');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1800, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 13:03:16.473067');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1801, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 13:03:34.456993');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1802, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 13:03:50.001826');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1803, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 13:04:05.387558');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1804, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 13:04:22.517662');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1805, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 13:04:41.781282');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1806, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 13:04:59.70361');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1807, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 13:05:15.806176');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1808, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 13:05:31.577671');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1809, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 13:05:47.236408');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1810, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 13:06:03.872128');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1811, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 13:06:20.97253');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1812, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 13:06:39.468925');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1813, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 13:06:58.114344');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1814, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 13:07:18.055249');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1815, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 13:07:36.985639');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1816, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 13:07:56.157082');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1817, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 13:08:16.236491');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1818, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 13:08:34.073943');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1819, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 13:08:49.171085');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1820, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 13:09:04.506155');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1821, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 13:09:19.955651');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1822, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 13:09:37.908541');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1823, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 13:09:55.606928');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1824, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 13:10:15.041639');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1825, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 13:10:34.233006');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1826, 6, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 13:10:57.76888');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1827, 6, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 13:11:14.788614');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1828, 6, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 13:11:30.774838');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1829, 6, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 13:11:46.868514');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1830, 6, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 13:12:03.754218');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1831, 6, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 13:12:20.281955');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1832, 6, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 13:12:37.169609');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1833, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 13:16:42.793682');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1834, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 13:16:58.208534');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1835, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 13:17:13.35535');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1836, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 13:17:30.02574');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1837, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 13:17:45.923001');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1838, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 13:18:04.32959');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1839, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 13:18:21.959715');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1840, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 13:18:39.891289');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1841, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 13:18:55.426656');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1842, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 13:19:10.277623');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1843, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 13:19:25.134114');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1844, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 13:19:41.500049');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1845, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 13:19:59.328099');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1846, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 13:20:19.076068');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1847, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 13:20:37.977159');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1848, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 13:20:53.527422');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1849, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 13:21:08.638805');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1850, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 13:21:23.374361');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1851, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 13:21:37.871655');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1852, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 13:21:52.821557');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1853, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 13:22:10.509244');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1854, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 13:22:25.177543');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1855, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 13:22:40.060926');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1856, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 13:22:56.503403');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1857, 1, 'UPDATE', 'Updated settings', '127.0.0.1', '2026-06-20 13:23:05.091928');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1858, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 13:23:16.83898');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1859, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 13:23:33.217754');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1860, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 13:23:48.339088');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1861, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 13:24:04.63467');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1862, 1, 'CREATE', 'Backup created', '127.0.0.1', '2026-06-20 13:24:12.356537');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1863, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 13:24:23.195774');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1864, 1, 'CREATE', 'Backup created', '127.0.0.1', '2026-06-20 13:24:31.082717');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1865, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 13:24:41.80447');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1866, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 13:24:56.865246');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1867, 6, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 13:26:43.885188');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1868, 91, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 13:27:34.713198');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1869, 88, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 13:28:01.0744');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1870, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 13:29:11.725301');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1871, 6, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 13:29:21.727982');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1872, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 13:29:39.995894');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1873, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 13:29:52.60972');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1874, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 13:30:03.586497');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1875, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 13:30:15.056483');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1876, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 13:30:25.047382');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1877, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 13:30:35.087791');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1878, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 13:30:44.992248');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1879, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 13:30:55.078635');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1880, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 13:31:05.396942');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1881, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 13:31:17.926216');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1882, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 13:31:31.158635');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1883, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 13:31:46.147219');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1884, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 13:32:08.642416');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1885, 1, 'CREATE', 'Created user #170', '127.0.0.1', '2026-06-20 13:32:27.807245');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1886, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 13:32:36.575126');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1887, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 13:34:38.697934');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1888, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 13:34:48.177924');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1889, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 13:35:06.040984');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1890, 6, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 13:35:15.354096');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1891, 91, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 13:35:24.253985');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1892, 88, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 13:35:33.536359');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1893, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 13:35:51.731337');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1894, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 13:36:05.817508');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1895, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 13:36:20.460736');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1896, 171, 'REGISTER', 'New Teacher registration submitted', '127.0.0.1', '2026-06-20 13:36:42.815412');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1897, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 13:36:54.959363');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1898, 1, 'CREATE', 'Created user #172', '127.0.0.1', '2026-06-20 13:36:55.977877');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1899, 1, 'UPDATE', 'Deactivated user #172', '127.0.0.1', '2026-06-20 13:36:56.506213');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1900, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 13:37:11.548018');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1901, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 13:37:20.782003');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1902, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 13:37:30.742331');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1903, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 13:37:42.614992');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1904, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 13:37:52.677559');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1905, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 13:38:02.781579');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1906, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 13:38:11.613909');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1907, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 13:38:20.322385');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1908, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 13:38:33.98814');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1909, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 13:38:42.377403');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1910, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 13:38:50.877596');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1911, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 13:38:59.219279');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1912, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 13:39:07.980036');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1913, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 13:39:16.17624');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1914, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 13:39:24.592018');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1915, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 13:39:34.885057');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1916, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 13:39:43.36012');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1917, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 13:39:51.932417');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1918, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 13:40:00.493256');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1919, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 13:40:09.526578');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1920, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 13:40:17.820019');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1921, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 13:40:26.204555');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1922, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 13:40:34.550265');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1923, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 13:40:43.007348');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1924, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 13:40:55.474366');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1925, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 13:41:03.742683');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1926, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 13:41:12.163207');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1927, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 13:41:22.076578');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1928, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 13:41:30.651677');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1929, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 13:41:43.212133');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1930, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 13:41:54.101821');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1931, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 13:42:05.78137');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1932, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 13:42:20.535933');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1933, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 13:42:34.623982');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1934, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 13:42:48.659258');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1935, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 13:43:02.644147');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1936, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 13:43:15.714414');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1937, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 13:43:29.840659');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1938, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 13:43:45.49196');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1939, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 13:43:58.504628');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1940, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 13:44:11.979589');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1941, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 13:44:28.128786');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1942, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 13:44:42.914236');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1943, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 13:44:59.21599');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1944, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 13:45:17.140681');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1945, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 13:45:37.899733');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1946, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 13:45:59.93426');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1947, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 13:46:13.792048');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1948, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 13:46:27.576958');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1949, 1, 'CREATE', 'Created user #173', '127.0.0.1', '2026-06-20 13:46:44.996972');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1950, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 13:46:54.991018');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1951, 1, 'CREATE', 'Created user #174', '127.0.0.1', '2026-06-20 13:47:12.471892');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1952, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 13:47:22.582071');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1953, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 13:47:46.507969');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1954, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 13:47:58.882086');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1955, 1, 'CREATE', 'Created user #176', '127.0.0.1', '2026-06-20 13:48:14.86394');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1956, 1, 'UPDATE', 'Updated user #176', '127.0.0.1', '2026-06-20 13:48:25.936919');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1957, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 13:48:33.981852');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1958, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 13:48:38.076925');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1959, 1, 'CREATE', 'Created user #177', '127.0.0.1', '2026-06-20 13:48:38.913503');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1960, 1, 'UPDATE', 'Deactivated user #177', '127.0.0.1', '2026-06-20 13:48:44.441832');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1961, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 13:48:54.750339');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1962, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 13:48:59.2012');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1963, 1, 'CREATE', 'Created user #178', '127.0.0.1', '2026-06-20 13:48:59.806154');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1964, 1, 'UPDATE', 'Activated user #178', '127.0.0.1', '2026-06-20 13:49:05.814598');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1965, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 13:49:16.42426');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1966, 1, 'DELETE', 'Deleted user #178', '127.0.0.1', '2026-06-20 13:49:22.362488');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1967, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 13:49:31.728289');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1968, 1, 'CREATE', 'Created user #179', '127.0.0.1', '2026-06-20 13:49:49.405768');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1969, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 13:50:02.107426');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1970, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 13:50:17.841907');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1971, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 13:50:35.926205');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1972, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 13:50:50.401824');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1973, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 13:51:05.528283');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1974, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 13:51:21.126391');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1975, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 13:51:36.583553');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1976, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 13:51:53.69366');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1977, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 13:52:10.784744');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1978, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 13:52:28.068015');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1979, 1, 'CREATE', 'Created parent #21', '127.0.0.1', '2026-06-20 13:52:31.791987');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1980, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 13:52:45.96654');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1981, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 13:53:02.90187');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1982, 1, 'CREATE', 'Created parent #22', '127.0.0.1', '2026-06-20 13:53:06.918139');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1983, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 13:53:22.877108');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1984, 1, 'CREATE', 'Created parent #23', '127.0.0.1', '2026-06-20 13:53:26.617311');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1985, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 13:53:42.392414');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1986, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 13:53:58.061379');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1987, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 13:54:12.451152');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1988, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 13:54:27.58275');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1989, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 13:54:43.115785');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1990, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 13:54:58.500587');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1991, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 13:55:15.499265');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1992, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 13:55:32.618079');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1993, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 13:55:49.675813');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1994, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 13:56:06.713167');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1995, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 13:56:23.567441');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1996, 1, 'CREATE', 'Created section #37', '127.0.0.1', '2026-06-20 13:56:27.074247');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1997, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 13:56:41.508479');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1998, 1, 'CREATE', 'Created section #38', '127.0.0.1', '2026-06-20 13:56:44.940429');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (1999, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 13:57:00.919536');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2000, 1, 'CREATE', 'Created section #39', '127.0.0.1', '2026-06-20 13:57:04.500682');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2001, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 13:57:20.36814');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2002, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 13:57:35.781021');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2003, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 13:57:52.631879');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2004, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 13:58:07.027618');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2005, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 13:58:21.423546');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2006, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 13:58:37.668671');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2007, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 13:58:55.413197');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2008, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 13:59:12.336716');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2009, 6, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 13:59:27.091672');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2010, 6, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 13:59:42.118613');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2011, 6, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 13:59:56.336833');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2012, 6, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 14:00:11.503245');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2013, 6, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 14:00:26.723514');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2014, 6, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 14:00:41.846417');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2015, 6, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 14:00:57.312297');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2016, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 14:02:45.49792');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2017, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 14:02:59.888297');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2018, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 14:03:13.68019');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2019, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 14:03:27.598108');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2020, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 14:03:41.469287');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2021, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 14:03:55.43621');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2022, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 14:04:12.42332');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2023, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 14:04:26.218187');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2024, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 14:04:40.002869');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2025, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 14:04:55.411084');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2026, 1, 'UPDATE', 'Updated settings', '127.0.0.1', '2026-06-20 14:05:03.335782');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2027, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 14:05:13.90222');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2028, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 14:05:29.152551');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2029, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 14:05:43.688562');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2030, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 14:05:58.72228');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2031, 1, 'CREATE', 'Backup created', '127.0.0.1', '2026-06-20 14:06:06.597462');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2032, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 14:06:16.213091');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2033, 1, 'CREATE', 'Backup created', '127.0.0.1', '2026-06-20 14:06:24.08857');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2034, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 14:06:33.616694');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2035, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 14:24:58.770066');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2036, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 14:25:07.733465');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2037, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 14:25:24.237332');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2038, 6, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 14:25:33.252403');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2039, 91, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 14:25:43.326827');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2040, 88, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 14:25:54.58504');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2041, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 14:26:12.441405');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2042, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 14:26:25.864076');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2043, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 14:26:39.470511');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2044, 180, 'REGISTER', 'New Teacher registration submitted', '127.0.0.1', '2026-06-20 14:27:00.978579');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2045, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 14:27:12.203535');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2046, 1, 'CREATE', 'Created user #181', '127.0.0.1', '2026-06-20 14:27:13.245719');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2047, 1, 'UPDATE', 'Deactivated user #181', '127.0.0.1', '2026-06-20 14:27:13.748164');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2048, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 14:27:28.314325');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2049, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 14:27:37.121407');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2050, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 14:27:45.958003');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2051, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 14:27:58.202194');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2052, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 14:28:06.885054');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2053, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 14:28:15.819579');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2054, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 14:28:24.692293');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2055, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 14:28:33.500858');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2056, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 14:28:46.823017');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2057, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 14:28:55.596523');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2058, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 14:29:04.27692');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2059, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 14:29:12.986877');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2060, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 14:29:21.687759');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2061, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 14:29:30.556927');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2062, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 14:29:39.079588');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2063, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 14:29:49.032096');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2064, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 14:29:57.749659');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2065, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 14:30:06.313392');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2066, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 14:30:15.18129');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2067, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 14:30:23.70338');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2068, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 14:30:32.553351');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2069, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 14:30:40.984774');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2070, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 14:30:49.723505');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2071, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 14:30:58.3691');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2072, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 14:31:10.488226');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2073, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 14:31:19.159955');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2074, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 14:31:27.704783');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2075, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 14:31:38.109329');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2076, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 14:31:47.119488');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2077, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 14:32:00.036355');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2078, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 14:32:10.960419');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2079, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 14:32:22.431117');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2080, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 14:32:36.727895');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2081, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 14:32:50.104755');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2082, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 14:33:03.701268');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2083, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 14:33:17.468446');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2084, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 14:33:30.986031');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2085, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 14:33:44.930947');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2086, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 14:34:00.947832');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2087, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 14:34:13.684574');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2088, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 14:34:26.486101');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2089, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 14:34:42.698724');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2090, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 14:34:57.108273');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2091, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 14:35:13.522233');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2092, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 14:35:30.943595');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2093, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 14:35:51.824016');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2094, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 14:36:13.943316');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2095, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 14:36:28.386056');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2096, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 14:36:42.259786');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2097, 1, 'CREATE', 'Created user #182', '127.0.0.1', '2026-06-20 14:36:59.627127');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2098, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 14:37:09.885708');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2099, 1, 'CREATE', 'Created user #183', '127.0.0.1', '2026-06-20 14:37:27.557667');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2100, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 14:37:37.467229');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2101, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 14:38:02.152896');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2102, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 14:38:15.10858');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2103, 1, 'CREATE', 'Created user #185', '127.0.0.1', '2026-06-20 14:38:30.815966');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2104, 1, 'UPDATE', 'Updated user #185', '127.0.0.1', '2026-06-20 14:38:42.208358');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2105, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 14:38:50.538502');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2106, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 14:38:55.117962');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2107, 1, 'CREATE', 'Created user #186', '127.0.0.1', '2026-06-20 14:38:55.808285');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2108, 1, 'UPDATE', 'Deactivated user #186', '127.0.0.1', '2026-06-20 14:39:02.326298');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2109, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 14:39:12.706289');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2110, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 14:39:17.384738');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2111, 1, 'CREATE', 'Created user #187', '127.0.0.1', '2026-06-20 14:39:18.220914');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2112, 1, 'UPDATE', 'Activated user #187', '127.0.0.1', '2026-06-20 14:39:24.68584');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2113, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 14:39:35.463157');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2114, 1, 'DELETE', 'Deleted user #187', '127.0.0.1', '2026-06-20 14:39:41.957621');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2115, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 14:39:51.485727');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2116, 1, 'CREATE', 'Created user #188', '127.0.0.1', '2026-06-20 14:40:10.261139');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2117, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 14:40:23.504855');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2118, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 14:40:40.777074');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2119, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 14:40:58.970955');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2120, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 14:41:10.48252');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2121, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 14:41:24.154598');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2122, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 14:41:37.435804');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2123, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 14:41:50.941716');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2124, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 14:42:04.633864');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2125, 1, 'APPROVE', 'Registration #33 approved', '127.0.0.1', '2026-06-20 14:42:13.520281');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2126, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 14:42:23.968241');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2127, 1, 'REJECT', 'Registration #32 rejected', '127.0.0.1', '2026-06-20 14:42:33.363461');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2128, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 14:42:42.95464');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2129, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 14:42:54.011364');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2130, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 14:43:05.137859');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2131, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 14:43:21.837332');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2132, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 14:43:33.59086');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2133, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 14:43:47.609429');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2134, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 14:44:00.612568');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2135, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 14:44:15.60206');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2136, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 14:44:29.256748');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2137, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 14:44:45.288711');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2138, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 14:45:00.946904');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2139, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 14:45:15.041377');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2140, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 14:45:29.400427');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2141, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 14:45:43.073113');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2142, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 14:45:57.097814');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2143, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 14:46:12.952446');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2144, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 14:46:28.820009');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2145, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 14:46:44.677197');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2146, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 14:47:01.358151');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2147, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 14:47:18.732929');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2148, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 14:47:36.370789');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2149, 1, 'CREATE', 'Created parent #24', '127.0.0.1', '2026-06-20 14:47:40.198636');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2150, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 14:47:54.629515');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2151, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 14:48:12.074255');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2152, 1, 'CREATE', 'Created parent #25', '127.0.0.1', '2026-06-20 14:48:15.468415');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2153, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 14:48:32.314259');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2154, 1, 'CREATE', 'Created parent #26', '127.0.0.1', '2026-06-20 14:48:35.729828');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2155, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 14:48:52.670173');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2156, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 14:49:08.459528');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2157, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 14:49:23.183252');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2158, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 14:49:38.939245');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2159, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 14:49:55.045693');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2160, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 14:50:11.110601');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2161, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 14:50:28.905285');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2162, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 14:50:46.580588');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2163, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 14:51:04.377933');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2164, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 14:51:22.104796');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2165, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 14:51:39.504369');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2166, 1, 'CREATE', 'Created section #40', '127.0.0.1', '2026-06-20 14:51:42.811195');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2167, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 14:51:58.219249');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2168, 1, 'CREATE', 'Created section #41', '127.0.0.1', '2026-06-20 14:52:01.70717');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2169, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 14:52:19.193278');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2170, 1, 'CREATE', 'Created section #42', '127.0.0.1', '2026-06-20 14:52:22.36846');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2171, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 14:52:39.206625');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2172, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 16:04:45.566335');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2173, 1, 'CREATE', 'Created user #189', '127.0.0.1', '2026-06-20 16:07:47.816363');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2174, 189, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 16:08:04.460047');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2175, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 16:08:27.055006');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2176, 189, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 16:09:48.835033');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2177, 1, 'LOGIN', 'User logged in', '::1', '2026-06-20 16:32:53.024025');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2178, 1, 'LOGIN', 'User logged in', '::1', '2026-06-20 16:34:49.043056');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2179, 189, 'LOGIN', 'User logged in', '::1', '2026-06-20 16:40:05.058658');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2180, 1, 'LOGIN', 'User logged in', '::1', '2026-06-20 18:14:15.785838');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2181, 1, 'LOGIN', 'User logged in', '::1', '2026-06-20 18:23:06.332605');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2182, 1, 'LOGIN', 'User logged in', '::1', '2026-06-20 18:23:27.724698');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2183, 1, 'LOGIN', 'User logged in', '::1', '2026-06-20 18:24:24.47348');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2184, 1, 'LOGIN', 'User logged in', '::1', '2026-06-20 18:25:56.255826');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2185, 1, 'LOGIN', 'User logged in', '::1', '2026-06-20 18:26:11.682801');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2186, 1, 'LOGIN', 'User logged in', '::1', '2026-06-20 20:29:50.986811');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2187, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 20:33:26.759354');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2188, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 20:34:18.62055');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2189, 5, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 20:51:19.648864');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2190, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 20:59:57.080281');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2191, 1, 'LOGIN', 'User logged in', '::1', '2026-06-20 21:03:57.325319');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2192, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-20 21:05:29.179055');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2193, 1, 'SEND_EMAIL', 'Resent email #54', '127.0.0.1', '2026-06-20 21:06:02.983267');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2194, 1, 'SEND_EMAIL', 'Resent email #54', '127.0.0.1', '2026-06-20 21:06:09.831854');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2195, 1, 'SEND_EMAIL', 'Resent email #54', '127.0.0.1', '2026-06-20 21:06:16.803822');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2196, 1, 'DELETE', 'Deleted section #25', '127.0.0.1', '2026-06-20 21:11:54.309132');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2197, 1, 'DELETE', 'Deleted section #28', '127.0.0.1', '2026-06-20 21:11:57.301246');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2198, 1, 'DELETE', 'Deleted section #31', '127.0.0.1', '2026-06-20 21:11:59.209718');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2199, 1, 'DELETE', 'Deleted section #34', '127.0.0.1', '2026-06-20 21:12:01.026143');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2200, 1, 'DELETE', 'Deleted section #37', '127.0.0.1', '2026-06-20 21:12:02.744397');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2201, 1, 'DELETE', 'Deleted section #40', '127.0.0.1', '2026-06-20 21:12:05.055067');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2202, 1, 'DELETE', 'Deleted section #26', '127.0.0.1', '2026-06-20 21:12:08.614316');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2203, 1, 'DELETE', 'Deleted section #29', '127.0.0.1', '2026-06-20 21:12:10.462201');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2204, 1, 'DELETE', 'Deleted section #32', '127.0.0.1', '2026-06-20 21:12:12.129651');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2205, 1, 'DELETE', 'Deleted section #35', '127.0.0.1', '2026-06-20 21:12:13.78883');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2206, 1, 'DELETE', 'Deleted section #38', '127.0.0.1', '2026-06-20 21:12:15.798875');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2207, 1, 'DELETE', 'Deleted section #41', '127.0.0.1', '2026-06-20 21:12:17.443742');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2208, 1, 'DELETE', 'Deleted section #27', '127.0.0.1', '2026-06-20 21:12:20.291977');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2209, 1, 'DELETE', 'Deleted section #30', '127.0.0.1', '2026-06-20 21:12:21.746398');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2210, 1, 'DELETE', 'Deleted section #33', '127.0.0.1', '2026-06-20 21:12:23.922539');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2211, 1, 'DELETE', 'Deleted section #36', '127.0.0.1', '2026-06-20 21:12:26.230017');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2212, 1, 'DELETE', 'Deleted section #39', '127.0.0.1', '2026-06-20 21:12:28.500194');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2213, 1, 'DELETE', 'Deleted section #42', '127.0.0.1', '2026-06-20 21:12:31.260629');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2214, 1, 'DELETE', 'Deleted user #188', '127.0.0.1', '2026-06-20 21:13:28.34349');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2215, 1, 'UPDATE', 'Updated user #189', '127.0.0.1', '2026-06-20 21:13:50.988877');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2216, 1, 'DELETE', 'Deleted user #185', '127.0.0.1', '2026-06-20 21:13:59.477747');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2217, 1, 'DELETE', 'Deleted user #183', '127.0.0.1', '2026-06-20 21:14:02.782802');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2218, 1, 'DELETE', 'Deleted user #182', '127.0.0.1', '2026-06-20 21:14:04.932186');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2219, 1, 'DELETE', 'Deleted user #180', '127.0.0.1', '2026-06-20 21:14:07.505849');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2220, 1, 'DELETE', 'Deleted user #180', '127.0.0.1', '2026-06-20 21:14:09.104204');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2221, 1, 'DELETE', 'Deleted user #180', '127.0.0.1', '2026-06-20 21:14:13.757554');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2222, 1, 'DELETE', 'Deleted user #155', '127.0.0.1', '2026-06-20 21:14:17.205445');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2223, 1, 'DELETE', 'Deleted user #153', '127.0.0.1', '2026-06-20 21:14:19.462546');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2224, 1, 'DELETE', 'Deleted user #152', '127.0.0.1', '2026-06-20 21:14:21.899442');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2225, 1, 'DELETE', 'Deleted user #156', '127.0.0.1', '2026-06-20 21:14:24.36331');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2226, 1, 'DELETE', 'Deleted user #151', '127.0.0.1', '2026-06-20 21:14:26.011411');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2227, 1, 'DELETE', 'Deleted user #149', '127.0.0.1', '2026-06-20 21:14:32.936797');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2228, 1, 'DELETE', 'Deleted user #148', '127.0.0.1', '2026-06-20 21:14:36.673768');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2229, 1, 'DELETE', 'Deleted user #148', '127.0.0.1', '2026-06-20 21:14:38.825491');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2230, 1, 'DELETE', 'Deleted user #148', '127.0.0.1', '2026-06-20 21:14:41.144138');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2231, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-25 19:06:45.564216');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2232, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-25 19:06:53.715837');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2233, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-25 19:07:09.488898');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2234, 6, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-25 19:07:17.557623');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2235, 91, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-25 19:07:26.020525');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2236, 88, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-25 19:07:34.180646');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2237, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-25 19:07:49.734442');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2238, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-25 19:08:02.818386');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2239, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-25 19:08:16.10155');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2240, 190, 'REGISTER', 'New Teacher registration submitted', '127.0.0.1', '2026-06-25 19:08:37.006257');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2241, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-25 19:08:47.751073');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2242, 1, 'CREATE', 'Created user #191', '127.0.0.1', '2026-06-25 19:08:49.480384');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2243, 1, 'UPDATE', 'Deactivated user #191', '127.0.0.1', '2026-06-25 19:08:49.917625');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2244, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-25 19:09:03.949999');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2245, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-25 19:09:12.4495');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2246, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-25 19:09:20.2522');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2247, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-25 19:09:31.590363');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2248, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-25 19:09:39.531982');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2249, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-25 19:09:47.466778');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2250, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-25 19:09:55.339578');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2251, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-25 19:10:03.260743');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2252, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-25 19:10:16.122777');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2253, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-25 19:10:24.101963');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2254, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-25 19:10:32.150044');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2255, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-25 19:10:40.086448');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2256, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-25 19:10:47.837795');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2257, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-25 19:10:55.59258');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2258, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-25 19:11:03.76469');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2259, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-25 19:11:13.622999');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2260, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-25 19:11:21.399877');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2261, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-25 19:11:29.487121');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2262, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-25 19:11:37.350693');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2263, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-25 19:11:45.096281');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2264, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-25 19:11:53.721606');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2265, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-25 19:12:01.774125');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2266, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-25 19:12:09.62786');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2267, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-25 19:12:18.177882');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2268, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-25 19:12:29.988512');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2269, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-25 19:12:37.833064');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2270, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-25 19:12:45.479992');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2271, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-25 19:12:47.263657');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2272, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-25 19:12:55.310372');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2273, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-25 19:13:03.696104');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2274, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-25 19:13:15.974382');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2275, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-25 19:13:26.37927');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2276, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-25 19:13:37.403131');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2277, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-25 19:13:51.56084');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2278, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-25 19:14:03.780842');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2279, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-25 19:14:16.802731');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2280, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-25 19:14:29.862856');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2281, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-25 19:14:42.882495');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2282, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-25 19:14:55.522066');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2283, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-25 19:15:10.862068');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2284, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-25 19:15:22.866379');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2285, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-25 19:15:35.163559');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2286, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-25 19:15:50.449365');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2287, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-25 19:16:04.373263');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2288, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-25 19:21:35.531879');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2289, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-25 19:21:54.146365');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2290, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-25 19:22:20.281028');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2291, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-25 19:22:44.347982');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2292, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-25 19:22:58.386528');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2293, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-25 19:23:12.501131');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2294, 1, 'CREATE', 'Created user #192', '127.0.0.1', '2026-06-25 19:23:30.50974');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2295, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-25 19:23:41.794259');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2296, 1, 'CREATE', 'Created user #193', '127.0.0.1', '2026-06-25 19:24:02.343644');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2297, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-25 19:24:14.285189');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2298, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-25 19:24:38.419044');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2299, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-25 19:24:51.098957');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2300, 1, 'CREATE', 'Created user #195', '127.0.0.1', '2026-06-25 19:25:09.448374');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2301, 1, 'UPDATE', 'Updated user #195', '127.0.0.1', '2026-06-25 19:25:20.524098');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2302, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-25 19:25:28.677631');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2303, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-25 19:25:32.926426');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2304, 1, 'CREATE', 'Created user #196', '127.0.0.1', '2026-06-25 19:25:33.559309');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2305, 1, 'UPDATE', 'Deactivated user #196', '127.0.0.1', '2026-06-25 19:25:39.570151');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2306, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-25 19:25:52.753825');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2307, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-25 19:26:02.103501');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2308, 1, 'CREATE', 'Created user #197', '127.0.0.1', '2026-06-25 19:26:03.644569');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2309, 1, 'UPDATE', 'Activated user #197', '127.0.0.1', '2026-06-25 19:26:10.594116');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2310, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-25 19:26:21.752917');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2311, 1, 'DELETE', 'Deleted user #197', '127.0.0.1', '2026-06-25 19:26:31.619835');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2312, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-25 19:26:43.726133');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2313, 1, 'CREATE', 'Created user #198', '127.0.0.1', '2026-06-25 19:27:01.398476');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2314, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-25 19:27:14.9611');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2315, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-25 19:27:30.020302');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2316, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-25 19:27:48.809365');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2317, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-25 19:28:00.758754');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2318, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-25 19:28:14.833082');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2319, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-25 19:28:29.447491');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2320, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-25 19:28:43.967757');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2321, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-25 19:28:59.004753');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2322, 1, 'APPROVE', 'Registration #34 approved', '127.0.0.1', '2026-06-25 19:29:08.647076');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2323, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-25 19:29:19.049461');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2324, 1, 'REJECT', 'Registration #27 rejected', '127.0.0.1', '2026-06-25 19:29:28.348185');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2325, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-25 19:29:37.526746');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2326, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-25 19:29:48.245273');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2327, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-25 19:29:59.254105');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2328, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-25 19:30:15.98184');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2329, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-25 19:30:27.3218');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2330, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-25 19:30:41.812099');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2331, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-25 19:30:57.902098');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2332, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-25 19:31:14.436441');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2333, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-25 19:31:30.216691');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2334, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-25 19:31:47.73887');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2335, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-25 19:32:03.829993');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2336, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-25 19:32:17.998105');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2337, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-25 19:32:33.548225');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2338, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-25 19:32:50.704759');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2339, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-25 19:33:05.358484');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2340, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-25 19:33:20.860377');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2341, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-25 19:33:36.914779');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2342, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-25 19:33:53.026548');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2343, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-25 19:34:10.349163');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2344, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-25 19:34:29.489815');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2345, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-25 19:34:49.620606');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2346, 1, 'CREATE', 'Created parent #27', '127.0.0.1', '2026-06-25 19:34:53.899753');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2347, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-25 19:35:10.034099');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2348, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-25 19:35:29.589577');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2349, 1, 'CREATE', 'Created parent #28', '127.0.0.1', '2026-06-25 19:35:32.865905');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2350, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-25 19:35:50.905385');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2351, 1, 'CREATE', 'Created parent #29', '127.0.0.1', '2026-06-25 19:35:56.268805');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2352, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-25 19:36:23.531943');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2353, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-25 19:36:39.199502');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2354, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-25 19:36:54.755676');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2355, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-25 19:37:09.314121');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2356, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-25 19:37:28.974979');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2357, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-25 19:37:48.785048');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2358, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-25 19:38:06.767832');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2359, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-25 19:38:23.500385');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2360, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-25 19:38:40.931745');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2361, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-25 19:38:57.897353');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2362, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-25 19:39:15.314908');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2363, 1, 'CREATE', 'Created section #43', '127.0.0.1', '2026-06-25 19:39:18.835199');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2364, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-25 19:39:33.076658');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2365, 1, 'CREATE', 'Created section #44', '127.0.0.1', '2026-06-25 19:39:36.715713');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2366, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-25 19:39:52.723882');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2367, 1, 'CREATE', 'Created section #45', '127.0.0.1', '2026-06-25 19:39:56.184317');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2368, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-25 19:40:12.294592');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2369, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-25 19:40:27.597182');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2370, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-25 19:40:44.379105');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2371, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-25 19:40:58.849623');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2372, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-25 19:41:13.297996');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2373, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-25 19:41:29.905919');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2374, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-25 19:41:48.1116');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2375, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-25 19:42:25.591492');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2376, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-25 19:42:56.156351');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2377, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-25 19:43:17.383253');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2378, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-25 19:43:39.154411');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2379, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-25 19:44:03.713779');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2380, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-25 19:44:28.641042');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2381, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-25 19:46:28.09956');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2382, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-25 19:46:52.951846');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2383, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-25 19:47:16.994154');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2384, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-25 19:49:10.625645');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2385, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-25 19:49:41.699443');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2386, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-25 19:50:00.966053');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2387, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-25 19:50:18.214039');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2388, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-25 19:50:35.35334');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2389, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-25 19:50:49.885795');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2390, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-25 19:51:06.649743');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2391, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-25 19:51:25.842708');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2392, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-25 19:51:45.941635');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2393, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-25 19:52:06.629401');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2394, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-25 19:52:24.782194');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2395, 6, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-25 19:52:46.448125');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2396, 6, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-25 19:53:02.581525');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2397, 6, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-25 19:53:17.044');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2398, 6, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-25 19:53:32.325341');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2399, 6, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-25 19:53:47.426154');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2400, 6, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-25 19:54:02.312212');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2401, 6, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-25 19:54:17.784185');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2402, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-25 19:58:11.715147');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2403, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-25 19:58:26.172289');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2404, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-25 19:58:39.244954');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2405, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-25 19:58:54.372195');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2406, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-25 19:59:09.457031');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2407, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-25 19:59:26.010357');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2408, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-25 19:59:42.468249');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2409, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-25 19:59:58.925083');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2410, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-25 20:00:13.202004');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2411, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-25 20:00:26.433224');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2412, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-25 20:00:40.451382');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2413, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-25 20:00:55.621131');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2414, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-25 20:01:12.678706');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2415, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-25 20:01:31.521694');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2416, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-25 20:01:48.168743');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2417, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-25 20:02:02.366326');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2418, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-25 20:02:15.920753');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2419, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-25 20:02:29.485414');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2420, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-25 20:02:43.049776');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2421, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-25 20:02:56.523219');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2422, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-25 20:03:47.121258');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2423, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-25 20:04:02.380458');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2424, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-25 20:04:17.990076');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2425, 1, 'UPDATE', 'Updated settings', '127.0.0.1', '2026-06-25 20:04:26.298383');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2426, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-25 20:04:39.734222');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2427, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-25 20:04:54.740548');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2428, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-25 20:05:10.266361');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2429, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-25 20:05:25.64331');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2430, 1, 'CREATE', 'Backup created', '127.0.0.1', '2026-06-25 20:05:34.775605');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2431, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-25 20:05:46.95439');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2432, 1, 'CREATE', 'Backup created', '127.0.0.1', '2026-06-25 20:05:55.590653');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2433, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-25 20:06:08.706437');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2434, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-25 20:06:24.201522');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2435, 6, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-25 20:08:10.908993');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2436, 91, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-25 20:08:58.399625');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2437, 88, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-25 20:09:22.843415');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2438, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-25 20:10:30.190992');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2439, 6, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-25 20:10:38.586407');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2440, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-25 20:10:54.445716');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2441, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-25 20:11:04.374064');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2442, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-25 20:11:12.917093');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2443, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-25 20:11:21.208619');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2444, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-25 20:11:30.277743');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2445, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-25 20:11:39.091758');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2446, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-25 20:11:47.651685');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2447, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-25 20:11:55.492228');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2448, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-25 20:12:03.626334');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2449, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-25 20:12:14.001151');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2450, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-25 20:12:26.399976');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2451, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-25 20:12:41.061478');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2452, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-25 20:13:03.557163');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2453, 1, 'CREATE', 'Created user #199', '127.0.0.1', '2026-06-25 20:13:20.632066');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2454, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-25 20:13:29.078568');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2455, 200, 'REGISTER', 'New Teacher registration submitted', '127.0.0.1', '2026-06-25 20:13:52.438039');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2456, 1, 'LOGIN', 'User logged in', '10.0.26.179', '2026-06-25 20:16:17.461811');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2457, 1, 'LOGIN', 'User logged in', '10.0.9.151', '2026-06-25 20:51:16.973097');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2458, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-25 21:34:52.866499');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2459, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-26 21:26:58.859559');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2460, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-26 21:27:03.272445');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2461, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-26 21:27:13.210837');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2462, 6, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-26 21:27:18.303543');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2463, 91, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-26 21:27:22.174299');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2464, 88, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-26 21:27:25.757752');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2465, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-26 21:27:33.359184');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2466, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-26 21:27:40.32621');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2467, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-26 21:27:46.930036');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2468, 201, 'REGISTER', 'New Teacher registration submitted', '127.0.0.1', '2026-06-26 21:27:55.427421');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2469, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-26 21:28:01.708593');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2470, 1, 'CREATE', 'Created user #202', '127.0.0.1', '2026-06-26 21:28:02.783315');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2471, 1, 'UPDATE', 'Deactivated user #202', '127.0.0.1', '2026-06-26 21:28:03.258686');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2472, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-26 21:28:09.02101');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2473, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-26 21:28:13.316024');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2474, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-26 21:28:18.232731');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2475, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-26 21:28:25.435139');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2476, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-26 21:28:30.444293');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2477, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-26 21:28:35.526146');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2478, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-26 21:28:40.035075');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2479, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-26 21:28:44.000557');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2480, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-26 21:28:51.295449');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2481, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-26 21:28:55.488913');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2482, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-26 21:28:59.011204');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2483, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-26 21:29:02.726186');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2484, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-26 21:29:06.632206');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2485, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-26 21:29:10.163945');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2486, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-26 21:29:40.561721');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2487, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-26 21:29:49.266607');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2488, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-26 21:29:56.773958');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2489, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-26 21:30:03.861018');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2490, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-26 21:30:11.392921');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2491, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-26 21:30:17.711426');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2492, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-26 21:30:25.88395');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2493, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-26 21:30:34.743196');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2494, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-26 21:30:43.749731');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2495, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-26 21:30:49.510535');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2496, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-26 21:31:01.241433');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2497, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-26 21:31:08.617275');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2498, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-26 21:31:15.92121');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2499, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-26 21:31:21.36794');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2500, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-26 21:31:28.316209');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2501, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-26 21:31:34.318762');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2502, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-26 21:31:37.929601');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2503, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-26 21:31:43.622948');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2504, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-26 21:31:48.945078');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2505, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-26 21:31:54.176452');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2506, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-26 21:32:02.043606');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2507, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-26 21:32:07.839122');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2508, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-26 21:32:13.687843');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2509, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-26 21:32:19.926967');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2510, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-26 21:32:34.180433');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2511, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-26 21:32:45.119717');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2512, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-26 21:33:04.988509');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2513, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-26 21:33:21.546413');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2514, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-26 21:45:18.930317');
INSERT INTO school_gate.audit_logs (audit_id, user_id, action, description, ip_address, created_at) VALUES (2515, 1, 'LOGIN', 'User logged in', '127.0.0.1', '2026-06-27 06:16:04.731149');


--
-- Data for Name: backups; Type: TABLE DATA; Schema: school_gate; Owner: -
--

INSERT INTO school_gate.backups (backup_id, filename, backup_type, file_size, created_by, status, created_at) VALUES (3, 'backup_full_20260615_030031.sql', 'Full', '68 B', 1, 'Success', '2026-06-14 18:00:31.571228');
INSERT INTO school_gate.backups (backup_id, filename, backup_type, file_size, created_by, status, created_at) VALUES (4, 'backup_full_20260617_083643.sql', 'Full', '68 B', 1, 'Success', '2026-06-17 08:36:43.380471');
INSERT INTO school_gate.backups (backup_id, filename, backup_type, file_size, created_by, status, created_at) VALUES (5, 'backup_full_20260620_003001.sql', 'Full', '68 B', 1, 'Success', '2026-06-20 00:30:01.800882');
INSERT INTO school_gate.backups (backup_id, filename, backup_type, file_size, created_by, status, created_at) VALUES (6, 'backup_manual_20260620_003019.sql', 'Manual', '68 B', 1, 'Success', '2026-06-20 00:30:19.551717');
INSERT INTO school_gate.backups (backup_id, filename, backup_type, file_size, created_by, status, created_at) VALUES (7, 'backup_full_20260620_012915.sql', 'Full', '68 B', 1, 'Success', '2026-06-20 01:29:15.770145');
INSERT INTO school_gate.backups (backup_id, filename, backup_type, file_size, created_by, status, created_at) VALUES (8, 'backup_manual_20260620_012933.sql', 'Manual', '68 B', 1, 'Success', '2026-06-20 01:29:33.29378');
INSERT INTO school_gate.backups (backup_id, filename, backup_type, file_size, created_by, status, created_at) VALUES (9, 'backup_full_20260620_092031.sql', 'Full', '68 B', 1, 'Success', '2026-06-20 09:20:31.314083');
INSERT INTO school_gate.backups (backup_id, filename, backup_type, file_size, created_by, status, created_at) VALUES (10, 'backup_manual_20260620_092048.sql', 'Manual', '68 B', 1, 'Success', '2026-06-20 09:20:48.738412');
INSERT INTO school_gate.backups (backup_id, filename, backup_type, file_size, created_by, status, created_at) VALUES (11, 'backup_full_20260620_132412.sql', 'Full', '68 B', 1, 'Success', '2026-06-20 13:24:12.341037');
INSERT INTO school_gate.backups (backup_id, filename, backup_type, file_size, created_by, status, created_at) VALUES (12, 'backup_manual_20260620_132431.sql', 'Manual', '68 B', 1, 'Success', '2026-06-20 13:24:31.059484');
INSERT INTO school_gate.backups (backup_id, filename, backup_type, file_size, created_by, status, created_at) VALUES (13, 'backup_full_20260620_140606.sql', 'Full', '68 B', 1, 'Success', '2026-06-20 14:06:06.581846');
INSERT INTO school_gate.backups (backup_id, filename, backup_type, file_size, created_by, status, created_at) VALUES (14, 'backup_manual_20260620_140624.sql', 'Manual', '68 B', 1, 'Success', '2026-06-20 14:06:24.071843');
INSERT INTO school_gate.backups (backup_id, filename, backup_type, file_size, created_by, status, created_at) VALUES (15, 'backup_full_20260625_200534.sql', 'Full', '68 B', 1, 'Success', '2026-06-25 20:05:34.758886');
INSERT INTO school_gate.backups (backup_id, filename, backup_type, file_size, created_by, status, created_at) VALUES (16, 'backup_manual_20260625_200555.sql', 'Manual', '68 B', 1, 'Success', '2026-06-25 20:05:55.576794');


--
-- Data for Name: email_logs; Type: TABLE DATA; Schema: school_gate; Owner: -
--

INSERT INTO school_gate.email_logs (email_log_id, student_id, parent_email, notification_type, subject, message, send_status, sent_at, created_at) VALUES (1, 32, 'eren@gmail.com', 'Arrival', 'Student Arrival Notification - John Ervin Baje', 'Your child John Ervin Baje has arrived at school at 08:42:24. Status: Late.', 'Sent', '2026-06-14 23:42:24.208733', '2026-06-14 23:42:24.202106');
INSERT INTO school_gate.email_logs (email_log_id, student_id, parent_email, notification_type, subject, message, send_status, sent_at, created_at) VALUES (2, 32, 'eren@gmail.com', 'Departure', 'Student Departure Notification - John Ervin Baje', 'Your child John Ervin Baje has left school at 08:43:06.', 'Sent', '2026-06-14 23:43:06.537793', '2026-06-14 23:43:06.532694');
INSERT INTO school_gate.email_logs (email_log_id, student_id, parent_email, notification_type, subject, message, send_status, sent_at, created_at) VALUES (3, 32, 'eren@gmail.com', 'Departure', 'Student Departure Notification - John Ervin Baje', 'Your child John Ervin Baje has left school at 08:49:16.', 'Sent', '2026-06-14 23:49:16.820036', '2026-06-14 23:49:16.814593');
INSERT INTO school_gate.email_logs (email_log_id, student_id, parent_email, notification_type, subject, message, send_status, sent_at, created_at) VALUES (4, 32, 'eren@gmail.com', 'Departure', 'Student Departure Notification - John Ervin Baje', 'Your child John Ervin Baje has left school at 08:49:47.', 'Sent', '2026-06-14 23:49:47.978162', '2026-06-14 23:49:47.973459');
INSERT INTO school_gate.email_logs (email_log_id, student_id, parent_email, notification_type, subject, message, send_status, sent_at, created_at) VALUES (5, 32, 'ervinpactol@gmail.com', 'Departure', 'Student Departure Notification - John Ervin Baje', 'Your child John Ervin Baje has left school at 08:52:47.', 'Sent', '2026-06-14 23:52:47.240765', '2026-06-14 23:52:47.235278');
INSERT INTO school_gate.email_logs (email_log_id, student_id, parent_email, notification_type, subject, message, send_status, sent_at, created_at) VALUES (6, 32, 'ervinpactol@gmail.com', 'Departure', 'Student Departure Notification - John Ervin Baje', 'Your child John Ervin Baje has left school at 09:15:57.', 'Failed', '2026-06-15 00:15:57.44917', '2026-06-15 00:15:57.412755');
INSERT INTO school_gate.email_logs (email_log_id, student_id, parent_email, notification_type, subject, message, send_status, sent_at, created_at) VALUES (7, 32, 'ervinpactol@gmail.com', 'Departure', 'Student Departure Notification - John Ervin Baje', 'Your child John Ervin Baje has left school at 09:18:53.', 'Failed', '2026-06-15 00:18:53.24813', '2026-06-15 00:18:53.227466');
INSERT INTO school_gate.email_logs (email_log_id, student_id, parent_email, notification_type, subject, message, send_status, sent_at, created_at) VALUES (8, 32, 'ervinpactol@gmail.com', 'Departure', 'Student Departure Notification - John Ervin Baje', 'Your child John Ervin Baje has left school at 09:21:30.', 'Sent', '2026-06-15 00:21:37.080501', '2026-06-15 00:21:30.146728');
INSERT INTO school_gate.email_logs (email_log_id, student_id, parent_email, notification_type, subject, message, send_status, sent_at, created_at) VALUES (9, 32, 'ervinpactol@gmail.com', 'Departure', 'Student Departure Notification - John Ervin Baje', 'Your child John Ervin Baje has left school at 09:41:10.', 'Sent', '2026-06-15 00:41:18.599438', '2026-06-15 00:41:10.428497');
INSERT INTO school_gate.email_logs (email_log_id, student_id, parent_email, notification_type, subject, message, send_status, sent_at, created_at) VALUES (10, 32, 'ervinpactol@gmail.com', 'Departure', 'Student Departure Notification - John Ervin Baje', 'Your child John Ervin Baje has left school at 09:42:29.', 'Sent', '2026-06-15 00:42:36.828414', '2026-06-15 00:42:29.325909');
INSERT INTO school_gate.email_logs (email_log_id, student_id, parent_email, notification_type, subject, message, send_status, sent_at, created_at) VALUES (11, 32, 'ervinpactol@gmail.com', 'Departure', 'Student Departure Notification - John Ervin Baje', 'Your child John Ervin Baje has left school at 09:46:12.', 'Sent', '2026-06-15 00:46:19.197687', '2026-06-15 00:46:12.188492');
INSERT INTO school_gate.email_logs (email_log_id, student_id, parent_email, notification_type, subject, message, send_status, sent_at, created_at) VALUES (12, 32, 'ervinpactol@gmail.com', 'Attendance', 'Attendance Notification - John Ervin Baje', '
        <!DOCTYPE html>
        <html>
        <head><meta charset=''UTF-8''></head>
        <body style=''margin:0;padding:0;background:#f4f4f4;font-family:Arial,sans-serif;''>
            <table width=''100%'' cellpadding=''0'' cellspacing=''0'' style=''background:#f4f4f4;padding:20px;''>
                <tr><td align=''center''>
                    <table width=''600'' cellpadding=''0'' cellspacing=''0'' style=''background:#ffffff;border-radius:8px;overflow:hidden;box-shadow:0 2px 8px rgba(0,0,0,0.1);''>
                        <tr>
                            <td style=''background:#1e293b;padding:25px 20px;text-align:center;''>
                                <table cellpadding=''0'' cellspacing=''0'' style=''margin:0 auto;''>
                                    <tr>
                                        <td style=''vertical-align:middle;padding-right:12px;''>
                                            <svg width=''40'' height=''40'' viewBox=''0 0 40 40'' fill=''none'' xmlns=''http://www.w3.org/2000/svg''>
                                                <rect width=''40'' height=''40'' rx=''8'' fill=''#3b82f6''/>
                                                <path d=''M8 28V16l12-8 12 8v12H8z'' fill=''#ffffff'' opacity=''0.9''/>
                                                <rect x=''16'' y=''22'' width=''8'' height=''8'' rx=''1'' fill=''#1e293b''/>
                                                <rect x=''10'' y=''18'' width=''2'' height=''12'' rx=''1'' fill=''#ffffff'' opacity=''0.7''/>
                                                <rect x=''28'' y=''18'' width=''2'' height=''12'' rx=''1'' fill=''#ffffff'' opacity=''0.7''/>
                                            </svg>
                                        </td>
                                        <td style=''vertical-align:middle;text-align:left;''>
                                            <h1 style=''color:#ffffff;margin:0;font-size:20px;''>Ilaya National High School</h1>
                                            <p style=''color:#93c5fd;margin:2px 0 0;font-size:12px;''>Attendance Notification System</p>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td style=''padding:30px 30px 20px;''>
                                <p style=''color:#334155;font-size:14px;line-height:1.6;margin:0 0 5px;''>Dear <strong>Eren Grace Pactol</strong>,</p>
                                <p style=''color:#334155;font-size:14px;line-height:1.6;margin:0 0 15px;''>This is to notify you of the attendance record of your child:</p>
                                <table width=''100%'' cellpadding=''8'' cellspacing=''0'' style=''background:#f8fafc;border-radius:6px;margin:15px 0;font-size:14px;border:1px solid #e2e8f0;''>
                                    <tr><td style=''color:#64748b;width:140px;border-bottom:1px solid #e2e8f0;''><strong>Student Name</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>John Ervin Baje</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Student ID / LRN</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>2026-0002</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Grade & Section</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>Grade 7 - Rizal</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Date</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>June 15, 2026</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Time In</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>08:42 AM</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Time Out</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>09:52 AM</td></tr>
                                    <tr><td style=''color:#64748b;''><strong>Status</strong></td><td style=''color:#1e293b;font-weight:600;''>Late</td></tr>
                                </table>
                                <p style=''color:#334155;font-size:14px;line-height:1.6;margin:15px 0 0;''>Thank you for your continued support in ensuring your child''s attendance and punctuality.</p>
                            </td>
                        </tr>
                        <tr>
                            <td style=''background:#f8fafc;padding:20px;text-align:center;border-top:2px solid #e2e8f0;''>
                                <p style=''color:#64748b;font-size:13px;font-weight:600;margin:0;''>Ilaya National High School</p>
                                <p style=''color:#94a3b8;font-size:12px;margin:3px 0;''>Ilaya, Dapitan City</p>
                                <p style=''color:#94a3b8;font-size:11px;margin:8px 0 0;padding-top:8px;border-top:1px solid #e2e8f0;''>This is an automated message from the School Gate Attendance System. Please do not reply to this email.</p>
                            </td>
                        </tr>
                    </table>
                </td></tr>
            </table>
        </body>
        </html>', 'Sent', '2026-06-15 00:52:51.915644', '2026-06-15 00:52:43.304743');
INSERT INTO school_gate.email_logs (email_log_id, student_id, parent_email, notification_type, subject, message, send_status, sent_at, created_at) VALUES (13, 32, 'ervinpactol@gmail.com', 'Attendance', 'Attendance Notification - John Ervin Baje', '
        <!DOCTYPE html>
        <html>
        <head><meta charset=''UTF-8''></head>
        <body style=''margin:0;padding:0;background:#f4f4f4;font-family:Arial,sans-serif;''>
            <table width=''100%'' cellpadding=''0'' cellspacing=''0'' style=''background:#f4f4f4;padding:20px;''>
                <tr><td align=''center''>
                    <table width=''600'' cellpadding=''0'' cellspacing=''0'' style=''background:#ffffff;border-radius:8px;overflow:hidden;box-shadow:0 2px 8px rgba(0,0,0,0.1);''>
                        <tr>
                            <td style=''background:#1e293b;padding:25px 20px;text-align:center;''>
                                <table cellpadding=''0'' cellspacing=''0'' style=''margin:0 auto;''>
                                    <tr>
                                        <td style=''vertical-align:middle;padding-right:12px;''>
                                            <svg width=''40'' height=''40'' viewBox=''0 0 40 40'' fill=''none'' xmlns=''http://www.w3.org/2000/svg''>
                                                <rect width=''40'' height=''40'' rx=''8'' fill=''#3b82f6''/>
                                                <path d=''M8 28V16l12-8 12 8v12H8z'' fill=''#ffffff'' opacity=''0.9''/>
                                                <rect x=''16'' y=''22'' width=''8'' height=''8'' rx=''1'' fill=''#1e293b''/>
                                                <rect x=''10'' y=''18'' width=''2'' height=''12'' rx=''1'' fill=''#ffffff'' opacity=''0.7''/>
                                                <rect x=''28'' y=''18'' width=''2'' height=''12'' rx=''1'' fill=''#ffffff'' opacity=''0.7''/>
                                            </svg>
                                        </td>
                                        <td style=''vertical-align:middle;text-align:left;''>
                                            <h1 style=''color:#ffffff;margin:0;font-size:20px;''>Ilaya National High School</h1>
                                            <p style=''color:#93c5fd;margin:2px 0 0;font-size:12px;''>Attendance Notification System</p>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td style=''padding:30px 30px 20px;''>
                                <p style=''color:#334155;font-size:14px;line-height:1.6;margin:0 0 5px;''>Dear <strong>Eren Grace Pactol</strong>,</p>
                                <p style=''color:#334155;font-size:14px;line-height:1.6;margin:0 0 15px;''>This is to notify you of the attendance record of your child:</p>
                                <table width=''100%'' cellpadding=''8'' cellspacing=''0'' style=''background:#f8fafc;border-radius:6px;margin:15px 0;font-size:14px;border:1px solid #e2e8f0;''>
                                    <tr><td style=''color:#64748b;width:140px;border-bottom:1px solid #e2e8f0;''><strong>Student Name</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>John Ervin Baje</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Student ID / LRN</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>2026-0002</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Grade & Section</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>Grade 7 - Rizal</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Date</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>June 15, 2026</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Time In</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>08:42 AM</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Time Out</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>09:54 AM</td></tr>
                                    <tr><td style=''color:#64748b;''><strong>Status</strong></td><td style=''color:#1e293b;font-weight:600;''>Late</td></tr>
                                </table>
                                <p style=''color:#334155;font-size:14px;line-height:1.6;margin:15px 0 0;''>Thank you for your continued support in ensuring your child''s attendance and punctuality.</p>
                            </td>
                        </tr>
                        <tr>
                            <td style=''background:#f8fafc;padding:20px;text-align:center;border-top:2px solid #e2e8f0;''>
                                <p style=''color:#64748b;font-size:13px;font-weight:600;margin:0;''>Ilaya National High School</p>
                                <p style=''color:#94a3b8;font-size:12px;margin:3px 0;''>Ilaya, Dapitan City</p>
                                <p style=''color:#94a3b8;font-size:11px;margin:8px 0 0;padding-top:8px;border-top:1px solid #e2e8f0;''>This is an automated message from the School Gate Attendance System. Please do not reply to this email.</p>
                            </td>
                        </tr>
                    </table>
                </td></tr>
            </table>
        </body>
        </html>', 'Sent', '2026-06-15 00:54:39.532163', '2026-06-15 00:54:30.616352');
INSERT INTO school_gate.email_logs (email_log_id, student_id, parent_email, notification_type, subject, message, send_status, sent_at, created_at) VALUES (14, 32, 'ervinpactol@gmail.com', 'Attendance', 'Attendance Notification - John Ervin Baje', '
        <!DOCTYPE html>
        <html>
        <head><meta charset=''UTF-8''></head>
        <body style=''margin:0;padding:0;background:#f4f4f4;font-family:Arial,sans-serif;''>
            <table width=''100%'' cellpadding=''0'' cellspacing=''0'' style=''background:#f4f4f4;padding:20px;''>
                <tr><td align=''center''>
                    <table width=''600'' cellpadding=''0'' cellspacing=''0'' style=''background:#ffffff;border-radius:8px;overflow:hidden;box-shadow:0 2px 8px rgba(0,0,0,0.1);''>
                        <tr>
                            <td style=''background:#1e293b;padding:25px 20px;text-align:center;''>
                                <table cellpadding=''0'' cellspacing=''0'' style=''margin:0 auto;''>
                                    <tr>
                                        <td style=''vertical-align:middle;padding-right:12px;''>
                                            <svg width=''40'' height=''40'' viewBox=''0 0 40 40'' fill=''none'' xmlns=''http://www.w3.org/2000/svg''>
                                                <rect width=''40'' height=''40'' rx=''8'' fill=''#3b82f6''/>
                                                <path d=''M8 28V16l12-8 12 8v12H8z'' fill=''#ffffff'' opacity=''0.9''/>
                                                <rect x=''16'' y=''22'' width=''8'' height=''8'' rx=''1'' fill=''#1e293b''/>
                                                <rect x=''10'' y=''18'' width=''2'' height=''12'' rx=''1'' fill=''#ffffff'' opacity=''0.7''/>
                                                <rect x=''28'' y=''18'' width=''2'' height=''12'' rx=''1'' fill=''#ffffff'' opacity=''0.7''/>
                                            </svg>
                                        </td>
                                        <td style=''vertical-align:middle;text-align:left;''>
                                            <h1 style=''color:#ffffff;margin:0;font-size:20px;''>Ilaya National High School</h1>
                                            <p style=''color:#93c5fd;margin:2px 0 0;font-size:12px;''>Attendance Notification System</p>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td style=''padding:30px 30px 20px;''>
                                <p style=''color:#334155;font-size:14px;line-height:1.6;margin:0 0 5px;''>Dear <strong>Eren Grace Pactol</strong>,</p>
                                <p style=''color:#334155;font-size:14px;line-height:1.6;margin:0 0 15px;''>This is to notify you of the attendance record of your child:</p>
                                <table width=''100%'' cellpadding=''8'' cellspacing=''0'' style=''background:#f8fafc;border-radius:6px;margin:15px 0;font-size:14px;border:1px solid #e2e8f0;''>
                                    <tr><td style=''color:#64748b;width:140px;border-bottom:1px solid #e2e8f0;''><strong>Student Name</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>John Ervin Baje</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Student ID / LRN</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>2026-0002</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Grade & Section</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>Grade 7 - Rizal</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Date</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>June 15, 2026</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Time In</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>08:42 AM</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Time Out</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>10:51 AM</td></tr>
                                    <tr><td style=''color:#64748b;''><strong>Status</strong></td><td style=''color:#1e293b;font-weight:600;''>Late</td></tr>
                                </table>
                                <p style=''color:#334155;font-size:14px;line-height:1.6;margin:15px 0 0;''>Thank you for your continued support in ensuring your child''s attendance and punctuality.</p>
                            </td>
                        </tr>
                        <tr>
                            <td style=''background:#f8fafc;padding:20px;text-align:center;border-top:2px solid #e2e8f0;''>
                                <p style=''color:#64748b;font-size:13px;font-weight:600;margin:0;''>Ilaya National High School</p>
                                <p style=''color:#94a3b8;font-size:12px;margin:3px 0;''>Ilaya, Dapitan City</p>
                                <p style=''color:#94a3b8;font-size:11px;margin:8px 0 0;padding-top:8px;border-top:1px solid #e2e8f0;''>This is an automated message from the School Gate Attendance System. Please do not reply to this email.</p>
                            </td>
                        </tr>
                    </table>
                </td></tr>
            </table>
        </body>
        </html>', 'Sent', '2026-06-15 01:52:03.084371', '2026-06-15 01:51:56.625915');
INSERT INTO school_gate.email_logs (email_log_id, student_id, parent_email, notification_type, subject, message, send_status, sent_at, created_at) VALUES (15, 32, 'ervinpactol@gmail.com', 'Attendance', 'Attendance Notification - John Ervin Baje', '
        <!DOCTYPE html>
        <html>
        <head><meta charset=''UTF-8''></head>
        <body style=''margin:0;padding:0;background:#f4f4f4;font-family:Arial,sans-serif;''>
            <table width=''100%'' cellpadding=''0'' cellspacing=''0'' style=''background:#f4f4f4;padding:20px;''>
                <tr><td align=''center''>
                    <table width=''600'' cellpadding=''0'' cellspacing=''0'' style=''background:#ffffff;border-radius:8px;overflow:hidden;box-shadow:0 2px 8px rgba(0,0,0,0.1);''>
                        <tr>
                            <td style=''background:#1e293b;padding:25px 20px;text-align:center;''>
                                <table cellpadding=''0'' cellspacing=''0'' style=''margin:0 auto;''>
                                    <tr>
                                        <td style=''vertical-align:middle;padding-right:12px;''>
                                            <svg width=''40'' height=''40'' viewBox=''0 0 40 40'' fill=''none'' xmlns=''http://www.w3.org/2000/svg''>
                                                <rect width=''40'' height=''40'' rx=''8'' fill=''#3b82f6''/>
                                                <path d=''M8 28V16l12-8 12 8v12H8z'' fill=''#ffffff'' opacity=''0.9''/>
                                                <rect x=''16'' y=''22'' width=''8'' height=''8'' rx=''1'' fill=''#1e293b''/>
                                                <rect x=''10'' y=''18'' width=''2'' height=''12'' rx=''1'' fill=''#ffffff'' opacity=''0.7''/>
                                                <rect x=''28'' y=''18'' width=''2'' height=''12'' rx=''1'' fill=''#ffffff'' opacity=''0.7''/>
                                            </svg>
                                        </td>
                                        <td style=''vertical-align:middle;text-align:left;''>
                                            <h1 style=''color:#ffffff;margin:0;font-size:20px;''>Ilaya National High School</h1>
                                            <p style=''color:#93c5fd;margin:2px 0 0;font-size:12px;''>Attendance Notification System</p>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td style=''padding:30px 30px 20px;''>
                                <p style=''color:#334155;font-size:14px;line-height:1.6;margin:0 0 5px;''>Dear <strong>Eren Grace Pactol</strong>,</p>
                                <p style=''color:#334155;font-size:14px;line-height:1.6;margin:0 0 15px;''>This is to notify you of the attendance record of your child:</p>
                                <table width=''100%'' cellpadding=''8'' cellspacing=''0'' style=''background:#f8fafc;border-radius:6px;margin:15px 0;font-size:14px;border:1px solid #e2e8f0;''>
                                    <tr><td style=''color:#64748b;width:140px;border-bottom:1px solid #e2e8f0;''><strong>Student Name</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>John Ervin Baje</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Student ID / LRN</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>2026-0002</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Grade & Section</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>Grade 7 - Rizal</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Date</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>June 15, 2026</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Time In</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>08:42 AM</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Time Out</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>04:58 PM</td></tr>
                                    <tr><td style=''color:#64748b;''><strong>Status</strong></td><td style=''color:#1e293b;font-weight:600;''>Late</td></tr>
                                </table>
                                <p style=''color:#334155;font-size:14px;line-height:1.6;margin:15px 0 0;''>Thank you for your continued support in ensuring your child''s attendance and punctuality.</p>
                            </td>
                        </tr>
                        <tr>
                            <td style=''background:#f8fafc;padding:20px;text-align:center;border-top:2px solid #e2e8f0;''>
                                <p style=''color:#64748b;font-size:13px;font-weight:600;margin:0;''>Ilaya National High School</p>
                                <p style=''color:#94a3b8;font-size:12px;margin:3px 0;''>Ilaya, Dapitan City</p>
                                <p style=''color:#94a3b8;font-size:11px;margin:8px 0 0;padding-top:8px;border-top:1px solid #e2e8f0;''>This is an automated message from the School Gate Attendance System. Please do not reply to this email.</p>
                            </td>
                        </tr>
                    </table>
                </td></tr>
            </table>
        </body>
        </html>', 'Sent', '2026-06-15 01:58:12.087688', '2026-06-15 01:58:06.985931');
INSERT INTO school_gate.email_logs (email_log_id, student_id, parent_email, notification_type, subject, message, send_status, sent_at, created_at) VALUES (16, 32, 'ervinpactol@gmail.com', 'Attendance', 'Attendance Notification - John Ervin Baje', '
        <!DOCTYPE html>
        <html>
        <head><meta charset=''UTF-8''></head>
        <body style=''margin:0;padding:0;background:#f4f4f4;font-family:Arial,sans-serif;''>
            <table width=''100%'' cellpadding=''0'' cellspacing=''0'' style=''background:#f4f4f4;padding:20px;''>
                <tr><td align=''center''>
                    <table width=''600'' cellpadding=''0'' cellspacing=''0'' style=''background:#ffffff;border-radius:8px;overflow:hidden;box-shadow:0 2px 8px rgba(0,0,0,0.1);''>
                        <tr>
                            <td style=''background:#1e293b;padding:25px 20px;text-align:center;''>
                                <table cellpadding=''0'' cellspacing=''0'' style=''margin:0 auto;''>
                                    <tr>
                                        <td style=''vertical-align:middle;padding-right:12px;''>
                                            <img src=''http://localhost:8000/img/LogoINSH.png'' alt=''Ilaya National High School'' width=''40'' height=''40'' style=''border-radius:8px;''>
                                        </td>
                                        <td style=''vertical-align:middle;text-align:left;''>
                                            <h1 style=''color:#ffffff;margin:0;font-size:20px;''>Ilaya National High School</h1>
                                            <p style=''color:#93c5fd;margin:2px 0 0;font-size:12px;''>Attendance Notification System</p>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td style=''padding:30px 30px 20px;''>
                                <p style=''color:#334155;font-size:14px;line-height:1.6;margin:0 0 5px;''>Dear <strong>Eren Grace Pactol</strong>,</p>
                                <p style=''color:#334155;font-size:14px;line-height:1.6;margin:0 0 15px;''>This is to notify you of the attendance record of your child:</p>
                                <table width=''100%'' cellpadding=''8'' cellspacing=''0'' style=''background:#f8fafc;border-radius:6px;margin:15px 0;font-size:14px;border:1px solid #e2e8f0;''>
                                    <tr><td style=''color:#64748b;width:140px;border-bottom:1px solid #e2e8f0;''><strong>Student Name</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>John Ervin Baje</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Student ID / LRN</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>2026-0002</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Grade & Section</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>Grade 7 - Rizal</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Date</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>June 15, 2026</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Time In</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>08:42 AM</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Time Out</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>05:03 PM</td></tr>
                                    <tr><td style=''color:#64748b;''><strong>Status</strong></td><td style=''color:#1e293b;font-weight:600;''>Late</td></tr>
                                </table>
                                <p style=''color:#334155;font-size:14px;line-height:1.6;margin:15px 0 0;''>Thank you for your continued support in ensuring your child''s attendance and punctuality.</p>
                            </td>
                        </tr>
                        <tr>
                            <td style=''background:#f8fafc;padding:20px;text-align:center;border-top:2px solid #e2e8f0;''>
                                <p style=''color:#64748b;font-size:13px;font-weight:600;margin:0;''>Ilaya National High School</p>
                                <p style=''color:#94a3b8;font-size:12px;margin:3px 0;''>Ilaya, Dapitan City</p>
                                <p style=''color:#94a3b8;font-size:11px;margin:8px 0 0;padding-top:8px;border-top:1px solid #e2e8f0;''>This is an automated message from the School Gate Attendance System. Please do not reply to this email.</p>
                            </td>
                        </tr>
                    </table>
                </td></tr>
            </table>
        </body>
        </html>', 'Sent', '2026-06-15 02:03:57.020149', '2026-06-15 02:03:50.965531');
INSERT INTO school_gate.email_logs (email_log_id, student_id, parent_email, notification_type, subject, message, send_status, sent_at, created_at) VALUES (17, 32, 'ervinpactol@gmail.com', 'Attendance', 'Attendance Notification - John Ervin Baje', '
        <!DOCTYPE html>
        <html>
        <head><meta charset=''UTF-8''></head>
        <body style=''margin:0;padding:0;background:#f4f4f4;font-family:Arial,sans-serif;''>
            <table width=''100%'' cellpadding=''0'' cellspacing=''0'' style=''background:#f4f4f4;padding:20px;''>
                <tr><td align=''center''>
                    <table width=''600'' cellpadding=''0'' cellspacing=''0'' style=''background:#ffffff;border-radius:8px;overflow:hidden;box-shadow:0 2px 8px rgba(0,0,0,0.1);''>
                        <tr>
                            <td style=''background:#1e293b;padding:25px 20px;text-align:center;''>
                                <table cellpadding=''0'' cellspacing=''0'' style=''margin:0 auto;''>
                                    <tr>
                                        <td style=''vertical-align:middle;padding-right:12px;''>
                                            <img src=''cid:logo_img'' alt=''Ilaya National High School'' width=''40'' height=''40'' style=''border-radius:8px;''>
                                        </td>
                                        <td style=''vertical-align:middle;text-align:left;''>
                                            <h1 style=''color:#ffffff;margin:0;font-size:20px;''>Ilaya National High School</h1>
                                            <p style=''color:#93c5fd;margin:2px 0 0;font-size:12px;''>Attendance Notification System</p>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td style=''padding:30px 30px 20px;''>
                                <p style=''color:#334155;font-size:14px;line-height:1.6;margin:0 0 5px;''>Dear <strong>Eren Grace Pactol</strong>,</p>
                                <p style=''color:#334155;font-size:14px;line-height:1.6;margin:0 0 15px;''>This is to notify you of the attendance record of your child:</p>
                                <table width=''100%'' cellpadding=''8'' cellspacing=''0'' style=''background:#f8fafc;border-radius:6px;margin:15px 0;font-size:14px;border:1px solid #e2e8f0;''>
                                    <tr><td style=''color:#64748b;width:140px;border-bottom:1px solid #e2e8f0;''><strong>Student Name</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>John Ervin Baje</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Student ID / LRN</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>2026-0002</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Grade & Section</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>Grade 7 - Rizal</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Date</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>June 15, 2026</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Time In</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>08:42 AM</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Time Out</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>05:07 PM</td></tr>
                                    <tr><td style=''color:#64748b;''><strong>Status</strong></td><td style=''color:#1e293b;font-weight:600;''>Late</td></tr>
                                </table>
                                <p style=''color:#334155;font-size:14px;line-height:1.6;margin:15px 0 0;''>Thank you for your continued support in ensuring your child''s attendance and punctuality.</p>
                            </td>
                        </tr>
                        <tr>
                            <td style=''background:#f8fafc;padding:20px;text-align:center;border-top:2px solid #e2e8f0;''>
                                <p style=''color:#64748b;font-size:13px;font-weight:600;margin:0;''>Ilaya National High School</p>
                                <p style=''color:#94a3b8;font-size:12px;margin:3px 0;''>Ilaya, Dapitan City</p>
                                <p style=''color:#94a3b8;font-size:11px;margin:8px 0 0;padding-top:8px;border-top:1px solid #e2e8f0;''>This is an automated message from the School Gate Attendance System. Please do not reply to this email.</p>
                            </td>
                        </tr>
                    </table>
                </td></tr>
            </table>
        </body>
        </html>', 'Sent', '2026-06-15 02:07:58.244663', '2026-06-15 02:07:51.468578');
INSERT INTO school_gate.email_logs (email_log_id, student_id, parent_email, notification_type, subject, message, send_status, sent_at, created_at) VALUES (18, 32, 'ervinpactol@gmail.com', 'Attendance', 'Attendance Notification - John Ervin Baje', '
        <!DOCTYPE html>
        <html>
        <head><meta charset=''UTF-8''></head>
        <body style=''margin:0;padding:0;background:#f4f4f4;font-family:Arial,sans-serif;''>
            <table width=''100%'' cellpadding=''0'' cellspacing=''0'' style=''background:#f4f4f4;padding:20px;''>
                <tr><td align=''center''>
                    <table width=''600'' cellpadding=''0'' cellspacing=''0'' style=''background:#ffffff;border-radius:8px;overflow:hidden;box-shadow:0 2px 8px rgba(0,0,0,0.1);''>
                        <tr>
                            <td style=''background:#1e293b;padding:25px 20px;text-align:center;''>
                                <table cellpadding=''0'' cellspacing=''0'' style=''margin:0 auto;''>
                                    <tr>
                                        <td style=''vertical-align:middle;padding-right:12px;''>
                                            <img src=''cid:logo_img'' alt=''Ilaya National High School'' width=''40'' height=''40'' style=''border-radius:8px;''>
                                        </td>
                                        <td style=''vertical-align:middle;text-align:left;''>
                                            <h1 style=''color:#ffffff;margin:0;font-size:20px;''>Ilaya National High School</h1>
                                            <p style=''color:#93c5fd;margin:2px 0 0;font-size:12px;''>Attendance Notification System</p>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td style=''padding:30px 30px 20px;''>
                                <p style=''color:#334155;font-size:14px;line-height:1.6;margin:0 0 5px;''>Dear <strong>Eren Grace Pactol</strong>,</p>
                                <p style=''color:#334155;font-size:14px;line-height:1.6;margin:0 0 15px;''>This is to notify you of the attendance record of your child:</p>
                                <table width=''100%'' cellpadding=''8'' cellspacing=''0'' style=''background:#f8fafc;border-radius:6px;margin:15px 0;font-size:14px;border:1px solid #e2e8f0;''>
                                    <tr><td style=''color:#64748b;width:140px;border-bottom:1px solid #e2e8f0;''><strong>Student Name</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>John Ervin Baje</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Student ID / LRN</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>2026-0002</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Grade & Section</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>Grade 7 - Rizal</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Date</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>June 15, 2026</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Time In</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>05:48 PM</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Time Out</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>--</td></tr>
                                    <tr><td style=''color:#64748b;''><strong>Status</strong></td><td style=''color:#1e293b;font-weight:600;''>Late</td></tr>
                                </table>
                                <p style=''color:#334155;font-size:14px;line-height:1.6;margin:15px 0 0;''>Thank you for your continued support in ensuring your child''s attendance and punctuality.</p>
                            </td>
                        </tr>
                        <tr>
                            <td style=''background:#f8fafc;padding:20px;text-align:center;border-top:2px solid #e2e8f0;''>
                                <p style=''color:#64748b;font-size:13px;font-weight:600;margin:0;''>Ilaya National High School</p>
                                <p style=''color:#94a3b8;font-size:12px;margin:3px 0;''>Ilaya, Dapitan City</p>
                                <p style=''color:#94a3b8;font-size:11px;margin:8px 0 0;padding-top:8px;border-top:1px solid #e2e8f0;''>This is an automated message from the School Gate Attendance System. Please do not reply to this email.</p>
                            </td>
                        </tr>
                    </table>
                </td></tr>
            </table>
        </body>
        </html>', 'Sent', '2026-06-15 02:48:27.872108', '2026-06-15 02:48:19.868963');
INSERT INTO school_gate.email_logs (email_log_id, student_id, parent_email, notification_type, subject, message, send_status, sent_at, created_at) VALUES (19, 32, 'ervinpactol@gmail.com', 'Attendance', 'Attendance Notification - John Ervin Baje', '
        <!DOCTYPE html>
        <html>
        <head><meta charset=''UTF-8''></head>
        <body style=''margin:0;padding:0;background:#f4f4f4;font-family:Arial,sans-serif;''>
            <table width=''100%'' cellpadding=''0'' cellspacing=''0'' style=''background:#f4f4f4;padding:20px;''>
                <tr><td align=''center''>
                    <table width=''600'' cellpadding=''0'' cellspacing=''0'' style=''background:#ffffff;border-radius:8px;overflow:hidden;box-shadow:0 2px 8px rgba(0,0,0,0.1);''>
                        <tr>
                            <td style=''background:#1e293b;padding:25px 20px;text-align:center;''>
                                <table cellpadding=''0'' cellspacing=''0'' style=''margin:0 auto;''>
                                    <tr>
                                        <td style=''vertical-align:middle;padding-right:12px;''>
                                            <img src=''cid:logo_img'' alt=''Ilaya National High School'' width=''40'' height=''40'' style=''border-radius:8px;''>
                                        </td>
                                        <td style=''vertical-align:middle;text-align:left;''>
                                            <h1 style=''color:#ffffff;margin:0;font-size:20px;''>Ilaya National High School</h1>
                                            <p style=''color:#93c5fd;margin:2px 0 0;font-size:12px;''>Attendance Notification System</p>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td style=''padding:30px 30px 20px;''>
                                <p style=''color:#334155;font-size:14px;line-height:1.6;margin:0 0 5px;''>Dear <strong>Eren Grace Pactol</strong>,</p>
                                <p style=''color:#334155;font-size:14px;line-height:1.6;margin:0 0 15px;''>This is to notify you of the attendance record of your child:</p>
                                <table width=''100%'' cellpadding=''8'' cellspacing=''0'' style=''background:#f8fafc;border-radius:6px;margin:15px 0;font-size:14px;border:1px solid #e2e8f0;''>
                                    <tr><td style=''color:#64748b;width:140px;border-bottom:1px solid #e2e8f0;''><strong>Student Name</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>John Ervin Baje</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Student ID / LRN</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>2026-0002</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Grade & Section</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>Grade 7 - Rizal</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Date</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>June 15, 2026</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Time In</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>05:48 PM</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Time Out</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>05:49 PM</td></tr>
                                    <tr><td style=''color:#64748b;''><strong>Status</strong></td><td style=''color:#1e293b;font-weight:600;''>Late</td></tr>
                                </table>
                                <p style=''color:#334155;font-size:14px;line-height:1.6;margin:15px 0 0;''>Thank you for your continued support in ensuring your child''s attendance and punctuality.</p>
                            </td>
                        </tr>
                        <tr>
                            <td style=''background:#f8fafc;padding:20px;text-align:center;border-top:2px solid #e2e8f0;''>
                                <p style=''color:#64748b;font-size:13px;font-weight:600;margin:0;''>Ilaya National High School</p>
                                <p style=''color:#94a3b8;font-size:12px;margin:3px 0;''>Ilaya, Dapitan City</p>
                                <p style=''color:#94a3b8;font-size:11px;margin:8px 0 0;padding-top:8px;border-top:1px solid #e2e8f0;''>This is an automated message from the School Gate Attendance System. Please do not reply to this email.</p>
                            </td>
                        </tr>
                    </table>
                </td></tr>
            </table>
        </body>
        </html>', 'Sent', '2026-06-15 02:49:07.483431', '2026-06-15 02:49:00.764426');
INSERT INTO school_gate.email_logs (email_log_id, student_id, parent_email, notification_type, subject, message, send_status, sent_at, created_at) VALUES (20, 32, 'ervinpactol@gmail.com', 'Entry', 'Entry Notification - John Ervin Baje', '
        <!DOCTYPE html>
        <html>
        <head><meta charset=''UTF-8''></head>
        <body style=''margin:0;padding:0;background:#f4f4f4;font-family:Arial,sans-serif;''>
            <table width=''100%'' cellpadding=''0'' cellspacing=''0'' style=''background:#f4f4f4;padding:20px;''>
                <tr><td align=''center''>
                    <table width=''600'' cellpadding=''0'' cellspacing=''0'' style=''background:#ffffff;border-radius:8px;overflow:hidden;box-shadow:0 2px 8px rgba(0,0,0,0.1);''>
                        <tr>
                            <td style=''background:#1e293b;padding:25px 20px;text-align:center;''>
                                <table cellpadding=''0'' cellspacing=''0'' style=''margin:0 auto;''>
                                    <tr>
                                        <td style=''vertical-align:middle;padding-right:12px;''>
                                            <img src=''cid:logo_img'' alt=''Ilaya National High School'' width=''40'' height=''40'' style=''border-radius:8px;''>
                                        </td>
                                        <td style=''vertical-align:middle;text-align:left;''>
                                            <h1 style=''color:#ffffff;margin:0;font-size:20px;''>Ilaya National High School</h1>
                                            <p style=''color:#93c5fd;margin:2px 0 0;font-size:12px;''>Gate Attendance Notification</p>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td style=''padding:30px 30px 20px;''>
                                <p style=''color:#334155;font-size:14px;line-height:1.6;margin:0 0 5px;''>Dear <strong>Eren Grace Pactol</strong>,</p>
                                <p style=''color:#334155;font-size:14px;line-height:1.6;margin:0 0 15px;''>This is to notify you regarding the campus access of your child:</p>
                                <table width=''100%'' cellpadding=''8'' cellspacing=''0'' style=''background:#f8fafc;border-radius:6px;margin:15px 0;font-size:14px;border:1px solid #e2e8f0;''>
                                    <tr><td style=''color:#64748b;width:140px;border-bottom:1px solid #e2e8f0;''><strong>Student Name</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>John Ervin Baje</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Student ID</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>2026-0002</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Grade & Section</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>Grade 7 - Rizal</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Date</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>June 16, 2026</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Time</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>12:54 AM</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Scan Type</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>ENTRY</td></tr>
                                    
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Status</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;font-weight:600;''>Present</td></tr>
                                </table>
                                <p style=''color:#334155;font-size:14px;line-height:1.6;margin:15px 0 0;''>Thank you for your continued support.</p>
                            </td>
                        </tr>
                        <tr>
                            <td style=''background:#f8fafc;padding:20px;text-align:center;border-top:2px solid #e2e8f0;''>
                                <p style=''color:#64748b;font-size:13px;font-weight:600;margin:0;''>Ilaya National High School</p>
                                <p style=''color:#94a3b8;font-size:12px;margin:3px 0;''>Ilaya, Dapitan City</p>
                                <p style=''color:#94a3b8;font-size:11px;margin:8px 0 0;padding-top:8px;border-top:1px solid #e2e8f0;''>This is an automated message from the School Gate Attendance System.</p>
                            </td>
                        </tr>
                    </table>
                </td></tr>
            </table>
        </body>
        </html>', 'Sent', '2026-06-15 09:54:25.796728', '2026-06-15 09:54:15.446453');
INSERT INTO school_gate.email_logs (email_log_id, student_id, parent_email, notification_type, subject, message, send_status, sent_at, created_at) VALUES (21, 32, 'ervinpactol@gmail.com', 'Entry', 'Entry Notification - John Ervin Baje', '
        <!DOCTYPE html>
        <html>
        <head><meta charset=''UTF-8''></head>
        <body style=''margin:0;padding:0;background:#f4f4f4;font-family:Arial,sans-serif;''>
            <table width=''100%'' cellpadding=''0'' cellspacing=''0'' style=''background:#f4f4f4;padding:20px;''>
                <tr><td align=''center''>
                    <table width=''600'' cellpadding=''0'' cellspacing=''0'' style=''background:#ffffff;border-radius:8px;overflow:hidden;box-shadow:0 2px 8px rgba(0,0,0,0.1);''>
                        <tr>
                            <td style=''background:#1e293b;padding:25px 20px;text-align:center;''>
                                <table cellpadding=''0'' cellspacing=''0'' style=''margin:0 auto;''>
                                    <tr>
                                        <td style=''vertical-align:middle;padding-right:12px;''>
                                            <img src=''cid:logo_img'' alt=''Ilaya National High School'' width=''40'' height=''40'' style=''border-radius:8px;''>
                                        </td>
                                        <td style=''vertical-align:middle;text-align:left;''>
                                            <h1 style=''color:#ffffff;margin:0;font-size:20px;''>Ilaya National High School</h1>
                                            <p style=''color:#93c5fd;margin:2px 0 0;font-size:12px;''>Gate Attendance Notification</p>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td style=''padding:30px 30px 20px;''>
                                <p style=''color:#334155;font-size:14px;line-height:1.6;margin:0 0 5px;''>Dear <strong>Eren Grace Pactol</strong>,</p>
                                <p style=''color:#334155;font-size:14px;line-height:1.6;margin:0 0 15px;''>This is to notify you regarding the campus access of your child:</p>
                                <table width=''100%'' cellpadding=''8'' cellspacing=''0'' style=''background:#f8fafc;border-radius:6px;margin:15px 0;font-size:14px;border:1px solid #e2e8f0;''>
                                    <tr><td style=''color:#64748b;width:140px;border-bottom:1px solid #e2e8f0;''><strong>Student Name</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>John Ervin Baje</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Student ID</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>2026-0002</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Grade & Section</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>Grade 7 - Rizal</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Date</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>June 16, 2026</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Time</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>01:04 AM</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Scan Type</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>ENTRY</td></tr>
                                    
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Status</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;font-weight:600;''>Present</td></tr>
                                </table>
                                <p style=''color:#334155;font-size:14px;line-height:1.6;margin:15px 0 0;''>Thank you for your continued support.</p>
                            </td>
                        </tr>
                        <tr>
                            <td style=''background:#f8fafc;padding:20px;text-align:center;border-top:2px solid #e2e8f0;''>
                                <p style=''color:#64748b;font-size:13px;font-weight:600;margin:0;''>Ilaya National High School</p>
                                <p style=''color:#94a3b8;font-size:12px;margin:3px 0;''>Ilaya, Dapitan City</p>
                                <p style=''color:#94a3b8;font-size:11px;margin:8px 0 0;padding-top:8px;border-top:1px solid #e2e8f0;''>This is an automated message from the School Gate Attendance System.</p>
                            </td>
                        </tr>
                    </table>
                </td></tr>
            </table>
        </body>
        </html>', 'Sent', '2026-06-15 10:04:30.459908', '2026-06-15 10:04:24.054962');
INSERT INTO school_gate.email_logs (email_log_id, student_id, parent_email, notification_type, subject, message, send_status, sent_at, created_at) VALUES (22, 32, 'ervinpactol@gmail.com', 'Entry', 'Entry Notification - John Ervin Baje', '
        <!DOCTYPE html>
        <html>
        <head><meta charset=''UTF-8''></head>
        <body style=''margin:0;padding:0;background:#f4f4f4;font-family:Arial,sans-serif;''>
            <table width=''100%'' cellpadding=''0'' cellspacing=''0'' style=''background:#f4f4f4;padding:20px;''>
                <tr><td align=''center''>
                    <table width=''600'' cellpadding=''0'' cellspacing=''0'' style=''background:#ffffff;border-radius:8px;overflow:hidden;box-shadow:0 2px 8px rgba(0,0,0,0.1);''>
                        <tr>
                            <td style=''background:#1e293b;padding:25px 20px;text-align:center;''>
                                <table cellpadding=''0'' cellspacing=''0'' style=''margin:0 auto;''>
                                    <tr>
                                        <td style=''vertical-align:middle;padding-right:12px;''>
                                            <img src=''cid:logo_img'' alt=''Ilaya National High School'' width=''40'' height=''40'' style=''border-radius:8px;''>
                                        </td>
                                        <td style=''vertical-align:middle;text-align:left;''>
                                            <h1 style=''color:#ffffff;margin:0;font-size:20px;''>Ilaya National High School</h1>
                                            <p style=''color:#93c5fd;margin:2px 0 0;font-size:12px;''>Gate Attendance Notification</p>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td style=''padding:30px 30px 20px;''>
                                <p style=''color:#334155;font-size:14px;line-height:1.6;margin:0 0 5px;''>Dear <strong>Eren Grace Pactol</strong>,</p>
                                <p style=''color:#334155;font-size:14px;line-height:1.6;margin:0 0 15px;''>This is to notify you regarding the campus access of your child:</p>
                                <table width=''100%'' cellpadding=''8'' cellspacing=''0'' style=''background:#f8fafc;border-radius:6px;margin:15px 0;font-size:14px;border:1px solid #e2e8f0;''>
                                    <tr><td style=''color:#64748b;width:140px;border-bottom:1px solid #e2e8f0;''><strong>Student Name</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>John Ervin Baje</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Student ID</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>2026-0002</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Grade & Section</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>Grade 7 - Rizal</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Date</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>June 16, 2026</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Time</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>01:04 AM</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Scan Type</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>ENTRY</td></tr>
                                    
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Status</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;font-weight:600;''>Present</td></tr>
                                </table>
                                <p style=''color:#334155;font-size:14px;line-height:1.6;margin:15px 0 0;''>Thank you for your continued support.</p>
                            </td>
                        </tr>
                        <tr>
                            <td style=''background:#f8fafc;padding:20px;text-align:center;border-top:2px solid #e2e8f0;''>
                                <p style=''color:#64748b;font-size:13px;font-weight:600;margin:0;''>Ilaya National High School</p>
                                <p style=''color:#94a3b8;font-size:12px;margin:3px 0;''>Ilaya, Dapitan City</p>
                                <p style=''color:#94a3b8;font-size:11px;margin:8px 0 0;padding-top:8px;border-top:1px solid #e2e8f0;''>This is an automated message from the School Gate Attendance System.</p>
                            </td>
                        </tr>
                    </table>
                </td></tr>
            </table>
        </body>
        </html>', 'Sent', '2026-06-15 10:04:50.675755', '2026-06-15 10:04:44.517396');
INSERT INTO school_gate.email_logs (email_log_id, student_id, parent_email, notification_type, subject, message, send_status, sent_at, created_at) VALUES (23, 32, 'ervinpactol@gmail.com', 'Attendance', 'Attendance Notification - John Ervin Baje', '
        <!DOCTYPE html>
        <html>
        <head><meta charset=''UTF-8''></head>
        <body style=''margin:0;padding:0;background:#f4f4f4;font-family:Arial,sans-serif;''>
            <table width=''100%'' cellpadding=''0'' cellspacing=''0'' style=''background:#f4f4f4;padding:20px;''>
                <tr><td align=''center''>
                    <table width=''600'' cellpadding=''0'' cellspacing=''0'' style=''background:#ffffff;border-radius:8px;overflow:hidden;box-shadow:0 2px 8px rgba(0,0,0,0.1);''>
                        <tr>
                            <td style=''background:#1e293b;padding:25px 20px;text-align:center;''>
                                <table cellpadding=''0'' cellspacing=''0'' style=''margin:0 auto;''>
                                    <tr>
                                        <td style=''vertical-align:middle;padding-right:12px;''>
                                            <img src=''cid:logo_img'' alt=''Ilaya National High School'' width=''40'' height=''40'' style=''border-radius:8px;''>
                                        </td>
                                        <td style=''vertical-align:middle;text-align:left;''>
                                            <h1 style=''color:#ffffff;margin:0;font-size:20px;''>Ilaya National High School</h1>
                                            <p style=''color:#93c5fd;margin:2px 0 0;font-size:12px;''>Attendance Notification System</p>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td style=''padding:30px 30px 20px;''>
                                <p style=''color:#334155;font-size:14px;line-height:1.6;margin:0 0 5px;''>Dear <strong>Eren Grace Pactol</strong>,</p>
                                <p style=''color:#334155;font-size:14px;line-height:1.6;margin:0 0 15px;''>This is to notify you of the attendance record of your child:</p>
                                <table width=''100%'' cellpadding=''8'' cellspacing=''0'' style=''background:#f8fafc;border-radius:6px;margin:15px 0;font-size:14px;border:1px solid #e2e8f0;''>
                                    <tr><td style=''color:#64748b;width:140px;border-bottom:1px solid #e2e8f0;''><strong>Student Name</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>John Ervin Baje</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Student ID / LRN</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>2026-0002</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Grade & Section</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>Grade 7 - Rizal</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Date</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>June 15, 2026</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Time In</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>05:48 PM</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Time Out</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>05:49 PM</td></tr>
                                    <tr><td style=''color:#64748b;''><strong>Status</strong></td><td style=''color:#1e293b;font-weight:600;''>Late</td></tr>
                                </table>
                                <p style=''color:#334155;font-size:14px;line-height:1.6;margin:15px 0 0;''>Thank you for your continued support in ensuring your child''s attendance and punctuality.</p>
                            </td>
                        </tr>
                        <tr>
                            <td style=''background:#f8fafc;padding:20px;text-align:center;border-top:2px solid #e2e8f0;''>
                                <p style=''color:#64748b;font-size:13px;font-weight:600;margin:0;''>Ilaya National High School</p>
                                <p style=''color:#94a3b8;font-size:12px;margin:3px 0;''>Ilaya, Dapitan City</p>
                                <p style=''color:#94a3b8;font-size:11px;margin:8px 0 0;padding-top:8px;border-top:1px solid #e2e8f0;''>This is an automated message from the School Gate Attendance System. Please do not reply to this email.</p>
                            </td>
                        </tr>
                    </table>
                </td></tr>
            </table>
        </body>
        </html>', 'Sent', '2026-06-15 10:05:23.520754', '2026-06-15 10:05:17.196139');
INSERT INTO school_gate.email_logs (email_log_id, student_id, parent_email, notification_type, subject, message, send_status, sent_at, created_at) VALUES (24, 32, 'ervinpactol@gmail.com', 'Attendance', 'Attendance Notification - John Ervin Baje', '
        <!DOCTYPE html>
        <html>
        <head><meta charset=''UTF-8''></head>
        <body style=''margin:0;padding:0;background:#f4f4f4;font-family:Arial,sans-serif;''>
            <table width=''100%'' cellpadding=''0'' cellspacing=''0'' style=''background:#f4f4f4;padding:20px;''>
                <tr><td align=''center''>
                    <table width=''600'' cellpadding=''0'' cellspacing=''0'' style=''background:#ffffff;border-radius:8px;overflow:hidden;box-shadow:0 2px 8px rgba(0,0,0,0.1);''>
                        <tr>
                            <td style=''background:#1e293b;padding:25px 20px;text-align:center;''>
                                <table cellpadding=''0'' cellspacing=''0'' style=''margin:0 auto;''>
                                    <tr>
                                        <td style=''vertical-align:middle;padding-right:12px;''>
                                            <img src=''cid:logo_img'' alt=''Ilaya National High School'' width=''40'' height=''40'' style=''border-radius:8px;''>
                                        </td>
                                        <td style=''vertical-align:middle;text-align:left;''>
                                            <h1 style=''color:#ffffff;margin:0;font-size:20px;''>Ilaya National High School</h1>
                                            <p style=''color:#93c5fd;margin:2px 0 0;font-size:12px;''>Attendance Notification System</p>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td style=''padding:30px 30px 20px;''>
                                <p style=''color:#334155;font-size:14px;line-height:1.6;margin:0 0 5px;''>Dear <strong>Eren Grace Pactol</strong>,</p>
                                <p style=''color:#334155;font-size:14px;line-height:1.6;margin:0 0 15px;''>This is to notify you of the attendance record of your child:</p>
                                <table width=''100%'' cellpadding=''8'' cellspacing=''0'' style=''background:#f8fafc;border-radius:6px;margin:15px 0;font-size:14px;border:1px solid #e2e8f0;''>
                                    <tr><td style=''color:#64748b;width:140px;border-bottom:1px solid #e2e8f0;''><strong>Student Name</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>John Ervin Baje</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Student ID / LRN</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>2026-0002</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Grade & Section</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>Grade 7 - Rizal</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Date</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>June 16, 2026</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Time In</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>12:54 AM</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Time Out</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>--</td></tr>
                                    <tr><td style=''color:#64748b;''><strong>Status</strong></td><td style=''color:#1e293b;font-weight:600;''>Present</td></tr>
                                </table>
                                <p style=''color:#334155;font-size:14px;line-height:1.6;margin:15px 0 0;''>Thank you for your continued support in ensuring your child''s attendance and punctuality.</p>
                            </td>
                        </tr>
                        <tr>
                            <td style=''background:#f8fafc;padding:20px;text-align:center;border-top:2px solid #e2e8f0;''>
                                <p style=''color:#64748b;font-size:13px;font-weight:600;margin:0;''>Ilaya National High School</p>
                                <p style=''color:#94a3b8;font-size:12px;margin:3px 0;''>Ilaya, Dapitan City</p>
                                <p style=''color:#94a3b8;font-size:11px;margin:8px 0 0;padding-top:8px;border-top:1px solid #e2e8f0;''>This is an automated message from the School Gate Attendance System. Please do not reply to this email.</p>
                            </td>
                        </tr>
                    </table>
                </td></tr>
            </table>
        </body>
        </html>', 'Sent', '2026-06-15 10:05:42.606655', '2026-06-15 10:05:35.752489');
INSERT INTO school_gate.email_logs (email_log_id, student_id, parent_email, notification_type, subject, message, send_status, sent_at, created_at) VALUES (25, 32, 'ervinpactol@gmail.com', 'Entry', 'Entry Notification - John Ervin Baje', '
        <!DOCTYPE html>
        <html>
        <head><meta charset=''UTF-8''></head>
        <body style=''margin:0;padding:0;background:#f4f4f4;font-family:Arial,sans-serif;''>
            <table width=''100%'' cellpadding=''0'' cellspacing=''0'' style=''background:#f4f4f4;padding:20px;''>
                <tr><td align=''center''>
                    <table width=''600'' cellpadding=''0'' cellspacing=''0'' style=''background:#ffffff;border-radius:8px;overflow:hidden;box-shadow:0 2px 8px rgba(0,0,0,0.1);''>
                        <tr>
                            <td style=''background:#1e293b;padding:25px 20px;text-align:center;''>
                                <table cellpadding=''0'' cellspacing=''0'' style=''margin:0 auto;''>
                                    <tr>
                                        <td style=''vertical-align:middle;padding-right:12px;''>
                                            <img src=''cid:logo_img'' alt=''Ilaya National High School'' width=''40'' height=''40'' style=''border-radius:8px;''>
                                        </td>
                                        <td style=''vertical-align:middle;text-align:left;''>
                                            <h1 style=''color:#ffffff;margin:0;font-size:20px;''>Ilaya National High School</h1>
                                            <p style=''color:#93c5fd;margin:2px 0 0;font-size:12px;''>Gate Attendance Notification</p>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td style=''padding:30px 30px 20px;''>
                                <p style=''color:#334155;font-size:14px;line-height:1.6;margin:0 0 5px;''>Dear <strong>Eren Grace Pactol</strong>,</p>
                                <p style=''color:#334155;font-size:14px;line-height:1.6;margin:0 0 15px;''>This is to notify you regarding the campus access of your child:</p>
                                <table width=''100%'' cellpadding=''8'' cellspacing=''0'' style=''background:#f8fafc;border-radius:6px;margin:15px 0;font-size:14px;border:1px solid #e2e8f0;''>
                                    <tr><td style=''color:#64748b;width:140px;border-bottom:1px solid #e2e8f0;''><strong>Student Name</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>John Ervin Baje</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Student ID</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>2026-0002</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Grade & Section</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>Grade 7 - Rizal</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Date</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>June 16, 2026</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Time</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>01:07 AM</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Scan Type</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>ENTRY</td></tr>
                                    
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Status</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;font-weight:600;''>Present</td></tr>
                                </table>
                                <p style=''color:#334155;font-size:14px;line-height:1.6;margin:15px 0 0;''>Thank you for your continued support.</p>
                            </td>
                        </tr>
                        <tr>
                            <td style=''background:#f8fafc;padding:20px;text-align:center;border-top:2px solid #e2e8f0;''>
                                <p style=''color:#64748b;font-size:13px;font-weight:600;margin:0;''>Ilaya National High School</p>
                                <p style=''color:#94a3b8;font-size:12px;margin:3px 0;''>Ilaya, Dapitan City</p>
                                <p style=''color:#94a3b8;font-size:11px;margin:8px 0 0;padding-top:8px;border-top:1px solid #e2e8f0;''>This is an automated message from the School Gate Attendance System.</p>
                            </td>
                        </tr>
                    </table>
                </td></tr>
            </table>
        </body>
        </html>', 'Sent', '2026-06-15 10:08:04.212484', '2026-06-15 10:07:58.651376');
INSERT INTO school_gate.email_logs (email_log_id, student_id, parent_email, notification_type, subject, message, send_status, sent_at, created_at) VALUES (26, 32, 'ervinpactol@gmail.com', 'Entry', 'Entry Notification - John Ervin Baje', '
        <!DOCTYPE html>
        <html>
        <head><meta charset=''UTF-8''></head>
        <body style=''margin:0;padding:0;background:#f4f4f4;font-family:Arial,sans-serif;''>
            <table width=''100%'' cellpadding=''0'' cellspacing=''0'' style=''background:#f4f4f4;padding:20px;''>
                <tr><td align=''center''>
                    <table width=''600'' cellpadding=''0'' cellspacing=''0'' style=''background:#ffffff;border-radius:8px;overflow:hidden;box-shadow:0 2px 8px rgba(0,0,0,0.1);''>
                        <tr>
                            <td style=''background:#1e293b;padding:25px 20px;text-align:center;''>
                                <table cellpadding=''0'' cellspacing=''0'' style=''margin:0 auto;''>
                                    <tr>
                                        <td style=''vertical-align:middle;padding-right:12px;''>
                                            <img src=''cid:logo_img'' alt=''Ilaya National High School'' width=''40'' height=''40'' style=''border-radius:8px;''>
                                        </td>
                                        <td style=''vertical-align:middle;text-align:left;''>
                                            <h1 style=''color:#ffffff;margin:0;font-size:20px;''>Ilaya National High School</h1>
                                            <p style=''color:#93c5fd;margin:2px 0 0;font-size:12px;''>Gate Attendance Notification</p>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td style=''padding:30px 30px 20px;''>
                                <p style=''color:#334155;font-size:14px;line-height:1.6;margin:0 0 5px;''>Dear <strong>Eren Grace Pactol</strong>,</p>
                                <p style=''color:#334155;font-size:14px;line-height:1.6;margin:0 0 15px;''>This is to notify you regarding the campus access of your child:</p>
                                <table width=''100%'' cellpadding=''8'' cellspacing=''0'' style=''background:#f8fafc;border-radius:6px;margin:15px 0;font-size:14px;border:1px solid #e2e8f0;''>
                                    <tr><td style=''color:#64748b;width:140px;border-bottom:1px solid #e2e8f0;''><strong>Student Name</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>John Ervin Baje</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Student ID</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>2026-0002</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Grade & Section</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>Grade 7 - Rizal</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Date</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>June 16, 2026</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Time</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>01:29 AM</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Scan Type</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>ENTRY</td></tr>
                                    
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Status</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;font-weight:600;''>Present</td></tr>
                                </table>
                                <p style=''color:#334155;font-size:14px;line-height:1.6;margin:15px 0 0;''>Thank you for your continued support.</p>
                            </td>
                        </tr>
                        <tr>
                            <td style=''background:#f8fafc;padding:20px;text-align:center;border-top:2px solid #e2e8f0;''>
                                <p style=''color:#64748b;font-size:13px;font-weight:600;margin:0;''>Ilaya National High School</p>
                                <p style=''color:#94a3b8;font-size:12px;margin:3px 0;''>Ilaya, Dapitan City</p>
                                <p style=''color:#94a3b8;font-size:11px;margin:8px 0 0;padding-top:8px;border-top:1px solid #e2e8f0;''>This is an automated message from the School Gate Attendance System.</p>
                            </td>
                        </tr>
                    </table>
                </td></tr>
            </table>
        </body>
        </html>', 'Sent', '2026-06-15 10:29:44.67551', '2026-06-15 10:29:39.315813');
INSERT INTO school_gate.email_logs (email_log_id, student_id, parent_email, notification_type, subject, message, send_status, sent_at, created_at) VALUES (27, 32, 'ervinpactol@gmail.com', 'Entry', 'Entry Notification - John Ervin Baje', '
        <!DOCTYPE html>
        <html>
        <head><meta charset=''UTF-8''></head>
        <body style=''margin:0;padding:0;background:#f4f4f4;font-family:Arial,sans-serif;''>
            <table width=''100%'' cellpadding=''0'' cellspacing=''0'' style=''background:#f4f4f4;padding:20px;''>
                <tr><td align=''center''>
                    <table width=''600'' cellpadding=''0'' cellspacing=''0'' style=''background:#ffffff;border-radius:8px;overflow:hidden;box-shadow:0 2px 8px rgba(0,0,0,0.1);''>
                        <tr>
                            <td style=''background:#1e293b;padding:25px 20px;text-align:center;''>
                                <table cellpadding=''0'' cellspacing=''0'' style=''margin:0 auto;''>
                                    <tr>
                                        <td style=''vertical-align:middle;padding-right:12px;''>
                                            <img src=''cid:logo_img'' alt=''Ilaya National High School'' width=''40'' height=''40'' style=''border-radius:8px;''>
                                        </td>
                                        <td style=''vertical-align:middle;text-align:left;''>
                                            <h1 style=''color:#ffffff;margin:0;font-size:20px;''>Ilaya National High School</h1>
                                            <p style=''color:#93c5fd;margin:2px 0 0;font-size:12px;''>Gate Attendance Notification</p>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td style=''padding:30px 30px 20px;''>
                                <p style=''color:#334155;font-size:14px;line-height:1.6;margin:0 0 5px;''>Dear <strong>Eren Grace Pactol</strong>,</p>
                                <p style=''color:#334155;font-size:14px;line-height:1.6;margin:0 0 15px;''>This is to notify you regarding the campus access of your child:</p>
                                <table width=''100%'' cellpadding=''8'' cellspacing=''0'' style=''background:#f8fafc;border-radius:6px;margin:15px 0;font-size:14px;border:1px solid #e2e8f0;''>
                                    <tr><td style=''color:#64748b;width:140px;border-bottom:1px solid #e2e8f0;''><strong>Student Name</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>John Ervin Baje</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Student ID</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>2026-0002</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Grade & Section</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>Grade 7 - Rizal</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Date</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>June 16, 2026</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Time</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>01:49 AM</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Scan Type</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>ENTRY</td></tr>
                                    
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Status</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;font-weight:600;''>Present</td></tr>
                                </table>
                                <p style=''color:#334155;font-size:14px;line-height:1.6;margin:15px 0 0;''>Thank you for your continued support.</p>
                            </td>
                        </tr>
                        <tr>
                            <td style=''background:#f8fafc;padding:20px;text-align:center;border-top:2px solid #e2e8f0;''>
                                <p style=''color:#64748b;font-size:13px;font-weight:600;margin:0;''>Ilaya National High School</p>
                                <p style=''color:#94a3b8;font-size:12px;margin:3px 0;''>Ilaya, Dapitan City</p>
                                <p style=''color:#94a3b8;font-size:11px;margin:8px 0 0;padding-top:8px;border-top:1px solid #e2e8f0;''>This is an automated message from the School Gate Attendance System.</p>
                            </td>
                        </tr>
                    </table>
                </td></tr>
            </table>
        </body>
        </html>', 'Sent', '2026-06-15 10:49:22.656604', '2026-06-15 10:49:16.81918');
INSERT INTO school_gate.email_logs (email_log_id, student_id, parent_email, notification_type, subject, message, send_status, sent_at, created_at) VALUES (28, 32, 'ervinpactol@gmail.com', 'Entry', 'Entry Notification - John Ervin Baje', '
        <!DOCTYPE html>
        <html>
        <head><meta charset=''UTF-8''></head>
        <body style=''margin:0;padding:0;background:#f4f4f4;font-family:Arial,sans-serif;''>
            <table width=''100%'' cellpadding=''0'' cellspacing=''0'' style=''background:#f4f4f4;padding:20px;''>
                <tr><td align=''center''>
                    <table width=''600'' cellpadding=''0'' cellspacing=''0'' style=''background:#ffffff;border-radius:8px;overflow:hidden;box-shadow:0 2px 8px rgba(0,0,0,0.1);''>
                        <tr>
                            <td style=''background:#1e293b;padding:25px 20px;text-align:center;''>
                                <table cellpadding=''0'' cellspacing=''0'' style=''margin:0 auto;''>
                                    <tr>
                                        <td style=''vertical-align:middle;padding-right:12px;''>
                                            <img src=''cid:logo_img'' alt=''Ilaya National High School'' width=''40'' height=''40'' style=''border-radius:8px;''>
                                        </td>
                                        <td style=''vertical-align:middle;text-align:left;''>
                                            <h1 style=''color:#ffffff;margin:0;font-size:20px;''>Ilaya National High School</h1>
                                            <p style=''color:#93c5fd;margin:2px 0 0;font-size:12px;''>Gate Attendance Notification</p>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td style=''padding:30px 30px 20px;''>
                                <p style=''color:#334155;font-size:14px;line-height:1.6;margin:0 0 5px;''>Dear <strong>Eren Grace Pactol</strong>,</p>
                                <p style=''color:#334155;font-size:14px;line-height:1.6;margin:0 0 15px;''>This is to notify you regarding the campus access of your child:</p>
                                <table width=''100%'' cellpadding=''8'' cellspacing=''0'' style=''background:#f8fafc;border-radius:6px;margin:15px 0;font-size:14px;border:1px solid #e2e8f0;''>
                                    <tr><td style=''color:#64748b;width:140px;border-bottom:1px solid #e2e8f0;''><strong>Student Name</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>John Ervin Baje</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Student ID</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>2026-0002</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Grade & Section</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>Grade 7 - Rizal</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Date</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>June 16, 2026</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Time</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>02:24 AM</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Scan Type</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>ENTRY</td></tr>
                                    
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Status</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;font-weight:600;''>Present</td></tr>
                                </table>
                                <p style=''color:#334155;font-size:14px;line-height:1.6;margin:15px 0 0;''>Thank you for your continued support.</p>
                            </td>
                        </tr>
                        <tr>
                            <td style=''background:#f8fafc;padding:20px;text-align:center;border-top:2px solid #e2e8f0;''>
                                <p style=''color:#64748b;font-size:13px;font-weight:600;margin:0;''>Ilaya National High School</p>
                                <p style=''color:#94a3b8;font-size:12px;margin:3px 0;''>Ilaya, Dapitan City</p>
                                <p style=''color:#94a3b8;font-size:11px;margin:8px 0 0;padding-top:8px;border-top:1px solid #e2e8f0;''>This is an automated message from the School Gate Attendance System.</p>
                            </td>
                        </tr>
                    </table>
                </td></tr>
            </table>
        </body>
        </html>', 'Sent', '2026-06-15 11:24:52.476286', '2026-06-15 11:24:45.523431');
INSERT INTO school_gate.email_logs (email_log_id, student_id, parent_email, notification_type, subject, message, send_status, sent_at, created_at) VALUES (29, 19, 'luisa.torres@email.com', 'Entry', 'Entry Notification - Juan Cruz', '
        <!DOCTYPE html>
        <html>
        <head><meta charset=''UTF-8''></head>
        <body style=''margin:0;padding:0;background:#f4f4f4;font-family:Arial,sans-serif;''>
            <table width=''100%'' cellpadding=''0'' cellspacing=''0'' style=''background:#f4f4f4;padding:20px;''>
                <tr><td align=''center''>
                    <table width=''600'' cellpadding=''0'' cellspacing=''0'' style=''background:#ffffff;border-radius:8px;overflow:hidden;box-shadow:0 2px 8px rgba(0,0,0,0.1);''>
                        <tr>
                            <td style=''background:#1e293b;padding:25px 20px;text-align:center;''>
                                <table cellpadding=''0'' cellspacing=''0'' style=''margin:0 auto;''>
                                    <tr>
                                        <td style=''vertical-align:middle;padding-right:12px;''>
                                            <img src=''cid:logo_img'' alt=''Ilaya National High School'' width=''40'' height=''40'' style=''border-radius:8px;''>
                                        </td>
                                        <td style=''vertical-align:middle;text-align:left;''>
                                            <h1 style=''color:#ffffff;margin:0;font-size:20px;''>Ilaya National High School</h1>
                                            <p style=''color:#93c5fd;margin:2px 0 0;font-size:12px;''>Gate Attendance Notification</p>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td style=''padding:30px 30px 20px;''>
                                <p style=''color:#334155;font-size:14px;line-height:1.6;margin:0 0 5px;''>Dear <strong>Luisa Torres</strong>,</p>
                                <p style=''color:#334155;font-size:14px;line-height:1.6;margin:0 0 15px;''>This is to notify you regarding the campus access of your child:</p>
                                <table width=''100%'' cellpadding=''8'' cellspacing=''0'' style=''background:#f8fafc;border-radius:6px;margin:15px 0;font-size:14px;border:1px solid #e2e8f0;''>
                                    <tr><td style=''color:#64748b;width:140px;border-bottom:1px solid #e2e8f0;''><strong>Student Name</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>Juan Cruz</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Student ID</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>2026-0007</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Grade & Section</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''> - </td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Date</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>June 16, 2026</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Time</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>02:25 AM</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Scan Type</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>ENTRY</td></tr>
                                    
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Status</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;font-weight:600;''>Present</td></tr>
                                </table>
                                <p style=''color:#334155;font-size:14px;line-height:1.6;margin:15px 0 0;''>Thank you for your continued support.</p>
                            </td>
                        </tr>
                        <tr>
                            <td style=''background:#f8fafc;padding:20px;text-align:center;border-top:2px solid #e2e8f0;''>
                                <p style=''color:#64748b;font-size:13px;font-weight:600;margin:0;''>Ilaya National High School</p>
                                <p style=''color:#94a3b8;font-size:12px;margin:3px 0;''>Ilaya, Dapitan City</p>
                                <p style=''color:#94a3b8;font-size:11px;margin:8px 0 0;padding-top:8px;border-top:1px solid #e2e8f0;''>This is an automated message from the School Gate Attendance System.</p>
                            </td>
                        </tr>
                    </table>
                </td></tr>
            </table>
        </body>
        </html>', 'Sent', '2026-06-15 11:25:50.639815', '2026-06-15 11:25:44.122458');
INSERT INTO school_gate.email_logs (email_log_id, student_id, parent_email, notification_type, subject, message, send_status, sent_at, created_at) VALUES (30, 21, 'luisa.torres@email.com', 'Entry', 'Entry Notification - Jose Garcia', '
        <!DOCTYPE html>
        <html>
        <head><meta charset=''UTF-8''></head>
        <body style=''margin:0;padding:0;background:#f4f4f4;font-family:Arial,sans-serif;''>
            <table width=''100%'' cellpadding=''0'' cellspacing=''0'' style=''background:#f4f4f4;padding:20px;''>
                <tr><td align=''center''>
                    <table width=''600'' cellpadding=''0'' cellspacing=''0'' style=''background:#ffffff;border-radius:8px;overflow:hidden;box-shadow:0 2px 8px rgba(0,0,0,0.1);''>
                        <tr>
                            <td style=''background:#1e293b;padding:25px 20px;text-align:center;''>
                                <table cellpadding=''0'' cellspacing=''0'' style=''margin:0 auto;''>
                                    <tr>
                                        <td style=''vertical-align:middle;padding-right:12px;''>
                                            <img src=''cid:logo_img'' alt=''Ilaya National High School'' width=''40'' height=''40'' style=''border-radius:8px;''>
                                        </td>
                                        <td style=''vertical-align:middle;text-align:left;''>
                                            <h1 style=''color:#ffffff;margin:0;font-size:20px;''>Ilaya National High School</h1>
                                            <p style=''color:#93c5fd;margin:2px 0 0;font-size:12px;''>Gate Attendance Notification</p>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td style=''padding:30px 30px 20px;''>
                                <p style=''color:#334155;font-size:14px;line-height:1.6;margin:0 0 5px;''>Dear <strong>Luisa Torres</strong>,</p>
                                <p style=''color:#334155;font-size:14px;line-height:1.6;margin:0 0 15px;''>This is to notify you regarding the campus access of your child:</p>
                                <table width=''100%'' cellpadding=''8'' cellspacing=''0'' style=''background:#f8fafc;border-radius:6px;margin:15px 0;font-size:14px;border:1px solid #e2e8f0;''>
                                    <tr><td style=''color:#64748b;width:140px;border-bottom:1px solid #e2e8f0;''><strong>Student Name</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>Jose Garcia</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Student ID</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>2026-0009</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Grade & Section</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''> - </td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Date</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>June 16, 2026</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Time</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>02:26 AM</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Scan Type</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>ENTRY</td></tr>
                                    
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Status</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;font-weight:600;''>Present</td></tr>
                                </table>
                                <p style=''color:#334155;font-size:14px;line-height:1.6;margin:15px 0 0;''>Thank you for your continued support.</p>
                            </td>
                        </tr>
                        <tr>
                            <td style=''background:#f8fafc;padding:20px;text-align:center;border-top:2px solid #e2e8f0;''>
                                <p style=''color:#64748b;font-size:13px;font-weight:600;margin:0;''>Ilaya National High School</p>
                                <p style=''color:#94a3b8;font-size:12px;margin:3px 0;''>Ilaya, Dapitan City</p>
                                <p style=''color:#94a3b8;font-size:11px;margin:8px 0 0;padding-top:8px;border-top:1px solid #e2e8f0;''>This is an automated message from the School Gate Attendance System.</p>
                            </td>
                        </tr>
                    </table>
                </td></tr>
            </table>
        </body>
        </html>', 'Sent', '2026-06-15 11:26:10.202645', '2026-06-15 11:26:03.259619');
INSERT INTO school_gate.email_logs (email_log_id, student_id, parent_email, notification_type, subject, message, send_status, sent_at, created_at) VALUES (31, 22, 'ana.garcia@email.com', 'Entry', 'Entry Notification - Ana Ramos', '
        <!DOCTYPE html>
        <html>
        <head><meta charset=''UTF-8''></head>
        <body style=''margin:0;padding:0;background:#f4f4f4;font-family:Arial,sans-serif;''>
            <table width=''100%'' cellpadding=''0'' cellspacing=''0'' style=''background:#f4f4f4;padding:20px;''>
                <tr><td align=''center''>
                    <table width=''600'' cellpadding=''0'' cellspacing=''0'' style=''background:#ffffff;border-radius:8px;overflow:hidden;box-shadow:0 2px 8px rgba(0,0,0,0.1);''>
                        <tr>
                            <td style=''background:#1e293b;padding:25px 20px;text-align:center;''>
                                <table cellpadding=''0'' cellspacing=''0'' style=''margin:0 auto;''>
                                    <tr>
                                        <td style=''vertical-align:middle;padding-right:12px;''>
                                            <img src=''cid:logo_img'' alt=''Ilaya National High School'' width=''40'' height=''40'' style=''border-radius:8px;''>
                                        </td>
                                        <td style=''vertical-align:middle;text-align:left;''>
                                            <h1 style=''color:#ffffff;margin:0;font-size:20px;''>Ilaya National High School</h1>
                                            <p style=''color:#93c5fd;margin:2px 0 0;font-size:12px;''>Gate Attendance Notification</p>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td style=''padding:30px 30px 20px;''>
                                <p style=''color:#334155;font-size:14px;line-height:1.6;margin:0 0 5px;''>Dear <strong>Ana Garcia</strong>,</p>
                                <p style=''color:#334155;font-size:14px;line-height:1.6;margin:0 0 15px;''>This is to notify you regarding the campus access of your child:</p>
                                <table width=''100%'' cellpadding=''8'' cellspacing=''0'' style=''background:#f8fafc;border-radius:6px;margin:15px 0;font-size:14px;border:1px solid #e2e8f0;''>
                                    <tr><td style=''color:#64748b;width:140px;border-bottom:1px solid #e2e8f0;''><strong>Student Name</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>Ana Ramos</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Student ID</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>2026-0010</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Grade & Section</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''> - </td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Date</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>June 16, 2026</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Time</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>02:26 AM</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Scan Type</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>ENTRY</td></tr>
                                    
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Status</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;font-weight:600;''>Present</td></tr>
                                </table>
                                <p style=''color:#334155;font-size:14px;line-height:1.6;margin:15px 0 0;''>Thank you for your continued support.</p>
                            </td>
                        </tr>
                        <tr>
                            <td style=''background:#f8fafc;padding:20px;text-align:center;border-top:2px solid #e2e8f0;''>
                                <p style=''color:#64748b;font-size:13px;font-weight:600;margin:0;''>Ilaya National High School</p>
                                <p style=''color:#94a3b8;font-size:12px;margin:3px 0;''>Ilaya, Dapitan City</p>
                                <p style=''color:#94a3b8;font-size:11px;margin:8px 0 0;padding-top:8px;border-top:1px solid #e2e8f0;''>This is an automated message from the School Gate Attendance System.</p>
                            </td>
                        </tr>
                    </table>
                </td></tr>
            </table>
        </body>
        </html>', 'Sent', '2026-06-15 11:26:21.774839', '2026-06-15 11:26:15.723569');
INSERT INTO school_gate.email_logs (email_log_id, student_id, parent_email, notification_type, subject, message, send_status, sent_at, created_at) VALUES (32, 23, 'jose.santos@email.com', 'Entry', 'Entry Notification - Pedro Torres', '
        <!DOCTYPE html>
        <html>
        <head><meta charset=''UTF-8''></head>
        <body style=''margin:0;padding:0;background:#f4f4f4;font-family:Arial,sans-serif;''>
            <table width=''100%'' cellpadding=''0'' cellspacing=''0'' style=''background:#f4f4f4;padding:20px;''>
                <tr><td align=''center''>
                    <table width=''600'' cellpadding=''0'' cellspacing=''0'' style=''background:#ffffff;border-radius:8px;overflow:hidden;box-shadow:0 2px 8px rgba(0,0,0,0.1);''>
                        <tr>
                            <td style=''background:#1e293b;padding:25px 20px;text-align:center;''>
                                <table cellpadding=''0'' cellspacing=''0'' style=''margin:0 auto;''>
                                    <tr>
                                        <td style=''vertical-align:middle;padding-right:12px;''>
                                            <img src=''cid:logo_img'' alt=''Ilaya National High School'' width=''40'' height=''40'' style=''border-radius:8px;''>
                                        </td>
                                        <td style=''vertical-align:middle;text-align:left;''>
                                            <h1 style=''color:#ffffff;margin:0;font-size:20px;''>Ilaya National High School</h1>
                                            <p style=''color:#93c5fd;margin:2px 0 0;font-size:12px;''>Gate Attendance Notification</p>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td style=''padding:30px 30px 20px;''>
                                <p style=''color:#334155;font-size:14px;line-height:1.6;margin:0 0 5px;''>Dear <strong>Jose Santos</strong>,</p>
                                <p style=''color:#334155;font-size:14px;line-height:1.6;margin:0 0 15px;''>This is to notify you regarding the campus access of your child:</p>
                                <table width=''100%'' cellpadding=''8'' cellspacing=''0'' style=''background:#f8fafc;border-radius:6px;margin:15px 0;font-size:14px;border:1px solid #e2e8f0;''>
                                    <tr><td style=''color:#64748b;width:140px;border-bottom:1px solid #e2e8f0;''><strong>Student Name</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>Pedro Torres</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Student ID</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>2026-0011</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Grade & Section</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''> - </td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Date</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>June 16, 2026</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Time</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>02:30 AM</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Scan Type</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>ENTRY</td></tr>
                                    
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Status</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;font-weight:600;''>Present</td></tr>
                                </table>
                                <p style=''color:#334155;font-size:14px;line-height:1.6;margin:15px 0 0;''>Thank you for your continued support.</p>
                            </td>
                        </tr>
                        <tr>
                            <td style=''background:#f8fafc;padding:20px;text-align:center;border-top:2px solid #e2e8f0;''>
                                <p style=''color:#64748b;font-size:13px;font-weight:600;margin:0;''>Ilaya National High School</p>
                                <p style=''color:#94a3b8;font-size:12px;margin:3px 0;''>Ilaya, Dapitan City</p>
                                <p style=''color:#94a3b8;font-size:11px;margin:8px 0 0;padding-top:8px;border-top:1px solid #e2e8f0;''>This is an automated message from the School Gate Attendance System.</p>
                            </td>
                        </tr>
                    </table>
                </td></tr>
            </table>
        </body>
        </html>', 'Sent', '2026-06-15 11:30:10.231557', '2026-06-15 11:30:03.196912');
INSERT INTO school_gate.email_logs (email_log_id, student_id, parent_email, notification_type, subject, message, send_status, sent_at, created_at) VALUES (33, 32, 'ervinpactol@gmail.com', 'Exit', 'Exit Notification - John Ervin Baje', '
        <!DOCTYPE html>
        <html>
        <head><meta charset=''UTF-8''></head>
        <body style=''margin:0;padding:0;background:#f4f4f4;font-family:Arial,sans-serif;''>
            <table width=''100%'' cellpadding=''0'' cellspacing=''0'' style=''background:#f4f4f4;padding:20px;''>
                <tr><td align=''center''>
                    <table width=''600'' cellpadding=''0'' cellspacing=''0'' style=''background:#ffffff;border-radius:8px;overflow:hidden;box-shadow:0 2px 8px rgba(0,0,0,0.1);''>
                        <tr>
                            <td style=''background:#1e293b;padding:25px 20px;text-align:center;''>
                                <table cellpadding=''0'' cellspacing=''0'' style=''margin:0 auto;''>
                                    <tr>
                                        <td style=''vertical-align:middle;padding-right:12px;''>
                                            <img src=''cid:logo_img'' alt=''Ilaya National High School'' width=''40'' height=''40'' style=''border-radius:8px;''>
                                        </td>
                                        <td style=''vertical-align:middle;text-align:left;''>
                                            <h1 style=''color:#ffffff;margin:0;font-size:20px;''>Ilaya National High School</h1>
                                            <p style=''color:#93c5fd;margin:2px 0 0;font-size:12px;''>Gate Attendance Notification</p>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td style=''padding:30px 30px 20px;''>
                                <p style=''color:#334155;font-size:14px;line-height:1.6;margin:0 0 5px;''>Dear <strong>Eren Grace Pactol</strong>,</p>
                                <p style=''color:#334155;font-size:14px;line-height:1.6;margin:0 0 15px;''>This is to notify you regarding the campus access of your child:</p>
                                <table width=''100%'' cellpadding=''8'' cellspacing=''0'' style=''background:#f8fafc;border-radius:6px;margin:15px 0;font-size:14px;border:1px solid #e2e8f0;''>
                                    <tr><td style=''color:#64748b;width:140px;border-bottom:1px solid #e2e8f0;''><strong>Student Name</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>John Ervin Baje</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Student ID</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>2026-0002</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Grade & Section</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>Grade 7 - Rizal</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Date</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>June 16, 2026</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Time</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>02:50 AM</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Scan Type</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>EXIT</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Exit Type</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>Parent Pickup</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Status</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;font-weight:600;''>Present</td></tr>
                                </table>
                                <p style=''color:#334155;font-size:14px;line-height:1.6;margin:15px 0 0;''>Thank you for your continued support.</p>
                            </td>
                        </tr>
                        <tr>
                            <td style=''background:#f8fafc;padding:20px;text-align:center;border-top:2px solid #e2e8f0;''>
                                <p style=''color:#64748b;font-size:13px;font-weight:600;margin:0;''>Ilaya National High School</p>
                                <p style=''color:#94a3b8;font-size:12px;margin:3px 0;''>Ilaya, Dapitan City</p>
                                <p style=''color:#94a3b8;font-size:11px;margin:8px 0 0;padding-top:8px;border-top:1px solid #e2e8f0;''>This is an automated message from the School Gate Attendance System.</p>
                            </td>
                        </tr>
                    </table>
                </td></tr>
            </table>
        </body>
        </html>', 'Sent', '2026-06-16 02:50:20.730742', '2026-06-16 02:50:15.355189');
INSERT INTO school_gate.email_logs (email_log_id, student_id, parent_email, notification_type, subject, message, send_status, sent_at, created_at) VALUES (34, 21, 'luisa.torres@email.com', 'Exit', 'Exit Notification - Jose Garcia', '
        <!DOCTYPE html>
        <html>
        <head><meta charset=''UTF-8''></head>
        <body style=''margin:0;padding:0;background:#f4f4f4;font-family:Arial,sans-serif;''>
            <table width=''100%'' cellpadding=''0'' cellspacing=''0'' style=''background:#f4f4f4;padding:20px;''>
                <tr><td align=''center''>
                    <table width=''600'' cellpadding=''0'' cellspacing=''0'' style=''background:#ffffff;border-radius:8px;overflow:hidden;box-shadow:0 2px 8px rgba(0,0,0,0.1);''>
                        <tr>
                            <td style=''background:#1e293b;padding:25px 20px;text-align:center;''>
                                <table cellpadding=''0'' cellspacing=''0'' style=''margin:0 auto;''>
                                    <tr>
                                        <td style=''vertical-align:middle;padding-right:12px;''>
                                            <img src=''cid:logo_img'' alt=''Ilaya National High School'' width=''40'' height=''40'' style=''border-radius:8px;''>
                                        </td>
                                        <td style=''vertical-align:middle;text-align:left;''>
                                            <h1 style=''color:#ffffff;margin:0;font-size:20px;''>Ilaya National High School</h1>
                                            <p style=''color:#93c5fd;margin:2px 0 0;font-size:12px;''>Gate Attendance Notification</p>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td style=''padding:30px 30px 20px;''>
                                <p style=''color:#334155;font-size:14px;line-height:1.6;margin:0 0 5px;''>Dear <strong>Luisa Torres</strong>,</p>
                                <p style=''color:#334155;font-size:14px;line-height:1.6;margin:0 0 15px;''>This is to notify you regarding the campus access of your child:</p>
                                <table width=''100%'' cellpadding=''8'' cellspacing=''0'' style=''background:#f8fafc;border-radius:6px;margin:15px 0;font-size:14px;border:1px solid #e2e8f0;''>
                                    <tr><td style=''color:#64748b;width:140px;border-bottom:1px solid #e2e8f0;''><strong>Student Name</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>Jose Garcia</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Student ID</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>2026-0009</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Grade & Section</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''> - </td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Date</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>June 16, 2026</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Time</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>02:53 AM</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Scan Type</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>EXIT</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Exit Type</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>Medical Emergency</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Status</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;font-weight:600;''>Present</td></tr>
                                </table>
                                <p style=''color:#334155;font-size:14px;line-height:1.6;margin:15px 0 0;''>Thank you for your continued support.</p>
                            </td>
                        </tr>
                        <tr>
                            <td style=''background:#f8fafc;padding:20px;text-align:center;border-top:2px solid #e2e8f0;''>
                                <p style=''color:#64748b;font-size:13px;font-weight:600;margin:0;''>Ilaya National High School</p>
                                <p style=''color:#94a3b8;font-size:12px;margin:3px 0;''>Ilaya, Dapitan City</p>
                                <p style=''color:#94a3b8;font-size:11px;margin:8px 0 0;padding-top:8px;border-top:1px solid #e2e8f0;''>This is an automated message from the School Gate Attendance System.</p>
                            </td>
                        </tr>
                    </table>
                </td></tr>
            </table>
        </body>
        </html>', 'Sent', '2026-06-16 02:53:45.025835', '2026-06-16 02:53:39.758237');
INSERT INTO school_gate.email_logs (email_log_id, student_id, parent_email, notification_type, subject, message, send_status, sent_at, created_at) VALUES (35, 19, 'luisa.torres@email.com', 'Exit', 'Exit Notification - Juan Cruz', '
        <!DOCTYPE html>
        <html>
        <head><meta charset=''UTF-8''></head>
        <body style=''margin:0;padding:0;background:#f4f4f4;font-family:Arial,sans-serif;''>
            <table width=''100%'' cellpadding=''0'' cellspacing=''0'' style=''background:#f4f4f4;padding:20px;''>
                <tr><td align=''center''>
                    <table width=''600'' cellpadding=''0'' cellspacing=''0'' style=''background:#ffffff;border-radius:8px;overflow:hidden;box-shadow:0 2px 8px rgba(0,0,0,0.1);''>
                        <tr>
                            <td style=''background:#1e293b;padding:25px 20px;text-align:center;''>
                                <table cellpadding=''0'' cellspacing=''0'' style=''margin:0 auto;''>
                                    <tr>
                                        <td style=''vertical-align:middle;padding-right:12px;''>
                                            <img src=''cid:logo_img'' alt=''Ilaya National High School'' width=''40'' height=''40'' style=''border-radius:8px;''>
                                        </td>
                                        <td style=''vertical-align:middle;text-align:left;''>
                                            <h1 style=''color:#ffffff;margin:0;font-size:20px;''>Ilaya National High School</h1>
                                            <p style=''color:#93c5fd;margin:2px 0 0;font-size:12px;''>Gate Attendance Notification</p>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td style=''padding:30px 30px 20px;''>
                                <p style=''color:#334155;font-size:14px;line-height:1.6;margin:0 0 5px;''>Dear <strong>Luisa Torres</strong>,</p>
                                <p style=''color:#334155;font-size:14px;line-height:1.6;margin:0 0 15px;''>This is to notify you regarding the campus access of your child:</p>
                                <table width=''100%'' cellpadding=''8'' cellspacing=''0'' style=''background:#f8fafc;border-radius:6px;margin:15px 0;font-size:14px;border:1px solid #e2e8f0;''>
                                    <tr><td style=''color:#64748b;width:140px;border-bottom:1px solid #e2e8f0;''><strong>Student Name</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>Juan Cruz</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Student ID</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>2026-0007</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Grade & Section</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''> - </td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Date</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>June 16, 2026</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Time</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>03:09 AM</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Scan Type</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>EXIT</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Exit Type</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>Official School Activity</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Status</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;font-weight:600;''>Present</td></tr>
                                </table>
                                <p style=''color:#334155;font-size:14px;line-height:1.6;margin:15px 0 0;''>Thank you for your continued support.</p>
                            </td>
                        </tr>
                        <tr>
                            <td style=''background:#f8fafc;padding:20px;text-align:center;border-top:2px solid #e2e8f0;''>
                                <p style=''color:#64748b;font-size:13px;font-weight:600;margin:0;''>Ilaya National High School</p>
                                <p style=''color:#94a3b8;font-size:12px;margin:3px 0;''>Ilaya, Dapitan City</p>
                                <p style=''color:#94a3b8;font-size:11px;margin:8px 0 0;padding-top:8px;border-top:1px solid #e2e8f0;''>This is an automated message from the School Gate Attendance System.</p>
                            </td>
                        </tr>
                    </table>
                </td></tr>
            </table>
        </body>
        </html>', 'Sent', '2026-06-16 03:09:44.458521', '2026-06-16 03:09:38.548739');
INSERT INTO school_gate.email_logs (email_log_id, student_id, parent_email, notification_type, subject, message, send_status, sent_at, created_at) VALUES (36, 22, 'ana.garcia@email.com', 'Exit', 'Exit Notification - Ana Ramos', '
        <!DOCTYPE html>
        <html>
        <head><meta charset=''UTF-8''></head>
        <body style=''margin:0;padding:0;background:#f4f4f4;font-family:Arial,sans-serif;''>
            <table width=''100%'' cellpadding=''0'' cellspacing=''0'' style=''background:#f4f4f4;padding:20px;''>
                <tr><td align=''center''>
                    <table width=''600'' cellpadding=''0'' cellspacing=''0'' style=''background:#ffffff;border-radius:8px;overflow:hidden;box-shadow:0 2px 8px rgba(0,0,0,0.1);''>
                        <tr>
                            <td style=''background:#1e293b;padding:25px 20px;text-align:center;''>
                                <table cellpadding=''0'' cellspacing=''0'' style=''margin:0 auto;''>
                                    <tr>
                                        <td style=''vertical-align:middle;padding-right:12px;''>
                                            <img src=''cid:logo_img'' alt=''Ilaya National High School'' width=''40'' height=''40'' style=''border-radius:8px;''>
                                        </td>
                                        <td style=''vertical-align:middle;text-align:left;''>
                                            <h1 style=''color:#ffffff;margin:0;font-size:20px;''>Ilaya National High School</h1>
                                            <p style=''color:#93c5fd;margin:2px 0 0;font-size:12px;''>Gate Attendance Notification</p>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td style=''padding:30px 30px 20px;''>
                                <p style=''color:#334155;font-size:14px;line-height:1.6;margin:0 0 5px;''>Dear <strong>Ana Garcia</strong>,</p>
                                <p style=''color:#334155;font-size:14px;line-height:1.6;margin:0 0 15px;''>This is to notify you regarding the campus access of your child:</p>
                                <table width=''100%'' cellpadding=''8'' cellspacing=''0'' style=''background:#f8fafc;border-radius:6px;margin:15px 0;font-size:14px;border:1px solid #e2e8f0;''>
                                    <tr><td style=''color:#64748b;width:140px;border-bottom:1px solid #e2e8f0;''><strong>Student Name</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>Ana Ramos</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Student ID</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>2026-0010</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Grade & Section</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''> - </td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Date</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>June 16, 2026</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Time</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>03:10 AM</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Scan Type</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>EXIT</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Exit Type</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>Teacher Request</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Status</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;font-weight:600;''>Present</td></tr>
                                </table>
                                <p style=''color:#334155;font-size:14px;line-height:1.6;margin:15px 0 0;''>Thank you for your continued support.</p>
                            </td>
                        </tr>
                        <tr>
                            <td style=''background:#f8fafc;padding:20px;text-align:center;border-top:2px solid #e2e8f0;''>
                                <p style=''color:#64748b;font-size:13px;font-weight:600;margin:0;''>Ilaya National High School</p>
                                <p style=''color:#94a3b8;font-size:12px;margin:3px 0;''>Ilaya, Dapitan City</p>
                                <p style=''color:#94a3b8;font-size:11px;margin:8px 0 0;padding-top:8px;border-top:1px solid #e2e8f0;''>This is an automated message from the School Gate Attendance System.</p>
                            </td>
                        </tr>
                    </table>
                </td></tr>
            </table>
        </body>
        </html>', 'Sent', '2026-06-16 03:11:03.309566', '2026-06-16 03:10:57.309315');
INSERT INTO school_gate.email_logs (email_log_id, student_id, parent_email, notification_type, subject, message, send_status, sent_at, created_at) VALUES (37, 32, 'ervinpactol@gmail.com', 'Entry', 'Entry Notification - John Ervin Baje', '
        <!DOCTYPE html>
        <html>
        <head><meta charset=''UTF-8''></head>
        <body style=''margin:0;padding:0;background:#f4f4f4;font-family:Arial,sans-serif;''>
            <table width=''100%'' cellpadding=''0'' cellspacing=''0'' style=''background:#f4f4f4;padding:20px;''>
                <tr><td align=''center''>
                    <table width=''600'' cellpadding=''0'' cellspacing=''0'' style=''background:#ffffff;border-radius:8px;overflow:hidden;box-shadow:0 2px 8px rgba(0,0,0,0.1);''>
                        <tr>
                            <td style=''background:#1e293b;padding:25px 20px;text-align:center;''>
                                <table cellpadding=''0'' cellspacing=''0'' style=''margin:0 auto;''>
                                    <tr>
                                        <td style=''vertical-align:middle;padding-right:12px;''>
                                            <img src=''cid:logo_img'' alt=''Ilaya National High School'' width=''40'' height=''40'' style=''border-radius:8px;''>
                                        </td>
                                        <td style=''vertical-align:middle;text-align:left;''>
                                            <h1 style=''color:#ffffff;margin:0;font-size:20px;''>Ilaya National High School</h1>
                                            <p style=''color:#93c5fd;margin:2px 0 0;font-size:12px;''>Gate Attendance Notification</p>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td style=''padding:30px 30px 20px;''>
                                <p style=''color:#334155;font-size:14px;line-height:1.6;margin:0 0 5px;''>Dear <strong>Eren Grace Pactol</strong>,</p>
                                <p style=''color:#334155;font-size:14px;line-height:1.6;margin:0 0 15px;''>This is to notify you regarding the campus access of your child:</p>
                                <table width=''100%'' cellpadding=''8'' cellspacing=''0'' style=''background:#f8fafc;border-radius:6px;margin:15px 0;font-size:14px;border:1px solid #e2e8f0;''>
                                    <tr><td style=''color:#64748b;width:140px;border-bottom:1px solid #e2e8f0;''><strong>Student Name</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>John Ervin Baje</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Student ID</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>2026-0002</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Grade & Section</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>Grade 12 - CSS</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Date</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>June 17, 2026</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Time</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>11:09 AM</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Scan Type</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>ENTRY</td></tr>
                                    
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Status</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;font-weight:600;''>Late</td></tr>
                                </table>
                                <p style=''color:#334155;font-size:14px;line-height:1.6;margin:15px 0 0;''>Thank you for your continued support.</p>
                            </td>
                        </tr>
                        <tr>
                            <td style=''background:#f8fafc;padding:20px;text-align:center;border-top:2px solid #e2e8f0;''>
                                <p style=''color:#64748b;font-size:13px;font-weight:600;margin:0;''>Ilaya National High School</p>
                                <p style=''color:#94a3b8;font-size:12px;margin:3px 0;''>Ilaya, Dapitan City</p>
                                <p style=''color:#94a3b8;font-size:11px;margin:8px 0 0;padding-top:8px;border-top:1px solid #e2e8f0;''>This is an automated message from the School Gate Attendance System.</p>
                            </td>
                        </tr>
                    </table>
                </td></tr>
            </table>
        </body>
        </html>', 'Sent', '2026-06-17 11:10:04.842404', '2026-06-17 11:09:58.579782');
INSERT INTO school_gate.email_logs (email_log_id, student_id, parent_email, notification_type, subject, message, send_status, sent_at, created_at) VALUES (38, 32, 'ervinpactol@gmail.com', 'Late', 'Late Notification - John Ervin Baje', '
        <!DOCTYPE html>
        <html>
        <head><meta charset=''UTF-8''></head>
        <body style=''margin:0;padding:0;background:#f4f4f4;font-family:Arial,sans-serif;''>
            <table width=''100%'' cellpadding=''0'' cellspacing=''0'' style=''background:#f4f4f4;padding:20px;''>
                <tr><td align=''center''>
                    <table width=''600'' cellpadding=''0'' cellspacing=''0'' style=''background:#ffffff;border-radius:8px;overflow:hidden;box-shadow:0 2px 8px rgba(0,0,0,0.1);''>
                        <tr>
                            <td style=''background:#1e293b;padding:25px 20px;text-align:center;''>
                                <table cellpadding=''0'' cellspacing=''0'' style=''margin:0 auto;''>
                                    <tr>
                                        <td style=''vertical-align:middle;padding-right:12px;''>
                                            <img src=''cid:logo_img'' alt=''Ilaya National High School'' width=''40'' height=''40'' style=''border-radius:8px;''>
                                        </td>
                                        <td style=''vertical-align:middle;text-align:left;''>
                                            <h1 style=''color:#ffffff;margin:0;font-size:20px;''>Ilaya National High School</h1>
                                            <p style=''color:#93c5fd;margin:2px 0 0;font-size:12px;''>Gate Attendance Notification</p>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td style=''padding:30px 30px 20px;''>
                                <p style=''color:#334155;font-size:14px;line-height:1.6;margin:0 0 5px;''>Dear <strong>Eren Grace Pactol</strong>,</p>
                                <p style=''color:#334155;font-size:14px;line-height:1.6;margin:0 0 15px;''>This is to notify you regarding the campus access of your child:</p>
                                <table width=''100%'' cellpadding=''8'' cellspacing=''0'' style=''background:#f8fafc;border-radius:6px;margin:15px 0;font-size:14px;border:1px solid #e2e8f0;''>
                                    <tr><td style=''color:#64748b;width:140px;border-bottom:1px solid #e2e8f0;''><strong>Student Name</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>John Ervin Baje</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Student ID</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>2026-0002</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Grade & Section</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>Grade 12 - CSS</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Date</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>June 17, 2026</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Time</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>11:09 AM</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Scan Type</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>ENTRY</td></tr>
                                    
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Status</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;font-weight:600;''>Late</td></tr>
                                </table>
                                <p style=''color:#334155;font-size:14px;line-height:1.6;margin:15px 0 0;''>Thank you for your continued support.</p>
                            </td>
                        </tr>
                        <tr>
                            <td style=''background:#f8fafc;padding:20px;text-align:center;border-top:2px solid #e2e8f0;''>
                                <p style=''color:#64748b;font-size:13px;font-weight:600;margin:0;''>Ilaya National High School</p>
                                <p style=''color:#94a3b8;font-size:12px;margin:3px 0;''>Ilaya, Dapitan City</p>
                                <p style=''color:#94a3b8;font-size:11px;margin:8px 0 0;padding-top:8px;border-top:1px solid #e2e8f0;''>This is an automated message from the School Gate Attendance System.</p>
                            </td>
                        </tr>
                    </table>
                </td></tr>
            </table>
        </body>
        </html>', 'Sent', '2026-06-17 11:10:10.391967', '2026-06-17 11:10:04.852723');
INSERT INTO school_gate.email_logs (email_log_id, student_id, parent_email, notification_type, subject, message, send_status, sent_at, created_at) VALUES (39, 32, 'ervinpactol@gmail.com', 'Exit', 'Exit Notification - John Ervin Baje', '
        <!DOCTYPE html>
        <html>
        <head><meta charset=''UTF-8''></head>
        <body style=''margin:0;padding:0;background:#f4f4f4;font-family:Arial,sans-serif;''>
            <table width=''100%'' cellpadding=''0'' cellspacing=''0'' style=''background:#f4f4f4;padding:20px;''>
                <tr><td align=''center''>
                    <table width=''600'' cellpadding=''0'' cellspacing=''0'' style=''background:#ffffff;border-radius:8px;overflow:hidden;box-shadow:0 2px 8px rgba(0,0,0,0.1);''>
                        <tr>
                            <td style=''background:#1e293b;padding:25px 20px;text-align:center;''>
                                <table cellpadding=''0'' cellspacing=''0'' style=''margin:0 auto;''>
                                    <tr>
                                        <td style=''vertical-align:middle;padding-right:12px;''>
                                            <img src=''cid:logo_img'' alt=''Ilaya National High School'' width=''40'' height=''40'' style=''border-radius:8px;''>
                                        </td>
                                        <td style=''vertical-align:middle;text-align:left;''>
                                            <h1 style=''color:#ffffff;margin:0;font-size:20px;''>Ilaya National High School</h1>
                                            <p style=''color:#93c5fd;margin:2px 0 0;font-size:12px;''>Gate Attendance Notification</p>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td style=''padding:30px 30px 20px;''>
                                <p style=''color:#334155;font-size:14px;line-height:1.6;margin:0 0 5px;''>Dear <strong>Eren Grace Pactol</strong>,</p>
                                <p style=''color:#334155;font-size:14px;line-height:1.6;margin:0 0 15px;''>This is to notify you regarding the campus access of your child:</p>
                                <table width=''100%'' cellpadding=''8'' cellspacing=''0'' style=''background:#f8fafc;border-radius:6px;margin:15px 0;font-size:14px;border:1px solid #e2e8f0;''>
                                    <tr><td style=''color:#64748b;width:140px;border-bottom:1px solid #e2e8f0;''><strong>Student Name</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>John Ervin Baje</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Student ID</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>2026-0002</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Grade & Section</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>Grade 12 - CSS</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Date</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>June 17, 2026</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Time</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>11:27 AM</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Scan Type</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>EXIT</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Exit Type</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>Lunch Pass</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Status</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;font-weight:600;''>Late</td></tr>
                                </table>
                                <p style=''color:#334155;font-size:14px;line-height:1.6;margin:15px 0 0;''>Thank you for your continued support.</p>
                            </td>
                        </tr>
                        <tr>
                            <td style=''background:#f8fafc;padding:20px;text-align:center;border-top:2px solid #e2e8f0;''>
                                <p style=''color:#64748b;font-size:13px;font-weight:600;margin:0;''>Ilaya National High School</p>
                                <p style=''color:#94a3b8;font-size:12px;margin:3px 0;''>Ilaya, Dapitan City</p>
                                <p style=''color:#94a3b8;font-size:11px;margin:8px 0 0;padding-top:8px;border-top:1px solid #e2e8f0;''>This is an automated message from the School Gate Attendance System.</p>
                            </td>
                        </tr>
                    </table>
                </td></tr>
            </table>
        </body>
        </html>', 'Sent', '2026-06-17 11:27:11.155325', '2026-06-17 11:27:04.62929');
INSERT INTO school_gate.email_logs (email_log_id, student_id, parent_email, notification_type, subject, message, send_status, sent_at, created_at) VALUES (40, 19, 'luisa.torres@email.com', 'Entry', 'Entry Notification - Juan Cruz', '
        <!DOCTYPE html>
        <html>
        <head><meta charset=''UTF-8''></head>
        <body style=''margin:0;padding:0;background:#f4f4f4;font-family:Arial,sans-serif;''>
            <table width=''100%'' cellpadding=''0'' cellspacing=''0'' style=''background:#f4f4f4;padding:20px;''>
                <tr><td align=''center''>
                    <table width=''600'' cellpadding=''0'' cellspacing=''0'' style=''background:#ffffff;border-radius:8px;overflow:hidden;box-shadow:0 2px 8px rgba(0,0,0,0.1);''>
                        <tr>
                            <td style=''background:#1e293b;padding:25px 20px;text-align:center;''>
                                <table cellpadding=''0'' cellspacing=''0'' style=''margin:0 auto;''>
                                    <tr>
                                        <td style=''vertical-align:middle;padding-right:12px;''>
                                            <img src=''cid:logo_img'' alt=''Ilaya National High School'' width=''40'' height=''40'' style=''border-radius:8px;''>
                                        </td>
                                        <td style=''vertical-align:middle;text-align:left;''>
                                            <h1 style=''color:#ffffff;margin:0;font-size:20px;''>Ilaya National High School</h1>
                                            <p style=''color:#93c5fd;margin:2px 0 0;font-size:12px;''>Gate Attendance Notification</p>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td style=''padding:30px 30px 20px;''>
                                <p style=''color:#334155;font-size:14px;line-height:1.6;margin:0 0 5px;''>Dear <strong>Luisa Torres</strong>,</p>
                                <p style=''color:#334155;font-size:14px;line-height:1.6;margin:0 0 15px;''>This is to notify you regarding the campus access of your child:</p>
                                <table width=''100%'' cellpadding=''8'' cellspacing=''0'' style=''background:#f8fafc;border-radius:6px;margin:15px 0;font-size:14px;border:1px solid #e2e8f0;''>
                                    <tr><td style=''color:#64748b;width:140px;border-bottom:1px solid #e2e8f0;''><strong>Student Name</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>Juan Cruz</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Student ID</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>2026-0007</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Grade & Section</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>Grade 11 - BPP</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Date</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>June 17, 2026</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Time</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>12:07 PM</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Scan Type</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>ENTRY</td></tr>
                                    
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Status</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;font-weight:600;''>Late</td></tr>
                                </table>
                                <p style=''color:#334155;font-size:14px;line-height:1.6;margin:15px 0 0;''>Thank you for your continued support.</p>
                            </td>
                        </tr>
                        <tr>
                            <td style=''background:#f8fafc;padding:20px;text-align:center;border-top:2px solid #e2e8f0;''>
                                <p style=''color:#64748b;font-size:13px;font-weight:600;margin:0;''>Ilaya National High School</p>
                                <p style=''color:#94a3b8;font-size:12px;margin:3px 0;''>Ilaya, Dapitan City</p>
                                <p style=''color:#94a3b8;font-size:11px;margin:8px 0 0;padding-top:8px;border-top:1px solid #e2e8f0;''>This is an automated message from the School Gate Attendance System.</p>
                            </td>
                        </tr>
                    </table>
                </td></tr>
            </table>
        </body>
        </html>', 'Sent', '2026-06-17 12:07:14.697301', '2026-06-17 12:07:07.291936');
INSERT INTO school_gate.email_logs (email_log_id, student_id, parent_email, notification_type, subject, message, send_status, sent_at, created_at) VALUES (41, 19, 'luisa.torres@email.com', 'Late', 'Late Notification - Juan Cruz', '
        <!DOCTYPE html>
        <html>
        <head><meta charset=''UTF-8''></head>
        <body style=''margin:0;padding:0;background:#f4f4f4;font-family:Arial,sans-serif;''>
            <table width=''100%'' cellpadding=''0'' cellspacing=''0'' style=''background:#f4f4f4;padding:20px;''>
                <tr><td align=''center''>
                    <table width=''600'' cellpadding=''0'' cellspacing=''0'' style=''background:#ffffff;border-radius:8px;overflow:hidden;box-shadow:0 2px 8px rgba(0,0,0,0.1);''>
                        <tr>
                            <td style=''background:#1e293b;padding:25px 20px;text-align:center;''>
                                <table cellpadding=''0'' cellspacing=''0'' style=''margin:0 auto;''>
                                    <tr>
                                        <td style=''vertical-align:middle;padding-right:12px;''>
                                            <img src=''cid:logo_img'' alt=''Ilaya National High School'' width=''40'' height=''40'' style=''border-radius:8px;''>
                                        </td>
                                        <td style=''vertical-align:middle;text-align:left;''>
                                            <h1 style=''color:#ffffff;margin:0;font-size:20px;''>Ilaya National High School</h1>
                                            <p style=''color:#93c5fd;margin:2px 0 0;font-size:12px;''>Gate Attendance Notification</p>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td style=''padding:30px 30px 20px;''>
                                <p style=''color:#334155;font-size:14px;line-height:1.6;margin:0 0 5px;''>Dear <strong>Luisa Torres</strong>,</p>
                                <p style=''color:#334155;font-size:14px;line-height:1.6;margin:0 0 15px;''>This is to notify you regarding the campus access of your child:</p>
                                <table width=''100%'' cellpadding=''8'' cellspacing=''0'' style=''background:#f8fafc;border-radius:6px;margin:15px 0;font-size:14px;border:1px solid #e2e8f0;''>
                                    <tr><td style=''color:#64748b;width:140px;border-bottom:1px solid #e2e8f0;''><strong>Student Name</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>Juan Cruz</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Student ID</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>2026-0007</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Grade & Section</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>Grade 11 - BPP</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Date</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>June 17, 2026</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Time</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>12:07 PM</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Scan Type</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>ENTRY</td></tr>
                                    
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Status</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;font-weight:600;''>Late</td></tr>
                                </table>
                                <p style=''color:#334155;font-size:14px;line-height:1.6;margin:15px 0 0;''>Thank you for your continued support.</p>
                            </td>
                        </tr>
                        <tr>
                            <td style=''background:#f8fafc;padding:20px;text-align:center;border-top:2px solid #e2e8f0;''>
                                <p style=''color:#64748b;font-size:13px;font-weight:600;margin:0;''>Ilaya National High School</p>
                                <p style=''color:#94a3b8;font-size:12px;margin:3px 0;''>Ilaya, Dapitan City</p>
                                <p style=''color:#94a3b8;font-size:11px;margin:8px 0 0;padding-top:8px;border-top:1px solid #e2e8f0;''>This is an automated message from the School Gate Attendance System.</p>
                            </td>
                        </tr>
                    </table>
                </td></tr>
            </table>
        </body>
        </html>', 'Sent', '2026-06-17 12:07:21.323652', '2026-06-17 12:07:14.710757');
INSERT INTO school_gate.email_logs (email_log_id, student_id, parent_email, notification_type, subject, message, send_status, sent_at, created_at) VALUES (42, 21, 'luisa.torres@email.com', 'Entry', 'Entry Notification - Jose Garcia', '
        <!DOCTYPE html>
        <html>
        <head><meta charset=''UTF-8''></head>
        <body style=''margin:0;padding:0;background:#f4f4f4;font-family:Arial,sans-serif;''>
            <table width=''100%'' cellpadding=''0'' cellspacing=''0'' style=''background:#f4f4f4;padding:20px;''>
                <tr><td align=''center''>
                    <table width=''600'' cellpadding=''0'' cellspacing=''0'' style=''background:#ffffff;border-radius:8px;overflow:hidden;box-shadow:0 2px 8px rgba(0,0,0,0.1);''>
                        <tr>
                            <td style=''background:#1e293b;padding:25px 20px;text-align:center;''>
                                <table cellpadding=''0'' cellspacing=''0'' style=''margin:0 auto;''>
                                    <tr>
                                        <td style=''vertical-align:middle;padding-right:12px;''>
                                            <img src=''cid:logo_img'' alt=''Ilaya National High School'' width=''40'' height=''40'' style=''border-radius:8px;''>
                                        </td>
                                        <td style=''vertical-align:middle;text-align:left;''>
                                            <h1 style=''color:#ffffff;margin:0;font-size:20px;''>Ilaya National High School</h1>
                                            <p style=''color:#93c5fd;margin:2px 0 0;font-size:12px;''>Gate Attendance Notification</p>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td style=''padding:30px 30px 20px;''>
                                <p style=''color:#334155;font-size:14px;line-height:1.6;margin:0 0 5px;''>Dear <strong>Luisa Torres</strong>,</p>
                                <p style=''color:#334155;font-size:14px;line-height:1.6;margin:0 0 15px;''>This is to notify you regarding the campus access of your child:</p>
                                <table width=''100%'' cellpadding=''8'' cellspacing=''0'' style=''background:#f8fafc;border-radius:6px;margin:15px 0;font-size:14px;border:1px solid #e2e8f0;''>
                                    <tr><td style=''color:#64748b;width:140px;border-bottom:1px solid #e2e8f0;''><strong>Student Name</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>Jose Garcia</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Student ID</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>2026-0009</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Grade & Section</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>Grade 11 - STEM</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Date</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>June 17, 2026</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Time</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>12:07 PM</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Scan Type</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>ENTRY</td></tr>
                                    
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Status</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;font-weight:600;''>Late</td></tr>
                                </table>
                                <p style=''color:#334155;font-size:14px;line-height:1.6;margin:15px 0 0;''>Thank you for your continued support.</p>
                            </td>
                        </tr>
                        <tr>
                            <td style=''background:#f8fafc;padding:20px;text-align:center;border-top:2px solid #e2e8f0;''>
                                <p style=''color:#64748b;font-size:13px;font-weight:600;margin:0;''>Ilaya National High School</p>
                                <p style=''color:#94a3b8;font-size:12px;margin:3px 0;''>Ilaya, Dapitan City</p>
                                <p style=''color:#94a3b8;font-size:11px;margin:8px 0 0;padding-top:8px;border-top:1px solid #e2e8f0;''>This is an automated message from the School Gate Attendance System.</p>
                            </td>
                        </tr>
                    </table>
                </td></tr>
            </table>
        </body>
        </html>', 'Sent', '2026-06-17 12:08:01.980176', '2026-06-17 12:07:55.454343');
INSERT INTO school_gate.email_logs (email_log_id, student_id, parent_email, notification_type, subject, message, send_status, sent_at, created_at) VALUES (43, 21, 'luisa.torres@email.com', 'Late', 'Late Notification - Jose Garcia', '
        <!DOCTYPE html>
        <html>
        <head><meta charset=''UTF-8''></head>
        <body style=''margin:0;padding:0;background:#f4f4f4;font-family:Arial,sans-serif;''>
            <table width=''100%'' cellpadding=''0'' cellspacing=''0'' style=''background:#f4f4f4;padding:20px;''>
                <tr><td align=''center''>
                    <table width=''600'' cellpadding=''0'' cellspacing=''0'' style=''background:#ffffff;border-radius:8px;overflow:hidden;box-shadow:0 2px 8px rgba(0,0,0,0.1);''>
                        <tr>
                            <td style=''background:#1e293b;padding:25px 20px;text-align:center;''>
                                <table cellpadding=''0'' cellspacing=''0'' style=''margin:0 auto;''>
                                    <tr>
                                        <td style=''vertical-align:middle;padding-right:12px;''>
                                            <img src=''cid:logo_img'' alt=''Ilaya National High School'' width=''40'' height=''40'' style=''border-radius:8px;''>
                                        </td>
                                        <td style=''vertical-align:middle;text-align:left;''>
                                            <h1 style=''color:#ffffff;margin:0;font-size:20px;''>Ilaya National High School</h1>
                                            <p style=''color:#93c5fd;margin:2px 0 0;font-size:12px;''>Gate Attendance Notification</p>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td style=''padding:30px 30px 20px;''>
                                <p style=''color:#334155;font-size:14px;line-height:1.6;margin:0 0 5px;''>Dear <strong>Luisa Torres</strong>,</p>
                                <p style=''color:#334155;font-size:14px;line-height:1.6;margin:0 0 15px;''>This is to notify you regarding the campus access of your child:</p>
                                <table width=''100%'' cellpadding=''8'' cellspacing=''0'' style=''background:#f8fafc;border-radius:6px;margin:15px 0;font-size:14px;border:1px solid #e2e8f0;''>
                                    <tr><td style=''color:#64748b;width:140px;border-bottom:1px solid #e2e8f0;''><strong>Student Name</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>Jose Garcia</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Student ID</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>2026-0009</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Grade & Section</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>Grade 11 - STEM</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Date</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>June 17, 2026</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Time</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>12:07 PM</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Scan Type</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>ENTRY</td></tr>
                                    
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Status</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;font-weight:600;''>Late</td></tr>
                                </table>
                                <p style=''color:#334155;font-size:14px;line-height:1.6;margin:15px 0 0;''>Thank you for your continued support.</p>
                            </td>
                        </tr>
                        <tr>
                            <td style=''background:#f8fafc;padding:20px;text-align:center;border-top:2px solid #e2e8f0;''>
                                <p style=''color:#64748b;font-size:13px;font-weight:600;margin:0;''>Ilaya National High School</p>
                                <p style=''color:#94a3b8;font-size:12px;margin:3px 0;''>Ilaya, Dapitan City</p>
                                <p style=''color:#94a3b8;font-size:11px;margin:8px 0 0;padding-top:8px;border-top:1px solid #e2e8f0;''>This is an automated message from the School Gate Attendance System.</p>
                            </td>
                        </tr>
                    </table>
                </td></tr>
            </table>
        </body>
        </html>', 'Sent', '2026-06-17 12:08:09.147768', '2026-06-17 12:08:01.994578');
INSERT INTO school_gate.email_logs (email_log_id, student_id, parent_email, notification_type, subject, message, send_status, sent_at, created_at) VALUES (44, 22, 'ana.garcia@email.com', 'Entry', 'Entry Notification - Ana Ramos', '
        <!DOCTYPE html>
        <html>
        <head><meta charset=''UTF-8''></head>
        <body style=''margin:0;padding:0;background:#f4f4f4;font-family:Arial,sans-serif;''>
            <table width=''100%'' cellpadding=''0'' cellspacing=''0'' style=''background:#f4f4f4;padding:20px;''>
                <tr><td align=''center''>
                    <table width=''600'' cellpadding=''0'' cellspacing=''0'' style=''background:#ffffff;border-radius:8px;overflow:hidden;box-shadow:0 2px 8px rgba(0,0,0,0.1);''>
                        <tr>
                            <td style=''background:#1e293b;padding:25px 20px;text-align:center;''>
                                <table cellpadding=''0'' cellspacing=''0'' style=''margin:0 auto;''>
                                    <tr>
                                        <td style=''vertical-align:middle;padding-right:12px;''>
                                            <img src=''cid:logo_img'' alt=''Ilaya National High School'' width=''40'' height=''40'' style=''border-radius:8px;''>
                                        </td>
                                        <td style=''vertical-align:middle;text-align:left;''>
                                            <h1 style=''color:#ffffff;margin:0;font-size:20px;''>Ilaya National High School</h1>
                                            <p style=''color:#93c5fd;margin:2px 0 0;font-size:12px;''>Gate Attendance Notification</p>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td style=''padding:30px 30px 20px;''>
                                <p style=''color:#334155;font-size:14px;line-height:1.6;margin:0 0 5px;''>Dear <strong>Ana Garcia</strong>,</p>
                                <p style=''color:#334155;font-size:14px;line-height:1.6;margin:0 0 15px;''>This is to notify you regarding the campus access of your child:</p>
                                <table width=''100%'' cellpadding=''8'' cellspacing=''0'' style=''background:#f8fafc;border-radius:6px;margin:15px 0;font-size:14px;border:1px solid #e2e8f0;''>
                                    <tr><td style=''color:#64748b;width:140px;border-bottom:1px solid #e2e8f0;''><strong>Student Name</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>Ana Ramos</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Student ID</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>2026-0010</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Grade & Section</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''> - </td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Date</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>June 17, 2026</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Time</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>12:08 PM</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Scan Type</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>ENTRY</td></tr>
                                    
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Status</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;font-weight:600;''>Late</td></tr>
                                </table>
                                <p style=''color:#334155;font-size:14px;line-height:1.6;margin:15px 0 0;''>Thank you for your continued support.</p>
                            </td>
                        </tr>
                        <tr>
                            <td style=''background:#f8fafc;padding:20px;text-align:center;border-top:2px solid #e2e8f0;''>
                                <p style=''color:#64748b;font-size:13px;font-weight:600;margin:0;''>Ilaya National High School</p>
                                <p style=''color:#94a3b8;font-size:12px;margin:3px 0;''>Ilaya, Dapitan City</p>
                                <p style=''color:#94a3b8;font-size:11px;margin:8px 0 0;padding-top:8px;border-top:1px solid #e2e8f0;''>This is an automated message from the School Gate Attendance System.</p>
                            </td>
                        </tr>
                    </table>
                </td></tr>
            </table>
        </body>
        </html>', 'Sent', '2026-06-17 12:08:27.475612', '2026-06-17 12:08:21.21969');
INSERT INTO school_gate.email_logs (email_log_id, student_id, parent_email, notification_type, subject, message, send_status, sent_at, created_at) VALUES (45, 22, 'ana.garcia@email.com', 'Late', 'Late Notification - Ana Ramos', '
        <!DOCTYPE html>
        <html>
        <head><meta charset=''UTF-8''></head>
        <body style=''margin:0;padding:0;background:#f4f4f4;font-family:Arial,sans-serif;''>
            <table width=''100%'' cellpadding=''0'' cellspacing=''0'' style=''background:#f4f4f4;padding:20px;''>
                <tr><td align=''center''>
                    <table width=''600'' cellpadding=''0'' cellspacing=''0'' style=''background:#ffffff;border-radius:8px;overflow:hidden;box-shadow:0 2px 8px rgba(0,0,0,0.1);''>
                        <tr>
                            <td style=''background:#1e293b;padding:25px 20px;text-align:center;''>
                                <table cellpadding=''0'' cellspacing=''0'' style=''margin:0 auto;''>
                                    <tr>
                                        <td style=''vertical-align:middle;padding-right:12px;''>
                                            <img src=''cid:logo_img'' alt=''Ilaya National High School'' width=''40'' height=''40'' style=''border-radius:8px;''>
                                        </td>
                                        <td style=''vertical-align:middle;text-align:left;''>
                                            <h1 style=''color:#ffffff;margin:0;font-size:20px;''>Ilaya National High School</h1>
                                            <p style=''color:#93c5fd;margin:2px 0 0;font-size:12px;''>Gate Attendance Notification</p>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td style=''padding:30px 30px 20px;''>
                                <p style=''color:#334155;font-size:14px;line-height:1.6;margin:0 0 5px;''>Dear <strong>Ana Garcia</strong>,</p>
                                <p style=''color:#334155;font-size:14px;line-height:1.6;margin:0 0 15px;''>This is to notify you regarding the campus access of your child:</p>
                                <table width=''100%'' cellpadding=''8'' cellspacing=''0'' style=''background:#f8fafc;border-radius:6px;margin:15px 0;font-size:14px;border:1px solid #e2e8f0;''>
                                    <tr><td style=''color:#64748b;width:140px;border-bottom:1px solid #e2e8f0;''><strong>Student Name</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>Ana Ramos</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Student ID</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>2026-0010</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Grade & Section</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''> - </td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Date</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>June 17, 2026</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Time</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>12:08 PM</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Scan Type</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>ENTRY</td></tr>
                                    
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Status</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;font-weight:600;''>Late</td></tr>
                                </table>
                                <p style=''color:#334155;font-size:14px;line-height:1.6;margin:15px 0 0;''>Thank you for your continued support.</p>
                            </td>
                        </tr>
                        <tr>
                            <td style=''background:#f8fafc;padding:20px;text-align:center;border-top:2px solid #e2e8f0;''>
                                <p style=''color:#64748b;font-size:13px;font-weight:600;margin:0;''>Ilaya National High School</p>
                                <p style=''color:#94a3b8;font-size:12px;margin:3px 0;''>Ilaya, Dapitan City</p>
                                <p style=''color:#94a3b8;font-size:11px;margin:8px 0 0;padding-top:8px;border-top:1px solid #e2e8f0;''>This is an automated message from the School Gate Attendance System.</p>
                            </td>
                        </tr>
                    </table>
                </td></tr>
            </table>
        </body>
        </html>', 'Sent', '2026-06-17 12:08:33.952276', '2026-06-17 12:08:27.494483');
INSERT INTO school_gate.email_logs (email_log_id, student_id, parent_email, notification_type, subject, message, send_status, sent_at, created_at) VALUES (46, 23, 'jose.santos@email.com', 'Entry', 'Entry Notification - Pedro Torres', '
        <!DOCTYPE html>
        <html>
        <head><meta charset=''UTF-8''></head>
        <body style=''margin:0;padding:0;background:#f4f4f4;font-family:Arial,sans-serif;''>
            <table width=''100%'' cellpadding=''0'' cellspacing=''0'' style=''background:#f4f4f4;padding:20px;''>
                <tr><td align=''center''>
                    <table width=''600'' cellpadding=''0'' cellspacing=''0'' style=''background:#ffffff;border-radius:8px;overflow:hidden;box-shadow:0 2px 8px rgba(0,0,0,0.1);''>
                        <tr>
                            <td style=''background:#1e293b;padding:25px 20px;text-align:center;''>
                                <table cellpadding=''0'' cellspacing=''0'' style=''margin:0 auto;''>
                                    <tr>
                                        <td style=''vertical-align:middle;padding-right:12px;''>
                                            <img src=''cid:logo_img'' alt=''Ilaya National High School'' width=''40'' height=''40'' style=''border-radius:8px;''>
                                        </td>
                                        <td style=''vertical-align:middle;text-align:left;''>
                                            <h1 style=''color:#ffffff;margin:0;font-size:20px;''>Ilaya National High School</h1>
                                            <p style=''color:#93c5fd;margin:2px 0 0;font-size:12px;''>Gate Attendance Notification</p>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td style=''padding:30px 30px 20px;''>
                                <p style=''color:#334155;font-size:14px;line-height:1.6;margin:0 0 5px;''>Dear <strong>Jose Santos</strong>,</p>
                                <p style=''color:#334155;font-size:14px;line-height:1.6;margin:0 0 15px;''>This is to notify you regarding the campus access of your child:</p>
                                <table width=''100%'' cellpadding=''8'' cellspacing=''0'' style=''background:#f8fafc;border-radius:6px;margin:15px 0;font-size:14px;border:1px solid #e2e8f0;''>
                                    <tr><td style=''color:#64748b;width:140px;border-bottom:1px solid #e2e8f0;''><strong>Student Name</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>Pedro Torres</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Student ID</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>2026-0011</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Grade & Section</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''> - </td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Date</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>June 17, 2026</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Time</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>12:08 PM</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Scan Type</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>ENTRY</td></tr>
                                    
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Status</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;font-weight:600;''>Late</td></tr>
                                </table>
                                <p style=''color:#334155;font-size:14px;line-height:1.6;margin:15px 0 0;''>Thank you for your continued support.</p>
                            </td>
                        </tr>
                        <tr>
                            <td style=''background:#f8fafc;padding:20px;text-align:center;border-top:2px solid #e2e8f0;''>
                                <p style=''color:#64748b;font-size:13px;font-weight:600;margin:0;''>Ilaya National High School</p>
                                <p style=''color:#94a3b8;font-size:12px;margin:3px 0;''>Ilaya, Dapitan City</p>
                                <p style=''color:#94a3b8;font-size:11px;margin:8px 0 0;padding-top:8px;border-top:1px solid #e2e8f0;''>This is an automated message from the School Gate Attendance System.</p>
                            </td>
                        </tr>
                    </table>
                </td></tr>
            </table>
        </body>
        </html>', 'Sent', '2026-06-17 12:08:46.935883', '2026-06-17 12:08:40.3806');
INSERT INTO school_gate.email_logs (email_log_id, student_id, parent_email, notification_type, subject, message, send_status, sent_at, created_at) VALUES (47, 23, 'jose.santos@email.com', 'Late', 'Late Notification - Pedro Torres', '
        <!DOCTYPE html>
        <html>
        <head><meta charset=''UTF-8''></head>
        <body style=''margin:0;padding:0;background:#f4f4f4;font-family:Arial,sans-serif;''>
            <table width=''100%'' cellpadding=''0'' cellspacing=''0'' style=''background:#f4f4f4;padding:20px;''>
                <tr><td align=''center''>
                    <table width=''600'' cellpadding=''0'' cellspacing=''0'' style=''background:#ffffff;border-radius:8px;overflow:hidden;box-shadow:0 2px 8px rgba(0,0,0,0.1);''>
                        <tr>
                            <td style=''background:#1e293b;padding:25px 20px;text-align:center;''>
                                <table cellpadding=''0'' cellspacing=''0'' style=''margin:0 auto;''>
                                    <tr>
                                        <td style=''vertical-align:middle;padding-right:12px;''>
                                            <img src=''cid:logo_img'' alt=''Ilaya National High School'' width=''40'' height=''40'' style=''border-radius:8px;''>
                                        </td>
                                        <td style=''vertical-align:middle;text-align:left;''>
                                            <h1 style=''color:#ffffff;margin:0;font-size:20px;''>Ilaya National High School</h1>
                                            <p style=''color:#93c5fd;margin:2px 0 0;font-size:12px;''>Gate Attendance Notification</p>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td style=''padding:30px 30px 20px;''>
                                <p style=''color:#334155;font-size:14px;line-height:1.6;margin:0 0 5px;''>Dear <strong>Jose Santos</strong>,</p>
                                <p style=''color:#334155;font-size:14px;line-height:1.6;margin:0 0 15px;''>This is to notify you regarding the campus access of your child:</p>
                                <table width=''100%'' cellpadding=''8'' cellspacing=''0'' style=''background:#f8fafc;border-radius:6px;margin:15px 0;font-size:14px;border:1px solid #e2e8f0;''>
                                    <tr><td style=''color:#64748b;width:140px;border-bottom:1px solid #e2e8f0;''><strong>Student Name</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>Pedro Torres</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Student ID</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>2026-0011</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Grade & Section</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''> - </td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Date</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>June 17, 2026</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Time</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>12:08 PM</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Scan Type</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>ENTRY</td></tr>
                                    
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Status</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;font-weight:600;''>Late</td></tr>
                                </table>
                                <p style=''color:#334155;font-size:14px;line-height:1.6;margin:15px 0 0;''>Thank you for your continued support.</p>
                            </td>
                        </tr>
                        <tr>
                            <td style=''background:#f8fafc;padding:20px;text-align:center;border-top:2px solid #e2e8f0;''>
                                <p style=''color:#64748b;font-size:13px;font-weight:600;margin:0;''>Ilaya National High School</p>
                                <p style=''color:#94a3b8;font-size:12px;margin:3px 0;''>Ilaya, Dapitan City</p>
                                <p style=''color:#94a3b8;font-size:11px;margin:8px 0 0;padding-top:8px;border-top:1px solid #e2e8f0;''>This is an automated message from the School Gate Attendance System.</p>
                            </td>
                        </tr>
                    </table>
                </td></tr>
            </table>
        </body>
        </html>', 'Sent', '2026-06-17 12:08:53.480118', '2026-06-17 12:08:46.953477');
INSERT INTO school_gate.email_logs (email_log_id, student_id, parent_email, notification_type, subject, message, send_status, sent_at, created_at) VALUES (48, 19, 'luisa.torres@email.com', 'Exit', 'Exit Notification - Juan Cruz', '
        <!DOCTYPE html>
        <html>
        <head><meta charset=''UTF-8''></head>
        <body style=''margin:0;padding:0;background:#f4f4f4;font-family:Arial,sans-serif;''>
            <table width=''100%'' cellpadding=''0'' cellspacing=''0'' style=''background:#f4f4f4;padding:20px;''>
                <tr><td align=''center''>
                    <table width=''600'' cellpadding=''0'' cellspacing=''0'' style=''background:#ffffff;border-radius:8px;overflow:hidden;box-shadow:0 2px 8px rgba(0,0,0,0.1);''>
                        <tr>
                            <td style=''background:#1e293b;padding:25px 20px;text-align:center;''>
                                <table cellpadding=''0'' cellspacing=''0'' style=''margin:0 auto;''>
                                    <tr>
                                        <td style=''vertical-align:middle;padding-right:12px;''>
                                            <img src=''cid:logo_img'' alt=''Ilaya National High School'' width=''40'' height=''40'' style=''border-radius:8px;''>
                                        </td>
                                        <td style=''vertical-align:middle;text-align:left;''>
                                            <h1 style=''color:#ffffff;margin:0;font-size:20px;''>Ilaya National High School</h1>
                                            <p style=''color:#93c5fd;margin:2px 0 0;font-size:12px;''>Gate Attendance Notification</p>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td style=''padding:30px 30px 20px;''>
                                <p style=''color:#334155;font-size:14px;line-height:1.6;margin:0 0 5px;''>Dear <strong>Luisa Torres</strong>,</p>
                                <p style=''color:#334155;font-size:14px;line-height:1.6;margin:0 0 15px;''>This is to notify you regarding the campus access of your child:</p>
                                <table width=''100%'' cellpadding=''8'' cellspacing=''0'' style=''background:#f8fafc;border-radius:6px;margin:15px 0;font-size:14px;border:1px solid #e2e8f0;''>
                                    <tr><td style=''color:#64748b;width:140px;border-bottom:1px solid #e2e8f0;''><strong>Student Name</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>Juan Cruz</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Student ID</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>2026-0007</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Grade & Section</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>Grade 11 - BPP</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Date</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>June 17, 2026</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Time</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>02:34 PM</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Scan Type</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>EXIT</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Exit Type</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>Lunch Pass</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Status</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;font-weight:600;''>Late</td></tr>
                                </table>
                                <p style=''color:#334155;font-size:14px;line-height:1.6;margin:15px 0 0;''>Thank you for your continued support.</p>
                            </td>
                        </tr>
                        <tr>
                            <td style=''background:#f8fafc;padding:20px;text-align:center;border-top:2px solid #e2e8f0;''>
                                <p style=''color:#64748b;font-size:13px;font-weight:600;margin:0;''>Ilaya National High School</p>
                                <p style=''color:#94a3b8;font-size:12px;margin:3px 0;''>Ilaya, Dapitan City</p>
                                <p style=''color:#94a3b8;font-size:11px;margin:8px 0 0;padding-top:8px;border-top:1px solid #e2e8f0;''>This is an automated message from the School Gate Attendance System.</p>
                            </td>
                        </tr>
                    </table>
                </td></tr>
            </table>
        </body>
        </html>', 'Sent', '2026-06-17 14:34:35.399941', '2026-06-17 14:34:29.053052');
INSERT INTO school_gate.email_logs (email_log_id, student_id, parent_email, notification_type, subject, message, send_status, sent_at, created_at) VALUES (49, 21, 'luisa.torres@email.com', 'Exit', 'Exit Notification - Jose Garcia', '
        <!DOCTYPE html>
        <html>
        <head><meta charset=''UTF-8''></head>
        <body style=''margin:0;padding:0;background:#f4f4f4;font-family:Arial,sans-serif;''>
            <table width=''100%'' cellpadding=''0'' cellspacing=''0'' style=''background:#f4f4f4;padding:20px;''>
                <tr><td align=''center''>
                    <table width=''600'' cellpadding=''0'' cellspacing=''0'' style=''background:#ffffff;border-radius:8px;overflow:hidden;box-shadow:0 2px 8px rgba(0,0,0,0.1);''>
                        <tr>
                            <td style=''background:#1e293b;padding:25px 20px;text-align:center;''>
                                <table cellpadding=''0'' cellspacing=''0'' style=''margin:0 auto;''>
                                    <tr>
                                        <td style=''vertical-align:middle;padding-right:12px;''>
                                            <img src=''cid:logo_img'' alt=''Ilaya National High School'' width=''40'' height=''40'' style=''border-radius:8px;''>
                                        </td>
                                        <td style=''vertical-align:middle;text-align:left;''>
                                            <h1 style=''color:#ffffff;margin:0;font-size:20px;''>Ilaya National High School</h1>
                                            <p style=''color:#93c5fd;margin:2px 0 0;font-size:12px;''>Gate Attendance Notification</p>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td style=''padding:30px 30px 20px;''>
                                <p style=''color:#334155;font-size:14px;line-height:1.6;margin:0 0 5px;''>Dear <strong>Luisa Torres</strong>,</p>
                                <p style=''color:#334155;font-size:14px;line-height:1.6;margin:0 0 15px;''>This is to notify you regarding the campus access of your child:</p>
                                <table width=''100%'' cellpadding=''8'' cellspacing=''0'' style=''background:#f8fafc;border-radius:6px;margin:15px 0;font-size:14px;border:1px solid #e2e8f0;''>
                                    <tr><td style=''color:#64748b;width:140px;border-bottom:1px solid #e2e8f0;''><strong>Student Name</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>Jose Garcia</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Student ID</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>2026-0009</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Grade & Section</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>Grade 11 - STEM</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Date</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>June 17, 2026</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Time</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>02:34 PM</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Scan Type</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>EXIT</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Exit Type</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>Lunch Pass</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Status</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;font-weight:600;''>Late</td></tr>
                                </table>
                                <p style=''color:#334155;font-size:14px;line-height:1.6;margin:15px 0 0;''>Thank you for your continued support.</p>
                            </td>
                        </tr>
                        <tr>
                            <td style=''background:#f8fafc;padding:20px;text-align:center;border-top:2px solid #e2e8f0;''>
                                <p style=''color:#64748b;font-size:13px;font-weight:600;margin:0;''>Ilaya National High School</p>
                                <p style=''color:#94a3b8;font-size:12px;margin:3px 0;''>Ilaya, Dapitan City</p>
                                <p style=''color:#94a3b8;font-size:11px;margin:8px 0 0;padding-top:8px;border-top:1px solid #e2e8f0;''>This is an automated message from the School Gate Attendance System.</p>
                            </td>
                        </tr>
                    </table>
                </td></tr>
            </table>
        </body>
        </html>', 'Sent', '2026-06-17 14:34:56.551112', '2026-06-17 14:34:50.266564');
INSERT INTO school_gate.email_logs (email_log_id, student_id, parent_email, notification_type, subject, message, send_status, sent_at, created_at) VALUES (50, 23, 'jose.santos@email.com', 'Exit', 'Exit Notification - Pedro Torres', '
        <!DOCTYPE html>
        <html>
        <head><meta charset=''UTF-8''></head>
        <body style=''margin:0;padding:0;background:#f4f4f4;font-family:Arial,sans-serif;''>
            <table width=''100%'' cellpadding=''0'' cellspacing=''0'' style=''background:#f4f4f4;padding:20px;''>
                <tr><td align=''center''>
                    <table width=''600'' cellpadding=''0'' cellspacing=''0'' style=''background:#ffffff;border-radius:8px;overflow:hidden;box-shadow:0 2px 8px rgba(0,0,0,0.1);''>
                        <tr>
                            <td style=''background:#1e293b;padding:25px 20px;text-align:center;''>
                                <table cellpadding=''0'' cellspacing=''0'' style=''margin:0 auto;''>
                                    <tr>
                                        <td style=''vertical-align:middle;padding-right:12px;''>
                                            <img src=''cid:logo_img'' alt=''Ilaya National High School'' width=''40'' height=''40'' style=''border-radius:8px;''>
                                        </td>
                                        <td style=''vertical-align:middle;text-align:left;''>
                                            <h1 style=''color:#ffffff;margin:0;font-size:20px;''>Ilaya National High School</h1>
                                            <p style=''color:#93c5fd;margin:2px 0 0;font-size:12px;''>Gate Attendance Notification</p>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td style=''padding:30px 30px 20px;''>
                                <p style=''color:#334155;font-size:14px;line-height:1.6;margin:0 0 5px;''>Dear <strong>Jose Santos</strong>,</p>
                                <p style=''color:#334155;font-size:14px;line-height:1.6;margin:0 0 15px;''>This is to notify you regarding the campus access of your child:</p>
                                <table width=''100%'' cellpadding=''8'' cellspacing=''0'' style=''background:#f8fafc;border-radius:6px;margin:15px 0;font-size:14px;border:1px solid #e2e8f0;''>
                                    <tr><td style=''color:#64748b;width:140px;border-bottom:1px solid #e2e8f0;''><strong>Student Name</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>Pedro Torres</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Student ID</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>2026-0011</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Grade & Section</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''> - </td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Date</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>June 17, 2026</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Time</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>02:35 PM</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Scan Type</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>EXIT</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Exit Type</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>Lunch Pass</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Status</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;font-weight:600;''>Late</td></tr>
                                </table>
                                <p style=''color:#334155;font-size:14px;line-height:1.6;margin:15px 0 0;''>Thank you for your continued support.</p>
                            </td>
                        </tr>
                        <tr>
                            <td style=''background:#f8fafc;padding:20px;text-align:center;border-top:2px solid #e2e8f0;''>
                                <p style=''color:#64748b;font-size:13px;font-weight:600;margin:0;''>Ilaya National High School</p>
                                <p style=''color:#94a3b8;font-size:12px;margin:3px 0;''>Ilaya, Dapitan City</p>
                                <p style=''color:#94a3b8;font-size:11px;margin:8px 0 0;padding-top:8px;border-top:1px solid #e2e8f0;''>This is an automated message from the School Gate Attendance System.</p>
                            </td>
                        </tr>
                    </table>
                </td></tr>
            </table>
        </body>
        </html>', 'Sent', '2026-06-17 14:35:20.872711', '2026-06-17 14:35:15.130723');
INSERT INTO school_gate.email_logs (email_log_id, student_id, parent_email, notification_type, subject, message, send_status, sent_at, created_at) VALUES (51, 22, 'ana.garcia@email.com', 'Dismissal', 'Dismissal Notification - Ana Ramos', '
        <!DOCTYPE html>
        <html>
        <head><meta charset=''UTF-8''></head>
        <body style=''margin:0;padding:0;background:#f4f4f4;font-family:Arial,sans-serif;''>
            <table width=''100%'' cellpadding=''0'' cellspacing=''0'' style=''background:#f4f4f4;padding:20px;''>
                <tr><td align=''center''>
                    <table width=''600'' cellpadding=''0'' cellspacing=''0'' style=''background:#ffffff;border-radius:8px;overflow:hidden;box-shadow:0 2px 8px rgba(0,0,0,0.1);''>
                        <tr>
                            <td style=''background:#1e293b;padding:25px 20px;text-align:center;''>
                                <table cellpadding=''0'' cellspacing=''0'' style=''margin:0 auto;''>
                                    <tr>
                                        <td style=''vertical-align:middle;padding-right:12px;''>
                                            <img src=''cid:logo_img'' alt=''Ilaya National High School'' width=''40'' height=''40'' style=''border-radius:8px;''>
                                        </td>
                                        <td style=''vertical-align:middle;text-align:left;''>
                                            <h1 style=''color:#ffffff;margin:0;font-size:20px;''>Ilaya National High School</h1>
                                            <p style=''color:#93c5fd;margin:2px 0 0;font-size:12px;''>Gate Attendance Notification</p>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td style=''padding:30px 30px 20px;''>
                                <p style=''color:#334155;font-size:14px;line-height:1.6;margin:0 0 5px;''>Dear <strong>Ana Garcia</strong>,</p>
                                <p style=''color:#334155;font-size:14px;line-height:1.6;margin:0 0 15px;''>This is to notify you regarding the campus access of your child:</p>
                                <table width=''100%'' cellpadding=''8'' cellspacing=''0'' style=''background:#f8fafc;border-radius:6px;margin:15px 0;font-size:14px;border:1px solid #e2e8f0;''>
                                    <tr><td style=''color:#64748b;width:140px;border-bottom:1px solid #e2e8f0;''><strong>Student Name</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>Ana Ramos</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Student ID</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>2026-0010</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Grade & Section</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''> - </td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Date</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>June 17, 2026</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Time</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>06:35 PM</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Scan Type</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>EXIT</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Exit Type</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>Dismissal</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Status</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;font-weight:600;''>Late</td></tr>
                                </table>
                                <p style=''color:#334155;font-size:14px;line-height:1.6;margin:15px 0 0;''>Thank you for your continued support.</p>
                            </td>
                        </tr>
                        <tr>
                            <td style=''background:#f8fafc;padding:20px;text-align:center;border-top:2px solid #e2e8f0;''>
                                <p style=''color:#64748b;font-size:13px;font-weight:600;margin:0;''>Ilaya National High School</p>
                                <p style=''color:#94a3b8;font-size:12px;margin:3px 0;''>Ilaya, Dapitan City</p>
                                <p style=''color:#94a3b8;font-size:11px;margin:8px 0 0;padding-top:8px;border-top:1px solid #e2e8f0;''>This is an automated message from the School Gate Attendance System.</p>
                            </td>
                        </tr>
                    </table>
                </td></tr>
            </table>
        </body>
        </html>', 'Sent', '2026-06-17 18:35:12.267648', '2026-06-17 18:35:06.038436');
INSERT INTO school_gate.email_logs (email_log_id, student_id, parent_email, notification_type, subject, message, send_status, sent_at, created_at) VALUES (52, 35, 'rexon@gmail.com', 'Entry', 'Entry Notification - Judre Dyxon  Baje', '
        <!DOCTYPE html>
        <html>
        <head><meta charset=''UTF-8''></head>
        <body style=''margin:0;padding:0;background:#f4f4f4;font-family:Arial,sans-serif;''>
            <table width=''100%'' cellpadding=''0'' cellspacing=''0'' style=''background:#f4f4f4;padding:20px;''>
                <tr><td align=''center''>
                    <table width=''600'' cellpadding=''0'' cellspacing=''0'' style=''background:#ffffff;border-radius:8px;overflow:hidden;box-shadow:0 2px 8px rgba(0,0,0,0.1);''>
                        <tr>
                            <td style=''background:#1e293b;padding:25px 20px;text-align:center;''>
                                <table cellpadding=''0'' cellspacing=''0'' style=''margin:0 auto;''>
                                    <tr>
                                        <td style=''vertical-align:middle;padding-right:12px;''>
                                            <img src=''cid:logo_img'' alt=''Ilaya National High School'' width=''40'' height=''40'' style=''border-radius:8px;''>
                                        </td>
                                        <td style=''vertical-align:middle;text-align:left;''>
                                            <h1 style=''color:#ffffff;margin:0;font-size:20px;''>Ilaya National High School</h1>
                                            <p style=''color:#93c5fd;margin:2px 0 0;font-size:12px;''>Gate Attendance Notification</p>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td style=''padding:30px 30px 20px;''>
                                <p style=''color:#334155;font-size:14px;line-height:1.6;margin:0 0 5px;''>Dear <strong>Rexon Baje</strong>,</p>
                                <p style=''color:#334155;font-size:14px;line-height:1.6;margin:0 0 15px;''>This is to notify you regarding the campus access of your child:</p>
                                <table width=''100%'' cellpadding=''8'' cellspacing=''0'' style=''background:#f8fafc;border-radius:6px;margin:15px 0;font-size:14px;border:1px solid #e2e8f0;''>
                                    <tr><td style=''color:#64748b;width:140px;border-bottom:1px solid #e2e8f0;''><strong>Student Name</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>Judre Dyxon  Baje</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Student ID</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>2026-0003</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Grade & Section</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>Grade 11 - CSS</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Date</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>June 17, 2026</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Time</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>06:52 PM</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Scan Type</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>ENTRY</td></tr>
                                    
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Status</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;font-weight:600;''>Late</td></tr>
                                </table>
                                <p style=''color:#334155;font-size:14px;line-height:1.6;margin:15px 0 0;''>Thank you for your continued support.</p>
                            </td>
                        </tr>
                        <tr>
                            <td style=''background:#f8fafc;padding:20px;text-align:center;border-top:2px solid #e2e8f0;''>
                                <p style=''color:#64748b;font-size:13px;font-weight:600;margin:0;''>Ilaya National High School</p>
                                <p style=''color:#94a3b8;font-size:12px;margin:3px 0;''>Ilaya, Dapitan City</p>
                                <p style=''color:#94a3b8;font-size:11px;margin:8px 0 0;padding-top:8px;border-top:1px solid #e2e8f0;''>This is an automated message from the School Gate Attendance System.</p>
                            </td>
                        </tr>
                    </table>
                </td></tr>
            </table>
        </body>
        </html>', 'Sent', '2026-06-17 18:52:05.695055', '2026-06-17 18:52:00.496104');
INSERT INTO school_gate.email_logs (email_log_id, student_id, parent_email, notification_type, subject, message, send_status, sent_at, created_at) VALUES (53, 35, 'rexon@gmail.com', 'Late', 'Late Notification - Judre Dyxon  Baje', '
        <!DOCTYPE html>
        <html>
        <head><meta charset=''UTF-8''></head>
        <body style=''margin:0;padding:0;background:#f4f4f4;font-family:Arial,sans-serif;''>
            <table width=''100%'' cellpadding=''0'' cellspacing=''0'' style=''background:#f4f4f4;padding:20px;''>
                <tr><td align=''center''>
                    <table width=''600'' cellpadding=''0'' cellspacing=''0'' style=''background:#ffffff;border-radius:8px;overflow:hidden;box-shadow:0 2px 8px rgba(0,0,0,0.1);''>
                        <tr>
                            <td style=''background:#1e293b;padding:25px 20px;text-align:center;''>
                                <table cellpadding=''0'' cellspacing=''0'' style=''margin:0 auto;''>
                                    <tr>
                                        <td style=''vertical-align:middle;padding-right:12px;''>
                                            <img src=''cid:logo_img'' alt=''Ilaya National High School'' width=''40'' height=''40'' style=''border-radius:8px;''>
                                        </td>
                                        <td style=''vertical-align:middle;text-align:left;''>
                                            <h1 style=''color:#ffffff;margin:0;font-size:20px;''>Ilaya National High School</h1>
                                            <p style=''color:#93c5fd;margin:2px 0 0;font-size:12px;''>Gate Attendance Notification</p>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td style=''padding:30px 30px 20px;''>
                                <p style=''color:#334155;font-size:14px;line-height:1.6;margin:0 0 5px;''>Dear <strong>Rexon Baje</strong>,</p>
                                <p style=''color:#334155;font-size:14px;line-height:1.6;margin:0 0 15px;''>This is to notify you regarding the campus access of your child:</p>
                                <table width=''100%'' cellpadding=''8'' cellspacing=''0'' style=''background:#f8fafc;border-radius:6px;margin:15px 0;font-size:14px;border:1px solid #e2e8f0;''>
                                    <tr><td style=''color:#64748b;width:140px;border-bottom:1px solid #e2e8f0;''><strong>Student Name</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>Judre Dyxon  Baje</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Student ID</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>2026-0003</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Grade & Section</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>Grade 11 - CSS</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Date</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>June 17, 2026</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Time</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>06:52 PM</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Scan Type</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>ENTRY</td></tr>
                                    
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Status</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;font-weight:600;''>Late</td></tr>
                                </table>
                                <p style=''color:#334155;font-size:14px;line-height:1.6;margin:15px 0 0;''>Thank you for your continued support.</p>
                            </td>
                        </tr>
                        <tr>
                            <td style=''background:#f8fafc;padding:20px;text-align:center;border-top:2px solid #e2e8f0;''>
                                <p style=''color:#64748b;font-size:13px;font-weight:600;margin:0;''>Ilaya National High School</p>
                                <p style=''color:#94a3b8;font-size:12px;margin:3px 0;''>Ilaya, Dapitan City</p>
                                <p style=''color:#94a3b8;font-size:11px;margin:8px 0 0;padding-top:8px;border-top:1px solid #e2e8f0;''>This is an automated message from the School Gate Attendance System.</p>
                            </td>
                        </tr>
                    </table>
                </td></tr>
            </table>
        </body>
        </html>', 'Sent', '2026-06-17 18:52:11.863748', '2026-06-17 18:52:05.718706');
INSERT INTO school_gate.email_logs (email_log_id, student_id, parent_email, notification_type, subject, message, send_status, sent_at, created_at) VALUES (55, 32, 'ervinpactol@gmail.com', 'Late', 'Late Notification - John Ervin Baje', '
        <!DOCTYPE html>
        <html>
        <head><meta charset=''UTF-8''></head>
        <body style=''margin:0;padding:0;background:#f4f4f4;font-family:Arial,sans-serif;''>
            <table width=''100%'' cellpadding=''0'' cellspacing=''0'' style=''background:#f4f4f4;padding:20px;''>
                <tr><td align=''center''>
                    <table width=''600'' cellpadding=''0'' cellspacing=''0'' style=''background:#ffffff;border-radius:8px;overflow:hidden;box-shadow:0 2px 8px rgba(0,0,0,0.1);''>
                        <tr>
                            <td style=''background:#1e293b;padding:25px 20px;text-align:center;''>
                                <table cellpadding=''0'' cellspacing=''0'' style=''margin:0 auto;''>
                                    <tr>
                                        <td style=''vertical-align:middle;padding-right:12px;''>
                                            <img src=''cid:logo_img'' alt=''Ilaya National High School'' width=''40'' height=''40'' style=''border-radius:8px;''>
                                        </td>
                                        <td style=''vertical-align:middle;text-align:left;''>
                                            <h1 style=''color:#ffffff;margin:0;font-size:20px;''>Ilaya National High School</h1>
                                            <p style=''color:#93c5fd;margin:2px 0 0;font-size:12px;''>Gate Attendance Notification</p>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td style=''padding:30px 30px 20px;''>
                                <p style=''color:#334155;font-size:14px;line-height:1.6;margin:0 0 5px;''>Dear <strong>Eren Grace Pactol</strong>,</p>
                                <p style=''color:#334155;font-size:14px;line-height:1.6;margin:0 0 15px;''>This is to notify you regarding the campus access of your child:</p>
                                <table width=''100%'' cellpadding=''8'' cellspacing=''0'' style=''background:#f8fafc;border-radius:6px;margin:15px 0;font-size:14px;border:1px solid #e2e8f0;''>
                                    <tr><td style=''color:#64748b;width:140px;border-bottom:1px solid #e2e8f0;''><strong>Student Name</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>John Ervin Baje</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Student ID</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>2026-0002</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Grade & Section</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>Grade 12 - CSS</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Date</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>June 18, 2026</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Time</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>11:12 AM</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Scan Type</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>ENTRY</td></tr>
                                    
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Status</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;font-weight:600;''>Late</td></tr>
                                </table>
                                <p style=''color:#334155;font-size:14px;line-height:1.6;margin:15px 0 0;''>Thank you for your continued support.</p>
                            </td>
                        </tr>
                        <tr>
                            <td style=''background:#f8fafc;padding:20px;text-align:center;border-top:2px solid #e2e8f0;''>
                                <p style=''color:#64748b;font-size:13px;font-weight:600;margin:0;''>Ilaya National High School</p>
                                <p style=''color:#94a3b8;font-size:12px;margin:3px 0;''>Ilaya, Dapitan City</p>
                                <p style=''color:#94a3b8;font-size:11px;margin:8px 0 0;padding-top:8px;border-top:1px solid #e2e8f0;''>This is an automated message from the School Gate Attendance System.</p>
                            </td>
                        </tr>
                    </table>
                </td></tr>
            </table>
        </body>
        </html>', 'Failed', '2026-06-18 11:12:28.446384', '2026-06-18 11:12:28.437801');
INSERT INTO school_gate.email_logs (email_log_id, student_id, parent_email, notification_type, subject, message, send_status, sent_at, created_at) VALUES (56, 32, 'ervinpactol@gmail.com', 'Dismissal', 'Dismissal Notification - John Ervin Baje', '
        <!DOCTYPE html>
        <html>
        <head><meta charset=''UTF-8''></head>
        <body style=''margin:0;padding:0;background:#f4f4f4;font-family:Arial,sans-serif;''>
            <table width=''100%'' cellpadding=''0'' cellspacing=''0'' style=''background:#f4f4f4;padding:20px;''>
                <tr><td align=''center''>
                    <table width=''600'' cellpadding=''0'' cellspacing=''0'' style=''background:#ffffff;border-radius:8px;overflow:hidden;box-shadow:0 2px 8px rgba(0,0,0,0.1);''>
                        <tr>
                            <td style=''background:#1e293b;padding:25px 20px;text-align:center;''>
                                <table cellpadding=''0'' cellspacing=''0'' style=''margin:0 auto;''>
                                    <tr>
                                        <td style=''vertical-align:middle;padding-right:12px;''>
                                            <img src=''cid:logo_img'' alt=''Ilaya National High School'' width=''40'' height=''40'' style=''border-radius:8px;''>
                                        </td>
                                        <td style=''vertical-align:middle;text-align:left;''>
                                            <h1 style=''color:#ffffff;margin:0;font-size:20px;''>Ilaya National High School</h1>
                                            <p style=''color:#93c5fd;margin:2px 0 0;font-size:12px;''>Gate Attendance Notification</p>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td style=''padding:30px 30px 20px;''>
                                <p style=''color:#334155;font-size:14px;line-height:1.6;margin:0 0 5px;''>Dear <strong>Eren Grace Pactol</strong>,</p>
                                <p style=''color:#334155;font-size:14px;line-height:1.6;margin:0 0 15px;''>This is to notify you regarding the campus access of your child:</p>
                                <table width=''100%'' cellpadding=''8'' cellspacing=''0'' style=''background:#f8fafc;border-radius:6px;margin:15px 0;font-size:14px;border:1px solid #e2e8f0;''>
                                    <tr><td style=''color:#64748b;width:140px;border-bottom:1px solid #e2e8f0;''><strong>Student Name</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>John Ervin Baje</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Student ID</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>2026-0002</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Grade & Section</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>Grade 12 - CSS</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Date</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>June 18, 2026</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Time</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>11:13 AM</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Scan Type</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>EXIT</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Exit Type</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>Dismissal</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Status</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;font-weight:600;''>Late</td></tr>
                                </table>
                                <p style=''color:#334155;font-size:14px;line-height:1.6;margin:15px 0 0;''>Thank you for your continued support.</p>
                            </td>
                        </tr>
                        <tr>
                            <td style=''background:#f8fafc;padding:20px;text-align:center;border-top:2px solid #e2e8f0;''>
                                <p style=''color:#64748b;font-size:13px;font-weight:600;margin:0;''>Ilaya National High School</p>
                                <p style=''color:#94a3b8;font-size:12px;margin:3px 0;''>Ilaya, Dapitan City</p>
                                <p style=''color:#94a3b8;font-size:11px;margin:8px 0 0;padding-top:8px;border-top:1px solid #e2e8f0;''>This is an automated message from the School Gate Attendance System.</p>
                            </td>
                        </tr>
                    </table>
                </td></tr>
            </table>
        </body>
        </html>', 'Failed', '2026-06-18 11:13:06.939445', '2026-06-18 11:13:06.893747');
INSERT INTO school_gate.email_logs (email_log_id, student_id, parent_email, notification_type, subject, message, send_status, sent_at, created_at) VALUES (57, 35, 'rexon@gmail.com', 'Entry', 'Entry Notification - Judre Dyxon  Baje', '
        <!DOCTYPE html>
        <html>
        <head><meta charset=''UTF-8''></head>
        <body style=''margin:0;padding:0;background:#f4f4f4;font-family:Arial,sans-serif;''>
            <table width=''100%'' cellpadding=''0'' cellspacing=''0'' style=''background:#f4f4f4;padding:20px;''>
                <tr><td align=''center''>
                    <table width=''600'' cellpadding=''0'' cellspacing=''0'' style=''background:#ffffff;border-radius:8px;overflow:hidden;box-shadow:0 2px 8px rgba(0,0,0,0.1);''>
                        <tr>
                            <td style=''background:#1e293b;padding:25px 20px;text-align:center;''>
                                <table cellpadding=''0'' cellspacing=''0'' style=''margin:0 auto;''>
                                    <tr>
                                        <td style=''vertical-align:middle;padding-right:12px;''>
                                            <img src=''cid:logo_img'' alt=''Ilaya National High School'' width=''40'' height=''40'' style=''border-radius:8px;''>
                                        </td>
                                        <td style=''vertical-align:middle;text-align:left;''>
                                            <h1 style=''color:#ffffff;margin:0;font-size:20px;''>Ilaya National High School</h1>
                                            <p style=''color:#93c5fd;margin:2px 0 0;font-size:12px;''>Gate Attendance Notification</p>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td style=''padding:30px 30px 20px;''>
                                <p style=''color:#334155;font-size:14px;line-height:1.6;margin:0 0 5px;''>Dear <strong>Rexon Baje</strong>,</p>
                                <p style=''color:#334155;font-size:14px;line-height:1.6;margin:0 0 15px;''>This is to notify you regarding the campus access of your child:</p>
                                <table width=''100%'' cellpadding=''8'' cellspacing=''0'' style=''background:#f8fafc;border-radius:6px;margin:15px 0;font-size:14px;border:1px solid #e2e8f0;''>
                                    <tr><td style=''color:#64748b;width:140px;border-bottom:1px solid #e2e8f0;''><strong>Student Name</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>Judre Dyxon  Baje</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Student ID</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>2026-0003</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Grade & Section</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>Grade 11 - CSS</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Date</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>June 18, 2026</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Time</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>11:55 PM</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Scan Type</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>ENTRY</td></tr>
                                    
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Status</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;font-weight:600;''>Late</td></tr>
                                </table>
                                <p style=''color:#334155;font-size:14px;line-height:1.6;margin:15px 0 0;''>Thank you for your continued support.</p>
                            </td>
                        </tr>
                        <tr>
                            <td style=''background:#f8fafc;padding:20px;text-align:center;border-top:2px solid #e2e8f0;''>
                                <p style=''color:#64748b;font-size:13px;font-weight:600;margin:0;''>Ilaya National High School</p>
                                <p style=''color:#94a3b8;font-size:12px;margin:3px 0;''>Ilaya, Dapitan City</p>
                                <p style=''color:#94a3b8;font-size:11px;margin:8px 0 0;padding-top:8px;border-top:1px solid #e2e8f0;''>This is an automated message from the School Gate Attendance System.</p>
                            </td>
                        </tr>
                    </table>
                </td></tr>
            </table>
        </body>
        </html>', 'Sent', '2026-06-18 23:55:13.066171', '2026-06-18 23:55:06.438553');
INSERT INTO school_gate.email_logs (email_log_id, student_id, parent_email, notification_type, subject, message, send_status, sent_at, created_at) VALUES (58, 35, 'rexon@gmail.com', 'Late', 'Late Notification - Judre Dyxon  Baje', '
        <!DOCTYPE html>
        <html>
        <head><meta charset=''UTF-8''></head>
        <body style=''margin:0;padding:0;background:#f4f4f4;font-family:Arial,sans-serif;''>
            <table width=''100%'' cellpadding=''0'' cellspacing=''0'' style=''background:#f4f4f4;padding:20px;''>
                <tr><td align=''center''>
                    <table width=''600'' cellpadding=''0'' cellspacing=''0'' style=''background:#ffffff;border-radius:8px;overflow:hidden;box-shadow:0 2px 8px rgba(0,0,0,0.1);''>
                        <tr>
                            <td style=''background:#1e293b;padding:25px 20px;text-align:center;''>
                                <table cellpadding=''0'' cellspacing=''0'' style=''margin:0 auto;''>
                                    <tr>
                                        <td style=''vertical-align:middle;padding-right:12px;''>
                                            <img src=''cid:logo_img'' alt=''Ilaya National High School'' width=''40'' height=''40'' style=''border-radius:8px;''>
                                        </td>
                                        <td style=''vertical-align:middle;text-align:left;''>
                                            <h1 style=''color:#ffffff;margin:0;font-size:20px;''>Ilaya National High School</h1>
                                            <p style=''color:#93c5fd;margin:2px 0 0;font-size:12px;''>Gate Attendance Notification</p>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td style=''padding:30px 30px 20px;''>
                                <p style=''color:#334155;font-size:14px;line-height:1.6;margin:0 0 5px;''>Dear <strong>Rexon Baje</strong>,</p>
                                <p style=''color:#334155;font-size:14px;line-height:1.6;margin:0 0 15px;''>This is to notify you regarding the campus access of your child:</p>
                                <table width=''100%'' cellpadding=''8'' cellspacing=''0'' style=''background:#f8fafc;border-radius:6px;margin:15px 0;font-size:14px;border:1px solid #e2e8f0;''>
                                    <tr><td style=''color:#64748b;width:140px;border-bottom:1px solid #e2e8f0;''><strong>Student Name</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>Judre Dyxon  Baje</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Student ID</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>2026-0003</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Grade & Section</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>Grade 11 - CSS</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Date</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>June 18, 2026</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Time</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>11:55 PM</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Scan Type</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>ENTRY</td></tr>
                                    
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Status</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;font-weight:600;''>Late</td></tr>
                                </table>
                                <p style=''color:#334155;font-size:14px;line-height:1.6;margin:15px 0 0;''>Thank you for your continued support.</p>
                            </td>
                        </tr>
                        <tr>
                            <td style=''background:#f8fafc;padding:20px;text-align:center;border-top:2px solid #e2e8f0;''>
                                <p style=''color:#64748b;font-size:13px;font-weight:600;margin:0;''>Ilaya National High School</p>
                                <p style=''color:#94a3b8;font-size:12px;margin:3px 0;''>Ilaya, Dapitan City</p>
                                <p style=''color:#94a3b8;font-size:11px;margin:8px 0 0;padding-top:8px;border-top:1px solid #e2e8f0;''>This is an automated message from the School Gate Attendance System.</p>
                            </td>
                        </tr>
                    </table>
                </td></tr>
            </table>
        </body>
        </html>', 'Sent', '2026-06-18 23:55:19.631935', '2026-06-18 23:55:13.076112');
INSERT INTO school_gate.email_logs (email_log_id, student_id, parent_email, notification_type, subject, message, send_status, sent_at, created_at) VALUES (59, 19, 'luisa.torres@email.com', 'Entry', 'Entry Notification - Juan Cruz', '
        <!DOCTYPE html>
        <html>
        <head><meta charset=''UTF-8''></head>
        <body style=''margin:0;padding:0;background:#f4f4f4;font-family:Arial,sans-serif;''>
            <table width=''100%'' cellpadding=''0'' cellspacing=''0'' style=''background:#f4f4f4;padding:20px;''>
                <tr><td align=''center''>
                    <table width=''600'' cellpadding=''0'' cellspacing=''0'' style=''background:#ffffff;border-radius:8px;overflow:hidden;box-shadow:0 2px 8px rgba(0,0,0,0.1);''>
                        <tr>
                            <td style=''background:#1e293b;padding:25px 20px;text-align:center;''>
                                <table cellpadding=''0'' cellspacing=''0'' style=''margin:0 auto;''>
                                    <tr>
                                        <td style=''vertical-align:middle;padding-right:12px;''>
                                            <img src=''cid:logo_img'' alt=''Ilaya National High School'' width=''40'' height=''40'' style=''border-radius:8px;''>
                                        </td>
                                        <td style=''vertical-align:middle;text-align:left;''>
                                            <h1 style=''color:#ffffff;margin:0;font-size:20px;''>Ilaya National High School</h1>
                                            <p style=''color:#93c5fd;margin:2px 0 0;font-size:12px;''>Gate Attendance Notification</p>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td style=''padding:30px 30px 20px;''>
                                <p style=''color:#334155;font-size:14px;line-height:1.6;margin:0 0 5px;''>Dear <strong>Luisa Torres</strong>,</p>
                                <p style=''color:#334155;font-size:14px;line-height:1.6;margin:0 0 15px;''>This is to notify you regarding the campus access of your child:</p>
                                <table width=''100%'' cellpadding=''8'' cellspacing=''0'' style=''background:#f8fafc;border-radius:6px;margin:15px 0;font-size:14px;border:1px solid #e2e8f0;''>
                                    <tr><td style=''color:#64748b;width:140px;border-bottom:1px solid #e2e8f0;''><strong>Student Name</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>Juan Cruz</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Student ID</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>2026-0007</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Grade & Section</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>Grade 11 - BPP</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Date</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>June 18, 2026</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Time</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>11:55 PM</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Scan Type</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>ENTRY</td></tr>
                                    
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Status</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;font-weight:600;''>Late</td></tr>
                                </table>
                                <p style=''color:#334155;font-size:14px;line-height:1.6;margin:15px 0 0;''>Thank you for your continued support.</p>
                            </td>
                        </tr>
                        <tr>
                            <td style=''background:#f8fafc;padding:20px;text-align:center;border-top:2px solid #e2e8f0;''>
                                <p style=''color:#64748b;font-size:13px;font-weight:600;margin:0;''>Ilaya National High School</p>
                                <p style=''color:#94a3b8;font-size:12px;margin:3px 0;''>Ilaya, Dapitan City</p>
                                <p style=''color:#94a3b8;font-size:11px;margin:8px 0 0;padding-top:8px;border-top:1px solid #e2e8f0;''>This is an automated message from the School Gate Attendance System.</p>
                            </td>
                        </tr>
                    </table>
                </td></tr>
            </table>
        </body>
        </html>', 'Sent', '2026-06-18 23:55:33.443108', '2026-06-18 23:55:27.730279');
INSERT INTO school_gate.email_logs (email_log_id, student_id, parent_email, notification_type, subject, message, send_status, sent_at, created_at) VALUES (60, 19, 'luisa.torres@email.com', 'Late', 'Late Notification - Juan Cruz', '
        <!DOCTYPE html>
        <html>
        <head><meta charset=''UTF-8''></head>
        <body style=''margin:0;padding:0;background:#f4f4f4;font-family:Arial,sans-serif;''>
            <table width=''100%'' cellpadding=''0'' cellspacing=''0'' style=''background:#f4f4f4;padding:20px;''>
                <tr><td align=''center''>
                    <table width=''600'' cellpadding=''0'' cellspacing=''0'' style=''background:#ffffff;border-radius:8px;overflow:hidden;box-shadow:0 2px 8px rgba(0,0,0,0.1);''>
                        <tr>
                            <td style=''background:#1e293b;padding:25px 20px;text-align:center;''>
                                <table cellpadding=''0'' cellspacing=''0'' style=''margin:0 auto;''>
                                    <tr>
                                        <td style=''vertical-align:middle;padding-right:12px;''>
                                            <img src=''cid:logo_img'' alt=''Ilaya National High School'' width=''40'' height=''40'' style=''border-radius:8px;''>
                                        </td>
                                        <td style=''vertical-align:middle;text-align:left;''>
                                            <h1 style=''color:#ffffff;margin:0;font-size:20px;''>Ilaya National High School</h1>
                                            <p style=''color:#93c5fd;margin:2px 0 0;font-size:12px;''>Gate Attendance Notification</p>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td style=''padding:30px 30px 20px;''>
                                <p style=''color:#334155;font-size:14px;line-height:1.6;margin:0 0 5px;''>Dear <strong>Luisa Torres</strong>,</p>
                                <p style=''color:#334155;font-size:14px;line-height:1.6;margin:0 0 15px;''>This is to notify you regarding the campus access of your child:</p>
                                <table width=''100%'' cellpadding=''8'' cellspacing=''0'' style=''background:#f8fafc;border-radius:6px;margin:15px 0;font-size:14px;border:1px solid #e2e8f0;''>
                                    <tr><td style=''color:#64748b;width:140px;border-bottom:1px solid #e2e8f0;''><strong>Student Name</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>Juan Cruz</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Student ID</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>2026-0007</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Grade & Section</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>Grade 11 - BPP</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Date</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>June 18, 2026</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Time</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>11:55 PM</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Scan Type</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>ENTRY</td></tr>
                                    
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Status</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;font-weight:600;''>Late</td></tr>
                                </table>
                                <p style=''color:#334155;font-size:14px;line-height:1.6;margin:15px 0 0;''>Thank you for your continued support.</p>
                            </td>
                        </tr>
                        <tr>
                            <td style=''background:#f8fafc;padding:20px;text-align:center;border-top:2px solid #e2e8f0;''>
                                <p style=''color:#64748b;font-size:13px;font-weight:600;margin:0;''>Ilaya National High School</p>
                                <p style=''color:#94a3b8;font-size:12px;margin:3px 0;''>Ilaya, Dapitan City</p>
                                <p style=''color:#94a3b8;font-size:11px;margin:8px 0 0;padding-top:8px;border-top:1px solid #e2e8f0;''>This is an automated message from the School Gate Attendance System.</p>
                            </td>
                        </tr>
                    </table>
                </td></tr>
            </table>
        </body>
        </html>', 'Sent', '2026-06-18 23:55:38.971845', '2026-06-18 23:55:33.450362');
INSERT INTO school_gate.email_logs (email_log_id, student_id, parent_email, notification_type, subject, message, send_status, sent_at, created_at) VALUES (61, 21, 'luisa.torres@email.com', 'Entry', 'Entry Notification - Jose Garcia', '
        <!DOCTYPE html>
        <html>
        <head><meta charset=''UTF-8''></head>
        <body style=''margin:0;padding:0;background:#f4f4f4;font-family:Arial,sans-serif;''>
            <table width=''100%'' cellpadding=''0'' cellspacing=''0'' style=''background:#f4f4f4;padding:20px;''>
                <tr><td align=''center''>
                    <table width=''600'' cellpadding=''0'' cellspacing=''0'' style=''background:#ffffff;border-radius:8px;overflow:hidden;box-shadow:0 2px 8px rgba(0,0,0,0.1);''>
                        <tr>
                            <td style=''background:#1e293b;padding:25px 20px;text-align:center;''>
                                <table cellpadding=''0'' cellspacing=''0'' style=''margin:0 auto;''>
                                    <tr>
                                        <td style=''vertical-align:middle;padding-right:12px;''>
                                            <img src=''cid:logo_img'' alt=''Ilaya National High School'' width=''40'' height=''40'' style=''border-radius:8px;''>
                                        </td>
                                        <td style=''vertical-align:middle;text-align:left;''>
                                            <h1 style=''color:#ffffff;margin:0;font-size:20px;''>Ilaya National High School</h1>
                                            <p style=''color:#93c5fd;margin:2px 0 0;font-size:12px;''>Gate Attendance Notification</p>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td style=''padding:30px 30px 20px;''>
                                <p style=''color:#334155;font-size:14px;line-height:1.6;margin:0 0 5px;''>Dear <strong>Luisa Torres</strong>,</p>
                                <p style=''color:#334155;font-size:14px;line-height:1.6;margin:0 0 15px;''>This is to notify you regarding the campus access of your child:</p>
                                <table width=''100%'' cellpadding=''8'' cellspacing=''0'' style=''background:#f8fafc;border-radius:6px;margin:15px 0;font-size:14px;border:1px solid #e2e8f0;''>
                                    <tr><td style=''color:#64748b;width:140px;border-bottom:1px solid #e2e8f0;''><strong>Student Name</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>Jose Garcia</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Student ID</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>2026-0009</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Grade & Section</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>Grade 11 - STEM</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Date</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>June 18, 2026</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Time</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>11:55 PM</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Scan Type</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>ENTRY</td></tr>
                                    
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Status</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;font-weight:600;''>Late</td></tr>
                                </table>
                                <p style=''color:#334155;font-size:14px;line-height:1.6;margin:15px 0 0;''>Thank you for your continued support.</p>
                            </td>
                        </tr>
                        <tr>
                            <td style=''background:#f8fafc;padding:20px;text-align:center;border-top:2px solid #e2e8f0;''>
                                <p style=''color:#64748b;font-size:13px;font-weight:600;margin:0;''>Ilaya National High School</p>
                                <p style=''color:#94a3b8;font-size:12px;margin:3px 0;''>Ilaya, Dapitan City</p>
                                <p style=''color:#94a3b8;font-size:11px;margin:8px 0 0;padding-top:8px;border-top:1px solid #e2e8f0;''>This is an automated message from the School Gate Attendance System.</p>
                            </td>
                        </tr>
                    </table>
                </td></tr>
            </table>
        </body>
        </html>', 'Sent', '2026-06-18 23:55:54.095285', '2026-06-18 23:55:47.701152');
INSERT INTO school_gate.email_logs (email_log_id, student_id, parent_email, notification_type, subject, message, send_status, sent_at, created_at) VALUES (62, 21, 'luisa.torres@email.com', 'Late', 'Late Notification - Jose Garcia', '
        <!DOCTYPE html>
        <html>
        <head><meta charset=''UTF-8''></head>
        <body style=''margin:0;padding:0;background:#f4f4f4;font-family:Arial,sans-serif;''>
            <table width=''100%'' cellpadding=''0'' cellspacing=''0'' style=''background:#f4f4f4;padding:20px;''>
                <tr><td align=''center''>
                    <table width=''600'' cellpadding=''0'' cellspacing=''0'' style=''background:#ffffff;border-radius:8px;overflow:hidden;box-shadow:0 2px 8px rgba(0,0,0,0.1);''>
                        <tr>
                            <td style=''background:#1e293b;padding:25px 20px;text-align:center;''>
                                <table cellpadding=''0'' cellspacing=''0'' style=''margin:0 auto;''>
                                    <tr>
                                        <td style=''vertical-align:middle;padding-right:12px;''>
                                            <img src=''cid:logo_img'' alt=''Ilaya National High School'' width=''40'' height=''40'' style=''border-radius:8px;''>
                                        </td>
                                        <td style=''vertical-align:middle;text-align:left;''>
                                            <h1 style=''color:#ffffff;margin:0;font-size:20px;''>Ilaya National High School</h1>
                                            <p style=''color:#93c5fd;margin:2px 0 0;font-size:12px;''>Gate Attendance Notification</p>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td style=''padding:30px 30px 20px;''>
                                <p style=''color:#334155;font-size:14px;line-height:1.6;margin:0 0 5px;''>Dear <strong>Luisa Torres</strong>,</p>
                                <p style=''color:#334155;font-size:14px;line-height:1.6;margin:0 0 15px;''>This is to notify you regarding the campus access of your child:</p>
                                <table width=''100%'' cellpadding=''8'' cellspacing=''0'' style=''background:#f8fafc;border-radius:6px;margin:15px 0;font-size:14px;border:1px solid #e2e8f0;''>
                                    <tr><td style=''color:#64748b;width:140px;border-bottom:1px solid #e2e8f0;''><strong>Student Name</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>Jose Garcia</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Student ID</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>2026-0009</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Grade & Section</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>Grade 11 - STEM</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Date</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>June 18, 2026</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Time</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>11:55 PM</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Scan Type</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>ENTRY</td></tr>
                                    
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Status</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;font-weight:600;''>Late</td></tr>
                                </table>
                                <p style=''color:#334155;font-size:14px;line-height:1.6;margin:15px 0 0;''>Thank you for your continued support.</p>
                            </td>
                        </tr>
                        <tr>
                            <td style=''background:#f8fafc;padding:20px;text-align:center;border-top:2px solid #e2e8f0;''>
                                <p style=''color:#64748b;font-size:13px;font-weight:600;margin:0;''>Ilaya National High School</p>
                                <p style=''color:#94a3b8;font-size:12px;margin:3px 0;''>Ilaya, Dapitan City</p>
                                <p style=''color:#94a3b8;font-size:11px;margin:8px 0 0;padding-top:8px;border-top:1px solid #e2e8f0;''>This is an automated message from the School Gate Attendance System.</p>
                            </td>
                        </tr>
                    </table>
                </td></tr>
            </table>
        </body>
        </html>', 'Sent', '2026-06-18 23:56:00.2516', '2026-06-18 23:55:54.102354');
INSERT INTO school_gate.email_logs (email_log_id, student_id, parent_email, notification_type, subject, message, send_status, sent_at, created_at) VALUES (63, 22, 'ana.garcia@email.com', 'Entry', 'Entry Notification - Ana Ramos', '
        <!DOCTYPE html>
        <html>
        <head><meta charset=''UTF-8''></head>
        <body style=''margin:0;padding:0;background:#f4f4f4;font-family:Arial,sans-serif;''>
            <table width=''100%'' cellpadding=''0'' cellspacing=''0'' style=''background:#f4f4f4;padding:20px;''>
                <tr><td align=''center''>
                    <table width=''600'' cellpadding=''0'' cellspacing=''0'' style=''background:#ffffff;border-radius:8px;overflow:hidden;box-shadow:0 2px 8px rgba(0,0,0,0.1);''>
                        <tr>
                            <td style=''background:#1e293b;padding:25px 20px;text-align:center;''>
                                <table cellpadding=''0'' cellspacing=''0'' style=''margin:0 auto;''>
                                    <tr>
                                        <td style=''vertical-align:middle;padding-right:12px;''>
                                            <img src=''cid:logo_img'' alt=''Ilaya National High School'' width=''40'' height=''40'' style=''border-radius:8px;''>
                                        </td>
                                        <td style=''vertical-align:middle;text-align:left;''>
                                            <h1 style=''color:#ffffff;margin:0;font-size:20px;''>Ilaya National High School</h1>
                                            <p style=''color:#93c5fd;margin:2px 0 0;font-size:12px;''>Gate Attendance Notification</p>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td style=''padding:30px 30px 20px;''>
                                <p style=''color:#334155;font-size:14px;line-height:1.6;margin:0 0 5px;''>Dear <strong>Ana Garcia</strong>,</p>
                                <p style=''color:#334155;font-size:14px;line-height:1.6;margin:0 0 15px;''>This is to notify you regarding the campus access of your child:</p>
                                <table width=''100%'' cellpadding=''8'' cellspacing=''0'' style=''background:#f8fafc;border-radius:6px;margin:15px 0;font-size:14px;border:1px solid #e2e8f0;''>
                                    <tr><td style=''color:#64748b;width:140px;border-bottom:1px solid #e2e8f0;''><strong>Student Name</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>Ana Ramos</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Student ID</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>2026-0010</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Grade & Section</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''> - </td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Date</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>June 18, 2026</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Time</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>11:56 PM</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Scan Type</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>ENTRY</td></tr>
                                    
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Status</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;font-weight:600;''>Late</td></tr>
                                </table>
                                <p style=''color:#334155;font-size:14px;line-height:1.6;margin:15px 0 0;''>Thank you for your continued support.</p>
                            </td>
                        </tr>
                        <tr>
                            <td style=''background:#f8fafc;padding:20px;text-align:center;border-top:2px solid #e2e8f0;''>
                                <p style=''color:#64748b;font-size:13px;font-weight:600;margin:0;''>Ilaya National High School</p>
                                <p style=''color:#94a3b8;font-size:12px;margin:3px 0;''>Ilaya, Dapitan City</p>
                                <p style=''color:#94a3b8;font-size:11px;margin:8px 0 0;padding-top:8px;border-top:1px solid #e2e8f0;''>This is an automated message from the School Gate Attendance System.</p>
                            </td>
                        </tr>
                    </table>
                </td></tr>
            </table>
        </body>
        </html>', 'Sent', '2026-06-18 23:56:11.034433', '2026-06-18 23:56:05.486596');
INSERT INTO school_gate.email_logs (email_log_id, student_id, parent_email, notification_type, subject, message, send_status, sent_at, created_at) VALUES (64, 22, 'ana.garcia@email.com', 'Late', 'Late Notification - Ana Ramos', '
        <!DOCTYPE html>
        <html>
        <head><meta charset=''UTF-8''></head>
        <body style=''margin:0;padding:0;background:#f4f4f4;font-family:Arial,sans-serif;''>
            <table width=''100%'' cellpadding=''0'' cellspacing=''0'' style=''background:#f4f4f4;padding:20px;''>
                <tr><td align=''center''>
                    <table width=''600'' cellpadding=''0'' cellspacing=''0'' style=''background:#ffffff;border-radius:8px;overflow:hidden;box-shadow:0 2px 8px rgba(0,0,0,0.1);''>
                        <tr>
                            <td style=''background:#1e293b;padding:25px 20px;text-align:center;''>
                                <table cellpadding=''0'' cellspacing=''0'' style=''margin:0 auto;''>
                                    <tr>
                                        <td style=''vertical-align:middle;padding-right:12px;''>
                                            <img src=''cid:logo_img'' alt=''Ilaya National High School'' width=''40'' height=''40'' style=''border-radius:8px;''>
                                        </td>
                                        <td style=''vertical-align:middle;text-align:left;''>
                                            <h1 style=''color:#ffffff;margin:0;font-size:20px;''>Ilaya National High School</h1>
                                            <p style=''color:#93c5fd;margin:2px 0 0;font-size:12px;''>Gate Attendance Notification</p>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td style=''padding:30px 30px 20px;''>
                                <p style=''color:#334155;font-size:14px;line-height:1.6;margin:0 0 5px;''>Dear <strong>Ana Garcia</strong>,</p>
                                <p style=''color:#334155;font-size:14px;line-height:1.6;margin:0 0 15px;''>This is to notify you regarding the campus access of your child:</p>
                                <table width=''100%'' cellpadding=''8'' cellspacing=''0'' style=''background:#f8fafc;border-radius:6px;margin:15px 0;font-size:14px;border:1px solid #e2e8f0;''>
                                    <tr><td style=''color:#64748b;width:140px;border-bottom:1px solid #e2e8f0;''><strong>Student Name</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>Ana Ramos</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Student ID</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>2026-0010</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Grade & Section</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''> - </td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Date</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>June 18, 2026</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Time</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>11:56 PM</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Scan Type</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>ENTRY</td></tr>
                                    
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Status</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;font-weight:600;''>Late</td></tr>
                                </table>
                                <p style=''color:#334155;font-size:14px;line-height:1.6;margin:15px 0 0;''>Thank you for your continued support.</p>
                            </td>
                        </tr>
                        <tr>
                            <td style=''background:#f8fafc;padding:20px;text-align:center;border-top:2px solid #e2e8f0;''>
                                <p style=''color:#64748b;font-size:13px;font-weight:600;margin:0;''>Ilaya National High School</p>
                                <p style=''color:#94a3b8;font-size:12px;margin:3px 0;''>Ilaya, Dapitan City</p>
                                <p style=''color:#94a3b8;font-size:11px;margin:8px 0 0;padding-top:8px;border-top:1px solid #e2e8f0;''>This is an automated message from the School Gate Attendance System.</p>
                            </td>
                        </tr>
                    </table>
                </td></tr>
            </table>
        </body>
        </html>', 'Sent', '2026-06-18 23:56:16.805603', '2026-06-18 23:56:11.04162');
INSERT INTO school_gate.email_logs (email_log_id, student_id, parent_email, notification_type, subject, message, send_status, sent_at, created_at) VALUES (65, 23, 'jose.santos@email.com', 'Entry', 'Entry Notification - Pedro Torres', '
        <!DOCTYPE html>
        <html>
        <head><meta charset=''UTF-8''></head>
        <body style=''margin:0;padding:0;background:#f4f4f4;font-family:Arial,sans-serif;''>
            <table width=''100%'' cellpadding=''0'' cellspacing=''0'' style=''background:#f4f4f4;padding:20px;''>
                <tr><td align=''center''>
                    <table width=''600'' cellpadding=''0'' cellspacing=''0'' style=''background:#ffffff;border-radius:8px;overflow:hidden;box-shadow:0 2px 8px rgba(0,0,0,0.1);''>
                        <tr>
                            <td style=''background:#1e293b;padding:25px 20px;text-align:center;''>
                                <table cellpadding=''0'' cellspacing=''0'' style=''margin:0 auto;''>
                                    <tr>
                                        <td style=''vertical-align:middle;padding-right:12px;''>
                                            <img src=''cid:logo_img'' alt=''Ilaya National High School'' width=''40'' height=''40'' style=''border-radius:8px;''>
                                        </td>
                                        <td style=''vertical-align:middle;text-align:left;''>
                                            <h1 style=''color:#ffffff;margin:0;font-size:20px;''>Ilaya National High School</h1>
                                            <p style=''color:#93c5fd;margin:2px 0 0;font-size:12px;''>Gate Attendance Notification</p>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td style=''padding:30px 30px 20px;''>
                                <p style=''color:#334155;font-size:14px;line-height:1.6;margin:0 0 5px;''>Dear <strong>Jose Santos</strong>,</p>
                                <p style=''color:#334155;font-size:14px;line-height:1.6;margin:0 0 15px;''>This is to notify you regarding the campus access of your child:</p>
                                <table width=''100%'' cellpadding=''8'' cellspacing=''0'' style=''background:#f8fafc;border-radius:6px;margin:15px 0;font-size:14px;border:1px solid #e2e8f0;''>
                                    <tr><td style=''color:#64748b;width:140px;border-bottom:1px solid #e2e8f0;''><strong>Student Name</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>Pedro Torres</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Student ID</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>2026-0011</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Grade & Section</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''> - </td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Date</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>June 18, 2026</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Time</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>11:56 PM</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Scan Type</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>ENTRY</td></tr>
                                    
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Status</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;font-weight:600;''>Late</td></tr>
                                </table>
                                <p style=''color:#334155;font-size:14px;line-height:1.6;margin:15px 0 0;''>Thank you for your continued support.</p>
                            </td>
                        </tr>
                        <tr>
                            <td style=''background:#f8fafc;padding:20px;text-align:center;border-top:2px solid #e2e8f0;''>
                                <p style=''color:#64748b;font-size:13px;font-weight:600;margin:0;''>Ilaya National High School</p>
                                <p style=''color:#94a3b8;font-size:12px;margin:3px 0;''>Ilaya, Dapitan City</p>
                                <p style=''color:#94a3b8;font-size:11px;margin:8px 0 0;padding-top:8px;border-top:1px solid #e2e8f0;''>This is an automated message from the School Gate Attendance System.</p>
                            </td>
                        </tr>
                    </table>
                </td></tr>
            </table>
        </body>
        </html>', 'Sent', '2026-06-18 23:56:28.409131', '2026-06-18 23:56:23.474626');
INSERT INTO school_gate.email_logs (email_log_id, student_id, parent_email, notification_type, subject, message, send_status, sent_at, created_at) VALUES (66, 23, 'jose.santos@email.com', 'Late', 'Late Notification - Pedro Torres', '
        <!DOCTYPE html>
        <html>
        <head><meta charset=''UTF-8''></head>
        <body style=''margin:0;padding:0;background:#f4f4f4;font-family:Arial,sans-serif;''>
            <table width=''100%'' cellpadding=''0'' cellspacing=''0'' style=''background:#f4f4f4;padding:20px;''>
                <tr><td align=''center''>
                    <table width=''600'' cellpadding=''0'' cellspacing=''0'' style=''background:#ffffff;border-radius:8px;overflow:hidden;box-shadow:0 2px 8px rgba(0,0,0,0.1);''>
                        <tr>
                            <td style=''background:#1e293b;padding:25px 20px;text-align:center;''>
                                <table cellpadding=''0'' cellspacing=''0'' style=''margin:0 auto;''>
                                    <tr>
                                        <td style=''vertical-align:middle;padding-right:12px;''>
                                            <img src=''cid:logo_img'' alt=''Ilaya National High School'' width=''40'' height=''40'' style=''border-radius:8px;''>
                                        </td>
                                        <td style=''vertical-align:middle;text-align:left;''>
                                            <h1 style=''color:#ffffff;margin:0;font-size:20px;''>Ilaya National High School</h1>
                                            <p style=''color:#93c5fd;margin:2px 0 0;font-size:12px;''>Gate Attendance Notification</p>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td style=''padding:30px 30px 20px;''>
                                <p style=''color:#334155;font-size:14px;line-height:1.6;margin:0 0 5px;''>Dear <strong>Jose Santos</strong>,</p>
                                <p style=''color:#334155;font-size:14px;line-height:1.6;margin:0 0 15px;''>This is to notify you regarding the campus access of your child:</p>
                                <table width=''100%'' cellpadding=''8'' cellspacing=''0'' style=''background:#f8fafc;border-radius:6px;margin:15px 0;font-size:14px;border:1px solid #e2e8f0;''>
                                    <tr><td style=''color:#64748b;width:140px;border-bottom:1px solid #e2e8f0;''><strong>Student Name</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>Pedro Torres</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Student ID</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>2026-0011</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Grade & Section</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''> - </td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Date</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>June 18, 2026</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Time</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>11:56 PM</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Scan Type</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>ENTRY</td></tr>
                                    
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Status</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;font-weight:600;''>Late</td></tr>
                                </table>
                                <p style=''color:#334155;font-size:14px;line-height:1.6;margin:15px 0 0;''>Thank you for your continued support.</p>
                            </td>
                        </tr>
                        <tr>
                            <td style=''background:#f8fafc;padding:20px;text-align:center;border-top:2px solid #e2e8f0;''>
                                <p style=''color:#64748b;font-size:13px;font-weight:600;margin:0;''>Ilaya National High School</p>
                                <p style=''color:#94a3b8;font-size:12px;margin:3px 0;''>Ilaya, Dapitan City</p>
                                <p style=''color:#94a3b8;font-size:11px;margin:8px 0 0;padding-top:8px;border-top:1px solid #e2e8f0;''>This is an automated message from the School Gate Attendance System.</p>
                            </td>
                        </tr>
                    </table>
                </td></tr>
            </table>
        </body>
        </html>', 'Sent', '2026-06-18 23:56:36.714959', '2026-06-18 23:56:28.411707');
INSERT INTO school_gate.email_logs (email_log_id, student_id, parent_email, notification_type, subject, message, send_status, sent_at, created_at) VALUES (67, 32, 'ervinpactol@gmail.com', 'Entry', 'Entry Notification - John Ervin Baje', '
        <!DOCTYPE html>
        <html>
        <head><meta charset=''UTF-8''></head>
        <body style=''margin:0;padding:0;background:#f4f4f4;font-family:Arial,sans-serif;''>
            <table width=''100%'' cellpadding=''0'' cellspacing=''0'' style=''background:#f4f4f4;padding:20px;''>
                <tr><td align=''center''>
                    <table width=''600'' cellpadding=''0'' cellspacing=''0'' style=''background:#ffffff;border-radius:8px;overflow:hidden;box-shadow:0 2px 8px rgba(0,0,0,0.1);''>
                        <tr>
                            <td style=''background:#1e293b;padding:25px 20px;text-align:center;''>
                                <table cellpadding=''0'' cellspacing=''0'' style=''margin:0 auto;''>
                                    <tr>
                                        <td style=''vertical-align:middle;padding-right:12px;''>
                                            <img src=''cid:logo_img'' alt=''Ilaya National High School'' width=''40'' height=''40'' style=''border-radius:8px;''>
                                        </td>
                                        <td style=''vertical-align:middle;text-align:left;''>
                                            <h1 style=''color:#ffffff;margin:0;font-size:20px;''>Ilaya National High School</h1>
                                            <p style=''color:#93c5fd;margin:2px 0 0;font-size:12px;''>Gate Attendance Notification</p>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td style=''padding:30px 30px 20px;''>
                                <p style=''color:#334155;font-size:14px;line-height:1.6;margin:0 0 5px;''>Dear <strong>Eren Grace Pactol</strong>,</p>
                                <p style=''color:#334155;font-size:14px;line-height:1.6;margin:0 0 15px;''>This is to notify you regarding the campus access of your child:</p>
                                <table width=''100%'' cellpadding=''8'' cellspacing=''0'' style=''background:#f8fafc;border-radius:6px;margin:15px 0;font-size:14px;border:1px solid #e2e8f0;''>
                                    <tr><td style=''color:#64748b;width:140px;border-bottom:1px solid #e2e8f0;''><strong>Student Name</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>John Ervin Baje</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Student ID</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>2026-0002</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Grade & Section</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>Grade 12 - CSS</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Date</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>June 20, 2026</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Time</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>08:51 PM</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Scan Type</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>ENTRY</td></tr>
                                    
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Status</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;font-weight:600;''>Late</td></tr>
                                </table>
                                <p style=''color:#334155;font-size:14px;line-height:1.6;margin:15px 0 0;''>Thank you for your continued support.</p>
                            </td>
                        </tr>
                        <tr>
                            <td style=''background:#f8fafc;padding:20px;text-align:center;border-top:2px solid #e2e8f0;''>
                                <p style=''color:#64748b;font-size:13px;font-weight:600;margin:0;''>Ilaya National High School</p>
                                <p style=''color:#94a3b8;font-size:12px;margin:3px 0;''>Ilaya, Dapitan City</p>
                                <p style=''color:#94a3b8;font-size:11px;margin:8px 0 0;padding-top:8px;border-top:1px solid #e2e8f0;''>This is an automated message from the School Gate Attendance System.</p>
                            </td>
                        </tr>
                    </table>
                </td></tr>
            </table>
        </body>
        </html>', 'Sent', '2026-06-20 20:52:09.176982', '2026-06-20 20:51:39.542977');
INSERT INTO school_gate.email_logs (email_log_id, student_id, parent_email, notification_type, subject, message, send_status, sent_at, created_at) VALUES (68, 32, 'ervinpactol@gmail.com', 'Late', 'Late Notification - John Ervin Baje', '
        <!DOCTYPE html>
        <html>
        <head><meta charset=''UTF-8''></head>
        <body style=''margin:0;padding:0;background:#f4f4f4;font-family:Arial,sans-serif;''>
            <table width=''100%'' cellpadding=''0'' cellspacing=''0'' style=''background:#f4f4f4;padding:20px;''>
                <tr><td align=''center''>
                    <table width=''600'' cellpadding=''0'' cellspacing=''0'' style=''background:#ffffff;border-radius:8px;overflow:hidden;box-shadow:0 2px 8px rgba(0,0,0,0.1);''>
                        <tr>
                            <td style=''background:#1e293b;padding:25px 20px;text-align:center;''>
                                <table cellpadding=''0'' cellspacing=''0'' style=''margin:0 auto;''>
                                    <tr>
                                        <td style=''vertical-align:middle;padding-right:12px;''>
                                            <img src=''cid:logo_img'' alt=''Ilaya National High School'' width=''40'' height=''40'' style=''border-radius:8px;''>
                                        </td>
                                        <td style=''vertical-align:middle;text-align:left;''>
                                            <h1 style=''color:#ffffff;margin:0;font-size:20px;''>Ilaya National High School</h1>
                                            <p style=''color:#93c5fd;margin:2px 0 0;font-size:12px;''>Gate Attendance Notification</p>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td style=''padding:30px 30px 20px;''>
                                <p style=''color:#334155;font-size:14px;line-height:1.6;margin:0 0 5px;''>Dear <strong>Eren Grace Pactol</strong>,</p>
                                <p style=''color:#334155;font-size:14px;line-height:1.6;margin:0 0 15px;''>This is to notify you regarding the campus access of your child:</p>
                                <table width=''100%'' cellpadding=''8'' cellspacing=''0'' style=''background:#f8fafc;border-radius:6px;margin:15px 0;font-size:14px;border:1px solid #e2e8f0;''>
                                    <tr><td style=''color:#64748b;width:140px;border-bottom:1px solid #e2e8f0;''><strong>Student Name</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>John Ervin Baje</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Student ID</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>2026-0002</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Grade & Section</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>Grade 12 - CSS</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Date</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>June 20, 2026</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Time</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>08:51 PM</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Scan Type</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>ENTRY</td></tr>
                                    
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Status</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;font-weight:600;''>Late</td></tr>
                                </table>
                                <p style=''color:#334155;font-size:14px;line-height:1.6;margin:15px 0 0;''>Thank you for your continued support.</p>
                            </td>
                        </tr>
                        <tr>
                            <td style=''background:#f8fafc;padding:20px;text-align:center;border-top:2px solid #e2e8f0;''>
                                <p style=''color:#64748b;font-size:13px;font-weight:600;margin:0;''>Ilaya National High School</p>
                                <p style=''color:#94a3b8;font-size:12px;margin:3px 0;''>Ilaya, Dapitan City</p>
                                <p style=''color:#94a3b8;font-size:11px;margin:8px 0 0;padding-top:8px;border-top:1px solid #e2e8f0;''>This is an automated message from the School Gate Attendance System.</p>
                            </td>
                        </tr>
                    </table>
                </td></tr>
            </table>
        </body>
        </html>', 'Pending', NULL, '2026-06-20 20:52:09.190393');
INSERT INTO school_gate.email_logs (email_log_id, student_id, parent_email, notification_type, subject, message, send_status, sent_at, created_at) VALUES (69, 32, 'ervinpactol@gmail.com', 'Dismissal', 'Dismissal Notification - John Ervin Baje', '
        <!DOCTYPE html>
        <html>
        <head><meta charset=''UTF-8''></head>
        <body style=''margin:0;padding:0;background:#f4f4f4;font-family:Arial,sans-serif;''>
            <table width=''100%'' cellpadding=''0'' cellspacing=''0'' style=''background:#f4f4f4;padding:20px;''>
                <tr><td align=''center''>
                    <table width=''600'' cellpadding=''0'' cellspacing=''0'' style=''background:#ffffff;border-radius:8px;overflow:hidden;box-shadow:0 2px 8px rgba(0,0,0,0.1);''>
                        <tr>
                            <td style=''background:#1e293b;padding:25px 20px;text-align:center;''>
                                <table cellpadding=''0'' cellspacing=''0'' style=''margin:0 auto;''>
                                    <tr>
                                        <td style=''vertical-align:middle;padding-right:12px;''>
                                            <img src=''cid:logo_img'' alt=''Ilaya National High School'' width=''40'' height=''40'' style=''border-radius:8px;''>
                                        </td>
                                        <td style=''vertical-align:middle;text-align:left;''>
                                            <h1 style=''color:#ffffff;margin:0;font-size:20px;''>Ilaya National High School</h1>
                                            <p style=''color:#93c5fd;margin:2px 0 0;font-size:12px;''>Gate Attendance Notification</p>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td style=''padding:30px 30px 20px;''>
                                <p style=''color:#334155;font-size:14px;line-height:1.6;margin:0 0 5px;''>Dear <strong>Eren Grace Pactol</strong>,</p>
                                <p style=''color:#334155;font-size:14px;line-height:1.6;margin:0 0 15px;''>This is to notify you regarding the campus access of your child:</p>
                                <table width=''100%'' cellpadding=''8'' cellspacing=''0'' style=''background:#f8fafc;border-radius:6px;margin:15px 0;font-size:14px;border:1px solid #e2e8f0;''>
                                    <tr><td style=''color:#64748b;width:140px;border-bottom:1px solid #e2e8f0;''><strong>Student Name</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>John Ervin Baje</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Student ID</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>2026-0002</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Grade & Section</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>Grade 12 - CSS</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Date</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>June 20, 2026</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Time</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>08:53 PM</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Scan Type</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>EXIT</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Exit Type</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>Dismissal</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Status</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;font-weight:600;''>Late</td></tr>
                                </table>
                                <p style=''color:#334155;font-size:14px;line-height:1.6;margin:15px 0 0;''>Thank you for your continued support.</p>
                            </td>
                        </tr>
                        <tr>
                            <td style=''background:#f8fafc;padding:20px;text-align:center;border-top:2px solid #e2e8f0;''>
                                <p style=''color:#64748b;font-size:13px;font-weight:600;margin:0;''>Ilaya National High School</p>
                                <p style=''color:#94a3b8;font-size:12px;margin:3px 0;''>Ilaya, Dapitan City</p>
                                <p style=''color:#94a3b8;font-size:11px;margin:8px 0 0;padding-top:8px;border-top:1px solid #e2e8f0;''>This is an automated message from the School Gate Attendance System.</p>
                            </td>
                        </tr>
                    </table>
                </td></tr>
            </table>
        </body>
        </html>', 'Sent', '2026-06-20 20:53:29.910742', '2026-06-20 20:53:21.323183');
INSERT INTO school_gate.email_logs (email_log_id, student_id, parent_email, notification_type, subject, message, send_status, sent_at, created_at) VALUES (70, 19, 'luisa.torres@email.com', 'Entry', 'Entry Notification - Juan Cruz', '
        <!DOCTYPE html>
        <html>
        <head><meta charset=''UTF-8''></head>
        <body style=''margin:0;padding:0;background:#f4f4f4;font-family:Arial,sans-serif;''>
            <table width=''100%'' cellpadding=''0'' cellspacing=''0'' style=''background:#f4f4f4;padding:20px;''>
                <tr><td align=''center''>
                    <table width=''600'' cellpadding=''0'' cellspacing=''0'' style=''background:#ffffff;border-radius:8px;overflow:hidden;box-shadow:0 2px 8px rgba(0,0,0,0.1);''>
                        <tr>
                            <td style=''background:#1e293b;padding:25px 20px;text-align:center;''>
                                <table cellpadding=''0'' cellspacing=''0'' style=''margin:0 auto;''>
                                    <tr>
                                        <td style=''vertical-align:middle;padding-right:12px;''>
                                            <img src=''cid:logo_img'' alt=''Ilaya National High School'' width=''40'' height=''40'' style=''border-radius:8px;''>
                                        </td>
                                        <td style=''vertical-align:middle;text-align:left;''>
                                            <h1 style=''color:#ffffff;margin:0;font-size:20px;''>Ilaya National High School</h1>
                                            <p style=''color:#93c5fd;margin:2px 0 0;font-size:12px;''>Gate Attendance Notification</p>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td style=''padding:30px 30px 20px;''>
                                <p style=''color:#334155;font-size:14px;line-height:1.6;margin:0 0 5px;''>Dear <strong>Luisa Torres</strong>,</p>
                                <p style=''color:#334155;font-size:14px;line-height:1.6;margin:0 0 15px;''>This is to notify you regarding the campus access of your child:</p>
                                <table width=''100%'' cellpadding=''8'' cellspacing=''0'' style=''background:#f8fafc;border-radius:6px;margin:15px 0;font-size:14px;border:1px solid #e2e8f0;''>
                                    <tr><td style=''color:#64748b;width:140px;border-bottom:1px solid #e2e8f0;''><strong>Student Name</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>Juan Cruz</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Student ID</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>2026-0007</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Grade & Section</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>Grade 11 - BPP</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Date</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>June 20, 2026</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Time</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>08:54 PM</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Scan Type</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>ENTRY</td></tr>
                                    
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Status</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;font-weight:600;''>Late</td></tr>
                                </table>
                                <p style=''color:#334155;font-size:14px;line-height:1.6;margin:15px 0 0;''>Thank you for your continued support.</p>
                            </td>
                        </tr>
                        <tr>
                            <td style=''background:#f8fafc;padding:20px;text-align:center;border-top:2px solid #e2e8f0;''>
                                <p style=''color:#64748b;font-size:13px;font-weight:600;margin:0;''>Ilaya National High School</p>
                                <p style=''color:#94a3b8;font-size:12px;margin:3px 0;''>Ilaya, Dapitan City</p>
                                <p style=''color:#94a3b8;font-size:11px;margin:8px 0 0;padding-top:8px;border-top:1px solid #e2e8f0;''>This is an automated message from the School Gate Attendance System.</p>
                            </td>
                        </tr>
                    </table>
                </td></tr>
            </table>
        </body>
        </html>', 'Sent', '2026-06-20 20:54:45.097196', '2026-06-20 20:54:16.163177');
INSERT INTO school_gate.email_logs (email_log_id, student_id, parent_email, notification_type, subject, message, send_status, sent_at, created_at) VALUES (71, 19, 'luisa.torres@email.com', 'Late', 'Late Notification - Juan Cruz', '
        <!DOCTYPE html>
        <html>
        <head><meta charset=''UTF-8''></head>
        <body style=''margin:0;padding:0;background:#f4f4f4;font-family:Arial,sans-serif;''>
            <table width=''100%'' cellpadding=''0'' cellspacing=''0'' style=''background:#f4f4f4;padding:20px;''>
                <tr><td align=''center''>
                    <table width=''600'' cellpadding=''0'' cellspacing=''0'' style=''background:#ffffff;border-radius:8px;overflow:hidden;box-shadow:0 2px 8px rgba(0,0,0,0.1);''>
                        <tr>
                            <td style=''background:#1e293b;padding:25px 20px;text-align:center;''>
                                <table cellpadding=''0'' cellspacing=''0'' style=''margin:0 auto;''>
                                    <tr>
                                        <td style=''vertical-align:middle;padding-right:12px;''>
                                            <img src=''cid:logo_img'' alt=''Ilaya National High School'' width=''40'' height=''40'' style=''border-radius:8px;''>
                                        </td>
                                        <td style=''vertical-align:middle;text-align:left;''>
                                            <h1 style=''color:#ffffff;margin:0;font-size:20px;''>Ilaya National High School</h1>
                                            <p style=''color:#93c5fd;margin:2px 0 0;font-size:12px;''>Gate Attendance Notification</p>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td style=''padding:30px 30px 20px;''>
                                <p style=''color:#334155;font-size:14px;line-height:1.6;margin:0 0 5px;''>Dear <strong>Luisa Torres</strong>,</p>
                                <p style=''color:#334155;font-size:14px;line-height:1.6;margin:0 0 15px;''>This is to notify you regarding the campus access of your child:</p>
                                <table width=''100%'' cellpadding=''8'' cellspacing=''0'' style=''background:#f8fafc;border-radius:6px;margin:15px 0;font-size:14px;border:1px solid #e2e8f0;''>
                                    <tr><td style=''color:#64748b;width:140px;border-bottom:1px solid #e2e8f0;''><strong>Student Name</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>Juan Cruz</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Student ID</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>2026-0007</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Grade & Section</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>Grade 11 - BPP</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Date</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>June 20, 2026</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Time</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>08:54 PM</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Scan Type</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>ENTRY</td></tr>
                                    
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Status</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;font-weight:600;''>Late</td></tr>
                                </table>
                                <p style=''color:#334155;font-size:14px;line-height:1.6;margin:15px 0 0;''>Thank you for your continued support.</p>
                            </td>
                        </tr>
                        <tr>
                            <td style=''background:#f8fafc;padding:20px;text-align:center;border-top:2px solid #e2e8f0;''>
                                <p style=''color:#64748b;font-size:13px;font-weight:600;margin:0;''>Ilaya National High School</p>
                                <p style=''color:#94a3b8;font-size:12px;margin:3px 0;''>Ilaya, Dapitan City</p>
                                <p style=''color:#94a3b8;font-size:11px;margin:8px 0 0;padding-top:8px;border-top:1px solid #e2e8f0;''>This is an automated message from the School Gate Attendance System.</p>
                            </td>
                        </tr>
                    </table>
                </td></tr>
            </table>
        </body>
        </html>', 'Sent', '2026-06-20 20:54:51.043602', '2026-06-20 20:54:45.109084');
INSERT INTO school_gate.email_logs (email_log_id, student_id, parent_email, notification_type, subject, message, send_status, sent_at, created_at) VALUES (72, 19, 'luisa.torres@email.com', 'Dismissal', 'Dismissal Notification - Juan Cruz', '
        <!DOCTYPE html>
        <html>
        <head><meta charset=''UTF-8''></head>
        <body style=''margin:0;padding:0;background:#f4f4f4;font-family:Arial,sans-serif;''>
            <table width=''100%'' cellpadding=''0'' cellspacing=''0'' style=''background:#f4f4f4;padding:20px;''>
                <tr><td align=''center''>
                    <table width=''600'' cellpadding=''0'' cellspacing=''0'' style=''background:#ffffff;border-radius:8px;overflow:hidden;box-shadow:0 2px 8px rgba(0,0,0,0.1);''>
                        <tr>
                            <td style=''background:#1e293b;padding:25px 20px;text-align:center;''>
                                <table cellpadding=''0'' cellspacing=''0'' style=''margin:0 auto;''>
                                    <tr>
                                        <td style=''vertical-align:middle;padding-right:12px;''>
                                            <img src=''cid:logo_img'' alt=''Ilaya National High School'' width=''40'' height=''40'' style=''border-radius:8px;''>
                                        </td>
                                        <td style=''vertical-align:middle;text-align:left;''>
                                            <h1 style=''color:#ffffff;margin:0;font-size:20px;''>Ilaya National High School</h1>
                                            <p style=''color:#93c5fd;margin:2px 0 0;font-size:12px;''>Gate Attendance Notification</p>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td style=''padding:30px 30px 20px;''>
                                <p style=''color:#334155;font-size:14px;line-height:1.6;margin:0 0 5px;''>Dear <strong>Luisa Torres</strong>,</p>
                                <p style=''color:#334155;font-size:14px;line-height:1.6;margin:0 0 15px;''>This is to notify you regarding the campus access of your child:</p>
                                <table width=''100%'' cellpadding=''8'' cellspacing=''0'' style=''background:#f8fafc;border-radius:6px;margin:15px 0;font-size:14px;border:1px solid #e2e8f0;''>
                                    <tr><td style=''color:#64748b;width:140px;border-bottom:1px solid #e2e8f0;''><strong>Student Name</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>Juan Cruz</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Student ID</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>2026-0007</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Grade & Section</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>Grade 11 - BPP</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Date</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>June 20, 2026</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Time</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>08:54 PM</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Scan Type</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>EXIT</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Exit Type</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>Dismissal</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Status</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;font-weight:600;''>Late</td></tr>
                                </table>
                                <p style=''color:#334155;font-size:14px;line-height:1.6;margin:15px 0 0;''>Thank you for your continued support.</p>
                            </td>
                        </tr>
                        <tr>
                            <td style=''background:#f8fafc;padding:20px;text-align:center;border-top:2px solid #e2e8f0;''>
                                <p style=''color:#64748b;font-size:13px;font-weight:600;margin:0;''>Ilaya National High School</p>
                                <p style=''color:#94a3b8;font-size:12px;margin:3px 0;''>Ilaya, Dapitan City</p>
                                <p style=''color:#94a3b8;font-size:11px;margin:8px 0 0;padding-top:8px;border-top:1px solid #e2e8f0;''>This is an automated message from the School Gate Attendance System.</p>
                            </td>
                        </tr>
                    </table>
                </td></tr>
            </table>
        </body>
        </html>', 'Sent', '2026-06-20 20:55:51.085167', '2026-06-20 20:54:57.356937');
INSERT INTO school_gate.email_logs (email_log_id, student_id, parent_email, notification_type, subject, message, send_status, sent_at, created_at) VALUES (73, 22, 'ana.garcia@email.com', 'Entry', 'Entry Notification - Ana Ramos', '
        <!DOCTYPE html>
        <html>
        <head><meta charset=''UTF-8''></head>
        <body style=''margin:0;padding:0;background:#f4f4f4;font-family:Arial,sans-serif;''>
            <table width=''100%'' cellpadding=''0'' cellspacing=''0'' style=''background:#f4f4f4;padding:20px;''>
                <tr><td align=''center''>
                    <table width=''600'' cellpadding=''0'' cellspacing=''0'' style=''background:#ffffff;border-radius:8px;overflow:hidden;box-shadow:0 2px 8px rgba(0,0,0,0.1);''>
                        <tr>
                            <td style=''background:#1e293b;padding:25px 20px;text-align:center;''>
                                <table cellpadding=''0'' cellspacing=''0'' style=''margin:0 auto;''>
                                    <tr>
                                        <td style=''vertical-align:middle;padding-right:12px;''>
                                            <img src=''cid:logo_img'' alt=''Ilaya National High School'' width=''40'' height=''40'' style=''border-radius:8px;''>
                                        </td>
                                        <td style=''vertical-align:middle;text-align:left;''>
                                            <h1 style=''color:#ffffff;margin:0;font-size:20px;''>Ilaya National High School</h1>
                                            <p style=''color:#93c5fd;margin:2px 0 0;font-size:12px;''>Gate Attendance Notification</p>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td style=''padding:30px 30px 20px;''>
                                <p style=''color:#334155;font-size:14px;line-height:1.6;margin:0 0 5px;''>Dear <strong>Ana Garcia</strong>,</p>
                                <p style=''color:#334155;font-size:14px;line-height:1.6;margin:0 0 15px;''>This is to notify you regarding the campus access of your child:</p>
                                <table width=''100%'' cellpadding=''8'' cellspacing=''0'' style=''background:#f8fafc;border-radius:6px;margin:15px 0;font-size:14px;border:1px solid #e2e8f0;''>
                                    <tr><td style=''color:#64748b;width:140px;border-bottom:1px solid #e2e8f0;''><strong>Student Name</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>Ana Ramos</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Student ID</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>2026-0010</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Grade & Section</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''> - </td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Date</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>June 20, 2026</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Time</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>08:55 PM</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Scan Type</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>ENTRY</td></tr>
                                    
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Status</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;font-weight:600;''>Late</td></tr>
                                </table>
                                <p style=''color:#334155;font-size:14px;line-height:1.6;margin:15px 0 0;''>Thank you for your continued support.</p>
                            </td>
                        </tr>
                        <tr>
                            <td style=''background:#f8fafc;padding:20px;text-align:center;border-top:2px solid #e2e8f0;''>
                                <p style=''color:#64748b;font-size:13px;font-weight:600;margin:0;''>Ilaya National High School</p>
                                <p style=''color:#94a3b8;font-size:12px;margin:3px 0;''>Ilaya, Dapitan City</p>
                                <p style=''color:#94a3b8;font-size:11px;margin:8px 0 0;padding-top:8px;border-top:1px solid #e2e8f0;''>This is an automated message from the School Gate Attendance System.</p>
                            </td>
                        </tr>
                    </table>
                </td></tr>
            </table>
        </body>
        </html>', 'Pending', NULL, '2026-06-20 20:55:57.755815');
INSERT INTO school_gate.email_logs (email_log_id, student_id, parent_email, notification_type, subject, message, send_status, sent_at, created_at) VALUES (74, 23, 'jose.santos@email.com', 'Entry', 'Entry Notification - Pedro Torres', '
        <!DOCTYPE html>
        <html>
        <head><meta charset=''UTF-8''></head>
        <body style=''margin:0;padding:0;background:#f4f4f4;font-family:Arial,sans-serif;''>
            <table width=''100%'' cellpadding=''0'' cellspacing=''0'' style=''background:#f4f4f4;padding:20px;''>
                <tr><td align=''center''>
                    <table width=''600'' cellpadding=''0'' cellspacing=''0'' style=''background:#ffffff;border-radius:8px;overflow:hidden;box-shadow:0 2px 8px rgba(0,0,0,0.1);''>
                        <tr>
                            <td style=''background:#1e293b;padding:25px 20px;text-align:center;''>
                                <table cellpadding=''0'' cellspacing=''0'' style=''margin:0 auto;''>
                                    <tr>
                                        <td style=''vertical-align:middle;padding-right:12px;''>
                                            <img src=''cid:logo_img'' alt=''Ilaya National High School'' width=''40'' height=''40'' style=''border-radius:8px;''>
                                        </td>
                                        <td style=''vertical-align:middle;text-align:left;''>
                                            <h1 style=''color:#ffffff;margin:0;font-size:20px;''>Ilaya National High School</h1>
                                            <p style=''color:#93c5fd;margin:2px 0 0;font-size:12px;''>Gate Attendance Notification</p>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td style=''padding:30px 30px 20px;''>
                                <p style=''color:#334155;font-size:14px;line-height:1.6;margin:0 0 5px;''>Dear <strong>Jose Santos</strong>,</p>
                                <p style=''color:#334155;font-size:14px;line-height:1.6;margin:0 0 15px;''>This is to notify you regarding the campus access of your child:</p>
                                <table width=''100%'' cellpadding=''8'' cellspacing=''0'' style=''background:#f8fafc;border-radius:6px;margin:15px 0;font-size:14px;border:1px solid #e2e8f0;''>
                                    <tr><td style=''color:#64748b;width:140px;border-bottom:1px solid #e2e8f0;''><strong>Student Name</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>Pedro Torres</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Student ID</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>2026-0011</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Grade & Section</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''> - </td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Date</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>June 20, 2026</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Time</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>08:57 PM</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Scan Type</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>ENTRY</td></tr>
                                    
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Status</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;font-weight:600;''>Late</td></tr>
                                </table>
                                <p style=''color:#334155;font-size:14px;line-height:1.6;margin:15px 0 0;''>Thank you for your continued support.</p>
                            </td>
                        </tr>
                        <tr>
                            <td style=''background:#f8fafc;padding:20px;text-align:center;border-top:2px solid #e2e8f0;''>
                                <p style=''color:#64748b;font-size:13px;font-weight:600;margin:0;''>Ilaya National High School</p>
                                <p style=''color:#94a3b8;font-size:12px;margin:3px 0;''>Ilaya, Dapitan City</p>
                                <p style=''color:#94a3b8;font-size:11px;margin:8px 0 0;padding-top:8px;border-top:1px solid #e2e8f0;''>This is an automated message from the School Gate Attendance System.</p>
                            </td>
                        </tr>
                    </table>
                </td></tr>
            </table>
        </body>
        </html>', 'Sent', '2026-06-20 20:58:23.621636', '2026-06-20 20:57:48.97633');
INSERT INTO school_gate.email_logs (email_log_id, student_id, parent_email, notification_type, subject, message, send_status, sent_at, created_at) VALUES (75, 23, 'jose.santos@email.com', 'Late', 'Late Notification - Pedro Torres', '
        <!DOCTYPE html>
        <html>
        <head><meta charset=''UTF-8''></head>
        <body style=''margin:0;padding:0;background:#f4f4f4;font-family:Arial,sans-serif;''>
            <table width=''100%'' cellpadding=''0'' cellspacing=''0'' style=''background:#f4f4f4;padding:20px;''>
                <tr><td align=''center''>
                    <table width=''600'' cellpadding=''0'' cellspacing=''0'' style=''background:#ffffff;border-radius:8px;overflow:hidden;box-shadow:0 2px 8px rgba(0,0,0,0.1);''>
                        <tr>
                            <td style=''background:#1e293b;padding:25px 20px;text-align:center;''>
                                <table cellpadding=''0'' cellspacing=''0'' style=''margin:0 auto;''>
                                    <tr>
                                        <td style=''vertical-align:middle;padding-right:12px;''>
                                            <img src=''cid:logo_img'' alt=''Ilaya National High School'' width=''40'' height=''40'' style=''border-radius:8px;''>
                                        </td>
                                        <td style=''vertical-align:middle;text-align:left;''>
                                            <h1 style=''color:#ffffff;margin:0;font-size:20px;''>Ilaya National High School</h1>
                                            <p style=''color:#93c5fd;margin:2px 0 0;font-size:12px;''>Gate Attendance Notification</p>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td style=''padding:30px 30px 20px;''>
                                <p style=''color:#334155;font-size:14px;line-height:1.6;margin:0 0 5px;''>Dear <strong>Jose Santos</strong>,</p>
                                <p style=''color:#334155;font-size:14px;line-height:1.6;margin:0 0 15px;''>This is to notify you regarding the campus access of your child:</p>
                                <table width=''100%'' cellpadding=''8'' cellspacing=''0'' style=''background:#f8fafc;border-radius:6px;margin:15px 0;font-size:14px;border:1px solid #e2e8f0;''>
                                    <tr><td style=''color:#64748b;width:140px;border-bottom:1px solid #e2e8f0;''><strong>Student Name</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>Pedro Torres</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Student ID</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>2026-0011</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Grade & Section</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''> - </td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Date</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>June 20, 2026</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Time</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>08:57 PM</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Scan Type</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>ENTRY</td></tr>
                                    
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Status</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;font-weight:600;''>Late</td></tr>
                                </table>
                                <p style=''color:#334155;font-size:14px;line-height:1.6;margin:15px 0 0;''>Thank you for your continued support.</p>
                            </td>
                        </tr>
                        <tr>
                            <td style=''background:#f8fafc;padding:20px;text-align:center;border-top:2px solid #e2e8f0;''>
                                <p style=''color:#64748b;font-size:13px;font-weight:600;margin:0;''>Ilaya National High School</p>
                                <p style=''color:#94a3b8;font-size:12px;margin:3px 0;''>Ilaya, Dapitan City</p>
                                <p style=''color:#94a3b8;font-size:11px;margin:8px 0 0;padding-top:8px;border-top:1px solid #e2e8f0;''>This is an automated message from the School Gate Attendance System.</p>
                            </td>
                        </tr>
                    </table>
                </td></tr>
            </table>
        </body>
        </html>', 'Pending', NULL, '2026-06-20 20:58:23.624189');
INSERT INTO school_gate.email_logs (email_log_id, student_id, parent_email, notification_type, subject, message, send_status, sent_at, created_at) VALUES (76, 22, 'ana.garcia@email.com', 'Dismissal', 'Dismissal Notification - Ana Ramos', '
        <!DOCTYPE html>
        <html>
        <head><meta charset=''UTF-8''></head>
        <body style=''margin:0;padding:0;background:#f4f4f4;font-family:Arial,sans-serif;''>
            <table width=''100%'' cellpadding=''0'' cellspacing=''0'' style=''background:#f4f4f4;padding:20px;''>
                <tr><td align=''center''>
                    <table width=''600'' cellpadding=''0'' cellspacing=''0'' style=''background:#ffffff;border-radius:8px;overflow:hidden;box-shadow:0 2px 8px rgba(0,0,0,0.1);''>
                        <tr>
                            <td style=''background:#1e293b;padding:25px 20px;text-align:center;''>
                                <table cellpadding=''0'' cellspacing=''0'' style=''margin:0 auto;''>
                                    <tr>
                                        <td style=''vertical-align:middle;padding-right:12px;''>
                                            <img src=''cid:logo_img'' alt=''Ilaya National High School'' width=''40'' height=''40'' style=''border-radius:8px;''>
                                        </td>
                                        <td style=''vertical-align:middle;text-align:left;''>
                                            <h1 style=''color:#ffffff;margin:0;font-size:20px;''>Ilaya National High School</h1>
                                            <p style=''color:#93c5fd;margin:2px 0 0;font-size:12px;''>Gate Attendance Notification</p>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td style=''padding:30px 30px 20px;''>
                                <p style=''color:#334155;font-size:14px;line-height:1.6;margin:0 0 5px;''>Dear <strong>Ana Garcia</strong>,</p>
                                <p style=''color:#334155;font-size:14px;line-height:1.6;margin:0 0 15px;''>This is to notify you regarding the campus access of your child:</p>
                                <table width=''100%'' cellpadding=''8'' cellspacing=''0'' style=''background:#f8fafc;border-radius:6px;margin:15px 0;font-size:14px;border:1px solid #e2e8f0;''>
                                    <tr><td style=''color:#64748b;width:140px;border-bottom:1px solid #e2e8f0;''><strong>Student Name</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>Ana Ramos</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Student ID</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>2026-0010</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Grade & Section</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''> - </td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Date</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>June 20, 2026</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Time</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>09:02 PM</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Scan Type</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>EXIT</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Exit Type</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>Dismissal</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Status</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;font-weight:600;''>Late</td></tr>
                                </table>
                                <p style=''color:#334155;font-size:14px;line-height:1.6;margin:15px 0 0;''>Thank you for your continued support.</p>
                            </td>
                        </tr>
                        <tr>
                            <td style=''background:#f8fafc;padding:20px;text-align:center;border-top:2px solid #e2e8f0;''>
                                <p style=''color:#64748b;font-size:13px;font-weight:600;margin:0;''>Ilaya National High School</p>
                                <p style=''color:#94a3b8;font-size:12px;margin:3px 0;''>Ilaya, Dapitan City</p>
                                <p style=''color:#94a3b8;font-size:11px;margin:8px 0 0;padding-top:8px;border-top:1px solid #e2e8f0;''>This is an automated message from the School Gate Attendance System.</p>
                            </td>
                        </tr>
                    </table>
                </td></tr>
            </table>
        </body>
        </html>', 'Sent', '2026-06-20 21:02:25.473681', '2026-06-20 21:02:18.695359');
INSERT INTO school_gate.email_logs (email_log_id, student_id, parent_email, notification_type, subject, message, send_status, sent_at, created_at) VALUES (77, 23, 'jose.santos@email.com', 'Dismissal', 'Dismissal Notification - Pedro Torres', '
        <!DOCTYPE html>
        <html>
        <head><meta charset=''UTF-8''></head>
        <body style=''margin:0;padding:0;background:#f4f4f4;font-family:Arial,sans-serif;''>
            <table width=''100%'' cellpadding=''0'' cellspacing=''0'' style=''background:#f4f4f4;padding:20px;''>
                <tr><td align=''center''>
                    <table width=''600'' cellpadding=''0'' cellspacing=''0'' style=''background:#ffffff;border-radius:8px;overflow:hidden;box-shadow:0 2px 8px rgba(0,0,0,0.1);''>
                        <tr>
                            <td style=''background:#1e293b;padding:25px 20px;text-align:center;''>
                                <table cellpadding=''0'' cellspacing=''0'' style=''margin:0 auto;''>
                                    <tr>
                                        <td style=''vertical-align:middle;padding-right:12px;''>
                                            <img src=''cid:logo_img'' alt=''Ilaya National High School'' width=''40'' height=''40'' style=''border-radius:8px;''>
                                        </td>
                                        <td style=''vertical-align:middle;text-align:left;''>
                                            <h1 style=''color:#ffffff;margin:0;font-size:20px;''>Ilaya National High School</h1>
                                            <p style=''color:#93c5fd;margin:2px 0 0;font-size:12px;''>Gate Attendance Notification</p>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td style=''padding:30px 30px 20px;''>
                                <p style=''color:#334155;font-size:14px;line-height:1.6;margin:0 0 5px;''>Dear <strong>Jose Santos</strong>,</p>
                                <p style=''color:#334155;font-size:14px;line-height:1.6;margin:0 0 15px;''>This is to notify you regarding the campus access of your child:</p>
                                <table width=''100%'' cellpadding=''8'' cellspacing=''0'' style=''background:#f8fafc;border-radius:6px;margin:15px 0;font-size:14px;border:1px solid #e2e8f0;''>
                                    <tr><td style=''color:#64748b;width:140px;border-bottom:1px solid #e2e8f0;''><strong>Student Name</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>Pedro Torres</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Student ID</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>2026-0011</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Grade & Section</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''> - </td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Date</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>June 20, 2026</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Time</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>09:02 PM</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Scan Type</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>EXIT</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Exit Type</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>Dismissal</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Status</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;font-weight:600;''>Late</td></tr>
                                </table>
                                <p style=''color:#334155;font-size:14px;line-height:1.6;margin:15px 0 0;''>Thank you for your continued support.</p>
                            </td>
                        </tr>
                        <tr>
                            <td style=''background:#f8fafc;padding:20px;text-align:center;border-top:2px solid #e2e8f0;''>
                                <p style=''color:#64748b;font-size:13px;font-weight:600;margin:0;''>Ilaya National High School</p>
                                <p style=''color:#94a3b8;font-size:12px;margin:3px 0;''>Ilaya, Dapitan City</p>
                                <p style=''color:#94a3b8;font-size:11px;margin:8px 0 0;padding-top:8px;border-top:1px solid #e2e8f0;''>This is an automated message from the School Gate Attendance System.</p>
                            </td>
                        </tr>
                    </table>
                </td></tr>
            </table>
        </body>
        </html>', 'Sent', '2026-06-20 21:02:43.810606', '2026-06-20 21:02:37.459453');
INSERT INTO school_gate.email_logs (email_log_id, student_id, parent_email, notification_type, subject, message, send_status, sent_at, created_at) VALUES (78, 21, 'luisa.torres@email.com', 'Entry', 'Entry Notification - Jose Garcia', '
        <!DOCTYPE html>
        <html>
        <head><meta charset=''UTF-8''></head>
        <body style=''margin:0;padding:0;background:#f4f4f4;font-family:Arial,sans-serif;''>
            <table width=''100%'' cellpadding=''0'' cellspacing=''0'' style=''background:#f4f4f4;padding:20px;''>
                <tr><td align=''center''>
                    <table width=''600'' cellpadding=''0'' cellspacing=''0'' style=''background:#ffffff;border-radius:8px;overflow:hidden;box-shadow:0 2px 8px rgba(0,0,0,0.1);''>
                        <tr>
                            <td style=''background:#1e293b;padding:25px 20px;text-align:center;''>
                                <table cellpadding=''0'' cellspacing=''0'' style=''margin:0 auto;''>
                                    <tr>
                                        <td style=''vertical-align:middle;padding-right:12px;''>
                                            <img src=''cid:logo_img'' alt=''Ilaya National High School'' width=''40'' height=''40'' style=''border-radius:8px;''>
                                        </td>
                                        <td style=''vertical-align:middle;text-align:left;''>
                                            <h1 style=''color:#ffffff;margin:0;font-size:20px;''>Ilaya National High School</h1>
                                            <p style=''color:#93c5fd;margin:2px 0 0;font-size:12px;''>Gate Attendance Notification</p>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td style=''padding:30px 30px 20px;''>
                                <p style=''color:#334155;font-size:14px;line-height:1.6;margin:0 0 5px;''>Dear <strong>Luisa Torres</strong>,</p>
                                <p style=''color:#334155;font-size:14px;line-height:1.6;margin:0 0 15px;''>This is to notify you regarding the campus access of your child:</p>
                                <table width=''100%'' cellpadding=''8'' cellspacing=''0'' style=''background:#f8fafc;border-radius:6px;margin:15px 0;font-size:14px;border:1px solid #e2e8f0;''>
                                    <tr><td style=''color:#64748b;width:140px;border-bottom:1px solid #e2e8f0;''><strong>Student Name</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>Jose Garcia</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Student ID</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>2026-0009</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Grade & Section</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>Grade 11 - STEM</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Date</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>June 20, 2026</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Time</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>09:03 PM</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Scan Type</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>ENTRY</td></tr>
                                    
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Status</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;font-weight:600;''>Late</td></tr>
                                </table>
                                <p style=''color:#334155;font-size:14px;line-height:1.6;margin:15px 0 0;''>Thank you for your continued support.</p>
                            </td>
                        </tr>
                        <tr>
                            <td style=''background:#f8fafc;padding:20px;text-align:center;border-top:2px solid #e2e8f0;''>
                                <p style=''color:#64748b;font-size:13px;font-weight:600;margin:0;''>Ilaya National High School</p>
                                <p style=''color:#94a3b8;font-size:12px;margin:3px 0;''>Ilaya, Dapitan City</p>
                                <p style=''color:#94a3b8;font-size:11px;margin:8px 0 0;padding-top:8px;border-top:1px solid #e2e8f0;''>This is an automated message from the School Gate Attendance System.</p>
                            </td>
                        </tr>
                    </table>
                </td></tr>
            </table>
        </body>
        </html>', 'Sent', '2026-06-20 21:03:17.708682', '2026-06-20 21:03:11.244263');
INSERT INTO school_gate.email_logs (email_log_id, student_id, parent_email, notification_type, subject, message, send_status, sent_at, created_at) VALUES (79, 21, 'luisa.torres@email.com', 'Late', 'Late Notification - Jose Garcia', '
        <!DOCTYPE html>
        <html>
        <head><meta charset=''UTF-8''></head>
        <body style=''margin:0;padding:0;background:#f4f4f4;font-family:Arial,sans-serif;''>
            <table width=''100%'' cellpadding=''0'' cellspacing=''0'' style=''background:#f4f4f4;padding:20px;''>
                <tr><td align=''center''>
                    <table width=''600'' cellpadding=''0'' cellspacing=''0'' style=''background:#ffffff;border-radius:8px;overflow:hidden;box-shadow:0 2px 8px rgba(0,0,0,0.1);''>
                        <tr>
                            <td style=''background:#1e293b;padding:25px 20px;text-align:center;''>
                                <table cellpadding=''0'' cellspacing=''0'' style=''margin:0 auto;''>
                                    <tr>
                                        <td style=''vertical-align:middle;padding-right:12px;''>
                                            <img src=''cid:logo_img'' alt=''Ilaya National High School'' width=''40'' height=''40'' style=''border-radius:8px;''>
                                        </td>
                                        <td style=''vertical-align:middle;text-align:left;''>
                                            <h1 style=''color:#ffffff;margin:0;font-size:20px;''>Ilaya National High School</h1>
                                            <p style=''color:#93c5fd;margin:2px 0 0;font-size:12px;''>Gate Attendance Notification</p>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td style=''padding:30px 30px 20px;''>
                                <p style=''color:#334155;font-size:14px;line-height:1.6;margin:0 0 5px;''>Dear <strong>Luisa Torres</strong>,</p>
                                <p style=''color:#334155;font-size:14px;line-height:1.6;margin:0 0 15px;''>This is to notify you regarding the campus access of your child:</p>
                                <table width=''100%'' cellpadding=''8'' cellspacing=''0'' style=''background:#f8fafc;border-radius:6px;margin:15px 0;font-size:14px;border:1px solid #e2e8f0;''>
                                    <tr><td style=''color:#64748b;width:140px;border-bottom:1px solid #e2e8f0;''><strong>Student Name</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>Jose Garcia</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Student ID</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>2026-0009</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Grade & Section</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>Grade 11 - STEM</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Date</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>June 20, 2026</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Time</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>09:03 PM</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Scan Type</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>ENTRY</td></tr>
                                    
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Status</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;font-weight:600;''>Late</td></tr>
                                </table>
                                <p style=''color:#334155;font-size:14px;line-height:1.6;margin:15px 0 0;''>Thank you for your continued support.</p>
                            </td>
                        </tr>
                        <tr>
                            <td style=''background:#f8fafc;padding:20px;text-align:center;border-top:2px solid #e2e8f0;''>
                                <p style=''color:#64748b;font-size:13px;font-weight:600;margin:0;''>Ilaya National High School</p>
                                <p style=''color:#94a3b8;font-size:12px;margin:3px 0;''>Ilaya, Dapitan City</p>
                                <p style=''color:#94a3b8;font-size:11px;margin:8px 0 0;padding-top:8px;border-top:1px solid #e2e8f0;''>This is an automated message from the School Gate Attendance System.</p>
                            </td>
                        </tr>
                    </table>
                </td></tr>
            </table>
        </body>
        </html>', 'Sent', '2026-06-20 21:03:23.27198', '2026-06-20 21:03:17.719296');
INSERT INTO school_gate.email_logs (email_log_id, student_id, parent_email, notification_type, subject, message, send_status, sent_at, created_at) VALUES (80, 35, 'rexon@gmail.com', 'Entry', 'Entry Notification - Judre Dyxon  Baje', '
        <!DOCTYPE html>
        <html>
        <head><meta charset=''UTF-8''></head>
        <body style=''margin:0;padding:0;background:#f4f4f4;font-family:Arial,sans-serif;''>
            <table width=''100%'' cellpadding=''0'' cellspacing=''0'' style=''background:#f4f4f4;padding:20px;''>
                <tr><td align=''center''>
                    <table width=''600'' cellpadding=''0'' cellspacing=''0'' style=''background:#ffffff;border-radius:8px;overflow:hidden;box-shadow:0 2px 8px rgba(0,0,0,0.1);''>
                        <tr>
                            <td style=''background:#1e293b;padding:25px 20px;text-align:center;''>
                                <table cellpadding=''0'' cellspacing=''0'' style=''margin:0 auto;''>
                                    <tr>
                                        <td style=''vertical-align:middle;padding-right:12px;''>
                                            <img src=''cid:logo_img'' alt=''Ilaya National High School'' width=''40'' height=''40'' style=''border-radius:8px;''>
                                        </td>
                                        <td style=''vertical-align:middle;text-align:left;''>
                                            <h1 style=''color:#ffffff;margin:0;font-size:20px;''>Ilaya National High School</h1>
                                            <p style=''color:#93c5fd;margin:2px 0 0;font-size:12px;''>Gate Attendance Notification</p>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td style=''padding:30px 30px 20px;''>
                                <p style=''color:#334155;font-size:14px;line-height:1.6;margin:0 0 5px;''>Dear <strong>Rexon Baje</strong>,</p>
                                <p style=''color:#334155;font-size:14px;line-height:1.6;margin:0 0 15px;''>This is to notify you regarding the campus access of your child:</p>
                                <table width=''100%'' cellpadding=''8'' cellspacing=''0'' style=''background:#f8fafc;border-radius:6px;margin:15px 0;font-size:14px;border:1px solid #e2e8f0;''>
                                    <tr><td style=''color:#64748b;width:140px;border-bottom:1px solid #e2e8f0;''><strong>Student Name</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>Judre Dyxon  Baje</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Student ID</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>2026-0003</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Grade & Section</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>Grade 11 - CSS</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Date</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>June 20, 2026</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Time</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>09:03 PM</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Scan Type</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>ENTRY</td></tr>
                                    
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Status</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;font-weight:600;''>Late</td></tr>
                                </table>
                                <p style=''color:#334155;font-size:14px;line-height:1.6;margin:15px 0 0;''>Thank you for your continued support.</p>
                            </td>
                        </tr>
                        <tr>
                            <td style=''background:#f8fafc;padding:20px;text-align:center;border-top:2px solid #e2e8f0;''>
                                <p style=''color:#64748b;font-size:13px;font-weight:600;margin:0;''>Ilaya National High School</p>
                                <p style=''color:#94a3b8;font-size:12px;margin:3px 0;''>Ilaya, Dapitan City</p>
                                <p style=''color:#94a3b8;font-size:11px;margin:8px 0 0;padding-top:8px;border-top:1px solid #e2e8f0;''>This is an automated message from the School Gate Attendance System.</p>
                            </td>
                        </tr>
                    </table>
                </td></tr>
            </table>
        </body>
        </html>', 'Sent', '2026-06-20 21:03:43.787449', '2026-06-20 21:03:37.143725');
INSERT INTO school_gate.email_logs (email_log_id, student_id, parent_email, notification_type, subject, message, send_status, sent_at, created_at) VALUES (81, 35, 'rexon@gmail.com', 'Late', 'Late Notification - Judre Dyxon  Baje', '
        <!DOCTYPE html>
        <html>
        <head><meta charset=''UTF-8''></head>
        <body style=''margin:0;padding:0;background:#f4f4f4;font-family:Arial,sans-serif;''>
            <table width=''100%'' cellpadding=''0'' cellspacing=''0'' style=''background:#f4f4f4;padding:20px;''>
                <tr><td align=''center''>
                    <table width=''600'' cellpadding=''0'' cellspacing=''0'' style=''background:#ffffff;border-radius:8px;overflow:hidden;box-shadow:0 2px 8px rgba(0,0,0,0.1);''>
                        <tr>
                            <td style=''background:#1e293b;padding:25px 20px;text-align:center;''>
                                <table cellpadding=''0'' cellspacing=''0'' style=''margin:0 auto;''>
                                    <tr>
                                        <td style=''vertical-align:middle;padding-right:12px;''>
                                            <img src=''cid:logo_img'' alt=''Ilaya National High School'' width=''40'' height=''40'' style=''border-radius:8px;''>
                                        </td>
                                        <td style=''vertical-align:middle;text-align:left;''>
                                            <h1 style=''color:#ffffff;margin:0;font-size:20px;''>Ilaya National High School</h1>
                                            <p style=''color:#93c5fd;margin:2px 0 0;font-size:12px;''>Gate Attendance Notification</p>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td style=''padding:30px 30px 20px;''>
                                <p style=''color:#334155;font-size:14px;line-height:1.6;margin:0 0 5px;''>Dear <strong>Rexon Baje</strong>,</p>
                                <p style=''color:#334155;font-size:14px;line-height:1.6;margin:0 0 15px;''>This is to notify you regarding the campus access of your child:</p>
                                <table width=''100%'' cellpadding=''8'' cellspacing=''0'' style=''background:#f8fafc;border-radius:6px;margin:15px 0;font-size:14px;border:1px solid #e2e8f0;''>
                                    <tr><td style=''color:#64748b;width:140px;border-bottom:1px solid #e2e8f0;''><strong>Student Name</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>Judre Dyxon  Baje</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Student ID</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>2026-0003</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Grade & Section</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>Grade 11 - CSS</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Date</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>June 20, 2026</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Time</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>09:03 PM</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Scan Type</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>ENTRY</td></tr>
                                    
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Status</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;font-weight:600;''>Late</td></tr>
                                </table>
                                <p style=''color:#334155;font-size:14px;line-height:1.6;margin:15px 0 0;''>Thank you for your continued support.</p>
                            </td>
                        </tr>
                        <tr>
                            <td style=''background:#f8fafc;padding:20px;text-align:center;border-top:2px solid #e2e8f0;''>
                                <p style=''color:#64748b;font-size:13px;font-weight:600;margin:0;''>Ilaya National High School</p>
                                <p style=''color:#94a3b8;font-size:12px;margin:3px 0;''>Ilaya, Dapitan City</p>
                                <p style=''color:#94a3b8;font-size:11px;margin:8px 0 0;padding-top:8px;border-top:1px solid #e2e8f0;''>This is an automated message from the School Gate Attendance System.</p>
                            </td>
                        </tr>
                    </table>
                </td></tr>
            </table>
        </body>
        </html>', 'Sent', '2026-06-20 21:03:50.657051', '2026-06-20 21:03:43.799794');
INSERT INTO school_gate.email_logs (email_log_id, student_id, parent_email, notification_type, subject, message, send_status, sent_at, created_at) VALUES (54, 32, 'ervinpactol@gmail.com', 'Entry', 'Entry Notification - John Ervin Baje', '
        <!DOCTYPE html>
        <html>
        <head><meta charset=''UTF-8''></head>
        <body style=''margin:0;padding:0;background:#f4f4f4;font-family:Arial,sans-serif;''>
            <table width=''100%'' cellpadding=''0'' cellspacing=''0'' style=''background:#f4f4f4;padding:20px;''>
                <tr><td align=''center''>
                    <table width=''600'' cellpadding=''0'' cellspacing=''0'' style=''background:#ffffff;border-radius:8px;overflow:hidden;box-shadow:0 2px 8px rgba(0,0,0,0.1);''>
                        <tr>
                            <td style=''background:#1e293b;padding:25px 20px;text-align:center;''>
                                <table cellpadding=''0'' cellspacing=''0'' style=''margin:0 auto;''>
                                    <tr>
                                        <td style=''vertical-align:middle;padding-right:12px;''>
                                            <img src=''cid:logo_img'' alt=''Ilaya National High School'' width=''40'' height=''40'' style=''border-radius:8px;''>
                                        </td>
                                        <td style=''vertical-align:middle;text-align:left;''>
                                            <h1 style=''color:#ffffff;margin:0;font-size:20px;''>Ilaya National High School</h1>
                                            <p style=''color:#93c5fd;margin:2px 0 0;font-size:12px;''>Gate Attendance Notification</p>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td style=''padding:30px 30px 20px;''>
                                <p style=''color:#334155;font-size:14px;line-height:1.6;margin:0 0 5px;''>Dear <strong>Eren Grace Pactol</strong>,</p>
                                <p style=''color:#334155;font-size:14px;line-height:1.6;margin:0 0 15px;''>This is to notify you regarding the campus access of your child:</p>
                                <table width=''100%'' cellpadding=''8'' cellspacing=''0'' style=''background:#f8fafc;border-radius:6px;margin:15px 0;font-size:14px;border:1px solid #e2e8f0;''>
                                    <tr><td style=''color:#64748b;width:140px;border-bottom:1px solid #e2e8f0;''><strong>Student Name</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>John Ervin Baje</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Student ID</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>2026-0002</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Grade & Section</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>Grade 12 - CSS</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Date</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>June 18, 2026</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Time</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>11:12 AM</td></tr>
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Scan Type</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;''>ENTRY</td></tr>
                                    
                                    <tr><td style=''color:#64748b;border-bottom:1px solid #e2e8f0;''><strong>Status</strong></td><td style=''color:#1e293b;border-bottom:1px solid #e2e8f0;font-weight:600;''>Late</td></tr>
                                </table>
                                <p style=''color:#334155;font-size:14px;line-height:1.6;margin:15px 0 0;''>Thank you for your continued support.</p>
                            </td>
                        </tr>
                        <tr>
                            <td style=''background:#f8fafc;padding:20px;text-align:center;border-top:2px solid #e2e8f0;''>
                                <p style=''color:#64748b;font-size:13px;font-weight:600;margin:0;''>Ilaya National High School</p>
                                <p style=''color:#94a3b8;font-size:12px;margin:3px 0;''>Ilaya, Dapitan City</p>
                                <p style=''color:#94a3b8;font-size:11px;margin:8px 0 0;padding-top:8px;border-top:1px solid #e2e8f0;''>This is an automated message from the School Gate Attendance System.</p>
                            </td>
                        </tr>
                    </table>
                </td></tr>
            </table>
        </body>
        </html>', 'Sent', '2026-06-20 21:06:16.794586', '2026-06-18 11:12:06.888647');


--
-- Data for Name: excuses; Type: TABLE DATA; Schema: school_gate; Owner: -
--



--
-- Data for Name: login_attempts; Type: TABLE DATA; Schema: school_gate; Owner: -
--



--
-- Data for Name: scan_logs; Type: TABLE DATA; Schema: school_gate; Owner: -
--

INSERT INTO school_gate.scan_logs (scan_id, student_id, scan_type, exit_type, remarks, scan_time, created_at) VALUES (1, 32, 'ENTRY', NULL, NULL, '2026-06-16 00:54:15.431887', '2026-06-15 09:54:15.431887');
INSERT INTO school_gate.scan_logs (scan_id, student_id, scan_type, exit_type, remarks, scan_time, created_at) VALUES (2, 32, 'ENTRY', NULL, NULL, '2026-06-16 01:04:24.042286', '2026-06-15 10:04:24.042286');
INSERT INTO school_gate.scan_logs (scan_id, student_id, scan_type, exit_type, remarks, scan_time, created_at) VALUES (3, 32, 'ENTRY', NULL, NULL, '2026-06-16 01:04:44.503496', '2026-06-15 10:04:44.503496');
INSERT INTO school_gate.scan_logs (scan_id, student_id, scan_type, exit_type, remarks, scan_time, created_at) VALUES (4, 32, 'ENTRY', NULL, NULL, '2026-06-16 01:07:58.64003', '2026-06-15 10:07:58.64003');
INSERT INTO school_gate.scan_logs (scan_id, student_id, scan_type, exit_type, remarks, scan_time, created_at) VALUES (5, 32, 'ENTRY', NULL, NULL, '2026-06-16 01:29:39.309369', '2026-06-15 10:29:39.309369');
INSERT INTO school_gate.scan_logs (scan_id, student_id, scan_type, exit_type, remarks, scan_time, created_at) VALUES (6, 32, 'ENTRY', NULL, NULL, '2026-06-16 01:49:16.808098', '2026-06-15 10:49:16.808098');
INSERT INTO school_gate.scan_logs (scan_id, student_id, scan_type, exit_type, remarks, scan_time, created_at) VALUES (7, 32, 'ENTRY', NULL, NULL, '2026-06-16 02:21:35.397095', '2026-06-15 11:21:35.397095');
INSERT INTO school_gate.scan_logs (scan_id, student_id, scan_type, exit_type, remarks, scan_time, created_at) VALUES (8, 32, 'ENTRY', NULL, NULL, '2026-06-16 02:22:43.391183', '2026-06-15 11:22:43.391183');
INSERT INTO school_gate.scan_logs (scan_id, student_id, scan_type, exit_type, remarks, scan_time, created_at) VALUES (9, 32, 'ENTRY', NULL, NULL, '2026-06-16 02:24:45.508664', '2026-06-15 11:24:45.508664');
INSERT INTO school_gate.scan_logs (scan_id, student_id, scan_type, exit_type, remarks, scan_time, created_at) VALUES (10, 19, 'ENTRY', NULL, NULL, '2026-06-16 02:25:44.112328', '2026-06-15 11:25:44.112328');
INSERT INTO school_gate.scan_logs (scan_id, student_id, scan_type, exit_type, remarks, scan_time, created_at) VALUES (11, 21, 'ENTRY', NULL, NULL, '2026-06-16 02:26:03.247643', '2026-06-15 11:26:03.247643');
INSERT INTO school_gate.scan_logs (scan_id, student_id, scan_type, exit_type, remarks, scan_time, created_at) VALUES (12, 22, 'ENTRY', NULL, NULL, '2026-06-16 02:26:15.711383', '2026-06-15 11:26:15.711383');
INSERT INTO school_gate.scan_logs (scan_id, student_id, scan_type, exit_type, remarks, scan_time, created_at) VALUES (13, 32, 'ENTRY', NULL, NULL, '2026-06-16 02:27:44.132166', '2026-06-15 11:27:44.132166');
INSERT INTO school_gate.scan_logs (scan_id, student_id, scan_type, exit_type, remarks, scan_time, created_at) VALUES (14, 23, 'ENTRY', NULL, NULL, '2026-06-16 02:30:03.184412', '2026-06-15 11:30:03.184412');
INSERT INTO school_gate.scan_logs (scan_id, student_id, scan_type, exit_type, remarks, scan_time, created_at) VALUES (15, 32, 'ENTRY', NULL, NULL, '2026-06-16 02:31:52.524602', '2026-06-15 11:31:52.524602');
INSERT INTO school_gate.scan_logs (scan_id, student_id, scan_type, exit_type, remarks, scan_time, created_at) VALUES (16, 32, 'ENTRY', NULL, NULL, '2026-06-16 02:43:31.624683', '2026-06-15 11:43:31.624683');
INSERT INTO school_gate.scan_logs (scan_id, student_id, scan_type, exit_type, remarks, scan_time, created_at) VALUES (17, 19, 'ENTRY', NULL, NULL, '2026-06-16 02:45:45.985287', '2026-06-15 11:45:45.985287');
INSERT INTO school_gate.scan_logs (scan_id, student_id, scan_type, exit_type, remarks, scan_time, created_at) VALUES (18, 32, 'EXIT', 'Parent Pickup', NULL, '2026-06-16 02:50:15.343813', '2026-06-16 02:50:15.343813');
INSERT INTO school_gate.scan_logs (scan_id, student_id, scan_type, exit_type, remarks, scan_time, created_at) VALUES (19, 32, 'ENTRY', NULL, NULL, '2026-06-16 02:53:22.108497', '2026-06-16 02:53:22.108497');
INSERT INTO school_gate.scan_logs (scan_id, student_id, scan_type, exit_type, remarks, scan_time, created_at) VALUES (20, 21, 'EXIT', 'Medical Emergency', NULL, '2026-06-16 02:53:39.745091', '2026-06-16 02:53:39.745091');
INSERT INTO school_gate.scan_logs (scan_id, student_id, scan_type, exit_type, remarks, scan_time, created_at) VALUES (21, 32, 'EXIT', 'Authorized Leave', NULL, '2026-06-16 02:59:00.826401', '2026-06-16 02:59:00.826401');
INSERT INTO school_gate.scan_logs (scan_id, student_id, scan_type, exit_type, remarks, scan_time, created_at) VALUES (22, 21, 'ENTRY', NULL, NULL, '2026-06-16 02:59:35.552262', '2026-06-16 02:59:35.552262');
INSERT INTO school_gate.scan_logs (scan_id, student_id, scan_type, exit_type, remarks, scan_time, created_at) VALUES (23, 21, 'EXIT', 'Teacher Request', NULL, '2026-06-16 03:00:44.111139', '2026-06-16 03:00:44.111139');
INSERT INTO school_gate.scan_logs (scan_id, student_id, scan_type, exit_type, remarks, scan_time, created_at) VALUES (24, 32, 'ENTRY', NULL, NULL, '2026-06-16 03:08:50.884983', '2026-06-16 03:08:50.884983');
INSERT INTO school_gate.scan_logs (scan_id, student_id, scan_type, exit_type, remarks, scan_time, created_at) VALUES (25, 21, 'ENTRY', NULL, NULL, '2026-06-16 03:09:02.431101', '2026-06-16 03:09:02.431101');
INSERT INTO school_gate.scan_logs (scan_id, student_id, scan_type, exit_type, remarks, scan_time, created_at) VALUES (26, 19, 'EXIT', 'Official School Activity', NULL, '2026-06-16 03:09:38.534449', '2026-06-16 03:09:38.534449');
INSERT INTO school_gate.scan_logs (scan_id, student_id, scan_type, exit_type, remarks, scan_time, created_at) VALUES (27, 22, 'EXIT', 'Teacher Request', NULL, '2026-06-16 03:10:57.298782', '2026-06-16 03:10:57.298782');
INSERT INTO school_gate.scan_logs (scan_id, student_id, scan_type, exit_type, remarks, scan_time, created_at) VALUES (28, 32, 'ENTRY', NULL, NULL, '2026-06-17 11:09:58.560852', '2026-06-17 11:09:58.560852');
INSERT INTO school_gate.scan_logs (scan_id, student_id, scan_type, exit_type, remarks, scan_time, created_at) VALUES (29, 32, 'EXIT', 'Lunch Pass', NULL, '2026-06-17 11:27:04.618845', '2026-06-17 11:27:04.618845');
INSERT INTO school_gate.scan_logs (scan_id, student_id, scan_type, exit_type, remarks, scan_time, created_at) VALUES (30, 32, 'ENTRY', NULL, NULL, '2026-06-17 11:54:37.998467', '2026-06-17 11:54:37.998467');
INSERT INTO school_gate.scan_logs (scan_id, student_id, scan_type, exit_type, remarks, scan_time, created_at) VALUES (31, 32, 'EXIT', 'Lunch Pass', NULL, '2026-06-17 12:06:34.594494', '2026-06-17 12:06:34.594494');
INSERT INTO school_gate.scan_logs (scan_id, student_id, scan_type, exit_type, remarks, scan_time, created_at) VALUES (32, 32, 'ENTRY', NULL, NULL, '2026-06-17 12:06:44.872918', '2026-06-17 12:06:44.872918');
INSERT INTO school_gate.scan_logs (scan_id, student_id, scan_type, exit_type, remarks, scan_time, created_at) VALUES (33, 19, 'ENTRY', NULL, NULL, '2026-06-17 12:07:07.281592', '2026-06-17 12:07:07.281592');
INSERT INTO school_gate.scan_logs (scan_id, student_id, scan_type, exit_type, remarks, scan_time, created_at) VALUES (34, 21, 'ENTRY', NULL, NULL, '2026-06-17 12:07:55.438927', '2026-06-17 12:07:55.438927');
INSERT INTO school_gate.scan_logs (scan_id, student_id, scan_type, exit_type, remarks, scan_time, created_at) VALUES (35, 22, 'ENTRY', NULL, NULL, '2026-06-17 12:08:21.208984', '2026-06-17 12:08:21.208984');
INSERT INTO school_gate.scan_logs (scan_id, student_id, scan_type, exit_type, remarks, scan_time, created_at) VALUES (36, 23, 'ENTRY', NULL, NULL, '2026-06-17 12:08:40.371529', '2026-06-17 12:08:40.371529');
INSERT INTO school_gate.scan_logs (scan_id, student_id, scan_type, exit_type, remarks, scan_time, created_at) VALUES (37, 32, 'EXIT', 'Lunch Pass', NULL, '2026-06-17 14:34:12.861759', '2026-06-17 14:34:12.861759');
INSERT INTO school_gate.scan_logs (scan_id, student_id, scan_type, exit_type, remarks, scan_time, created_at) VALUES (38, 19, 'EXIT', 'Lunch Pass', NULL, '2026-06-17 14:34:29.036751', '2026-06-17 14:34:29.036751');
INSERT INTO school_gate.scan_logs (scan_id, student_id, scan_type, exit_type, remarks, scan_time, created_at) VALUES (39, 19, 'ENTRY', NULL, NULL, '2026-06-17 14:34:35.570018', '2026-06-17 14:34:35.570018');
INSERT INTO school_gate.scan_logs (scan_id, student_id, scan_type, exit_type, remarks, scan_time, created_at) VALUES (40, 21, 'EXIT', 'Lunch Pass', NULL, '2026-06-17 14:34:50.257493', '2026-06-17 14:34:50.257493');
INSERT INTO school_gate.scan_logs (scan_id, student_id, scan_type, exit_type, remarks, scan_time, created_at) VALUES (41, 23, 'EXIT', 'Lunch Pass', NULL, '2026-06-17 14:35:15.116419', '2026-06-17 14:35:15.116419');
INSERT INTO school_gate.scan_logs (scan_id, student_id, scan_type, exit_type, remarks, scan_time, created_at) VALUES (42, 19, 'EXIT', 'Teacher Request', NULL, '2026-06-17 14:40:08.530105', '2026-06-17 14:40:08.530105');
INSERT INTO school_gate.scan_logs (scan_id, student_id, scan_type, exit_type, remarks, scan_time, created_at) VALUES (43, 32, 'ENTRY', NULL, NULL, '2026-06-17 14:41:06.596421', '2026-06-17 14:41:06.596421');
INSERT INTO school_gate.scan_logs (scan_id, student_id, scan_type, exit_type, remarks, scan_time, created_at) VALUES (44, 32, 'EXIT', 'Lunch Pass', NULL, '2026-06-17 14:41:26.142419', '2026-06-17 14:41:26.142419');
INSERT INTO school_gate.scan_logs (scan_id, student_id, scan_type, exit_type, remarks, scan_time, created_at) VALUES (45, 32, 'ENTRY', NULL, NULL, '2026-06-17 18:32:25.541278', '2026-06-17 18:32:25.541278');
INSERT INTO school_gate.scan_logs (scan_id, student_id, scan_type, exit_type, remarks, scan_time, created_at) VALUES (46, 19, 'ENTRY', NULL, NULL, '2026-06-17 18:33:02.53354', '2026-06-17 18:33:02.53354');
INSERT INTO school_gate.scan_logs (scan_id, student_id, scan_type, exit_type, remarks, scan_time, created_at) VALUES (47, 21, 'ENTRY', NULL, NULL, '2026-06-17 18:33:12.68302', '2026-06-17 18:33:12.68302');
INSERT INTO school_gate.scan_logs (scan_id, student_id, scan_type, exit_type, remarks, scan_time, created_at) VALUES (48, 23, 'ENTRY', NULL, NULL, '2026-06-17 18:33:32.012236', '2026-06-17 18:33:32.012236');
INSERT INTO school_gate.scan_logs (scan_id, student_id, scan_type, exit_type, remarks, scan_time, created_at) VALUES (49, 32, 'EXIT', 'Dismissal', NULL, '2026-06-17 18:33:56.435882', '2026-06-17 18:33:56.435882');
INSERT INTO school_gate.scan_logs (scan_id, student_id, scan_type, exit_type, remarks, scan_time, created_at) VALUES (50, 19, 'EXIT', 'Dismissal', NULL, '2026-06-17 18:34:20.246792', '2026-06-17 18:34:20.246792');
INSERT INTO school_gate.scan_logs (scan_id, student_id, scan_type, exit_type, remarks, scan_time, created_at) VALUES (51, 21, 'EXIT', 'Dismissal', NULL, '2026-06-17 18:34:33.597557', '2026-06-17 18:34:33.597557');
INSERT INTO school_gate.scan_logs (scan_id, student_id, scan_type, exit_type, remarks, scan_time, created_at) VALUES (52, 22, 'EXIT', 'Dismissal', NULL, '2026-06-17 18:35:06.027776', '2026-06-17 18:35:06.027776');
INSERT INTO school_gate.scan_logs (scan_id, student_id, scan_type, exit_type, remarks, scan_time, created_at) VALUES (53, 23, 'EXIT', 'Dismissal', NULL, '2026-06-17 18:35:30.629555', '2026-06-17 18:35:30.629555');
INSERT INTO school_gate.scan_logs (scan_id, student_id, scan_type, exit_type, remarks, scan_time, created_at) VALUES (54, 23, 'ENTRY', NULL, NULL, '2026-06-17 18:37:40.655874', '2026-06-17 18:37:40.655874');
INSERT INTO school_gate.scan_logs (scan_id, student_id, scan_type, exit_type, remarks, scan_time, created_at) VALUES (55, 23, 'EXIT', 'Dismissal', NULL, '2026-06-17 18:39:54.817486', '2026-06-17 18:39:54.817486');
INSERT INTO school_gate.scan_logs (scan_id, student_id, scan_type, exit_type, remarks, scan_time, created_at) VALUES (56, 23, 'ENTRY', NULL, NULL, '2026-06-17 18:40:29.432217', '2026-06-17 18:40:29.432217');
INSERT INTO school_gate.scan_logs (scan_id, student_id, scan_type, exit_type, remarks, scan_time, created_at) VALUES (57, 23, 'EXIT', 'Dismissal', NULL, '2026-06-17 18:41:43.733484', '2026-06-17 18:41:43.733484');
INSERT INTO school_gate.scan_logs (scan_id, student_id, scan_type, exit_type, remarks, scan_time, created_at) VALUES (58, 23, 'ENTRY', NULL, NULL, '2026-06-17 18:42:27.21243', '2026-06-17 18:42:27.21243');
INSERT INTO school_gate.scan_logs (scan_id, student_id, scan_type, exit_type, remarks, scan_time, created_at) VALUES (59, 35, 'ENTRY', NULL, NULL, '2026-06-17 18:52:00.48242', '2026-06-17 18:52:00.48242');
INSERT INTO school_gate.scan_logs (scan_id, student_id, scan_type, exit_type, remarks, scan_time, created_at) VALUES (60, 32, 'ENTRY', NULL, NULL, '2026-06-18 11:12:06.868949', '2026-06-18 11:12:06.868949');
INSERT INTO school_gate.scan_logs (scan_id, student_id, scan_type, exit_type, remarks, scan_time, created_at) VALUES (61, 32, 'EXIT', 'Dismissal', NULL, '2026-06-18 11:13:06.876364', '2026-06-18 11:13:06.876364');
INSERT INTO school_gate.scan_logs (scan_id, student_id, scan_type, exit_type, remarks, scan_time, created_at) VALUES (62, 32, 'ENTRY', NULL, NULL, '2026-06-18 23:54:39.251281', '2026-06-18 23:54:39.251281');
INSERT INTO school_gate.scan_logs (scan_id, student_id, scan_type, exit_type, remarks, scan_time, created_at) VALUES (63, 35, 'ENTRY', NULL, NULL, '2026-06-18 23:55:06.423532', '2026-06-18 23:55:06.423532');
INSERT INTO school_gate.scan_logs (scan_id, student_id, scan_type, exit_type, remarks, scan_time, created_at) VALUES (64, 19, 'ENTRY', NULL, NULL, '2026-06-18 23:55:27.719427', '2026-06-18 23:55:27.719427');
INSERT INTO school_gate.scan_logs (scan_id, student_id, scan_type, exit_type, remarks, scan_time, created_at) VALUES (65, 21, 'ENTRY', NULL, NULL, '2026-06-18 23:55:47.688848', '2026-06-18 23:55:47.688848');
INSERT INTO school_gate.scan_logs (scan_id, student_id, scan_type, exit_type, remarks, scan_time, created_at) VALUES (66, 22, 'ENTRY', NULL, NULL, '2026-06-18 23:56:05.475204', '2026-06-18 23:56:05.475204');
INSERT INTO school_gate.scan_logs (scan_id, student_id, scan_type, exit_type, remarks, scan_time, created_at) VALUES (67, 23, 'ENTRY', NULL, NULL, '2026-06-18 23:56:23.463502', '2026-06-18 23:56:23.463502');
INSERT INTO school_gate.scan_logs (scan_id, student_id, scan_type, exit_type, remarks, scan_time, created_at) VALUES (68, 32, 'ENTRY', NULL, NULL, '2026-06-20 20:51:39.524933', '2026-06-20 20:51:39.524933');
INSERT INTO school_gate.scan_logs (scan_id, student_id, scan_type, exit_type, remarks, scan_time, created_at) VALUES (69, 32, 'EXIT', 'Dismissal', NULL, '2026-06-20 20:53:21.313247', '2026-06-20 20:53:21.313247');
INSERT INTO school_gate.scan_logs (scan_id, student_id, scan_type, exit_type, remarks, scan_time, created_at) VALUES (70, 19, 'ENTRY', NULL, NULL, '2026-06-20 20:54:16.155351', '2026-06-20 20:54:16.155351');
INSERT INTO school_gate.scan_logs (scan_id, student_id, scan_type, exit_type, remarks, scan_time, created_at) VALUES (71, 19, 'EXIT', 'Dismissal', NULL, '2026-06-20 20:54:57.346249', '2026-06-20 20:54:57.346249');
INSERT INTO school_gate.scan_logs (scan_id, student_id, scan_type, exit_type, remarks, scan_time, created_at) VALUES (72, 22, 'ENTRY', NULL, NULL, '2026-06-20 20:55:57.744302', '2026-06-20 20:55:57.744302');
INSERT INTO school_gate.scan_logs (scan_id, student_id, scan_type, exit_type, remarks, scan_time, created_at) VALUES (73, 32, 'ENTRY', NULL, NULL, '2026-06-20 20:57:34.276238', '2026-06-20 20:57:34.276238');
INSERT INTO school_gate.scan_logs (scan_id, student_id, scan_type, exit_type, remarks, scan_time, created_at) VALUES (74, 23, 'ENTRY', NULL, NULL, '2026-06-20 20:57:48.966172', '2026-06-20 20:57:48.966172');
INSERT INTO school_gate.scan_logs (scan_id, student_id, scan_type, exit_type, remarks, scan_time, created_at) VALUES (75, 32, 'EXIT', 'Dismissal', NULL, '2026-06-20 21:00:14.422192', '2026-06-20 21:00:14.422192');
INSERT INTO school_gate.scan_logs (scan_id, student_id, scan_type, exit_type, remarks, scan_time, created_at) VALUES (76, 22, 'EXIT', 'Dismissal', NULL, '2026-06-20 21:02:18.678946', '2026-06-20 21:02:18.678946');
INSERT INTO school_gate.scan_logs (scan_id, student_id, scan_type, exit_type, remarks, scan_time, created_at) VALUES (77, 23, 'EXIT', 'Dismissal', NULL, '2026-06-20 21:02:37.448685', '2026-06-20 21:02:37.448685');
INSERT INTO school_gate.scan_logs (scan_id, student_id, scan_type, exit_type, remarks, scan_time, created_at) VALUES (78, 23, 'ENTRY', NULL, NULL, '2026-06-20 21:02:56.057525', '2026-06-20 21:02:56.057525');
INSERT INTO school_gate.scan_logs (scan_id, student_id, scan_type, exit_type, remarks, scan_time, created_at) VALUES (79, 22, 'ENTRY', NULL, NULL, '2026-06-20 21:03:05.644436', '2026-06-20 21:03:05.644436');
INSERT INTO school_gate.scan_logs (scan_id, student_id, scan_type, exit_type, remarks, scan_time, created_at) VALUES (80, 21, 'ENTRY', NULL, NULL, '2026-06-20 21:03:11.232325', '2026-06-20 21:03:11.232325');
INSERT INTO school_gate.scan_logs (scan_id, student_id, scan_type, exit_type, remarks, scan_time, created_at) VALUES (81, 19, 'ENTRY', NULL, NULL, '2026-06-20 21:03:30.257431', '2026-06-20 21:03:30.257431');
INSERT INTO school_gate.scan_logs (scan_id, student_id, scan_type, exit_type, remarks, scan_time, created_at) VALUES (82, 35, 'ENTRY', NULL, NULL, '2026-06-20 21:03:37.126727', '2026-06-20 21:03:37.126727');
INSERT INTO school_gate.scan_logs (scan_id, student_id, scan_type, exit_type, remarks, scan_time, created_at) VALUES (83, 32, 'ENTRY', NULL, NULL, '2026-06-20 21:04:22.083694', '2026-06-20 21:04:22.083694');
INSERT INTO school_gate.scan_logs (scan_id, student_id, scan_type, exit_type, remarks, scan_time, created_at) VALUES (84, 32, 'EXIT', 'Dismissal', NULL, '2026-06-20 21:07:54.31823', '2026-06-20 21:07:54.31823');


--
-- Data for Name: pull_outs; Type: TABLE DATA; Schema: school_gate; Owner: -
--



--
-- Data for Name: registrations; Type: TABLE DATA; Schema: school_gate; Owner: -
--

INSERT INTO school_gate.registrations (registration_id, user_id, approval_status, approved_by, approved_date, created_at) VALUES (1, 3, 'Approved', 1, '2026-06-11 13:34:07.65934', '2026-06-11 13:06:21.658074');
INSERT INTO school_gate.registrations (registration_id, user_id, approval_status, approved_by, approved_date, created_at) VALUES (2, 4, 'Approved', 1, '2026-06-11 14:07:39.645556', '2026-06-11 14:05:05.047976');
INSERT INTO school_gate.registrations (registration_id, user_id, approval_status, approved_by, approved_date, created_at) VALUES (3, 11, 'Approved', 1, '2026-06-11 15:44:56.843393', '2026-06-11 15:36:53.173647');
INSERT INTO school_gate.registrations (registration_id, user_id, approval_status, approved_by, approved_date, created_at) VALUES (4, 21, 'Approved', 1, '2026-06-18 12:40:56.276078', '2026-06-18 12:37:10.05379');
INSERT INTO school_gate.registrations (registration_id, user_id, approval_status, approved_by, approved_date, created_at) VALUES (5, 34, 'Pending', NULL, NULL, '2026-06-19 02:45:05.363408');
INSERT INTO school_gate.registrations (registration_id, user_id, approval_status, approved_by, approved_date, created_at) VALUES (6, 39, 'Pending', NULL, NULL, '2026-06-19 02:46:00.928344');
INSERT INTO school_gate.registrations (registration_id, user_id, approval_status, approved_by, approved_date, created_at) VALUES (7, 44, 'Pending', NULL, NULL, '2026-06-19 02:46:40.747834');
INSERT INTO school_gate.registrations (registration_id, user_id, approval_status, approved_by, approved_date, created_at) VALUES (8, 49, 'Pending', NULL, NULL, '2026-06-19 02:47:29.086383');
INSERT INTO school_gate.registrations (registration_id, user_id, approval_status, approved_by, approved_date, created_at) VALUES (9, 54, 'Pending', NULL, NULL, '2026-06-19 02:48:01.503347');
INSERT INTO school_gate.registrations (registration_id, user_id, approval_status, approved_by, approved_date, created_at) VALUES (10, 59, 'Pending', NULL, NULL, '2026-06-19 02:49:30.261564');
INSERT INTO school_gate.registrations (registration_id, user_id, approval_status, approved_by, approved_date, created_at) VALUES (11, 64, 'Pending', NULL, NULL, '2026-06-19 02:50:24.498155');
INSERT INTO school_gate.registrations (registration_id, user_id, approval_status, approved_by, approved_date, created_at) VALUES (12, 69, 'Pending', NULL, NULL, '2026-06-19 02:51:01.043261');
INSERT INTO school_gate.registrations (registration_id, user_id, approval_status, approved_by, approved_date, created_at) VALUES (13, 74, 'Pending', NULL, NULL, '2026-06-19 03:44:57.070624');
INSERT INTO school_gate.registrations (registration_id, user_id, approval_status, approved_by, approved_date, created_at) VALUES (14, 76, 'Pending', NULL, NULL, '2026-06-19 03:48:10.592247');
INSERT INTO school_gate.registrations (registration_id, user_id, approval_status, approved_by, approved_date, created_at) VALUES (15, 78, 'Pending', NULL, NULL, '2026-06-19 04:03:54.779765');
INSERT INTO school_gate.registrations (registration_id, user_id, approval_status, approved_by, approved_date, created_at) VALUES (16, 80, 'Pending', NULL, NULL, '2026-06-19 04:10:37.385883');
INSERT INTO school_gate.registrations (registration_id, user_id, approval_status, approved_by, approved_date, created_at) VALUES (17, 82, 'Pending', NULL, NULL, '2026-06-19 04:16:05.108835');
INSERT INTO school_gate.registrations (registration_id, user_id, approval_status, approved_by, approved_date, created_at) VALUES (18, 84, 'Pending', NULL, NULL, '2026-06-19 04:19:05.720864');
INSERT INTO school_gate.registrations (registration_id, user_id, approval_status, approved_by, approved_date, created_at) VALUES (19, 86, 'Pending', NULL, NULL, '2026-06-19 04:24:36.621264');
INSERT INTO school_gate.registrations (registration_id, user_id, approval_status, approved_by, approved_date, created_at) VALUES (20, 92, 'Pending', NULL, NULL, '2026-06-19 16:57:59.732483');
INSERT INTO school_gate.registrations (registration_id, user_id, approval_status, approved_by, approved_date, created_at) VALUES (21, 93, 'Pending', NULL, NULL, '2026-06-19 17:03:16.550845');
INSERT INTO school_gate.registrations (registration_id, user_id, approval_status, approved_by, approved_date, created_at) VALUES (22, 95, 'Pending', NULL, NULL, '2026-06-19 17:09:58.568739');
INSERT INTO school_gate.registrations (registration_id, user_id, approval_status, approved_by, approved_date, created_at) VALUES (25, 101, 'Approved', 1, '2026-06-19 19:06:11.050277', '2026-06-19 17:38:46.591073');
INSERT INTO school_gate.registrations (registration_id, user_id, approval_status, approved_by, approved_date, created_at) VALUES (24, 99, 'Rejected', 1, '2026-06-19 19:06:31.043473', '2026-06-19 17:21:00.361445');
INSERT INTO school_gate.registrations (registration_id, user_id, approval_status, approved_by, approved_date, created_at) VALUES (26, 137, 'Approved', 1, '2026-06-20 00:59:07.523262', '2026-06-20 00:43:45.626279');
INSERT INTO school_gate.registrations (registration_id, user_id, approval_status, approved_by, approved_date, created_at) VALUES (23, 97, 'Rejected', 1, '2026-06-20 00:59:28.20548', '2026-06-19 17:15:42.605956');
INSERT INTO school_gate.registrations (registration_id, user_id, approval_status, approved_by, approved_date, created_at) VALUES (29, 150, 'Approved', 1, '2026-06-20 08:49:52.949276', '2026-06-20 08:34:42.941163');
INSERT INTO school_gate.registrations (registration_id, user_id, approval_status, approved_by, approved_date, created_at) VALUES (28, 148, 'Rejected', 1, '2026-06-20 08:50:12.596257', '2026-06-20 08:30:27.527871');
INSERT INTO school_gate.registrations (registration_id, user_id, approval_status, approved_by, approved_date, created_at) VALUES (31, 161, 'Approved', 1, '2026-06-20 12:51:54.969278', '2026-06-20 12:36:07.978517');
INSERT INTO school_gate.registrations (registration_id, user_id, approval_status, approved_by, approved_date, created_at) VALUES (30, 160, 'Rejected', 1, '2026-06-20 12:52:22.083076', '2026-06-20 09:28:41.122625');
INSERT INTO school_gate.registrations (registration_id, user_id, approval_status, approved_by, approved_date, created_at) VALUES (33, 180, 'Approved', 1, '2026-06-20 14:42:13.500704', '2026-06-20 14:27:00.971319');
INSERT INTO school_gate.registrations (registration_id, user_id, approval_status, approved_by, approved_date, created_at) VALUES (32, 171, 'Rejected', 1, '2026-06-20 14:42:33.349568', '2026-06-20 13:36:42.807118');
INSERT INTO school_gate.registrations (registration_id, user_id, approval_status, approved_by, approved_date, created_at) VALUES (34, 190, 'Approved', 1, '2026-06-25 19:29:08.630939', '2026-06-25 19:08:37.000807');
INSERT INTO school_gate.registrations (registration_id, user_id, approval_status, approved_by, approved_date, created_at) VALUES (27, 147, 'Rejected', 1, '2026-06-25 19:29:28.333848', '2026-06-20 01:37:15.921243');
INSERT INTO school_gate.registrations (registration_id, user_id, approval_status, approved_by, approved_date, created_at) VALUES (35, 200, 'Pending', NULL, NULL, '2026-06-25 20:13:52.430127');
INSERT INTO school_gate.registrations (registration_id, user_id, approval_status, approved_by, approved_date, created_at) VALUES (36, 201, 'Pending', NULL, NULL, '2026-06-26 21:27:55.421096');


--
-- Data for Name: reports; Type: TABLE DATA; Schema: school_gate; Owner: -
--



--
-- Data for Name: student_parents; Type: TABLE DATA; Schema: school_gate; Owner: -
--



--
-- Data for Name: subjects; Type: TABLE DATA; Schema: school_gate; Owner: -
--

INSERT INTO school_gate.subjects (subject_id, subject_name, subject_code, description, status, created_at, updated_at, category) VALUES (1, 'Filipino', 'SUBJ-001', NULL, 'Active', '2026-06-16 04:50:57.05955', '2026-06-16 04:50:57.05955', 'JHS Core');
INSERT INTO school_gate.subjects (subject_id, subject_name, subject_code, description, status, created_at, updated_at, category) VALUES (2, 'English', 'SUBJ-002', NULL, 'Active', '2026-06-16 04:50:57.065609', '2026-06-16 04:50:57.065609', 'JHS Core');
INSERT INTO school_gate.subjects (subject_id, subject_name, subject_code, description, status, created_at, updated_at, category) VALUES (3, 'Mathematics', 'SUBJ-003', NULL, 'Active', '2026-06-16 04:50:57.068079', '2026-06-16 04:50:57.068079', 'JHS Core');
INSERT INTO school_gate.subjects (subject_id, subject_name, subject_code, description, status, created_at, updated_at, category) VALUES (4, 'Science', 'SUBJ-004', NULL, 'Active', '2026-06-16 04:50:57.070527', '2026-06-16 04:50:57.070527', 'JHS Core');
INSERT INTO school_gate.subjects (subject_id, subject_name, subject_code, description, status, created_at, updated_at, category) VALUES (5, 'Araling Panlipunan', 'SUBJ-005', NULL, 'Active', '2026-06-16 04:50:57.073069', '2026-06-16 04:50:57.073069', 'JHS Core');
INSERT INTO school_gate.subjects (subject_id, subject_name, subject_code, description, status, created_at, updated_at, category) VALUES (6, 'MAPEH', 'SUBJ-006', NULL, 'Active', '2026-06-16 04:50:57.075914', '2026-06-16 04:50:57.075914', 'JHS Core');
INSERT INTO school_gate.subjects (subject_id, subject_name, subject_code, description, status, created_at, updated_at, category) VALUES (7, 'Edukasyon sa Pagpapakatao', 'SUBJ-007', NULL, 'Active', '2026-06-16 04:50:57.078654', '2026-06-16 04:50:57.078654', 'JHS Core');
INSERT INTO school_gate.subjects (subject_id, subject_name, subject_code, description, status, created_at, updated_at, category) VALUES (8, 'TLE', 'SUBJ-008', NULL, 'Active', '2026-06-16 04:50:57.081343', '2026-06-16 04:50:57.081343', 'JHS Core');
INSERT INTO school_gate.subjects (subject_id, subject_name, subject_code, description, status, created_at, updated_at, category) VALUES (15, 'Biology', 'SUBJ-015', NULL, 'Active', '2026-06-16 04:50:57.100008', '2026-06-16 04:50:57.100008', 'JHS Math & Science');
INSERT INTO school_gate.subjects (subject_id, subject_name, subject_code, description, status, created_at, updated_at, category) VALUES (16, 'Chemistry', 'SUBJ-016', NULL, 'Active', '2026-06-16 04:50:57.102409', '2026-06-16 04:50:57.102409', 'JHS Math & Science');
INSERT INTO school_gate.subjects (subject_id, subject_name, subject_code, description, status, created_at, updated_at, category) VALUES (17, 'Physics', 'SUBJ-017', NULL, 'Active', '2026-06-16 04:50:57.105057', '2026-06-16 04:50:57.105057', 'JHS Math & Science');
INSERT INTO school_gate.subjects (subject_id, subject_name, subject_code, description, status, created_at, updated_at, category) VALUES (18, 'Earth Science', 'SUBJ-018', NULL, 'Active', '2026-06-16 04:50:57.10795', '2026-06-16 04:50:57.10795', 'JHS Math & Science');
INSERT INTO school_gate.subjects (subject_id, subject_name, subject_code, description, status, created_at, updated_at, category) VALUES (19, 'Algebra', 'SUBJ-019', NULL, 'Active', '2026-06-16 04:50:57.110996', '2026-06-16 04:50:57.110996', 'JHS Math & Science');
INSERT INTO school_gate.subjects (subject_id, subject_name, subject_code, description, status, created_at, updated_at, category) VALUES (20, 'Geometry', 'SUBJ-020', NULL, 'Active', '2026-06-16 04:50:57.113704', '2026-06-16 04:50:57.113704', 'JHS Math & Science');
INSERT INTO school_gate.subjects (subject_id, subject_name, subject_code, description, status, created_at, updated_at, category) VALUES (21, 'Trigonometry', 'SUBJ-021', NULL, 'Active', '2026-06-16 04:50:57.116303', '2026-06-16 04:50:57.116303', 'JHS Math & Science');
INSERT INTO school_gate.subjects (subject_id, subject_name, subject_code, description, status, created_at, updated_at, category) VALUES (37, 'Statistics and Probability', 'SUBJ-036', NULL, 'Active', '2026-06-15 14:07:39.401826', '2026-06-15 14:07:39.401826', 'JHS Math & Science');
INSERT INTO school_gate.subjects (subject_id, subject_name, subject_code, description, status, created_at, updated_at, category) VALUES (25, 'Oral Communication', 'SUBJ-025', NULL, 'Active', '2026-06-16 04:50:57.1264', '2026-06-16 04:50:57.1264', 'SHS Core');
INSERT INTO school_gate.subjects (subject_id, subject_name, subject_code, description, status, created_at, updated_at, category) VALUES (26, 'General Mathematics', 'SUBJ-026', NULL, 'Active', '2026-06-16 04:50:57.129234', '2026-06-16 04:50:57.129234', 'SHS Core');
INSERT INTO school_gate.subjects (subject_id, subject_name, subject_code, description, status, created_at, updated_at, category) VALUES (28, 'Media and Information Literacy', 'SUBJ-028', NULL, 'Active', '2026-06-16 04:50:57.134929', '2026-06-16 04:50:57.134929', 'SHS Core');
INSERT INTO school_gate.subjects (subject_id, subject_name, subject_code, description, status, created_at, updated_at, category) VALUES (30, 'Physical Science', 'SUBJ-030', NULL, 'Active', '2026-06-16 04:50:57.140024', '2026-06-16 04:50:57.140024', 'SHS Core');
INSERT INTO school_gate.subjects (subject_id, subject_name, subject_code, description, status, created_at, updated_at, category) VALUES (31, 'Personal Development', 'SUBJ-031', NULL, 'Active', '2026-06-16 04:50:57.142399', '2026-06-16 04:50:57.142399', 'SHS Core');
INSERT INTO school_gate.subjects (subject_id, subject_name, subject_code, description, status, created_at, updated_at, category) VALUES (35, 'Reading and Writing', 'SUBJ-035', NULL, 'Active', '2026-06-16 04:51:26.548472', '2026-06-16 04:51:26.548472', 'SHS Core');
INSERT INTO school_gate.subjects (subject_id, subject_name, subject_code, description, status, created_at, updated_at, category) VALUES (38, 'Komunikasyon at Pananaliksik sa Wika at Kulturang Filipino', 'SUBJ-037', NULL, 'Active', '2026-06-15 14:07:39.404886', '2026-06-15 14:07:39.404886', 'SHS Core');
INSERT INTO school_gate.subjects (subject_id, subject_name, subject_code, description, status, created_at, updated_at, category) VALUES (39, '21st Century Literature from the Philippines and the World', 'SUBJ-038', NULL, 'Active', '2026-06-15 14:07:39.40598', '2026-06-15 14:07:39.40598', 'SHS Core');
INSERT INTO school_gate.subjects (subject_id, subject_name, subject_code, description, status, created_at, updated_at, category) VALUES (41, 'Earth and Life Science', 'SUBJ-040', NULL, 'Active', '2026-06-15 14:07:39.408301', '2026-06-15 14:07:39.408301', 'SHS Core');
INSERT INTO school_gate.subjects (subject_id, subject_name, subject_code, description, status, created_at, updated_at, category) VALUES (33, 'Empowerment Technologies', 'SUBJ-033', NULL, 'Active', '2026-06-16 04:50:57.147499', '2026-06-16 04:50:57.147499', 'SHS Applied');
INSERT INTO school_gate.subjects (subject_id, subject_name, subject_code, description, status, created_at, updated_at, category) VALUES (44, 'English for Academic and Professional Purposes', 'SUBJ-043', NULL, 'Active', '2026-06-15 14:07:39.411536', '2026-06-15 14:07:39.411536', 'SHS Applied');
INSERT INTO school_gate.subjects (subject_id, subject_name, subject_code, description, status, created_at, updated_at, category) VALUES (45, 'Practical Research 1', 'SUBJ-044', NULL, 'Active', '2026-06-15 14:07:39.412691', '2026-06-15 14:07:39.412691', 'SHS Applied');
INSERT INTO school_gate.subjects (subject_id, subject_name, subject_code, description, status, created_at, updated_at, category) VALUES (46, 'Practical Research 2', 'SUBJ-045', NULL, 'Active', '2026-06-15 14:07:39.413817', '2026-06-15 14:07:39.413817', 'SHS Applied');
INSERT INTO school_gate.subjects (subject_id, subject_name, subject_code, description, status, created_at, updated_at, category) VALUES (47, 'Filipino sa Piling Larangan', 'SUBJ-046', NULL, 'Active', '2026-06-15 14:07:39.41493', '2026-06-15 14:07:39.41493', 'SHS Applied');
INSERT INTO school_gate.subjects (subject_id, subject_name, subject_code, description, status, created_at, updated_at, category) VALUES (48, 'Inquiries, Investigation and Immersion', 'SUBJ-047', NULL, 'Active', '2026-06-15 14:07:39.418609', '2026-06-15 14:07:39.418609', 'SHS Applied');
INSERT INTO school_gate.subjects (subject_id, subject_name, subject_code, description, status, created_at, updated_at, category) VALUES (49, 'Organization and Management', 'SUBJ-048', NULL, 'Active', '2026-06-15 14:07:39.42057', '2026-06-15 14:07:39.42057', 'SHS ABM');
INSERT INTO school_gate.subjects (subject_id, subject_name, subject_code, description, status, created_at, updated_at, category) VALUES (50, 'Business Mathematics', 'SUBJ-049', NULL, 'Active', '2026-06-15 14:07:39.421881', '2026-06-15 14:07:39.421881', 'SHS ABM');
INSERT INTO school_gate.subjects (subject_id, subject_name, subject_code, description, status, created_at, updated_at, category) VALUES (51, 'Principles of Marketing', 'SUBJ-050', NULL, 'Active', '2026-06-15 14:07:39.423185', '2026-06-15 14:07:39.423185', 'SHS ABM');
INSERT INTO school_gate.subjects (subject_id, subject_name, subject_code, description, status, created_at, updated_at, category) VALUES (52, 'Applied Economics', 'SUBJ-051', NULL, 'Active', '2026-06-15 14:07:39.424453', '2026-06-15 14:07:39.424453', 'SHS ABM');
INSERT INTO school_gate.subjects (subject_id, subject_name, subject_code, description, status, created_at, updated_at, category) VALUES (53, 'Business Ethics and Social Responsibility', 'SUBJ-052', NULL, 'Active', '2026-06-15 14:07:39.425445', '2026-06-15 14:07:39.425445', 'SHS ABM');
INSERT INTO school_gate.subjects (subject_id, subject_name, subject_code, description, status, created_at, updated_at, category) VALUES (54, 'Fundamentals of Accountancy, Business and Management 1', 'SUBJ-053', NULL, 'Active', '2026-06-15 14:07:39.426619', '2026-06-15 14:07:39.426619', 'SHS ABM');
INSERT INTO school_gate.subjects (subject_id, subject_name, subject_code, description, status, created_at, updated_at, category) VALUES (55, 'Fundamentals of Accountancy, Business and Management 2', 'SUBJ-054', NULL, 'Active', '2026-06-15 14:07:39.427763', '2026-06-15 14:07:39.427763', 'SHS ABM');
INSERT INTO school_gate.subjects (subject_id, subject_name, subject_code, description, status, created_at, updated_at, category) VALUES (56, 'Creative Writing', 'SUBJ-055', NULL, 'Active', '2026-06-15 14:07:39.428893', '2026-06-15 14:07:39.428893', 'SHS HUMSS');
INSERT INTO school_gate.subjects (subject_id, subject_name, subject_code, description, status, created_at, updated_at, category) VALUES (57, 'Creative Nonfiction', 'SUBJ-056', NULL, 'Active', '2026-06-15 14:07:39.429928', '2026-06-15 14:07:39.429928', 'SHS HUMSS');
INSERT INTO school_gate.subjects (subject_id, subject_name, subject_code, description, status, created_at, updated_at, category) VALUES (58, 'World Religions and Belief Systems', 'SUBJ-057', NULL, 'Active', '2026-06-15 14:07:39.430954', '2026-06-15 14:07:39.430954', 'SHS HUMSS');
INSERT INTO school_gate.subjects (subject_id, subject_name, subject_code, description, status, created_at, updated_at, category) VALUES (59, 'Philippine Politics and Governance', 'SUBJ-058', NULL, 'Active', '2026-06-15 14:07:39.431931', '2026-06-15 14:07:39.431931', 'SHS HUMSS');
INSERT INTO school_gate.subjects (subject_id, subject_name, subject_code, description, status, created_at, updated_at, category) VALUES (60, 'Community Engagement, Solidarity, and Citizenship', 'SUBJ-059', NULL, 'Active', '2026-06-15 14:07:39.434569', '2026-06-15 14:07:39.434569', 'SHS HUMSS');
INSERT INTO school_gate.subjects (subject_id, subject_name, subject_code, description, status, created_at, updated_at, category) VALUES (61, 'Trends, Networks, and Critical Thinking in the 21st Century', 'SUBJ-060', NULL, 'Active', '2026-06-15 14:07:39.435936', '2026-06-15 14:07:39.435936', 'SHS HUMSS');
INSERT INTO school_gate.subjects (subject_id, subject_name, subject_code, description, status, created_at, updated_at, category) VALUES (62, 'Disciplines and Ideas in the Social Sciences', 'SUBJ-061', NULL, 'Active', '2026-06-15 14:07:39.437371', '2026-06-15 14:07:39.437371', 'SHS HUMSS');
INSERT INTO school_gate.subjects (subject_id, subject_name, subject_code, description, status, created_at, updated_at, category) VALUES (64, 'Pre-Calculus', 'SUBJ-063', NULL, 'Active', '2026-06-15 14:07:39.439627', '2026-06-15 14:07:39.439627', 'SHS STEM');
INSERT INTO school_gate.subjects (subject_id, subject_name, subject_code, description, status, created_at, updated_at, category) VALUES (65, 'Basic Calculus', 'SUBJ-064', NULL, 'Active', '2026-06-15 14:07:39.440751', '2026-06-15 14:07:39.440751', 'SHS STEM');
INSERT INTO school_gate.subjects (subject_id, subject_name, subject_code, description, status, created_at, updated_at, category) VALUES (66, 'General Biology 1', 'SUBJ-065', NULL, 'Active', '2026-06-15 14:07:39.441771', '2026-06-15 14:07:39.441771', 'SHS STEM');
INSERT INTO school_gate.subjects (subject_id, subject_name, subject_code, description, status, created_at, updated_at, category) VALUES (67, 'General Biology 2', 'SUBJ-066', NULL, 'Active', '2026-06-15 14:07:39.442802', '2026-06-15 14:07:39.442802', 'SHS STEM');
INSERT INTO school_gate.subjects (subject_id, subject_name, subject_code, description, status, created_at, updated_at, category) VALUES (68, 'General Chemistry 1', 'SUBJ-067', NULL, 'Active', '2026-06-15 14:07:39.444294', '2026-06-15 14:07:39.444294', 'SHS STEM');
INSERT INTO school_gate.subjects (subject_id, subject_name, subject_code, description, status, created_at, updated_at, category) VALUES (69, 'General Chemistry 2', 'SUBJ-068', NULL, 'Active', '2026-06-15 14:07:39.44576', '2026-06-15 14:07:39.44576', 'SHS STEM');
INSERT INTO school_gate.subjects (subject_id, subject_name, subject_code, description, status, created_at, updated_at, category) VALUES (70, 'General Physics 1', 'SUBJ-069', NULL, 'Active', '2026-06-15 14:07:39.446749', '2026-06-15 14:07:39.446749', 'SHS STEM');
INSERT INTO school_gate.subjects (subject_id, subject_name, subject_code, description, status, created_at, updated_at, category) VALUES (71, 'General Physics 2', 'SUBJ-070', NULL, 'Active', '2026-06-15 14:07:39.447717', '2026-06-15 14:07:39.447717', 'SHS STEM');
INSERT INTO school_gate.subjects (subject_id, subject_name, subject_code, description, status, created_at, updated_at, category) VALUES (72, 'Bread and Pastry Production', 'SUBJ-071', NULL, 'Active', '2026-06-15 14:07:39.449271', '2026-06-15 14:07:39.449271', 'SHS TVL');
INSERT INTO school_gate.subjects (subject_id, subject_name, subject_code, description, status, created_at, updated_at, category) VALUES (73, 'Food and Beverage Services', 'SUBJ-072', NULL, 'Active', '2026-06-15 14:07:39.450575', '2026-06-15 14:07:39.450575', 'SHS TVL');
INSERT INTO school_gate.subjects (subject_id, subject_name, subject_code, description, status, created_at, updated_at, category) VALUES (74, 'Cookery', 'SUBJ-073', NULL, 'Active', '2026-06-15 14:07:39.451746', '2026-06-15 14:07:39.451746', 'SHS TVL');
INSERT INTO school_gate.subjects (subject_id, subject_name, subject_code, description, status, created_at, updated_at, category) VALUES (75, 'Housekeeping', 'SUBJ-074', NULL, 'Active', '2026-06-15 14:07:39.453109', '2026-06-15 14:07:39.453109', 'SHS TVL');
INSERT INTO school_gate.subjects (subject_id, subject_name, subject_code, description, status, created_at, updated_at, category) VALUES (76, 'Front Office Services', 'SUBJ-075', NULL, 'Active', '2026-06-15 14:07:39.454306', '2026-06-15 14:07:39.454306', 'SHS TVL');
INSERT INTO school_gate.subjects (subject_id, subject_name, subject_code, description, status, created_at, updated_at, category) VALUES (77, 'Computer Systems Servicing', 'SUBJ-076', NULL, 'Active', '2026-06-15 14:07:39.455298', '2026-06-15 14:07:39.455298', 'SHS TVL');
INSERT INTO school_gate.subjects (subject_id, subject_name, subject_code, description, status, created_at, updated_at, category) VALUES (78, 'Programming', 'SUBJ-077', NULL, 'Active', '2026-06-15 14:07:39.456359', '2026-06-15 14:07:39.456359', 'SHS TVL');
INSERT INTO school_gate.subjects (subject_id, subject_name, subject_code, description, status, created_at, updated_at, category) VALUES (79, 'Animation', 'SUBJ-078', NULL, 'Active', '2026-06-15 14:07:39.457368', '2026-06-15 14:07:39.457368', 'SHS TVL');
INSERT INTO school_gate.subjects (subject_id, subject_name, subject_code, description, status, created_at, updated_at, category) VALUES (9, 'Computer Science', 'SUBJ-009', NULL, 'Active', '2026-06-16 04:50:57.084147', '2026-06-16 04:50:57.084147', 'JHS Core');
INSERT INTO school_gate.subjects (subject_id, subject_name, subject_code, description, status, created_at, updated_at, category) VALUES (10, 'Values Education', 'SUBJ-010', NULL, 'Active', '2026-06-16 04:50:57.087442', '2026-06-16 04:50:57.087442', 'JHS Core');
INSERT INTO school_gate.subjects (subject_id, subject_name, subject_code, description, status, created_at, updated_at, category) VALUES (11, 'Music', 'SUBJ-011', NULL, 'Active', '2026-06-16 04:50:57.089862', '2026-06-16 04:50:57.089862', 'JHS Core');
INSERT INTO school_gate.subjects (subject_id, subject_name, subject_code, description, status, created_at, updated_at, category) VALUES (12, 'Arts', 'SUBJ-012', NULL, 'Active', '2026-06-16 04:50:57.092278', '2026-06-16 04:50:57.092278', 'JHS Core');
INSERT INTO school_gate.subjects (subject_id, subject_name, subject_code, description, status, created_at, updated_at, category) VALUES (13, 'Physical Education', 'SUBJ-013', NULL, 'Active', '2026-06-16 04:50:57.09477', '2026-06-16 04:50:57.09477', 'JHS Core');
INSERT INTO school_gate.subjects (subject_id, subject_name, subject_code, description, status, created_at, updated_at, category) VALUES (14, 'Health', 'SUBJ-014', NULL, 'Active', '2026-06-16 04:50:57.097537', '2026-06-16 04:50:57.097537', 'JHS Core');
INSERT INTO school_gate.subjects (subject_id, subject_name, subject_code, description, status, created_at, updated_at, category) VALUES (40, 'Contemporary Philippine Arts from the Regions', 'SUBJ-039', NULL, 'Active', '2026-06-15 14:07:39.4072', '2026-06-15 14:07:39.4072', 'SHS Core');
INSERT INTO school_gate.subjects (subject_id, subject_name, subject_code, description, status, created_at, updated_at, category) VALUES (42, 'Understanding Culture, Society and Politics', 'SUBJ-041', NULL, 'Active', '2026-06-15 14:07:39.40934', '2026-06-15 14:07:39.40934', 'SHS Core');
INSERT INTO school_gate.subjects (subject_id, subject_name, subject_code, description, status, created_at, updated_at, category) VALUES (43, 'Introduction to Philosophy of the Human Person', 'SUBJ-042', NULL, 'Active', '2026-06-15 14:07:39.410478', '2026-06-15 14:07:39.410478', 'SHS Core');
INSERT INTO school_gate.subjects (subject_id, subject_name, subject_code, description, status, created_at, updated_at, category) VALUES (63, 'Disciplines and Ideas in the Applied Social Sciences', 'SUBJ-062', NULL, 'Active', '2026-06-15 14:07:39.438493', '2026-06-15 14:07:39.438493', 'SHS HUMSS');
INSERT INTO school_gate.subjects (subject_id, subject_name, subject_code, description, status, created_at, updated_at, category) VALUES (80, 'Dressmaking', 'SUBJ-079', NULL, 'Active', '2026-06-15 14:07:39.458319', '2026-06-15 14:07:39.458319', 'SHS TVL');
INSERT INTO school_gate.subjects (subject_id, subject_name, subject_code, description, status, created_at, updated_at, category) VALUES (81, 'Tailoring', 'SUBJ-080', NULL, 'Active', '2026-06-15 14:07:39.45939', '2026-06-15 14:07:39.45939', 'SHS TVL');
INSERT INTO school_gate.subjects (subject_id, subject_name, subject_code, description, status, created_at, updated_at, category) VALUES (82, 'Electrical Installation and Maintenance', 'SUBJ-081', NULL, 'Active', '2026-06-15 14:07:39.460468', '2026-06-15 14:07:39.460468', 'SHS TVL');
INSERT INTO school_gate.subjects (subject_id, subject_name, subject_code, description, status, created_at, updated_at, category) VALUES (83, 'Electronic Products Assembly and Servicing', 'SUBJ-082', NULL, 'Active', '2026-06-15 14:07:39.461557', '2026-06-15 14:07:39.461557', 'SHS TVL');


--
-- Data for Name: system_settings; Type: TABLE DATA; Schema: school_gate; Owner: -
--

INSERT INTO school_gate.system_settings (setting_id, school_name, school_address, school_year, registration_enabled, email_notification_enabled, school_start_time, grace_period_minutes, smtp_host, smtp_port, smtp_username, smtp_password, created_at, updated_at, barcode_prefix, smtp_from_email) VALUES (1, 'Ilaya National High School', 'Ilaya, Dapitan City', '2026-2027', true, true, '07:30:00', 10, 'smtp.gmail.com', 587, 'harverzhx@gmail.com', 'zmgg lmgo whfy mjva', '2026-06-11 08:03:41.564494', '2026-06-25 20:04:26.289772', 'INHS-', 'harverzhx@gmail.com');
INSERT INTO school_gate.system_settings (setting_id, school_name, school_address, school_year, registration_enabled, email_notification_enabled, school_start_time, grace_period_minutes, smtp_host, smtp_port, smtp_username, smtp_password, created_at, updated_at, barcode_prefix, smtp_from_email) VALUES (2, 'Ilaya National High School', 'Ilaya, Dapitan City', '2026-2027', true, true, '07:30:00', 10, 'smtp.gmail.com', 587, 'harverzhx@gmail.com', 'zmgg lmgo whfy mjva', '2026-06-11 09:03:29.105004', '2026-06-25 20:04:26.289772', 'INHS-', 'harverzhx@gmail.com');
INSERT INTO school_gate.system_settings (setting_id, school_name, school_address, school_year, registration_enabled, email_notification_enabled, school_start_time, grace_period_minutes, smtp_host, smtp_port, smtp_username, smtp_password, created_at, updated_at, barcode_prefix, smtp_from_email) VALUES (3, 'School Name', NULL, NULL, true, true, '07:30:00', 10, NULL, 587, NULL, NULL, '2026-06-27 07:07:04.262946', '2026-06-27 07:07:04.262946', '2026-', NULL);
INSERT INTO school_gate.system_settings (setting_id, school_name, school_address, school_year, registration_enabled, email_notification_enabled, school_start_time, grace_period_minutes, smtp_host, smtp_port, smtp_username, smtp_password, created_at, updated_at, barcode_prefix, smtp_from_email) VALUES (4, 'School Name', NULL, NULL, true, true, '07:30:00', 10, NULL, 587, NULL, NULL, '2026-06-27 07:07:12.288535', '2026-06-27 07:07:12.288535', '2026-', NULL);
INSERT INTO school_gate.system_settings (setting_id, school_name, school_address, school_year, registration_enabled, email_notification_enabled, school_start_time, grace_period_minutes, smtp_host, smtp_port, smtp_username, smtp_password, created_at, updated_at, barcode_prefix, smtp_from_email) VALUES (5, 'School Name', NULL, NULL, true, true, '07:30:00', 10, NULL, 587, NULL, NULL, '2026-06-28 19:05:31.623113', '2026-06-28 19:05:31.623113', '2026-', NULL);


--
-- Data for Name: teacher_sections; Type: TABLE DATA; Schema: school_gate; Owner: -
--

INSERT INTO school_gate.teacher_sections (id, section_id, teacher_id) VALUES (4, 21, 14);
INSERT INTO school_gate.teacher_sections (id, section_id, teacher_id) VALUES (5, 24, 14);
INSERT INTO school_gate.teacher_sections (id, section_id, teacher_id) VALUES (8, 8, 4);


--
-- Data for Name: teacher_subjects; Type: TABLE DATA; Schema: school_gate; Owner: -
--

INSERT INTO school_gate.teacher_subjects (id, teacher_id, section_id, subject_id) VALUES (3, 14, 21, 77);
INSERT INTO school_gate.teacher_subjects (id, teacher_id, section_id, subject_id) VALUES (8, 4, 8, 57);
INSERT INTO school_gate.teacher_subjects (id, teacher_id, section_id, subject_id) VALUES (9, 14, 24, 33);
INSERT INTO school_gate.teacher_subjects (id, teacher_id, section_id, subject_id) VALUES (10, 14, 17, 78);


--
-- Name: attendance_attendance_id_seq; Type: SEQUENCE SET; Schema: school_gate; Owner: -
--

SELECT pg_catalog.setval('school_gate.attendance_attendance_id_seq', 30, true);


--
-- Name: audit_logs_audit_id_seq; Type: SEQUENCE SET; Schema: school_gate; Owner: -
--

SELECT pg_catalog.setval('school_gate.audit_logs_audit_id_seq', 2515, true);


--
-- Name: backups_backup_id_seq; Type: SEQUENCE SET; Schema: school_gate; Owner: -
--

SELECT pg_catalog.setval('school_gate.backups_backup_id_seq', 16, true);


--
-- Name: email_logs_email_log_id_seq; Type: SEQUENCE SET; Schema: school_gate; Owner: -
--

SELECT pg_catalog.setval('school_gate.email_logs_email_log_id_seq', 81, true);


--
-- Name: excuses_excuse_id_seq; Type: SEQUENCE SET; Schema: school_gate; Owner: -
--

SELECT pg_catalog.setval('school_gate.excuses_excuse_id_seq', 1, false);


--
-- Name: login_attempts_id_seq; Type: SEQUENCE SET; Schema: school_gate; Owner: -
--

SELECT pg_catalog.setval('school_gate.login_attempts_id_seq', 17, true);


--
-- Name: parents_parent_id_seq; Type: SEQUENCE SET; Schema: school_gate; Owner: -
--

SELECT pg_catalog.setval('school_gate.parents_parent_id_seq', 29, true);


--
-- Name: pull_outs_pull_out_id_seq; Type: SEQUENCE SET; Schema: school_gate; Owner: -
--

SELECT pg_catalog.setval('school_gate.pull_outs_pull_out_id_seq', 1, false);


--
-- Name: registrations_registration_id_seq; Type: SEQUENCE SET; Schema: school_gate; Owner: -
--

SELECT pg_catalog.setval('school_gate.registrations_registration_id_seq', 36, true);


--
-- Name: reports_report_id_seq; Type: SEQUENCE SET; Schema: school_gate; Owner: -
--

SELECT pg_catalog.setval('school_gate.reports_report_id_seq', 1, false);


--
-- Name: roles_role_id_seq; Type: SEQUENCE SET; Schema: school_gate; Owner: -
--

SELECT pg_catalog.setval('school_gate.roles_role_id_seq', 27, true);


--
-- Name: scan_logs_scan_id_seq; Type: SEQUENCE SET; Schema: school_gate; Owner: -
--

SELECT pg_catalog.setval('school_gate.scan_logs_scan_id_seq', 84, true);


--
-- Name: sections_section_id_seq; Type: SEQUENCE SET; Schema: school_gate; Owner: -
--

SELECT pg_catalog.setval('school_gate.sections_section_id_seq', 45, true);


--
-- Name: students_student_id_seq; Type: SEQUENCE SET; Schema: school_gate; Owner: -
--

SELECT pg_catalog.setval('school_gate.students_student_id_seq', 35, true);


--
-- Name: subjects_subject_id_seq; Type: SEQUENCE SET; Schema: school_gate; Owner: -
--

SELECT pg_catalog.setval('school_gate.subjects_subject_id_seq', 83, true);


--
-- Name: system_settings_setting_id_seq; Type: SEQUENCE SET; Schema: school_gate; Owner: -
--

SELECT pg_catalog.setval('school_gate.system_settings_setting_id_seq', 5, true);


--
-- Name: teacher_sections_id_seq; Type: SEQUENCE SET; Schema: school_gate; Owner: -
--

SELECT pg_catalog.setval('school_gate.teacher_sections_id_seq', 9, true);


--
-- Name: teacher_subjects_id_seq; Type: SEQUENCE SET; Schema: school_gate; Owner: -
--

SELECT pg_catalog.setval('school_gate.teacher_subjects_id_seq', 10, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: school_gate; Owner: -
--

SELECT pg_catalog.setval('school_gate.users_user_id_seq', 202, true);


--
-- PostgreSQL database dump complete
--

\unrestrict 0LGxfxNJ4X2vlXYxNUai9SBAl7wehhVZeShxkTauqnQKdxSN0c02bNcvJzUtyZX

