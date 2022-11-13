CREATE TABLE users(
  user_id INT PRIMARY KEY,
  user_name VARCHAR(255) NOT NULL,
  user_lastname VARCHAR(255) NOT NULL,
  user_email VARCHAR(255) NOT NULL
);
CREATE TABLE faculty(
  faculty_id INT PRIMARY KEY,
  faculty_name VARCHAR(255) NOT NULL
);
 CREATE TABLE courses(
   course_id INT PRIMARY KEY,
   course_name VARCHAR(255) NOT NULL,
   FOREIGN KEY(course_id)
      REFERENCES faculty(faculty_id)
 );
 CREATE TABLE class(
   class_id INT PRIMARY KEY,
   class_name VARCHAR(255) NOT NULL,
   FOREIGN KEY(class_id)
      REFERENCES courses(courses_id)
 );
 CREATE TABLE lecturers(
  lecturer_id INT PRIMARY KEY,
  FOREIGN KEY(lecturer_id)
      REFERENCES users(user_id),
  lecturer_address VARCHAR(255) NOT NULL,
  lecturer_birthdate DATE NOT NULL,
  lecturer_gender VARCHAR(255) NOT NULL,
  lecturer_address2 VARCHAR(255),
  lecturer_aptnumber VARCHAR(255),
  lecturer_bankaccount VARCHAR(255),
  lecturer_status VARCHAR(255),
  FOREIGN KEY(lecturer_id)
      REFERENCES courses(course_id)
);
CREATE TABLE lecturersClass(
  lecturersClass_id INT PRIMARY KEY,
  classTime TIME NOT NULL,
  FOREIGN KEY(lecturersClass_id)
      REFERENCES class(class_id),
   FOREIGN KEY(lecturersClass_id)
      REFERENCES lecturers(lecturer_id)
);
CREATE TABLE students(
  student_id INT PRIMARY KEY,
   FOREIGN KEY(student_id)
      REFERENCES users(user_id),
  student_address VARCHAR(255) NOT NULL,
  student_birthdate DATE NOT NULL,
  student_gender VARCHAR(255) NOT NULL,
  stdent_address2 VARCHAR(255),
  student_aptnumber VARCHAR(255),
     FOREIGN KEY(student_id)
      REFERENCES courses(course_id),
   FOREIGN KEY(student_id)
      REFERENCES lecturers(lecturer_id)
);
CREATE TABLE studentsClass(
studentsClass_id  INT PRIMARY KEY,
 FOREIGN KEY(studentsClass_id)
      REFERENCES students(student_id),
   FOREIGN KEY(studentsClass_id)
      REFERENCES class(class_id),
  classTime TIME NOT NULL
);
 CREATE TABLE managers(
   manager_id INT PRIMARY KEY,
   FOREIGN KEY(manager_id)
      REFERENCES users(user_id),
  manager_address VARCHAR(255) NOT NULL,
  manager_birthdate DATE NOT NULL,
  manager_gender VARCHAR(255) NOT NULL,
  FOREIGN KEY(managecourse_id)
    REFERENCES courses(course_id)
 );

INSERT INTO users(user_id,user_name,user_lastname,user_email)
VALUES(1,'Sergo','Londaridze','s.londaridze@gmail.com');
INSERT INTO users(user_id,user_name,user_lastname,user_email)
VALUES(2,'Nikusha','Gvaramia','n.gvaramia@gmail.com');
INSERT INTO users(user_id,user_name,user_lastname,user_email)
VALUES(3,'Gvantsa','Kokoshvili','g.kokoshvili@gmail.com');
INSERT INTO users(user_id,user_name,user_lastname,user_email)
VALUES(4,'Lasha','Qatamadze','l.katamadze@gmail.com');
INSERT INTO users(user_id,user_name,user_lastname,user_email)
VALUES(5,'Mariam','Kakava','m.kakava@gmail.com');
INSERT INTO users(user_id,user_name,user_lastname,user_email)
VALUES(6,'Jaba','Takadze','j.takadze@gmail.com');
INSERT INTO users(user_id,user_name,user_lastname,user_email)
VALUES(7,'Luka','Toidze','l.toidze@gmail.com');
INSERT INTO users(user_id,user_name,user_lastname,user_email)
VALUES(8,'Nutsa','Siradze','n.siradze@gmail.com');
INSERT INTO users(user_id,user_name,user_lastname,user_email)
VALUES(9,'Tinatin','Chkadua','tchkadua@gmail.com');
INSERT INTO users(user_id,user_name,user_lastname,user_email)
VALUES(10,'Luka','Geldiashvili','lgeldiashvili@gmail.com');
INSERT INTO users(user_id,user_name,user_lastname,user_email)
VALUES(11,'Ani','Jikia','a.jiqia@gmail.com');
INSERT INTO users(user_id,user_name,user_lastname,user_email)
VALUES(12,'Nino','Metreveli','n.metreveli@gmail.com');
INSERT INTO users(user_id,user_name,user_lastname,user_email)
VALUES(14,'Natia','Phirtskhalava','n.phirtskhalava@gmail.com');
INSERT INTO users(user_id,user_name,user_lastname,user_email)
VALUES(15,'Lika','Sikharulia','l.sikharulia@gmail.com');
INSERT INTO users(user_id,user_name,user_lastname,user_email)
VALUES(16,'Teko','Patsatsia','tpatsatsia@gmail.com');
INSERT INTO users(user_id,user_name,user_lastname,user_email)
VALUES(17,'Ia','Guliashvili','iaguliashvili@gmail.com');
INSERT INTO users(user_id,user_name,user_lastname,user_email)
VALUES(18,'Giorgi','Archvadze','garchvadze@gmail.com');
INSERT INTO users(user_id,user_name,user_lastname,user_email)
VALUES(19,'Elene','Tevdorashvili','e.tevdorashvili@gmail.com');
INSERT INTO users(user_id,user_name,user_lastname,user_email)
VALUES(20,'Ana','Kukava','anakukava@gmail.com')

INSERT INTO Faculty(faculty_id,faculty_name)
VALUES(1,'Computer Sciences');
INSERT INTO Faculty(faculty_id,faculty_name)
VALUES(2,'Human Sciences');
INSERT INTO Faculty(faculty_id,faculty_name)
VALUES(3,'Art');

INSERT INTO Courses(course_id,course_name, faculty_id)
VALUES(1,'Computer Programming', '1');
INSERT INTO Courses(course_id,course_name, faculty_id)
VALUES(2,'English Philology', '2');
INSERT INTO Courses(course_id,course_name, faculty_id)
VALUES(3,'Graphic Design', '3');

INSERT INTO Class(class_id,class_name,courses-id)
VALUES(1,'Python','1');
INSERT INTO Class(class_id,class_name,courses-id)
VALUES(2,'PHP','1');
INSERT INTO Class(class_id,class_name,courses-id)
VALUES(3,'English Language','2');
INSERT INTO Class(class_id,class_name,courses-id)
VALUES(4,'English Literature','2');
INSERT INTO Class(class_id,class_name,courses-id)
VALUES(5,'Illustrator','3');
INSERT INTO Class(class_id,class_name,courses-id)
VALUES(6,'Photoshop','3');

INSERT INTO Lecturers(lecturer_id,user_id,lecturer_address,lecturer_birthdate,lecturer_gender,lecturer_bankaccount,lecturer_status,course-id)
VALUES(1,15,'Rustaveli st. #14',1989-04-15,'Female','GE23TB12345','Associate lecturer, 1);
INSERT INTO Lecturers(lecturer_id,user_id,lecturer_address,lecturer_birthdate,lecturer_gender,lecturer_bankaccount,lecturer_status,course-id)
VALUES(2,16,'Rustaveli st. #18',1989-02-15,'Female','GE23TB15678','Associate lecturer',1);
INSERT INTO Lecturers(lecturer_id,user_id,lecturer_address,lecturer_birthdate,lecturer_gender,lecturer_address2,lecturer_aptnumber,lecturer_bankaccount,lecturer_status,course-id)
VALUES(3,17,'Kazbegi st. #18',1989-11-11,'Female','Pekini st. #5',12,'GE23TB12891','Assistant', 2);
INSERT INTO Lecturers(lecturer_id,user_id,lecturer_address,lecturer_birthdate,lecturer_gender,lecturer_bankaccount,lecturer_status,course-id)
VALUES(4,18,'Kazbegi st. #40',1989-10-27,'Male','GE23TB12889','Associate lecturer', 2);
INSERT INTO Lecturers(lecturer_id,user_id,lecturer_address,lecturer_birthdate,lecturer_gender,lecturer_bankaccount,lecturer_status,course-id)
VALUES(5,19,'Chavchavadze st. #40',1988-10-15,'Female','GE23TB12756','Associate lecturer', 3);
INSERT INTO Lecturers(lecturer_id,user_id,lecturer_address,lecturer_birthdate,lecturer_gender,lecturer_bankaccount,lecturer_status,course-id)
VALUES(6,20,'Vazha-Pshavela st. #88',1988-12-15,'Female','GE23TB12234','Assistant', 3);

INSERT INTO Students(student_id,user_id,student_address,student_birthdate,student_gender,course_id,lecturers_id)
VALUES(1,1,'Vazha-Pshavela st. #90',1990-12-15,'Male',1,1);
INSERT INTO Students(student_id,user_id,student_address,student_birthdate,student_gender,course_id,lecturers_id)
VALUES(2,2,'Vazha-Pshavela st. #14',1991-12-17,'Male',1,2);
INSERT INTO Students(student_id,user_id,student_address,student_birthdate,student_gender,course_id,lecturers_id)
VALUES(3,3,'Pekini st. #18',1990-10-10,'Female',1,1);
INSERT INTO Students(student_id,user_id,student_address,student_birthdate,student_gender,course_id,lecturers_id)
VALUES(4,4,'Chavchavadze st. #40',1989-02-17,'Male',1,2);
INSERT INTO Students(student_id,user_id,student_address,student_birthdate,student_gender,course_id,lecturers_id)
VALUES(5,5,'Akhvlediani st. #45',1992-02-20,'Female',2,4);
INSERT INTO Students(student_id,user_id,student_address,student_birthdate,student_gender,course_id,lecturers_id)
VALUES(6,6,'Akhvlediani st. #14',1992-03-20,'Male',2,4);
INSERT INTO Students(student_id,user_id,student_address,student_birthdate,student_gender,course_id,lecturers_id)
VALUES(7,7,'Jikia st. #14',1992-06-22,'Male',3,5);
INSERT INTO Students(student_id,user_id,student_address,student_birthdate,student_gender,course_id,lecturers_id)
VALUES(8,8,'Jikia st. #21',1992-06-11,'Female',3,5);
INSERT INTO Students(student_id,user_id,student_address,student_birthdate,student_gender,student_address2,student_aptnumber,course_id,lecturers_id)
VALUES(9,9,'Jikia st. #41',1992-07-11,'Female','Nutsubidze st. #34',22,3,6);
INSERT INTO Students(student_id,user_id,student_address,student_birthdate,student_gender,student_address2,student_aptnumber,course_id,lecturers_id)
VALUES(10,10,'Nutsubidze st. #21',1992-08-15,'Male','Nutsubidze st. #44',26,3,6);

INSERT INTO Managers(manager_id,user_id,manager_address,manager_birthdate,manager_gender,course_id)
VALUES(1,11,'Chavchavadze st. #25',1989-08-20,'Female',1);
INSERT INTO Managers(manager_id,user_id,manager_address,manager_birthdate,manager_gender,course_id)
VALUES(2,12,'Chavchavadze st. #28',1989-11-20,'Female',2);
INSERT INTO Managers(manager_id,user_id,manager_address,manager_birthdate,manager_gender,course_id)
VALUES(3,14,'Chavchavadze st. #30',1989-11-29,'Female',3);

INSERT INTO LecturersClass(lecturersClass_id,classTime,class_id,lecturer_id)
VALUES(1,15-00-00,1,2);
INSERT INTO LecturersClass(lecturersClass_id,classTime,class_id,lecturer_id)
VALUES(2,17-00-00,1,2);
INSERT INTO LecturersClass(lecturersClass_id,classTime,class_id,lecturer_id)
VALUES(3,15-00-00,2,1);
INSERT INTO LecturersClass(lecturersClass_id,classTime,class_id,lecturer_id)
VALUES(4,17-00-00,2,1);
INSERT INTO LecturersClass(lecturersClass_id,classTime,class_id,lecturer_id)
VALUES(5,15-00-00,3,4);
INSERT INTO LecturersClass(lecturersClass_id,classTime,class_id,lecturer_id)
VALUES(6,17-00-00,4,4);
INSERT INTO LecturersClass(lecturersClass_id,classTime,class_id,lecturer_id)
VALUES(7,15-00-00,5,5);
INSERT INTO LecturersClass(lecturersClass_id,classTime,class_id,lecturer_id)
VALUES(8,17-00-00,5,5)
INSERT INTO LecturersClass(lecturersClass_id,classTime,class_id,lecturer_id)
VALUES(9,15-00-00,6,6);

INSERT INTO StudentsClass(studentsClass_id,classTime,class_id,student_id)
VALUES(1,15-00-00,2,1);
INSERT INTO StudentsClass(studentsClass_id,classTime,class_id,student_id)
VALUES(2,15-00-00,1,2);
INSERT INTO StudentsClass(studentsClass_id,classTime,class_id,student_id)
VALUES(3,17-00-00,2,3);
INSERT INTO StudentsClass(studentsClass_id,classTime,class_id,student_id)
VALUES(4,17-00-00,1,4);
INSERT INTO StudentsClass(studentsClass_id,classTime,class_id,student_id)
VALUES(5,15-00-00,3,5);
INSERT INTO StudentsClass(studentsClass_id,classTime,class_id,student_id)
VALUES(6,17-00-00,4,6);
INSERT INTO StudentsClass(studentsClass_id,classTime,class_id,student_id)
VALUES(7,15-00-00,5,7);
INSERT INTO StudentsClass(studentsClass_id,classTime,class_id,student_id)
VALUES(8,15-00-00,5,8);
INSERT INTO StudentsClass(studentsClass_id,classTime,class_id,student_id)
VALUES(9,15-00-00,6,9);
INSERT INTO StudentsClass(studentsClass_id,classTime,class_id,student_id)
VALUES(10,15-00-00,6,10);

