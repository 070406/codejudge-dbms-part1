# Keys and Relationships

## Primary Keys

| Table | Primary Key |
|---|---|
| students | student_id |
| batches | batch_id |
| courses | course_id |
| enrollments | enrollment_id |
| problems | problem_id |
| test_cases | test_case_id |
| contests | contest_id |
| submissions | submission_id |
| test_results | result_id |

Primary keys uniquely identify each row.

---

## Candidate Keys

| Table | Candidate Key |
|---|---|
| students | email |
| courses | course_code |

These columns can also uniquely identify records.

---

## Alternate Keys

| Table | Alternate Key |
|---|---|
| students | email |
| courses | course_code |

These are candidate keys not selected as primary keys.

---

## Composite Keys

| Table | Composite Key |
|---|---|
| contest_problems | (contest_id, problem_id) |
| enrollments | (student_id, course_id) |

Composite keys help avoid duplicate mappings.

---

## Foreign Keys

| Table | Foreign Key | References |
|---|---|---|
| students | batch_id | batches(batch_id) |
| enrollments | student_id | students(student_id) |
| enrollments | course_id | courses(course_id) |
| problems | course_id | courses(course_id) |
| submissions | student_id | students(student_id) |
| submissions | problem_id | problems(problem_id) |

Foreign keys connect related tables.

---

## UNIQUE Constraints

- students.email
- courses.course_code

These values should not repeat.

---

## NOT NULL Constraints

Applied on:
- primary keys
- course_name
- student email
- contest_name

Important fields should never remain empty.

---

## CHECK Constraints

- difficulty IN ('Easy','Medium','Hard')
- status IN ('Present','Absent','Late')
- similarity_score BETWEEN 0 AND 100

These constraints ensure valid data.
