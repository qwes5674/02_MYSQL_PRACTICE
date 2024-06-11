-- 부서코드가 'D6' 이거나 'D8'인 직원의
-- 이름, 부서, 급여를 조회하세요
select EMP_NAME, DEPT_CODE ,salary
from EMPLOYEE
where DEPT_CDOE = 'D6' or 'D8';

-- IN 연산자 : 비교하려는 값 목록에 일치하는 값이 있는지 확인

-- 이씨성이 아닌 직원의 사번, 이름, 이메일주소 조회
select EMP_NO, EMP_NAME, EMAIL
from EMPLOYEE
where EMP_NAME != '이%';
-- J2직급의 급여 200만원 이상 받는 직원이거나
-- J7 직급인 직원의 이름, 급여, 직급코드 조회
 select EMP_NAME, SALARY, JOB_CODE
 from EMPLOYEE
 where JOB_CODE = 'J2' and SALARY >= 200 or JOB_CODE = 'J7';


-- J7 직급이거나 J2 직급인 직원들 중
-- 급여가 200만원 이상인 직원의
-- 이름, 급여, 직급코드를 조회하세요

select EMP_NAME, SALARY, JOB_CODE
from EMPLOYEE
where (JOB_CODE = 'J7' or JOB_CODE = 'J2') and SALARY >= 200;
