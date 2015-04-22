-- Create table
create table SHOP_contract 
(
  ID           VARCHAR2(64) not null,
  TYPE         VARCHAR2(64),
  DEPOSIT      NUMBER,
  INCOME       NUMBER,
  AGENT_ID     VARCHAR2(64),
  HOUSE_ID     VARCHAR2(64),
  START_DATE   TIMESTAMP(6),
  END_DATE     TIMESTAMP(6),
  REMARKS      NVARCHAR2(64),
  CREATEBY     NVARCHAR2(64),
  CREATEDATE   TIMESTAMP(6),
  UPDATEBY     NVARCHAR2(64),
  UPDATEDATE   TIMESTAMP(6),
  DELFLAG      NVARCHAR2(64),
  ROOMER_NAME  NVARCHAR2(64),
  ROOMER_PHONE NVARCHAR2(64),
  ROOMER_PID   NVARCHAR2(64)
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
comment on column SHOP_contract .ID
  is '编号';
comment on column SHOP_contract .TYPE
  is '订单类型';
comment on column SHOP_contract .DEPOSIT
  is '房源押金';
comment on column SHOP_contract .INCOME
  is '服务费用';
comment on column SHOP_contract .AGENT_ID
  is '受理人';
comment on column SHOP_contract .HOUSE_ID
  is '房源ID';
comment on column SHOP_contract .START_DATE
  is '合同开始日期';
comment on column SHOP_contract .END_DATE
  is '合同结束日期';
comment on column SHOP_contract .REMARKS
  is '备注';
comment on column SHOP_contract .ROOMER_NAME
  is '房客姓名';
comment on column SHOP_contract .ROOMER_PHONE
  is '房客电话';
comment on column SHOP_contract .ROOMER_PID
  is '房客身份证号';
-- Create/Recreate primary, unique and foreign key constraints 
alter table SHOP_contract 
  add primary key (ID)
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

 -----------------------------
 -- Create table
create table SHOP_HOUSE
(
  PROPRIETOR   NVARCHAR2(64),
  NAME         NVARCHAR2(64),
  RENTPRICE    NUMBER,
  HOUSETYPE    NVARCHAR2(64),
  FLOOR        NVARCHAR2(64),
  AREANUM      NUMBER(10,2),
  AREA_ID      NVARCHAR2(64),
  GEO          NVARCHAR2(64),
  INDATE       TIMESTAMP(6),
  RENTWAY      NVARCHAR2(64),
  CASHTYPE     NVARCHAR2(64),
  DECORATETYPE NVARCHAR2(64),
  STATUS       NVARCHAR2(64),
  ADDR         NVARCHAR2(64),
  DESCRIPTION  NVARCHAR2(64),
  REMARKS      NVARCHAR2(64),
  CREATEBY     NVARCHAR2(64),
  CREATEDATE   TIMESTAMP(6),
  UPDATEBY     NVARCHAR2(64),
  UPDATEDATE   TIMESTAMP(6),
  DELFLAG      NVARCHAR2(64),
  ID           NVARCHAR2(64) not null,
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
comment on column SHOP_HOUSE.PROPRIETOR
  is '房东选择';
comment on column SHOP_HOUSE.NAME
  is '房源名称';
comment on column SHOP_HOUSE.RENTPRICE
  is '租金';
comment on column SHOP_HOUSE.HOUSETYPE
  is '房型';
comment on column SHOP_HOUSE.FLOOR
  is '楼层';
comment on column SHOP_HOUSE.AREANUM
  is '面积';
comment on column SHOP_HOUSE.AREA_ID
  is '区域选择';
comment on column SHOP_HOUSE.GEO
  is '经纬度';
comment on column SHOP_HOUSE.INDATE
  is '可入住时间';
comment on column SHOP_HOUSE.RENTWAY
  is '租赁方式';
comment on column SHOP_HOUSE.CASHTYPE
  is '租金押付';
comment on column SHOP_HOUSE.DECORATETYPE
  is '装修情况';
comment on column SHOP_HOUSE.STATUS
  is '房源状态';
comment on column SHOP_HOUSE.ADDR
  is '地址';
comment on column SHOP_HOUSE.DESCRIPTION
  is '详情';
comment on column SHOP_HOUSE.REMARKS
  is '备注';
comment on column SHOP_HOUSE.SMALLAREA_ID
  is '小区选择';
comment on column SHOP_HOUSE.IMAGES
  is '房图';
-- Create/Recreate primary, unique and foreign key constraints 
alter table SHOP_HOUSE
  add constraint BIN$CKX6sbB6RQeXm+OzkwHRtA==$0 primary key (ID);
-- Create/Recreate indexes 
create unique index BIN$RdY7Tea9SOqEThHhg7z+ww==$0 on SHOP_HOUSE (ID)
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
-----------------------------------------
-- Create table
create table SHOP_SCHEDULE
(
  ID           VARCHAR2(64) not null,
  NAME         NVARCHAR2(100),
  STATUS       VARCHAR2(100),
  LOOK_DATE    TIMESTAMP(6),
  MEETADDR     NVARCHAR2(100),
  AGENT_ID     VARCHAR2(64),
  ROOMER_NAME  VARCHAR2(64),
  REASON       NVARCHAR2(100),
  CREATE_BY    VARCHAR2(64),
  CREATE_DATE  TIMESTAMP(6),
  UPDATE_BY    VARCHAR2(64),
  UPDATE_DATE  TIMESTAMP(6),
  REMARKS      NVARCHAR2(255),
  DEL_FLAG     CHAR(1) default '0' not null,
  OPTION_DATE  TIMESTAMP(6),
  ROOMER_PHONE VARCHAR2(64)
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
comment on column SHOP_SCHEDULE.ID
  is '编号';
comment on column SHOP_SCHEDULE.NAME
  is '名称';
comment on column SHOP_SCHEDULE.STATUS
  is '状态';
comment on column SHOP_SCHEDULE.LOOK_DATE
  is '看房时间';
comment on column SHOP_SCHEDULE.MEETADDR
  is '碰头地点';
comment on column SHOP_SCHEDULE.AGENT_ID
  is '受理经纪人';
comment on column SHOP_SCHEDULE.ROOMER_NAME
  is '房客姓名';
comment on column SHOP_SCHEDULE.REASON
  is '取消原因';
comment on column SHOP_SCHEDULE.REMARKS
  is '备注';
comment on column SHOP_SCHEDULE.OPTION_DATE
  is '看房时间(备选)';
comment on column SHOP_SCHEDULE.ROOMER_PHONE
  is '房客电话';
-- Create/Recreate primary, unique and foreign key constraints 
alter table SHOP_SCHEDULE
  add primary key (ID);
-- Create/Recreate indexes 
create unique index BIN$4Nd7dEPORGGYU4wQx7ysgg==$0 on SHOP_SCHEDULE (ID)
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
create index BIN$jlR2bZmTRvKp9wuY1lQdRg==$0 on SHOP_SCHEDULE (DEL_FLAG)
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
-----------------------
-- Create table
create table SHOP_SCHEDULEITEM
(
  ID          VARCHAR2(64) not null,
  HOUSE_ID    VARCHAR2(64),
  STATUS      VARCHAR2(64),
  CREATE_BY   VARCHAR2(64),
  CREATE_DATE TIMESTAMP(6),
  UPDATE_BY   VARCHAR2(64),
  UPDATE_DATE TIMESTAMP(6),
  REMARKS     NVARCHAR2(255),
  DEL_FLAG    CHAR(1) default '0' not null,
  SCHEDULE_ID VARCHAR2(64) not null
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
comment on column SHOP_SCHEDULEITEM.ID
  is '编号';
comment on column SHOP_SCHEDULEITEM.HOUSE_ID
  is '房源ID';
comment on column SHOP_SCHEDULEITEM.STATUS
  is '状态';
comment on column SHOP_SCHEDULEITEM.REMARKS
  is '备注';
comment on column SHOP_SCHEDULEITEM.SCHEDULE_ID
  is '看房日程ID';
-- Create/Recreate primary, unique and foreign key constraints 
alter table SHOP_SCHEDULEITEM
  add primary key (ID);
-- Create/Recreate indexes 
create index BIN$moOLn4YuRyW9g1fxyDgdmg==$0 on SHOP_SCHEDULEITEM (DEL_FLAG)
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
create unique index BIN$oiikK9r7QHWs7V6SzKA/HQ==$0 on SHOP_SCHEDULEITEM (ID)
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
---------------------

-- Create table
create table SHOP_SMALLAREA
(
  ID          VARCHAR2(64) not null,
  AREA_ID     VARCHAR2(64),
  NAME        NVARCHAR2(100),
  SORT        NUMBER(10),
  CODE        VARCHAR2(100),
  GEO         VARCHAR2(200),
  SUBWAY_ID   VARCHAR2(400),
  FEE         VARCHAR2(64),
  BUILD_YEAR  NUMBER(10),
  PLOT_RATIO  NUMBER(10,6),
  GREEN_RATIO NUMBER(10,2),
  CREATE_BY   VARCHAR2(64),
  CREATE_DATE TIMESTAMP(6),
  UPDATE_BY   VARCHAR2(64),
  UPDATE_DATE TIMESTAMP(6),
  REMARKS     NVARCHAR2(2000),
  DEL_FLAG    CHAR(1) default '0' not null
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
comment on column SHOP_SMALLAREA.AREA_ID
  is '区域选择';
comment on column SHOP_SMALLAREA.NAME
  is '小区名称 ';
comment on column SHOP_SMALLAREA.SORT
  is '排序';
comment on column SHOP_SMALLAREA.CODE
  is '小区编码';
comment on column SHOP_SMALLAREA.GEO
  is '经纬度';
comment on column SHOP_SMALLAREA.SUBWAY_ID
  is '附近地铁';
comment on column SHOP_SMALLAREA.FEE
  is '物业费';
comment on column SHOP_SMALLAREA.BUILD_YEAR
  is '建造年代';
comment on column SHOP_SMALLAREA.PLOT_RATIO
  is '容积率';
comment on column SHOP_SMALLAREA.GREEN_RATIO
  is '绿化率';
comment on column SHOP_SMALLAREA.REMARKS
  is '备注';
-- Create/Recreate primary, unique and foreign key constraints 
alter table SHOP_SMALLAREA
  add primary key (ID);
-- Create/Recreate indexes 
create unique index BIN$ixMTb9JgRZCrUubO9TeuWg==$0 on SHOP_SMALLAREA (ID)
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
create index BIN$kTwg9tNERzGcFQPz9Ht7hA==$0 on SHOP_SMALLAREA (DEL_FLAG)
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
--------------------
-- Create table
create table SHOP_SUBWAY
(
  ID          VARCHAR2(64) not null,
  PARENT_ID   VARCHAR2(64),
  PARENT_IDS  VARCHAR2(2000),
  NAME        NVARCHAR2(100),
  SORT        NUMBER(10),
  CODE        VARCHAR2(100),
  TYPE        CHAR(1),
  CREATE_BY   VARCHAR2(64),
  CREATE_DATE TIMESTAMP(6),
  UPDATE_BY   VARCHAR2(64),
  UPDATE_DATE TIMESTAMP(6),
  REMARKS     NVARCHAR2(255),
  DEL_FLAG    CHAR(1) default '0' not null,
  GEO         VARCHAR2(200),
  AREA_ID     VARCHAR2(64)
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
comment on column SHOP_SUBWAY.ID
  is 'id';
comment on column SHOP_SUBWAY.PARENT_ID
  is '上级地铁';
comment on column SHOP_SUBWAY.PARENT_IDS
  is '上级编号集合';
comment on column SHOP_SUBWAY.NAME
  is '地铁名称';
comment on column SHOP_SUBWAY.SORT
  is '排序';
comment on column SHOP_SUBWAY.CODE
  is '编号';
comment on column SHOP_SUBWAY.TYPE
  is '类型';
comment on column SHOP_SUBWAY.REMARKS
  is '备注';
comment on column SHOP_SUBWAY.GEO
  is '经纬度';
comment on column SHOP_SUBWAY.AREA_ID
  is '区域选择';
-- Create/Recreate primary, unique and foreign key constraints 
alter table SHOP_SUBWAY
  add primary key (ID);
-- Create/Recreate indexes 
create unique index BIN$1Ejy8rgcRBiGohyojlgpUA==$0 on SHOP_SUBWAY (ID)
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
create index BIN$PUmcSAj1QS6hgFg8RftxdQ==$0 on SHOP_SUBWAY (PARENT_ID)
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
create index BIN$YBqYryx2QlCq8qPjtu9pYA==$0 on SHOP_SUBWAY (PARENT_IDS)
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
create index BIN$nUQg5MnYTDqWamPIhOZfbA==$0 on SHOP_SUBWAY (DEL_FLAG)
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
-----------------------
-- Create table
create table SYS_AREA
(
  ID          VARCHAR2(64) not null,
  PARENT_ID   VARCHAR2(64) not null,
  PARENT_IDS  VARCHAR2(2000) not null,
  NAME        NVARCHAR2(100) not null,
  SORT        NUMBER(10) not null,
  CODE        VARCHAR2(100),
  TYPE        CHAR(1),
  CREATE_BY   VARCHAR2(64) not null,
  CREATE_DATE TIMESTAMP(6) not null,
  UPDATE_BY   VARCHAR2(64) not null,
  UPDATE_DATE TIMESTAMP(6) not null,
  REMARKS     NVARCHAR2(255),
  DEL_FLAG    CHAR(1) default '0' not null
)
tablespace USERS
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
-- Create/Recreate primary, unique and foreign key constraints 
alter table SYS_AREA
  add primary key (ID)
  using index 
  tablespace USERS
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
-- Create/Recreate indexes 
create index SYS_AREA_DEL_FLAG on SYS_AREA (DEL_FLAG)
  tablespace USERS
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
create index SYS_AREA_PARENT_ID on SYS_AREA (PARENT_ID)
  tablespace USERS
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
create index SYS_AREA_PARENT_IDS on SYS_AREA (PARENT_IDS)
  tablespace USERS
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

  
  