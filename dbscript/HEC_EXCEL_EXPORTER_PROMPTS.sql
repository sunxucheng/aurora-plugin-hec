-- Create table
create table HEC_EXCEL_EXPORTER_PROMPTS
(
  sql_code         VARCHAR2(200) not null,
  column_prompt    VARCHAR2(200) not null,
  column_sequence  VARCHAR2(200) not null,
  created_by       NUMBER not null,
  creation_date    DATE not null,
  last_updated_by  NUMBER not null,
  last_update_date DATE not null,
  column_name      VARCHAR2(30)
);
-- Add comments to the table 
comment on table HEC_EXCEL_EXPORTER_PROMPTS
  is 'excel导出描述';
-- Add comments to the columns 
comment on column HEC_EXCEL_EXPORTER_PROMPTS.sql_code
  is 'SQL代码';
comment on column HEC_EXCEL_EXPORTER_PROMPTS.column_prompt
  is '列描述';
comment on column HEC_EXCEL_EXPORTER_PROMPTS.column_sequence
  is '列顺序';
comment on column HEC_EXCEL_EXPORTER_PROMPTS.created_by
  is '创建人';
comment on column HEC_EXCEL_EXPORTER_PROMPTS.creation_date
  is '创建日期';
comment on column HEC_EXCEL_EXPORTER_PROMPTS.last_updated_by
  is '最后更新人';
comment on column HEC_EXCEL_EXPORTER_PROMPTS.last_update_date
  is '最后更新日期';
comment on column HEC_EXCEL_EXPORTER_PROMPTS.column_name
  is '列名称';
-- Create/Recreate primary, unique and foreign key constraints 
alter table HEC_EXCEL_EXPORTER_PROMPTS
  add constraint HEC_EXCEL_EXPORTER_PROMPTS_PK primary key (SQL_CODE, COLUMN_SEQUENCE);
