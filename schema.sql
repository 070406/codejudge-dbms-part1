CREATE TABLE batches (
    batch_id INT PRIMARY KEY,
    batch_name VARCHAR(100) NOT NULL,
    start_date DATE,
    end_date DATE
);

CREATE TABLE students (
    student_id INT PRIMARY KEY,
    full_name VARCHAR(100) NOT NULL,
    email VARCHAR(150) UNIQUE NOT NULL,
    phone VARCHAR(20),
    batch_id INT,
    FOREIGN KEY (batch_id) REFERENCES batches(batch_id)
);

CREATE TABLE courses (
    course_id INT PRIMARY KEY,
    course_name VARCHAR(100) NOT NULL,
    course_code VARCHAR(20) UNIQUE NOT NULL
);

CREATE TABLE enrollments (
    enrollment_id INT PRIMARY KEY,
    student_id INT NOT NULL,
    course_id INT NOT NULL,
    enrolled_on DATE,
    UNIQUE(student_id, course_id),
    FOREIGN KEY (student_id) REFERENCES students(student_id),
    FOREIGN KEY (course_id) REFERENCES courses(course_id)
);

CREATE TABLE problems (
    problem_id INT PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    difficulty VARCHAR(20)
    CHECK (difficulty IN ('Easy','Medium','Hard')),
    course_id INT,
    FOREIGN KEY (course_id) REFERENCES courses(course_id)
);

CREATE TABLE test_cases (
    test_case_id INT PRIMARY KEY,
    problem_id INT NOT NULL,
    input_data TEXT,
    expected_output TEXT,
    is_hidden BOOLEAN,
    FOREIGN KEY (problem_id) REFERENCES problems(problem_id)
);

CREATE TABLE contests (
    contest_id INT PRIMARY KEY,
    contest_name VARCHAR(100) NOT NULL,
    start_time TIMESTAMP,
    end_time TIMESTAMP
);

CREATE TABLE contest_problems (
    contest_id INT,
    problem_id INT,
    PRIMARY KEY (contest_id, problem_id),
    FOREIGN KEY (contest_id) REFERENCES contests(contest_id),
    FOREIGN KEY (problem_id) REFERENCES problems(problem_id)
);

CREATE TABLE submissions (
    submission_id INT PRIMARY KEY,
    student_id INT NOT NULL,
    problem_id INT NOT NULL,
    language VARCHAR(30),
    submitted_at TIMESTAMP NOT NULL,
    status VARCHAR(50),
    FOREIGN KEY (student_id) REFERENCES students(student_id),
    FOREIGN KEY (problem_id) REFERENCES problems(problem_id)
);

CREATE TABLE test_results (
    result_id INT PRIMARY KEY,
    submission_id INT NOT NULL,
    test_case_id INT NOT NULL,
    passed BOOLEAN,
    FOREIGN KEY (submission_id) REFERENCES submissions(submission_id),
    FOREIGN KEY (test_case_id) REFERENCES test_cases(test_case_id)
);
