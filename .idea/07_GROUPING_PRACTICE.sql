-- EMPLOYEE 테이블에서 JOB_CODE별 평균 급여를 조회하시오.
select JOB_CODE, avg(SALARY) from EMPLOYEE group by JOB_CODE;

-- EMPLOYEE 테이블에서 SAL_LEVEL별 최소 급여를 조회하시오.
select SAL_LEVEL,min(SALARY) from EMPLOYEE group by SAL_LEVEL;

-- EMPLOYEE 테이블에서 DEPT_CODE별 직원 수를 조회하되, 직원 수가 3명 이상인 부서만 조회하시오.
select DEPT_CODE as '부서' , count(*) as '직원수' from EMPLOYEE group by DEPT_CODE having count(*) >= 3;

-- EMPLOYEE 테이블에서 JOB_CODE별 평균 급여를 조회하되, 평균 급여가 4000000 이상인 직급만 조회하시오.
select JOB_CODE, avg(SALARY) from EMPLOYEE group by JOB_CODE having avg(salary) >= 4000000;

-- EMPLOYEE 테이블에서 DEPT_CODE와 JOB_CODE별 총 급여와 각 DEPT_CODE별 총 급여를 ROLLUP을 사용하여 조회하시오.
select DEPT_CODE, JOB_CODE, sum(SALARY) from EMPLOYEE group by DEPT_CODE, JOB_CODE with ROLLUP;