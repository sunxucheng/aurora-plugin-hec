prompt Importing table hec_excel_exporter_prompts...
set feedback off
set define off
insert into HEC_EXCEL_EXPORTER_CONFIG (SQL_CODE, SQL_TEXT, EXPORT_FILE_NAME, CREATED_BY, CREATION_DATE, LAST_UPDATED_BY, LAST_UPDATE_DATE)
values ('TEST', 'SELECT EE.EMPLOYEE_CODE, EE.NAME, EE.EMAIL, ee.phone
  FROM EXP_EMPLOYEES EE #WHERE_CLAUSE#', '员工 ', -1, to_date('04-03-2016', 'dd-mm-yyyy'), 1, to_date('20-04-2016 09:46:21', 'dd-mm-yyyy hh24:mi:ss'));


insert into hec_excel_exporter_params (SQL_CODE, PARAM_NAME, PARAM_SEQUENCE, CREATED_BY, CREATION_DATE, LAST_UPDATED_BY, LAST_UPDATE_DATE, QUERY_OP, QUERY_EXP)
values ('TEST', 'employee_code', 10, -1, to_date('15-04-2016', 'dd-mm-yyyy'), -1, to_date('15-04-2016', 'dd-mm-yyyy'), 'like', null);


insert into hec_excel_exporter_prompts (SQL_CODE, COLUMN_PROMPT, COLUMN_SEQUENCE, CREATED_BY, CREATION_DATE, LAST_UPDATED_BY, LAST_UPDATE_DATE, COLUMN_NAME)
values ('TEST', '员工代码', '1', -1, to_date('01-03-2016', 'dd-mm-yyyy'), 1, to_date('19-04-2016 22:46:57', 'dd-mm-yyyy hh24:mi:ss'), 'employee_code');

insert into hec_excel_exporter_prompts (SQL_CODE, COLUMN_PROMPT, COLUMN_SEQUENCE, CREATED_BY, CREATION_DATE, LAST_UPDATED_BY, LAST_UPDATE_DATE, COLUMN_NAME)
values ('TEST', '员工姓名', '2', -1, to_date('01-03-2016', 'dd-mm-yyyy'), 1, to_date('19-04-2016 22:47:01', 'dd-mm-yyyy hh24:mi:ss'), 'name');

insert into hec_excel_exporter_prompts (SQL_CODE, COLUMN_PROMPT, COLUMN_SEQUENCE, CREATED_BY, CREATION_DATE, LAST_UPDATED_BY, LAST_UPDATE_DATE, COLUMN_NAME)
values ('TEST', '邮箱', '3', -1, to_date('01-03-2016', 'dd-mm-yyyy'), 1, to_date('19-04-2016 22:47:05', 'dd-mm-yyyy hh24:mi:ss'), 'email');

prompt Done.

