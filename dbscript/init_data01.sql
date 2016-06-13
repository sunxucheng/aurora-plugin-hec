prompt Importing table hec_excel_exporter_prompts...
set feedback off
set define off
insert into hec_excel_exporter_prompts (SQL_CODE, COLUMN_PROMPT, COLUMN_SEQUENCE, CREATED_BY, CREATION_DATE, LAST_UPDATED_BY, LAST_UPDATE_DATE)
values ('TEST', '员工代码', '1', -1, to_date('01-03-2016', 'dd-mm-yyyy'), -1, to_date('01-03-2016', 'dd-mm-yyyy'));

insert into hec_excel_exporter_prompts (SQL_CODE, COLUMN_PROMPT, COLUMN_SEQUENCE, CREATED_BY, CREATION_DATE, LAST_UPDATED_BY, LAST_UPDATE_DATE)
values ('TEST', '员工姓名', '2', -1, to_date('01-03-2016', 'dd-mm-yyyy'), -1, to_date('01-03-2016', 'dd-mm-yyyy'));

insert into hec_excel_exporter_prompts (SQL_CODE, COLUMN_PROMPT, COLUMN_SEQUENCE, CREATED_BY, CREATION_DATE, LAST_UPDATED_BY, LAST_UPDATE_DATE)
values ('TEST', '邮箱', '3', -1, to_date('01-03-2016', 'dd-mm-yyyy'), -1, to_date('01-03-2016', 'dd-mm-yyyy'));



insert into hec_excel_exporter_config (SQL_CODE, SQL_TEXT, EXPORT_FILE_NAME, CREATED_BY, CREATION_DATE, LAST_UPDATED_BY, LAST_UPDATE_DATE)
values ('TEST', 'SELECT EE.EMPLOYEE_CODE, EE.NAME, EE.EMAIL
  FROM EXP_EMPLOYEES EE
 where ee.employee_code like ?', '员工 ', -1, to_date('04-03-2016', 'dd-mm-yyyy'), -1, to_date('04-03-2016', 'dd-mm-yyyy'));


insert into hec_excel_exporter_params (SQL_CODE, PARAM_NAME, PARAM_SEQUENCE, CREATED_BY, CREATION_DATE, LAST_UPDATED_BY, LAST_UPDATE_DATE)
values ('TEST', 'employee_code', 10, -1, to_date('15-04-2016', 'dd-mm-yyyy'), -1, to_date('15-04-2016', 'dd-mm-yyyy'));

prompt Done.
