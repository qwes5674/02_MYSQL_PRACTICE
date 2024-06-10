-- DEPARTMENT 테이블에서 모든 컬럼을 조회하시오.
select * from DEPARTMENT;

-- EMPLOYEE 테이블에서 EMP_NAME과 SALARY 컬럼을 조회하시오.
select
    EMP_NAME,
    SALARY
from EMPLOYEE;

-- JOB 테이블에서 JOB_CODE와 JOB_NAME을 조회하시오.

select
    JOB_CODE,
    JOB_NAME
from JOB;

-- LOCATION 테이블에서 LOCAL_CODE와 LOCAL_NAME을 조회하시오.

select
    LOCAL_CODE,
    LOCAL_NAME
from LOCATION;

-- NATION 테이블에서 NATIONAL_NAME의 별칭을 '국가명'으로 하여 조회하시오.

select concat('국가명') as NATIONL_NAME;