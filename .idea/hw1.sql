-- 1. 자신의 이름으로 된 계정을 만드세요
create user 'parkhyochan'@'%' identified by 'ohgiraffers';
use mysql;
select * from user;

-- 2. employee_db 라는 이름의 데이터베이스를 만드세요
create database employee_db;
SHOW databases;
-- 3. 자신의 이름으로된 계정에 employee_db 데이터베이스를 조작할 모든 권한을 주세요
grant all privileges on employee_db.*to'parkhyochan'@'%';
show grants for 'parkhyochan'@'%';
-- 4. InteliJ에 자신의 이름으로 된 계정으로 employee_db 데이터베이스를 연결하세요

-- 5. DB_SCRIPT_EMPLOYEE.sql 파일을 전체 실행시켜 데이터를 넣으세요