# Normalization Notes

## Redundancy Examples

### Example 1

Student details may repeat in submissions and attendance tables.

Solution:
Store student information only once in students table.

---

### Example 2

Course details may repeat in enrollments.

Solution:
Create a separate courses table.

---

### Example 3

Problem details may repeat in contests.

Solution:
Use contest_problems mapping table.

---

# Functional Dependencies

## Example 1

student_id → full_name, email, batch_id

Student ID uniquely determines student details.

---

## Example 2

course_id → course_name, course_code

Course ID uniquely determines course information.

---

# Partial Dependency Example

(student_id, course_id) → enrolled_on

Enrollment depends on both student and course.

---

# 1NF

The schema satisfies 1NF because:
- all values are atomic
- no repeating groups exist

---

# 2NF

The schema satisfies 2NF because:
- non-key attributes fully depend on primary keys
- mapping tables are separated properly

---

# 3NF

The schema satisfies 3NF because:
- transitive dependencies are removed
- repeated data is minimized

---

# Trade-offs

- More joins are required
- Query complexity increases slightly
- But redundancy and update anomalies are reduced
