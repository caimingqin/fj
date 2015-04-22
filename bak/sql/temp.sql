-- Create table
create table SHOP_HOUSE
(
  ID           VARCHAR2(64) not null,
  CODE         VARCHAR2(64),
  NAME         NVARCHAR2(64),
  
  RENTPRICE    NUMBER,
  HOUSETYPE    NVARCHAR2(64),
  FLOOR        NVARCHAR2(64),
  AREANUM      NUMBER(10,2),
  AREA_ID      NVARCHAR2(64),
  INDATE       TIMESTAMP(6),

  REMARKS      NVARCHAR2(64),
  CREATEBY     NVARCHAR2(64),
  CREATEDATE   TIMESTAMP(6),
  UPDATEBY     NVARCHAR2(64),
  UPDATEDATE   TIMESTAMP(6),
  DELFLAG      NVARCHAR2(64),

  SMALLAREA_ID NVARCHAR2(64),
  IMAGES       NVARCHAR2(1000)
)
tablespace ECOM
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
-- Add comments to the columns 

comment on column SHOP_HOUSE.NAME
  is '名称';
comment on column SHOP_HOUSE.CODE
  is '编号';
comment on column SHOP_HOUSE.REMARKS
  is '备注';

-- Create/Recreate primary, unique and foreign key constraints 
alter table SHOP_HOUSE
  add constraint HID primary key (ID)
  using index 
  tablespace ECOM
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
