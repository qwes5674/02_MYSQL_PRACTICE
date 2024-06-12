/*
우리반 데이터베이스를 만드세요
’ogclass’ database  생성
 */
create database ogclass;

 create table if not exists class
 (
    student_no int auto_increment primary key,
    student_name varchar(255) not null,
    gender varchar(5) not null,
    check(gender in ('남','여')),
    mbti varchar(10),
    subject_no int
 );

insert into class
(student_no, student_name, gender, mbti, subject_no)
values (1, '지동현', '남', 'ESTJ',),
       (2, 'user02', 'pass02', '유관순', '여', '010-7777-7777', 'yu77@gmail.com');

create table if not exists favorit_subject
(
    subjeect_no int auto_increment primary key,
    subject_name varchar(255) not null unique
    );

