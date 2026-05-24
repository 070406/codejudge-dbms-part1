# Schema Understanding

## students

This table stores all students using the CodeJudge platform.

Important columns:
- student_id → unique student identifier
- full_name → student name
- email → student email
- batch_id → student's batch

Why separate table?
Student details are used in many places like submissions, attendance, and enrollments. Keeping them in one table avoids duplicate data.

---

## batches

This table stores academic batch information.

Important columns:
- batch_id
- batch_name
- start_date
- end_date

One batch can contain many students.

---

## courses

Stores course information.

Important columns:
- course_id
- course_name
- course_code

One course can have many students and problems.

---

## enrollments

This table connects students and courses.

Important columns:
- enrollment_id
- student_id
- course_id
- enrolled_on

One student can join multiple courses and one course can contain many students.

---

## problems

Stores coding problems.

Important columns:
- problem_id
- title
- difficulty
- course_id

Problems are related to courses and submissions.

---

## test_cases

Stores test cases for problems.

Important columns:
- test_case_id
- problem_id
- input_data
- expected_output

One problem can have many test cases.

---

## contests

Stores contest details.

Important columns:
- contest_id
- contest_name
- start_time
- end_time

---

## contest_problems

Mapping table between contests and problems.

Composite key:
- contest_id
- problem_id

One contest can contain many problems.

---

## submissions

Stores code submissions by students.

Important columns:
- submission_id
- student_id
- problem_id
- language
- submitted_at
- status

One student can submit many solutions.

---

## test_results

Stores execution result of each testcase.

Important columns:
- result_id
- submission_id
- test_case_id
- passed

One submission can have many testcase results.

---

## attendance

Stores attendance records.

Important columns:
- attendance_id
- student_id
- session_id
- status

---

## sessions

Stores class sessions.

Important columns:
- session_id
- course_id
- faculty_name
- session_date

---

## regrade_requests

Stores requests for rechecking submissions.

Important columns:
- request_id
- submission_id
- reason
- status

---

## plagiarism_flags

Stores plagiarism detection information.

Important columns:
- flag_id
- submission_id
- similarity_score

---

## operation_requests

Stores admin operations like import/export requests.
