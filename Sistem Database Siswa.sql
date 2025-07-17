CREATE DATABASE StudentDatabase;
use StudentDatabase;

CREATE TABLE Students (
    StudentID INT PRIMARY KEY AUTO_INCREMENT,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    DateOfBirth DATE,
    Gender ENUM('male', 'female', 'other'),
    Address VARCHAR(255),
    PhoneNumber VARCHAR(20),
    Email VARCHAR(100) UNIQUE,
    EnrollmentDate TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE Courses (
	CourseID INT PRIMARY KEY auto_increment,
    CourseName varchar(100) not null unique,
    CourseCode varchar(10) unique,
    Credits int not null,
    Department varchar(100)
);

CREATE TABLE Grades (
	GradeID INT primary KEY auto_increment,
    StudentID INT NOT NULL,
    CourseID INT NOT NULL,
    Semester VARCHAR(20),
    Grade decimal(4, 2),
    Attendance decimal(5, 2),
    FOREIGN KEY (StudentID) REFERENCES Students(StudentID) ON DELETE CASCADE,
    FOREIGN KEY (CourseID) REFERENCES Courses(CourseID) ON DELETE CASCADE,
    UNIQUE (StudentID, CourseID, Semester)
);


