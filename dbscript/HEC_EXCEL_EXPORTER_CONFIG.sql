-- Create table
create table HEC_EXCEL_EXPORTER_CONFIG
(
  sql_code         VARCHAR2(200) not null,
  sql_text         CLOB not null,
  export_file_name VARCHAR2(200) not null,
  created_by       NUMBER not null,
  creation_date    DATE not null,
  last_updated_by  NUMBER not null,
  last_update_date DATE not null
);
-- Add comments to the table 
comment on table HEC_EXCEL_EXPORTER_CONFIG
  is 'excel导出配置';
-- Add comments to the columns 
comment on column HEC_EXCEL_EXPORTER_CONFIG.sql_code
  is 'SQL代码';
comment on column HEC_EXCEL_EXPORTER_CONFIG.sql_text
  is 'SQL内容';
comment on column HEC_EXCEL_EXPORTER_CONFIG.export_file_name
  is '导出文件名称';
comment on column HEC_EXCEL_EXPORTER_CONFIG.created_by
  is '创建人';
comment on column HEC_EXCEL_EXPORTER_CONFIG.creation_date
  is '创建日期';
comment on column HEC_EXCEL_EXPORTER_CONFIG.last_updated_by
  is '最后更新人';
comment on column HEC_EXCEL_EXPORTER_CONFIG.last_update_date
  is '最后更新日期';
-- Create/Recreate primary, unique and foreign key constraints 
alter table HEC_EXCEL_EXPORTER_CONFIG
  add constraint HEC_EXCEL_EXPORTER_CONFIG_PK primary key (SQL_CODE);
