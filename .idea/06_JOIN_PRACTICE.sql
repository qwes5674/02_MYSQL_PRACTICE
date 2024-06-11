-- EMPLOYEE 테이블과 DEPARTMENT 테이블을 조인하여, 각 직원의 이름과 그 직원이 속한 부서명을 조회하시오.
select a.EMP_NAME, b.DEPT_TITLE from EMPLOYEE a inner join DEPARTMENT b on a.DEPT_CODE = b.DEPT_ID;
-- EMPLOYEE 테이블과 JOB 테이블을 조인하여, 각 직원의 이름과 그 직원의 직급명을 조회하시오.
select a.EMP_NAME, c.JOB_NAME from EMPLOYEE a inner join JOB c on a.JOB_CODE = c.JOB_CODE;
-- EMPLOYEE 테이블과 DEPARTMENT 테이블을 LEFT JOIN하여, 모든 직원과 그 직원이 속한 부서명을 조회하되, 부서가 없는 직원도 포함하여 조회하시오.
select EMP_NAME, DEPT_TITLE from EMPLOYEE a left join DEPARTMENT b on a.DEPT_CODE = b.DEPT_ID;
-- EMPLOYEE 테이블을 자기 자신과 조인하여, 각 직원과 그 직원의 관리자의 이름을 조회하시오. (자기 자신을 조인하는 SELF JOIN을 사용)
select a.EMP_NAME as '직원', b.EMP_NAME as '관리자' from EMPLOYEE a join EMPLOYEE b on a.MANAGER_ID = b.EMP_ID;