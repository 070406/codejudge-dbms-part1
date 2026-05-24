# ER Diagram

batches
   |
   | one-to-many
   v
students
   |
   | one-to-many
   v
enrollments >---- courses

courses
   |
   | one-to-many
   v
problems
   |
   | one-to-many
   v
test_cases

students
   |
   | one-to-many
   v
submissions >---- problems

submissions
   |
   | one-to-many
   v
test_results >---- test_cases

contests >---- contest_problems ----< problems
