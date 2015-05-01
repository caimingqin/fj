-- Create table
create table SHOP_TRUST
(
  ID              NVARCHAR2(64) not null,
  RENTWAY         NVARCHAR2(64),
  AREA_NAME       NVARCHAR2(64),
  SAMLL_AREA_NAME NVARCHAR2(64),
  BUILDING        NVARCHAR2(64),
  ROOM            NVARCHAR2(64),
  BEDROOM         NVARCHAR2(64),
  LIVINGROOM      NVARCHAR2(64),
  WC              NVARCHAR2(64),
  AREANUM         NUMBER(10,2),
  RENTPRICE       NUMBER,
  NAME            NVARCHAR2(64),
  GENDER          NVARCHAR2(64),
  MOBILE          NVARCHAR2(64),
  ADDR            NVARCHAR2(64),
  REMARKS         NVARCHAR2(64),
  CREATEBY        NVARCHAR2(64),
  CREATEDATE      TIMESTAMP(6),
  UPDATEBY        NVARCHAR2(64),
  UPDATEDATE      TIMESTAMP(6),
  DELFLAG         NVARCHAR2(64)
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
comment on column SHOP_TRUST.RENTWAY
  is '出租类型';
comment on column SHOP_TRUST.AREA_NAME
  is '所在城市';
comment on column SHOP_TRUST.SAMLL_AREA_NAME
  is '小区名称';
comment on column SHOP_TRUST.BUILDING
  is '楼栋号/单元号';
comment on column SHOP_TRUST.ROOM
  is '室号';
comment on column SHOP_TRUST.BEDROOM
  is '室';
comment on column SHOP_TRUST.LIVINGROOM
  is '厅';
comment on column SHOP_TRUST.WC
  is '卫';
comment on column SHOP_TRUST.AREANUM
  is '面积';
comment on column SHOP_TRUST.RENTPRICE
  is '租金';
comment on column SHOP_TRUST.NAME
  is '房东名称';
comment on column SHOP_TRUST.GENDER
  is '性别';
comment on column SHOP_TRUST.MOBILE
  is '手机号';
comment on column SHOP_TRUST.ADDR
  is '地址';
-- Create/Recreate primary, unique and foreign key constraints 
alter table SHOP_TRUST
  add constraint SHOP_TRUST_ID primary key (ID)
  using index 
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255;
