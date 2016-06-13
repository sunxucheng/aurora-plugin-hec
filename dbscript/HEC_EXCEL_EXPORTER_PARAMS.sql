-- Create table
create table HEC_EXCEL_EXPORTER_PARAMS
(
  sql_code         VARCHAR2(200) not null,
  param_name       VARCHAR2(200) not null,
  param_sequence   NUMBER not null,
  created_by       NUMBER not null,
  creation_date    DATE not null,
  last_updated_by  NUMBER not null,
  last_update_date DATE not null,
  query_op         VARCHAR2(30),
  query_exp        VARCHAR2(200)
);
-- Add comments to the table 
comment on table HEC_EXCEL_EXPORTER_PARAMS
  is 'excel导出参数';
-- Add comments to the columns 
comment on column HEC_EXCEL_EXPORTER_PARAMS.sql_code
  is 'SQL代码';
comment on column HEC_EXCEL_EXPORTER_PARAMS.param_name
  is '参数名称';
comment on column HEC_EXCEL_EXPORTER_PARAMS.param_sequence
  is '参数顺序';
comment on column HEC_EXCEL_EXPORTER_PARAMS.created_by
  is '创建人';
comment on column HEC_EXCEL_EXPORTER_PARAMS.creation_date
  is '创建日期';
comment on column HEC_EXCEL_EXPORTER_PARAMS.last_updated_by
  is '最后更新人';
comment on column HEC_EXCEL_EXPORTER_PARAMS.last_update_date
  is '最后更新日期';
comment on column HEC_EXCEL_EXPORTER_PARAMS.query_op
  is 'queryOperator';
comment on column HEC_EXCEL_EXPORTER_PARAMS.query_exp
  is 'queryExpression';
-- Create/Recreate primary, unique and foreign key constraints 
alter table HEC_EXCEL_EXPORTER_PARAMS
  add constraint HEC_EXCEL_EXPORTER_PARAMS_PK primary key (SQL_CODE, PARAM_SEQUENCE);
