use StudentDatabase;

-- menambahkan siswa baru
INSERT INTO Students (FirstName, LastName, DateOfBirth, Gender, Address, PhoneNumber, Email)

VALUES ('Anna', 'Baskara', '2005-07-18', 'Female', 'Jl. Mangga No. 04 Jakarta', '081345234896', 'annabaskara18@yahoo.com');
INSERT INTO Students (FirstName, LastName, DateOfBirth, Gender, Address, PhoneNumber, Email)

INSERT INTO Students (FirstName, LastName, DateOfBirth, Gender, Address, PhoneNumber, Email)
VALUES ('zidan', 'Baskara', '2003-12-31', 'Male', 'Jl. Durian No. 04 Menteng', '081398234896', 'zidanbaskara@yahoo.com');

-- menambahkan course
INSERT INTO Courses (CourseName, CourseCode, Credits, Department)
VALUES ('Pemrograman Database', 'DB101', 3, 'Informatika');

-- menambahkan nilai
INSERT INTO Grades (StudentID, CourseID, Semester, Grade, Attendance)
VALUES (1, 1, 'Fall 2023', 3.75, 90.50);

-- melihat data semua siswa
select * from students;

-- melihat data siswa berdasarkan nama
SELECT * FROM Students WHERE FirstName = 'Putra';

INSERT INTO Grades (StudentID, CourseID, Semester, Grade, Attendance)
VALUES (2, 1, 'Fall 2023', 3.66, 80.50);


