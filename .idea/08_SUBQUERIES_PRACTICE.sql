-- EMPLOYEE 테이블에서 '해외영업1부'에 속한 모든 직원의 이름, 직급, 급여를 조회하시오.
select EMP_NAME,JOB_CODE, DEPT_CODE
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
select a.EMP_NAME, a.SALARY, b.DEPT_TITLE
from EMPLOYEE a inner join department b on a.DEPT_CODE = b.DEPT_ID
where SALARY > (select avg(SALARY)
                from EMPLOYEE);


-- 상관서브쿼리문제
-- EMPLOYEE 테이블에서 각 부서별로 가장 높은 급여를 받는 직원의 이름, 부서명, 급여를 조회하시오.
 select EMP_NAME,DEPT_ID,max(SALARY)
 from EMPLOYEE
 group by EMP_NAME;

 select *
 from EMPLOYEE a
 where



-- EMPLOYEE 테이블에서 각 직급별 평균 급여보다 높은 급여를 받는 직원의 이름, 직급, 급여를 조회하시오.
    select EMP_NAME, JOB_NAME, SALRARY
    from EMPLOYEE a

-- EXISTS 절 문제
-- DEPARTMENT 테이블에서 직원이 있는 부서의 부서명을 조회하시오.
    select a.DEPT_TITLE
    from DEPARTMENT a
    where
        not exists(
            select
                DEPT_TITLE
            from

        );
-- EMPLOYEE 테이블에서 급여가 가장 높은 직원의 이름과 급여를 조회하시오. (NOT EXISTS 사용)


-- CTE 문제
-- EMPLOYEE 테이블에서 각 부서별 평균 급여를 계산하고,
-- 평균 급여가 4000000 이상인 부서의 부서명과 평균 급여를 조회하시오.