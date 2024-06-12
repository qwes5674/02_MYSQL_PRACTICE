-- EMPLOYEE 테이블에서 '해외영업1부'에 속한 모든 직원의 이름, 직급, 급여를 조회하시오.
select EMP_NAME,JOB_CODE, salary
from EMPLOYEE
where DEPT_CODE = ( select DEPT_ID
                    from department
                    where DEPT_TITLE = '해외영업1부' );
-- EMPLOYEE 테이블에서 모든 직원의 평균 급여보다 높은 급여를 받는 직원의 이름과 급여를 조회하시오.
select EMP_NAME,SALARY
from EMPLOYEE
where SALARY > (select avg(SALARY)
                  from EMPLOYEE );


-- EMPLOYEE 테이블에서 각 부서의 평균 급여보다 높은 급여를 받는 직원의 이름, 부서명, 급여를 조회하시오.
select E.EMP_NAME, E.SALARY, D.DEPT_TITLE
from EMPLOYEE E join department d on E.DEPT_CODE = D.DEPT_ID
where SALARY > (select avg(SALARY)
                from EMPLOYEE
                where DEPT_CODE = E.DEPT_CODE);


-- 상관서브쿼리문제
-- EMPLOYEE 테이블에서 각 부서별로 가장 높은 급여를 받는 직원의 이름, 부서명, 급여를 조회하시오.
 select E.EMP_NAME,D.DEPT_TITLE, E.SALARY
 from EMPLOYEE E join DEPARTMENT D on E.DEPT_CODE = D.DEPT_ID
 where E.SALARY = (
    select MAX(SALARY)
    from EMPLOYEE
    where DEPT_CODE = E.DEPT_CODE
        );



-- EMPLOYEE 테이블에서 각 직급별 평균 급여보다 높은 급여를 받는 직원의 이름, 직급, 급여를 조회하시오.
    select E.EMP_NAME, J.JOB_NAME, E.SALARY
    from EMPLOYEE E join JOB J on E.JOB_CODE = J.JOB_CODE
    where E.SALARY > (
        select avg(salary)
        from EMPLOYEE
        where JOB_CODE = E.JOB_CODE
        );

-- EXISTS 절 문제
-- DEPARTMENT 테이블에서 직원이 있는 부서의 부서명을 조회하시오.
    select a.DEPT_TITLE
    from DEPARTMENT a
    where
         exists(
            select 1
            from
                employee b
            where
                a.DEPT_ID = b.DEPT_CODE
        );
-- EMPLOYEE 테이블에서 급여가 가장 높은 직원의 이름과 급여를 조회하시오. (NOT EXISTS 사용)
    select E.EMP_NAME, E.SALARY
    from EMPLOYEE E
    where not exists(
        select 1
        from EMPLOYEE E2
        where E2.SALARY > E.SALARY
    );

-- CTE 문제
-- EMPLOYEE 테이블에서 각 부서별 평균 급여를 계산하고,
-- 평균 급여가 4000000 이상인 부서의 부서명과 평균 급여를 조회하시오.
 WITH DeptAvgSalary AS (
    SELECT DEPT_CODE, AVG(SALARY) AS AvgSalary
    FROM EMPLOYEE
    GROUP BY DEPT_CODE
)
SELECT D.DEPT_TITLE, DAS.AvgSalary
FROM DeptAvgSalary DAS
         JOIN DEPARTMENT D ON DAS.DEPT_CODE = D.DEPT_ID
WHERE DAS.AvgSalary >= 4000000;