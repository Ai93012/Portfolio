--------------------------------------------------------
--  파일이 생성됨 - 금요일-6월-03-2022   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Sequence NOTICE_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "YKK"."NOTICE_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Table ADMIN
--------------------------------------------------------

  CREATE TABLE "YKK"."ADMIN" 
   (	"AID" VARCHAR2(100 BYTE), 
	"APASS" VARCHAR2(100 BYTE), 
	"AREG" DATE, 
	"ALEVEL" NUMBER(20,0), 
	"ANAME" VARCHAR2(100 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "BTD" ;
--------------------------------------------------------
--  DDL for Table CART
--------------------------------------------------------

  CREATE TABLE "YKK"."CART" 
   (	"USERID" VARCHAR2(100 BYTE), 
	"PNUM" NUMBER(20,0), 
	"PCOUNT" NUMBER(20,0), 
	"CARTID" NUMBER GENERATED ALWAYS AS IDENTITY MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE 
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "BTD" ;
--------------------------------------------------------
--  DDL for Table EVENT
--------------------------------------------------------

  CREATE TABLE "YKK"."EVENT" 
   (	"AID" VARCHAR2(100 BYTE), 
	"ANAME" VARCHAR2(100 BYTE), 
	"ETITLE" VARCHAR2(100 BYTE), 
	"EBNO" NUMBER(20,0), 
	"ECONTENT" VARCHAR2(4000 BYTE), 
	"EREG" DATE, 
	"EHIT" NUMBER(20,0), 
	"EFILE" VARCHAR2(4000 BYTE)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "BTD" ;

   COMMENT ON COLUMN "YKK"."EVENT"."AID" IS '작성자(관리자) 아이디';
   COMMENT ON COLUMN "YKK"."EVENT"."ANAME" IS '작성자(관리자) 이름';
   COMMENT ON COLUMN "YKK"."EVENT"."ETITLE" IS '제목';
   COMMENT ON COLUMN "YKK"."EVENT"."EBNO" IS '글 번호';
   COMMENT ON COLUMN "YKK"."EVENT"."ECONTENT" IS '글 내용';
   COMMENT ON COLUMN "YKK"."EVENT"."EREG" IS '작성일';
   COMMENT ON COLUMN "YKK"."EVENT"."EHIT" IS '조회수';
   COMMENT ON COLUMN "YKK"."EVENT"."EFILE" IS '첨부파일';
--------------------------------------------------------
--  DDL for Table FOOD
--------------------------------------------------------

  CREATE TABLE "YKK"."FOOD" 
   (	"USERID" VARCHAR2(100 BYTE), 
	"USERNAME" VARCHAR2(100 BYTE), 
	"FBNO" NUMBER(20,0), 
	"FTITLE" VARCHAR2(100 BYTE), 
	"FCONTENT" VARCHAR2(4000 BYTE), 
	"FREG" DATE, 
	"FFILE" VARCHAR2(4000 BYTE), 
	"FHIT" NUMBER(20,0)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "BTD" ;
--------------------------------------------------------
--  DDL for Table MEMBER
--------------------------------------------------------

  CREATE TABLE "YKK"."MEMBER" 
   (	"USERNAME" VARCHAR2(100 BYTE), 
	"USERID" VARCHAR2(500 BYTE), 
	"USERPASS" VARCHAR2(500 BYTE), 
	"ADDRESS1" VARCHAR2(500 BYTE), 
	"ADDRESS2" VARCHAR2(500 BYTE), 
	"USERMAIL" VARCHAR2(800 BYTE), 
	"REGDATE" DATE DEFAULT SYSDATE, 
	"ADMINCK" VARCHAR2(100 BYTE), 
	"ADDRESS3" VARCHAR2(500 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "BTD" ;
--------------------------------------------------------
--  DDL for Table NMEM_ADD
--------------------------------------------------------

  CREATE TABLE "YKK"."NMEM_ADD" 
   (	"ADRNAME" VARCHAR2(30 BYTE), 
	"DELADD1" VARCHAR2(100 BYTE), 
	"DELADD2" VARCHAR2(100 BYTE), 
	"DELADD3" VARCHAR2(100 BYTE), 
	"PHONNUM" VARCHAR2(50 BYTE), 
	"MESSAGE" VARCHAR2(500 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "BTD" ;
--------------------------------------------------------
--  DDL for Table NOTICE
--------------------------------------------------------

  CREATE TABLE "YKK"."NOTICE" 
   (	"AID" VARCHAR2(100 BYTE), 
	"NTITLE" VARCHAR2(100 BYTE), 
	"NCONTENT" VARCHAR2(4000 BYTE), 
	"NREG" DATE DEFAULT sysdate, 
	"NHIT" NUMBER(20,0), 
	"NFILE" VARCHAR2(4000 BYTE), 
	"NBNO" NUMBER(10,0) GENERATED ALWAYS AS IDENTITY MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE 
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "BTD" ;

   COMMENT ON COLUMN "YKK"."NOTICE"."AID" IS '작성자((관리자) 아이디';
   COMMENT ON COLUMN "YKK"."NOTICE"."NTITLE" IS '제목';
   COMMENT ON COLUMN "YKK"."NOTICE"."NCONTENT" IS '글 내용';
   COMMENT ON COLUMN "YKK"."NOTICE"."NREG" IS '작성일';
   COMMENT ON COLUMN "YKK"."NOTICE"."NHIT" IS '조회수';
   COMMENT ON COLUMN "YKK"."NOTICE"."NFILE" IS '첨부파일';
--------------------------------------------------------
--  DDL for Table PRODUCT
--------------------------------------------------------

  CREATE TABLE "YKK"."PRODUCT" 
   (	"PNUM" NUMBER(20,0), 
	"PNAME" VARCHAR2(100 BYTE), 
	"PREG" DATE DEFAULT sysdate, 
	"AID" VARCHAR2(100 BYTE), 
	"PPRICE" NUMBER(20,0), 
	"PIMAGE1" VARCHAR2(4000 BYTE), 
	"PIMAGE2" VARCHAR2(4000 BYTE), 
	"PDETAIL" VARCHAR2(4000 BYTE), 
	"PDEL" VARCHAR2(4000 BYTE), 
	"PCATEGORY" VARCHAR2(400 BYTE), 
	"PREADCOUNT" NUMBER(20,0), 
	"PSALE" NUMBER(20,0), 
	"PINVENTORY" NUMBER(20,0), 
	"PMODE" DATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "BTD" ;

   COMMENT ON COLUMN "YKK"."PRODUCT"."PNUM" IS '상품번호';
   COMMENT ON COLUMN "YKK"."PRODUCT"."PNAME" IS '상품명';
   COMMENT ON COLUMN "YKK"."PRODUCT"."PREG" IS '등록일';
   COMMENT ON COLUMN "YKK"."PRODUCT"."AID" IS '작성자(관리자)';
   COMMENT ON COLUMN "YKK"."PRODUCT"."PPRICE" IS '가격';
   COMMENT ON COLUMN "YKK"."PRODUCT"."PIMAGE1" IS '썸네일 이미지';
   COMMENT ON COLUMN "YKK"."PRODUCT"."PIMAGE2" IS '상세이미지';
   COMMENT ON COLUMN "YKK"."PRODUCT"."PDETAIL" IS '상품 상세정보';
   COMMENT ON COLUMN "YKK"."PRODUCT"."PDEL" IS '배송정보';
   COMMENT ON COLUMN "YKK"."PRODUCT"."PCATEGORY" IS '카테고리';
   COMMENT ON COLUMN "YKK"."PRODUCT"."PREADCOUNT" IS '조회수';
   COMMENT ON COLUMN "YKK"."PRODUCT"."PSALE" IS '할인율';
   COMMENT ON COLUMN "YKK"."PRODUCT"."PINVENTORY" IS '재고량';
   COMMENT ON COLUMN "YKK"."PRODUCT"."PMODE" IS '구매한 날짜';
--------------------------------------------------------
--  DDL for Table QNA
--------------------------------------------------------

  CREATE TABLE "YKK"."QNA" 
   (	"AID" VARCHAR2(100 BYTE), 
	"USERID" VARCHAR2(100 BYTE), 
	"ANAME" VARCHAR2(100 BYTE), 
	"USERNAME" VARCHAR2(100 BYTE), 
	"QBNO" NUMBER(20,0), 
	"QTITLE" VARCHAR2(100 BYTE), 
	"QCONTENT" VARCHAR2(4000 BYTE), 
	"QREG" DATE
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "BTD" ;

   COMMENT ON COLUMN "YKK"."QNA"."AID" IS '작성자(관리자)';
   COMMENT ON COLUMN "YKK"."QNA"."USERID" IS '작성자(회원)';
   COMMENT ON COLUMN "YKK"."QNA"."ANAME" IS '작성자 이름(관리자이름)';
   COMMENT ON COLUMN "YKK"."QNA"."USERNAME" IS '작성자 이름(회원)';
REM INSERTING into YKK.ADMIN
SET DEFINE OFF;
Insert into YKK.ADMIN (AID,APASS,AREG,ALEVEL,ANAME) values ('admin','admin',to_date('22/05/28','RR/MM/DD'),1,'admin');
REM INSERTING into YKK.CART
SET DEFINE OFF;
Insert into YKK.CART (USERID,PNUM,PCOUNT,CARTID) values ('111',5,4,9);
Insert into YKK.CART (USERID,PNUM,PCOUNT,CARTID) values ('manari',2,20,14);
Insert into YKK.CART (USERID,PNUM,PCOUNT,CARTID) values ('111',2,8,4);
Insert into YKK.CART (USERID,PNUM,PCOUNT,CARTID) values ('111',3,null,5);
Insert into YKK.CART (USERID,PNUM,PCOUNT,CARTID) values ('manari',5,20,10);
Insert into YKK.CART (USERID,PNUM,PCOUNT,CARTID) values ('manari',1,20,16);
REM INSERTING into YKK.EVENT
SET DEFINE OFF;
REM INSERTING into YKK.FOOD
SET DEFINE OFF;
REM INSERTING into YKK.MEMBER
SET DEFINE OFF;
Insert into YKK.MEMBER (USERNAME,USERID,USERPASS,ADDRESS1,ADDRESS2,USERMAIL,REGDATE,ADMINCK,ADDRESS3) values ('김파랑','111','111','경기도 안양','111','parang@naver.com',to_date('22/05/26','RR/MM/DD'),'0',null);
Insert into YKK.MEMBER (USERNAME,USERID,USERPASS,ADDRESS1,ADDRESS2,USERMAIL,REGDATE,ADMINCK,ADDRESS3) values ('김빨강','1111','111','10949','경기 파주시 조리읍 매봉재길 1','red@naver.com',to_date('22/05/26','RR/MM/DD'),'0','sdfs');
Insert into YKK.MEMBER (USERNAME,USERID,USERPASS,ADDRESS1,ADDRESS2,USERMAIL,REGDATE,ADMINCK,ADDRESS3) values ('김파랑','kkc123','111','13480','경기 성남시 분당구 대왕판교로 477 (판교동)','parang@naver.com',to_date('22/05/30','RR/MM/DD'),'0','12');
Insert into YKK.MEMBER (USERNAME,USERID,USERPASS,ADDRESS1,ADDRESS2,USERMAIL,REGDATE,ADMINCK,ADDRESS3) values ('갯강구','kyk111','kyk222',null,null,'kch@naver.com',to_date('22/05/30','RR/MM/DD'),'0',null);
Insert into YKK.MEMBER (USERNAME,USERID,USERPASS,ADDRESS1,ADDRESS2,USERMAIL,REGDATE,ADMINCK,ADDRESS3) values ('마나리','manari','3333','47353','부산 부산진구 중앙대로644번길 60-4 (범천동)','kyk123@naver.com',to_date('22/05/31','RR/MM/DD'),'0',null);
Insert into YKK.MEMBER (USERNAME,USERID,USERPASS,ADDRESS1,ADDRESS2,USERMAIL,REGDATE,ADMINCK,ADDRESS3) values ('김철수','notghostTT','1111','04766','서울 성동구 서울숲길 17 (성수동1가, 성수파크빌)','kkk@naver.com',to_date('22/06/02','RR/MM/DD'),'0','108동');
Insert into YKK.MEMBER (USERNAME,USERID,USERPASS,ADDRESS1,ADDRESS2,USERMAIL,REGDATE,ADMINCK,ADDRESS3) values ('test3','test3','test3','test3','test3','test3',to_date('22/05/25','RR/MM/DD'),'0',null);
Insert into YKK.MEMBER (USERNAME,USERID,USERPASS,ADDRESS1,ADDRESS2,USERMAIL,REGDATE,ADMINCK,ADDRESS3) values ('박노랑','test4','111','test4','test4','yellow@naver.com',to_date('22/05/25','RR/MM/DD'),'0',null);
Insert into YKK.MEMBER (USERNAME,USERID,USERPASS,ADDRESS1,ADDRESS2,USERMAIL,REGDATE,ADMINCK,ADDRESS3) values ('갯강구','kkk','111','111','111','111',to_date('22/05/25','RR/MM/DD'),'0',null);
Insert into YKK.MEMBER (USERNAME,USERID,USERPASS,ADDRESS1,ADDRESS2,USERMAIL,REGDATE,ADMINCK,ADDRESS3) values ('연어','TH35ky','1111',null,null,null,to_date('22/06/02','RR/MM/DD'),null,null);
REM INSERTING into YKK.NMEM_ADD
SET DEFINE OFF;
Insert into YKK.NMEM_ADD (ADRNAME,DELADD1,DELADD2,DELADD3,PHONNUM,MESSAGE) values ('test3','test3','test3','test3','test3','test3');
Insert into YKK.NMEM_ADD (ADRNAME,DELADD1,DELADD2,DELADD3,PHONNUM,MESSAGE) values ('ㅇㅇㅇ','16979','경기 용인시 기흥구 강남동로 1 (구갈동)','ㅇㅇㅇ','010-222-2222','경비실에 맡겨주세요 ');
Insert into YKK.NMEM_ADD (ADRNAME,DELADD1,DELADD2,DELADD3,PHONNUM,MESSAGE) values ('ㄷㅂㄹ','16979','경기 용인시 기흥구 강남동로 1 (구갈동)','ㅇㅇㅇ','ddd','ddd');
Insert into YKK.NMEM_ADD (ADRNAME,DELADD1,DELADD2,DELADD3,PHONNUM,MESSAGE) values ('test1','test1','test1','test1','test1','test1');
Insert into YKK.NMEM_ADD (ADRNAME,DELADD1,DELADD2,DELADD3,PHONNUM,MESSAGE) values ('김삿갓','13544','경기 성남시 분당구 용인서울고속도로 88 (대장동)','108동','010-222-2222','경비실에 맡겨주세요 ');
REM INSERTING into YKK.NOTICE
SET DEFINE OFF;
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다.','글 내용입니다',to_date('22/06/01','RR/MM/DD'),null,null,313);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다.','글 내용입니다',to_date('22/05/31','RR/MM/DD'),null,null,1);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'안녕하세요?','반가워요',to_date('22/06/01','RR/MM/DD'),null,null,456);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목이었다','제목이 있었어용',to_date('22/06/01','RR/MM/DD'),null,null,314);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'행복한 6월입니다','잘 지내시죠?',to_date('22/06/01','RR/MM/DD'),null,null,315);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다','벚꽃엔딩',to_date('22/06/01','RR/MM/DD'),null,null,316);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'감사합니다','ㅎㅇ',to_date('22/06/01','RR/MM/DD'),null,null,317);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'ㄱㄱ','ㄱㄱ',to_date('22/06/01','RR/MM/DD'),null,null,318);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,319);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,320);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'안녕하세요?','반가워요',to_date('22/06/01','RR/MM/DD'),null,null,321);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목이었다','제목이 있었어용',to_date('22/06/01','RR/MM/DD'),null,null,322);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'행복한 6월입니다','잘 지내시죠?',to_date('22/06/01','RR/MM/DD'),null,null,323);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다','벚꽃엔딩',to_date('22/06/01','RR/MM/DD'),null,null,324);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'감사합니다','ㅎㅇ',to_date('22/06/01','RR/MM/DD'),null,null,325);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'ㄱㄱ','ㄱㄱ',to_date('22/06/01','RR/MM/DD'),null,null,326);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다.','글 내용입니다',to_date('22/06/01','RR/MM/DD'),null,null,327);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,328);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,329);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'안녕하세요?','반가워요',to_date('22/06/01','RR/MM/DD'),null,null,330);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목이었다','제목이 있었어용',to_date('22/06/01','RR/MM/DD'),null,null,331);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'행복한 6월입니다','잘 지내시죠?',to_date('22/06/01','RR/MM/DD'),null,null,332);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다','벚꽃엔딩',to_date('22/06/01','RR/MM/DD'),null,null,333);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'감사합니다','ㅎㅇ',to_date('22/06/01','RR/MM/DD'),null,null,334);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'ㄱㄱ','ㄱㄱ',to_date('22/06/01','RR/MM/DD'),null,null,335);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다.','글 내용입니다',to_date('22/06/01','RR/MM/DD'),null,null,336);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,337);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,338);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'안녕하세요?','반가워요',to_date('22/06/01','RR/MM/DD'),null,null,339);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목이었다','제목이 있었어용',to_date('22/06/01','RR/MM/DD'),null,null,340);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'행복한 6월입니다','잘 지내시죠?',to_date('22/06/01','RR/MM/DD'),null,null,341);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다','벚꽃엔딩',to_date('22/06/01','RR/MM/DD'),null,null,342);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'감사합니다','ㅎㅇ',to_date('22/06/01','RR/MM/DD'),null,null,343);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'ㄱㄱ','ㄱㄱ',to_date('22/06/01','RR/MM/DD'),null,null,344);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다.','글 내용입니다',to_date('22/06/01','RR/MM/DD'),null,null,345);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,346);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,347);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'안녕하세요?','반가워요',to_date('22/06/01','RR/MM/DD'),null,null,348);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다.','글 내용입니다',to_date('22/06/01','RR/MM/DD'),null,null,349);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목이었다','제목이 있었어용',to_date('22/06/01','RR/MM/DD'),null,null,350);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'행복한 6월입니다','잘 지내시죠?',to_date('22/06/01','RR/MM/DD'),null,null,351);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다','벚꽃엔딩',to_date('22/06/01','RR/MM/DD'),null,null,352);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'감사합니다','ㅎㅇ',to_date('22/06/01','RR/MM/DD'),null,null,353);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'ㄱㄱ','ㄱㄱ',to_date('22/06/01','RR/MM/DD'),null,null,354);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,355);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,356);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'안녕하세요?','반가워요',to_date('22/06/01','RR/MM/DD'),null,null,357);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목이었다','제목이 있었어용',to_date('22/06/01','RR/MM/DD'),null,null,358);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'행복한 6월입니다','잘 지내시죠?',to_date('22/06/01','RR/MM/DD'),null,null,359);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다','벚꽃엔딩',to_date('22/06/01','RR/MM/DD'),null,null,360);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'감사합니다','ㅎㅇ',to_date('22/06/01','RR/MM/DD'),null,null,361);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'ㄱㄱ','ㄱㄱ',to_date('22/06/01','RR/MM/DD'),null,null,362);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다.','글 내용입니다',to_date('22/06/01','RR/MM/DD'),null,null,363);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,364);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,365);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'안녕하세요?','반가워요',to_date('22/06/01','RR/MM/DD'),null,null,366);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목이었다','제목이 있었어용',to_date('22/06/01','RR/MM/DD'),null,null,367);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'행복한 6월입니다','잘 지내시죠?',to_date('22/06/01','RR/MM/DD'),null,null,368);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다','벚꽃엔딩',to_date('22/06/01','RR/MM/DD'),null,null,369);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'감사합니다','ㅎㅇ',to_date('22/06/01','RR/MM/DD'),null,null,370);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'ㄱㄱ','ㄱㄱ',to_date('22/06/01','RR/MM/DD'),null,null,371);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다.','글 내용입니다',to_date('22/06/01','RR/MM/DD'),null,null,372);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,373);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,374);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'안녕하세요?','반가워요',to_date('22/06/01','RR/MM/DD'),null,null,375);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목이었다','제목이 있었어용',to_date('22/06/01','RR/MM/DD'),null,null,376);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'행복한 6월입니다','잘 지내시죠?',to_date('22/06/01','RR/MM/DD'),null,null,377);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다','벚꽃엔딩',to_date('22/06/01','RR/MM/DD'),null,null,378);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'감사합니다','ㅎㅇ',to_date('22/06/01','RR/MM/DD'),null,null,379);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'ㄱㄱ','ㄱㄱ',to_date('22/06/01','RR/MM/DD'),null,null,380);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다.','글 내용입니다',to_date('22/06/01','RR/MM/DD'),null,null,381);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,382);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,383);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'안녕하세요?','반가워요',to_date('22/06/01','RR/MM/DD'),null,null,384);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다.','글 내용입니다',to_date('22/06/01','RR/MM/DD'),null,null,385);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목이었다','제목이 있었어용',to_date('22/06/01','RR/MM/DD'),null,null,386);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'행복한 6월입니다','잘 지내시죠?',to_date('22/06/01','RR/MM/DD'),null,null,387);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다','벚꽃엔딩',to_date('22/06/01','RR/MM/DD'),null,null,388);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'감사합니다','ㅎㅇ',to_date('22/06/01','RR/MM/DD'),null,null,389);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'ㄱㄱ','ㄱㄱ',to_date('22/06/01','RR/MM/DD'),null,null,390);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,391);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,392);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'안녕하세요?','반가워요',to_date('22/06/01','RR/MM/DD'),null,null,393);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목이었다','제목이 있었어용',to_date('22/06/01','RR/MM/DD'),null,null,394);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'행복한 6월입니다','잘 지내시죠?',to_date('22/06/01','RR/MM/DD'),null,null,395);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다','벚꽃엔딩',to_date('22/06/01','RR/MM/DD'),null,null,396);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'감사합니다','ㅎㅇ',to_date('22/06/01','RR/MM/DD'),null,null,397);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'ㄱㄱ','ㄱㄱ',to_date('22/06/01','RR/MM/DD'),null,null,398);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다.','글 내용입니다',to_date('22/06/01','RR/MM/DD'),null,null,399);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,400);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,401);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'안녕하세요?','반가워요',to_date('22/06/01','RR/MM/DD'),null,null,402);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목이었다','제목이 있었어용',to_date('22/06/01','RR/MM/DD'),null,null,403);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'행복한 6월입니다','잘 지내시죠?',to_date('22/06/01','RR/MM/DD'),null,null,404);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다','벚꽃엔딩',to_date('22/06/01','RR/MM/DD'),null,null,405);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'감사합니다','ㅎㅇ',to_date('22/06/01','RR/MM/DD'),null,null,406);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'ㄱㄱ','ㄱㄱ',to_date('22/06/01','RR/MM/DD'),null,null,407);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다.','글 내용입니다',to_date('22/06/01','RR/MM/DD'),null,null,408);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,409);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,410);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'안녕하세요?','반가워요',to_date('22/06/01','RR/MM/DD'),null,null,411);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목이었다','제목이 있었어용',to_date('22/06/01','RR/MM/DD'),null,null,412);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'행복한 6월입니다','잘 지내시죠?',to_date('22/06/01','RR/MM/DD'),null,null,413);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다','벚꽃엔딩',to_date('22/06/01','RR/MM/DD'),null,null,414);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'감사합니다','ㅎㅇ',to_date('22/06/01','RR/MM/DD'),null,null,415);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'ㄱㄱ','ㄱㄱ',to_date('22/06/01','RR/MM/DD'),null,null,416);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다.','글 내용입니다',to_date('22/06/01','RR/MM/DD'),null,null,417);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,418);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,419);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'안녕하세요?','반가워요',to_date('22/06/01','RR/MM/DD'),null,null,420);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다.','글 내용입니다',to_date('22/06/01','RR/MM/DD'),null,null,421);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목이었다','제목이 있었어용',to_date('22/06/01','RR/MM/DD'),null,null,422);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'행복한 6월입니다','잘 지내시죠?',to_date('22/06/01','RR/MM/DD'),null,null,423);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다','벚꽃엔딩',to_date('22/06/01','RR/MM/DD'),null,null,424);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'감사합니다','ㅎㅇ',to_date('22/06/01','RR/MM/DD'),null,null,425);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'ㄱㄱ','ㄱㄱ',to_date('22/06/01','RR/MM/DD'),null,null,426);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,427);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,428);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'안녕하세요?','반가워요',to_date('22/06/01','RR/MM/DD'),null,null,429);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목이었다','제목이 있었어용',to_date('22/06/01','RR/MM/DD'),null,null,430);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'행복한 6월입니다','잘 지내시죠?',to_date('22/06/01','RR/MM/DD'),null,null,431);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다','벚꽃엔딩',to_date('22/06/01','RR/MM/DD'),null,null,432);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'감사합니다','ㅎㅇ',to_date('22/06/01','RR/MM/DD'),null,null,433);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'ㄱㄱ','ㄱㄱ',to_date('22/06/01','RR/MM/DD'),null,null,434);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다.','글 내용입니다',to_date('22/06/01','RR/MM/DD'),null,null,435);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,436);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,437);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'안녕하세요?','반가워요',to_date('22/06/01','RR/MM/DD'),null,null,438);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목이었다','제목이 있었어용',to_date('22/06/01','RR/MM/DD'),null,null,439);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'행복한 6월입니다','잘 지내시죠?',to_date('22/06/01','RR/MM/DD'),null,null,440);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다','벚꽃엔딩',to_date('22/06/01','RR/MM/DD'),null,null,441);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'감사합니다','ㅎㅇ',to_date('22/06/01','RR/MM/DD'),null,null,442);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'ㄱㄱ','ㄱㄱ',to_date('22/06/01','RR/MM/DD'),null,null,443);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다.','글 내용입니다',to_date('22/06/01','RR/MM/DD'),null,null,444);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,445);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,446);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'안녕하세요?','반가워요',to_date('22/06/01','RR/MM/DD'),null,null,447);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목이었다','제목이 있었어용',to_date('22/06/01','RR/MM/DD'),null,null,448);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'행복한 6월입니다','잘 지내시죠?',to_date('22/06/01','RR/MM/DD'),null,null,449);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다','벚꽃엔딩',to_date('22/06/01','RR/MM/DD'),null,null,450);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'감사합니다','ㅎㅇ',to_date('22/06/01','RR/MM/DD'),null,null,451);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'ㄱㄱ','ㄱㄱ',to_date('22/06/01','RR/MM/DD'),null,null,452);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다.','글 내용입니다',to_date('22/06/01','RR/MM/DD'),null,null,453);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,454);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,455);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다.','글 내용입니다',to_date('22/06/01','RR/MM/DD'),null,null,457);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목이었다','제목이 있었어용',to_date('22/06/01','RR/MM/DD'),null,null,458);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'행복한 6월입니다','잘 지내시죠?',to_date('22/06/01','RR/MM/DD'),null,null,459);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'행복한 6월입니다','잘 지내시죠?',to_date('22/06/01','RR/MM/DD'),null,null,600);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다','벚꽃엔딩',to_date('22/06/01','RR/MM/DD'),null,null,601);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다','벚꽃엔딩',to_date('22/06/01','RR/MM/DD'),null,null,460);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'감사합니다','ㅎㅇ',to_date('22/06/01','RR/MM/DD'),null,null,461);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'ㄱㄱ','ㄱㄱ',to_date('22/06/01','RR/MM/DD'),null,null,462);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,463);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,464);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'안녕하세요?','반가워요',to_date('22/06/01','RR/MM/DD'),null,null,465);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목이었다','제목이 있었어용',to_date('22/06/01','RR/MM/DD'),null,null,466);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'행복한 6월입니다','잘 지내시죠?',to_date('22/06/01','RR/MM/DD'),null,null,467);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다','벚꽃엔딩',to_date('22/06/01','RR/MM/DD'),null,null,468);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'감사합니다','ㅎㅇ',to_date('22/06/01','RR/MM/DD'),null,null,469);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'ㄱㄱ','ㄱㄱ',to_date('22/06/01','RR/MM/DD'),null,null,470);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다.','글 내용입니다',to_date('22/06/01','RR/MM/DD'),null,null,471);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,472);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,473);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'안녕하세요?','반가워요',to_date('22/06/01','RR/MM/DD'),null,null,474);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목이었다','제목이 있었어용',to_date('22/06/01','RR/MM/DD'),null,null,475);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'행복한 6월입니다','잘 지내시죠?',to_date('22/06/01','RR/MM/DD'),null,null,476);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다','벚꽃엔딩',to_date('22/06/01','RR/MM/DD'),null,null,477);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'감사합니다','ㅎㅇ',to_date('22/06/01','RR/MM/DD'),null,null,478);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'ㄱㄱ','ㄱㄱ',to_date('22/06/01','RR/MM/DD'),null,null,479);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다.','글 내용입니다',to_date('22/06/01','RR/MM/DD'),null,null,480);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,481);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,482);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'안녕하세요?','반가워요',to_date('22/06/01','RR/MM/DD'),null,null,483);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목이었다','제목이 있었어용',to_date('22/06/01','RR/MM/DD'),null,null,484);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'행복한 6월입니다','잘 지내시죠?',to_date('22/06/01','RR/MM/DD'),null,null,485);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다','벚꽃엔딩',to_date('22/06/01','RR/MM/DD'),null,null,486);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'감사합니다','ㅎㅇ',to_date('22/06/01','RR/MM/DD'),null,null,487);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'ㄱㄱ','ㄱㄱ',to_date('22/06/01','RR/MM/DD'),null,null,488);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다.','글 내용입니다',to_date('22/06/01','RR/MM/DD'),null,null,489);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,490);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,491);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'안녕하세요?','반가워요',to_date('22/06/01','RR/MM/DD'),null,null,492);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다.','글 내용입니다',to_date('22/06/01','RR/MM/DD'),null,null,493);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목이었다','제목이 있었어용',to_date('22/06/01','RR/MM/DD'),null,null,494);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'행복한 6월입니다','잘 지내시죠?',to_date('22/06/01','RR/MM/DD'),null,null,495);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다','벚꽃엔딩',to_date('22/06/01','RR/MM/DD'),null,null,496);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'감사합니다','ㅎㅇ',to_date('22/06/01','RR/MM/DD'),null,null,497);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'ㄱㄱ','ㄱㄱ',to_date('22/06/01','RR/MM/DD'),null,null,498);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,499);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,500);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'안녕하세요?','반가워요',to_date('22/06/01','RR/MM/DD'),null,null,501);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목이었다','제목이 있었어용',to_date('22/06/01','RR/MM/DD'),null,null,502);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'행복한 6월입니다','잘 지내시죠?',to_date('22/06/01','RR/MM/DD'),null,null,503);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다','벚꽃엔딩',to_date('22/06/01','RR/MM/DD'),null,null,504);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'감사합니다','ㅎㅇ',to_date('22/06/01','RR/MM/DD'),null,null,505);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'ㄱㄱ','ㄱㄱ',to_date('22/06/01','RR/MM/DD'),null,null,506);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다.','글 내용입니다',to_date('22/06/01','RR/MM/DD'),null,null,507);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,508);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,509);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'안녕하세요?','반가워요',to_date('22/06/01','RR/MM/DD'),null,null,510);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목이었다','제목이 있었어용',to_date('22/06/01','RR/MM/DD'),null,null,511);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'행복한 6월입니다','잘 지내시죠?',to_date('22/06/01','RR/MM/DD'),null,null,512);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다','벚꽃엔딩',to_date('22/06/01','RR/MM/DD'),null,null,513);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'감사합니다','ㅎㅇ',to_date('22/06/01','RR/MM/DD'),null,null,514);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'ㄱㄱ','ㄱㄱ',to_date('22/06/01','RR/MM/DD'),null,null,515);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다.','글 내용입니다',to_date('22/06/01','RR/MM/DD'),null,null,516);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,517);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,518);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'안녕하세요?','반가워요',to_date('22/06/01','RR/MM/DD'),null,null,519);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목이었다','제목이 있었어용',to_date('22/06/01','RR/MM/DD'),null,null,520);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'행복한 6월입니다','잘 지내시죠?',to_date('22/06/01','RR/MM/DD'),null,null,521);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다','벚꽃엔딩',to_date('22/06/01','RR/MM/DD'),null,null,522);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'감사합니다','ㅎㅇ',to_date('22/06/01','RR/MM/DD'),null,null,523);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'ㄱㄱ','ㄱㄱ',to_date('22/06/01','RR/MM/DD'),null,null,524);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다.','글 내용입니다',to_date('22/06/01','RR/MM/DD'),null,null,525);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,526);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,527);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'안녕하세요?','반가워요',to_date('22/06/01','RR/MM/DD'),null,null,528);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다.','글 내용입니다',to_date('22/06/01','RR/MM/DD'),null,null,529);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목이었다','제목이 있었어용',to_date('22/06/01','RR/MM/DD'),null,null,530);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'행복한 6월입니다','잘 지내시죠?',to_date('22/06/01','RR/MM/DD'),null,null,531);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다','벚꽃엔딩',to_date('22/06/01','RR/MM/DD'),null,null,532);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'감사합니다','ㅎㅇ',to_date('22/06/01','RR/MM/DD'),null,null,533);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'ㄱㄱ','ㄱㄱ',to_date('22/06/01','RR/MM/DD'),null,null,534);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,535);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,536);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'안녕하세요?','반가워요',to_date('22/06/01','RR/MM/DD'),null,null,537);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목이었다','제목이 있었어용',to_date('22/06/01','RR/MM/DD'),null,null,538);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'행복한 6월입니다','잘 지내시죠?',to_date('22/06/01','RR/MM/DD'),null,null,539);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다','벚꽃엔딩',to_date('22/06/01','RR/MM/DD'),null,null,540);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'감사합니다','ㅎㅇ',to_date('22/06/01','RR/MM/DD'),null,null,541);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'ㄱㄱ','ㄱㄱ',to_date('22/06/01','RR/MM/DD'),null,null,542);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다.','글 내용입니다',to_date('22/06/01','RR/MM/DD'),null,null,543);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,544);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,545);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'안녕하세요?','반가워요',to_date('22/06/01','RR/MM/DD'),null,null,546);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목이었다','제목이 있었어용',to_date('22/06/01','RR/MM/DD'),null,null,547);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'행복한 6월입니다','잘 지내시죠?',to_date('22/06/01','RR/MM/DD'),null,null,548);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다','벚꽃엔딩',to_date('22/06/01','RR/MM/DD'),null,null,549);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'감사합니다','ㅎㅇ',to_date('22/06/01','RR/MM/DD'),null,null,550);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'ㄱㄱ','ㄱㄱ',to_date('22/06/01','RR/MM/DD'),null,null,551);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다.','글 내용입니다',to_date('22/06/01','RR/MM/DD'),null,null,552);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,553);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,554);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'안녕하세요?','반가워요',to_date('22/06/01','RR/MM/DD'),null,null,555);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목이었다','제목이 있었어용',to_date('22/06/01','RR/MM/DD'),null,null,556);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'행복한 6월입니다','잘 지내시죠?',to_date('22/06/01','RR/MM/DD'),null,null,557);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다','벚꽃엔딩',to_date('22/06/01','RR/MM/DD'),null,null,558);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'감사합니다','ㅎㅇ',to_date('22/06/01','RR/MM/DD'),null,null,559);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'ㄱㄱ','ㄱㄱ',to_date('22/06/01','RR/MM/DD'),null,null,560);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다.','글 내용입니다',to_date('22/06/01','RR/MM/DD'),null,null,561);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,562);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,563);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'안녕하세요?','반가워요',to_date('22/06/01','RR/MM/DD'),null,null,564);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다.','글 내용입니다',to_date('22/06/01','RR/MM/DD'),null,null,565);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목이었다','제목이 있었어용',to_date('22/06/01','RR/MM/DD'),null,null,566);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'행복한 6월입니다','잘 지내시죠?',to_date('22/06/01','RR/MM/DD'),null,null,567);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다','벚꽃엔딩',to_date('22/06/01','RR/MM/DD'),null,null,568);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'감사합니다','ㅎㅇ',to_date('22/06/01','RR/MM/DD'),null,null,569);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'ㄱㄱ','ㄱㄱ',to_date('22/06/01','RR/MM/DD'),null,null,570);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,571);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,572);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'안녕하세요?','반가워요',to_date('22/06/01','RR/MM/DD'),null,null,573);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목이었다','제목이 있었어용',to_date('22/06/01','RR/MM/DD'),null,null,574);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'행복한 6월입니다','잘 지내시죠?',to_date('22/06/01','RR/MM/DD'),null,null,575);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다','벚꽃엔딩',to_date('22/06/01','RR/MM/DD'),null,null,576);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'감사합니다','ㅎㅇ',to_date('22/06/01','RR/MM/DD'),null,null,577);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'ㄱㄱ','ㄱㄱ',to_date('22/06/01','RR/MM/DD'),null,null,578);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다.','글 내용입니다',to_date('22/06/01','RR/MM/DD'),null,null,579);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,580);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,581);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'안녕하세요?','반가워요',to_date('22/06/01','RR/MM/DD'),null,null,582);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목이었다','제목이 있었어용',to_date('22/06/01','RR/MM/DD'),null,null,583);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'행복한 6월입니다','잘 지내시죠?',to_date('22/06/01','RR/MM/DD'),null,null,584);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다','벚꽃엔딩',to_date('22/06/01','RR/MM/DD'),null,null,585);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'감사합니다','ㅎㅇ',to_date('22/06/01','RR/MM/DD'),null,null,586);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'ㄱㄱ','ㄱㄱ',to_date('22/06/01','RR/MM/DD'),null,null,587);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다.','글 내용입니다',to_date('22/06/01','RR/MM/DD'),null,null,588);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다.','글 내용입니다',to_date('22/06/01','RR/MM/DD'),null,null,589);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'안녕하세요?','반가워요',to_date('22/06/01','RR/MM/DD'),null,null,590);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목이었다','제목이 있었어용',to_date('22/06/01','RR/MM/DD'),null,null,591);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'행복한 6월입니다','잘 지내시죠?',to_date('22/06/01','RR/MM/DD'),null,null,592);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다','벚꽃엔딩',to_date('22/06/01','RR/MM/DD'),null,null,593);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'감사합니다','ㅎㅇ',to_date('22/06/01','RR/MM/DD'),null,null,594);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'ㄱㄱ','ㄱㄱ',to_date('22/06/01','RR/MM/DD'),null,null,595);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,596);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,597);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'안녕하세요?','반가워요',to_date('22/06/01','RR/MM/DD'),null,null,598);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목이었다','제목이 있었어용',to_date('22/06/01','RR/MM/DD'),null,null,599);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹에서 등록한 것입니다','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,3);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,4);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'안녕하세요?','반가워요',to_date('22/06/01','RR/MM/DD'),null,null,5);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'행복한 6월입니다','잘 지내시죠?',to_date('22/06/01','RR/MM/DD'),null,null,8);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다','벚꽃엔딩',to_date('22/06/01','RR/MM/DD'),null,null,9);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'감사합니다','ㅎㅇ',to_date('22/06/01','RR/MM/DD'),null,null,10);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'ㄱㄱ','ㄱㄱ',to_date('22/06/01','RR/MM/DD'),null,null,11);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'감사합니다','ㅎㅇ',to_date('22/06/01','RR/MM/DD'),null,null,602);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'ㄱㄱ','ㄱㄱ',to_date('22/06/01','RR/MM/DD'),null,null,603);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다.','글 내용입니다',to_date('22/06/01','RR/MM/DD'),null,null,604);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,605);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,606);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'안녕하세요?','반가워요',to_date('22/06/01','RR/MM/DD'),null,null,607);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목이었다','제목이 있었어용',to_date('22/06/01','RR/MM/DD'),null,null,608);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'행복한 6월입니다','잘 지내시죠?',to_date('22/06/01','RR/MM/DD'),null,null,609);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다','벚꽃엔딩',to_date('22/06/01','RR/MM/DD'),null,null,610);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'감사합니다','ㅎㅇ',to_date('22/06/01','RR/MM/DD'),null,null,611);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'ㄱㄱ','ㄱㄱ',to_date('22/06/01','RR/MM/DD'),null,null,612);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다.','글 내용입니다',to_date('22/06/01','RR/MM/DD'),null,null,613);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,614);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,615);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'안녕하세요?','반가워요',to_date('22/06/01','RR/MM/DD'),null,null,616);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목이었다','제목이 있었어용',to_date('22/06/01','RR/MM/DD'),null,null,617);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'행복한 6월입니다','잘 지내시죠?',to_date('22/06/01','RR/MM/DD'),null,null,618);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다','벚꽃엔딩',to_date('22/06/01','RR/MM/DD'),null,null,619);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'감사합니다','ㅎㅇ',to_date('22/06/01','RR/MM/DD'),null,null,620);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'ㄱㄱ','ㄱㄱ',to_date('22/06/01','RR/MM/DD'),null,null,621);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다.','글 내용입니다',to_date('22/06/01','RR/MM/DD'),null,null,622);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,623);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,624);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'안녕하세요?','반가워요',to_date('22/06/01','RR/MM/DD'),null,null,625);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다.','글 내용입니다',to_date('22/06/01','RR/MM/DD'),null,null,626);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목이었다','제목이 있었어용',to_date('22/06/01','RR/MM/DD'),null,null,627);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'행복한 6월입니다','잘 지내시죠?',to_date('22/06/01','RR/MM/DD'),null,null,628);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다','벚꽃엔딩',to_date('22/06/01','RR/MM/DD'),null,null,629);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'감사합니다','ㅎㅇ',to_date('22/06/01','RR/MM/DD'),null,null,630);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'ㄱㄱ','ㄱㄱ',to_date('22/06/01','RR/MM/DD'),null,null,631);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,632);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,633);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'안녕하세요?','반가워요',to_date('22/06/01','RR/MM/DD'),null,null,634);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목이었다','제목이 있었어용',to_date('22/06/01','RR/MM/DD'),null,null,635);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'행복한 6월입니다','잘 지내시죠?',to_date('22/06/01','RR/MM/DD'),null,null,636);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다','벚꽃엔딩',to_date('22/06/01','RR/MM/DD'),null,null,637);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'감사합니다','ㅎㅇ',to_date('22/06/01','RR/MM/DD'),null,null,638);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'ㄱㄱ','ㄱㄱ',to_date('22/06/01','RR/MM/DD'),null,null,639);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다.','글 내용입니다',to_date('22/06/01','RR/MM/DD'),null,null,640);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,641);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,642);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'안녕하세요?','반가워요',to_date('22/06/01','RR/MM/DD'),null,null,643);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목이었다','제목이 있었어용',to_date('22/06/01','RR/MM/DD'),null,null,644);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'행복한 6월입니다','잘 지내시죠?',to_date('22/06/01','RR/MM/DD'),null,null,645);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다','벚꽃엔딩',to_date('22/06/01','RR/MM/DD'),null,null,646);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'감사합니다','ㅎㅇ',to_date('22/06/01','RR/MM/DD'),null,null,647);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'ㄱㄱ','ㄱㄱ',to_date('22/06/01','RR/MM/DD'),null,null,648);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다.','글 내용입니다',to_date('22/06/01','RR/MM/DD'),null,null,649);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,650);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,651);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'안녕하세요?','반가워요',to_date('22/06/01','RR/MM/DD'),null,null,652);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목이었다','제목이 있었어용',to_date('22/06/01','RR/MM/DD'),null,null,653);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'행복한 6월입니다','잘 지내시죠?',to_date('22/06/01','RR/MM/DD'),null,null,654);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다','벚꽃엔딩',to_date('22/06/01','RR/MM/DD'),null,null,655);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'감사합니다','ㅎㅇ',to_date('22/06/01','RR/MM/DD'),null,null,656);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'ㄱㄱ','ㄱㄱ',to_date('22/06/01','RR/MM/DD'),null,null,657);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다.','글 내용입니다',to_date('22/06/01','RR/MM/DD'),null,null,658);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,659);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,660);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'안녕하세요?','반가워요',to_date('22/06/01','RR/MM/DD'),null,null,661);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다.','글 내용입니다',to_date('22/06/01','RR/MM/DD'),null,null,662);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목이었다','제목이 있었어용',to_date('22/06/01','RR/MM/DD'),null,null,663);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'행복한 6월입니다','잘 지내시죠?',to_date('22/06/01','RR/MM/DD'),null,null,664);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다','벚꽃엔딩',to_date('22/06/01','RR/MM/DD'),null,null,665);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'감사합니다','ㅎㅇ',to_date('22/06/01','RR/MM/DD'),null,null,666);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'ㄱㄱ','ㄱㄱ',to_date('22/06/01','RR/MM/DD'),null,null,667);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,668);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,669);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'안녕하세요?','반가워요',to_date('22/06/01','RR/MM/DD'),null,null,670);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목이었다','제목이 있었어용',to_date('22/06/01','RR/MM/DD'),null,null,671);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'행복한 6월입니다','잘 지내시죠?',to_date('22/06/01','RR/MM/DD'),null,null,672);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다','벚꽃엔딩',to_date('22/06/01','RR/MM/DD'),null,null,673);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'감사합니다','ㅎㅇ',to_date('22/06/01','RR/MM/DD'),null,null,674);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'ㄱㄱ','ㄱㄱ',to_date('22/06/01','RR/MM/DD'),null,null,675);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다.','글 내용입니다',to_date('22/06/01','RR/MM/DD'),null,null,676);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,677);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,678);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'안녕하세요?','반가워요',to_date('22/06/01','RR/MM/DD'),null,null,679);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목이었다','제목이 있었어용',to_date('22/06/01','RR/MM/DD'),null,null,680);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'행복한 6월입니다','잘 지내시죠?',to_date('22/06/01','RR/MM/DD'),null,null,681);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다','벚꽃엔딩',to_date('22/06/01','RR/MM/DD'),null,null,682);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'감사합니다','ㅎㅇ',to_date('22/06/01','RR/MM/DD'),null,null,683);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'ㄱㄱ','ㄱㄱ',to_date('22/06/01','RR/MM/DD'),null,null,684);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다.','글 내용입니다',to_date('22/06/01','RR/MM/DD'),null,null,685);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,686);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,687);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'안녕하세요?','반가워요',to_date('22/06/01','RR/MM/DD'),null,null,688);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목이었다','제목이 있었어용',to_date('22/06/01','RR/MM/DD'),null,null,689);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'행복한 6월입니다','잘 지내시죠?',to_date('22/06/01','RR/MM/DD'),null,null,690);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다','벚꽃엔딩',to_date('22/06/01','RR/MM/DD'),null,null,691);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'감사합니다','ㅎㅇ',to_date('22/06/01','RR/MM/DD'),null,null,692);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'ㄱㄱ','ㄱㄱ',to_date('22/06/01','RR/MM/DD'),null,null,693);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다.','글 내용입니다',to_date('22/06/01','RR/MM/DD'),null,null,694);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,695);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,696);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'안녕하세요?','반가워요',to_date('22/06/01','RR/MM/DD'),null,null,697);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다.','글 내용입니다',to_date('22/06/01','RR/MM/DD'),null,null,698);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목이었다','제목이 있었어용',to_date('22/06/01','RR/MM/DD'),null,null,699);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'행복한 6월입니다','잘 지내시죠?',to_date('22/06/01','RR/MM/DD'),null,null,700);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다','벚꽃엔딩',to_date('22/06/01','RR/MM/DD'),null,null,701);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'감사합니다','ㅎㅇ',to_date('22/06/01','RR/MM/DD'),null,null,702);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'ㄱㄱ','ㄱㄱ',to_date('22/06/01','RR/MM/DD'),null,null,703);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,704);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,705);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'안녕하세요?','반가워요',to_date('22/06/01','RR/MM/DD'),null,null,706);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목이었다','제목이 있었어용',to_date('22/06/01','RR/MM/DD'),null,null,707);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'행복한 6월입니다','잘 지내시죠?',to_date('22/06/01','RR/MM/DD'),null,null,708);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다','벚꽃엔딩',to_date('22/06/01','RR/MM/DD'),null,null,709);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'감사합니다','ㅎㅇ',to_date('22/06/01','RR/MM/DD'),null,null,710);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'ㄱㄱ','ㄱㄱ',to_date('22/06/01','RR/MM/DD'),null,null,711);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다.','글 내용입니다',to_date('22/06/01','RR/MM/DD'),null,null,712);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,713);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,714);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'안녕하세요?','반가워요',to_date('22/06/01','RR/MM/DD'),null,null,715);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목이었다','제목이 있었어용',to_date('22/06/01','RR/MM/DD'),null,null,716);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'행복한 6월입니다','잘 지내시죠?',to_date('22/06/01','RR/MM/DD'),null,null,717);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다','벚꽃엔딩',to_date('22/06/01','RR/MM/DD'),null,null,718);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'감사합니다','ㅎㅇ',to_date('22/06/01','RR/MM/DD'),null,null,719);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'ㄱㄱ','ㄱㄱ',to_date('22/06/01','RR/MM/DD'),null,null,720);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다.','글 내용입니다',to_date('22/06/01','RR/MM/DD'),null,null,721);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,722);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,723);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'안녕하세요?','반가워요',to_date('22/06/01','RR/MM/DD'),null,null,724);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목이었다','제목이 있었어용',to_date('22/06/01','RR/MM/DD'),null,null,725);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'행복한 6월입니다','잘 지내시죠?',to_date('22/06/01','RR/MM/DD'),null,null,726);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다','벚꽃엔딩',to_date('22/06/01','RR/MM/DD'),null,null,727);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'감사합니다','ㅎㅇ',to_date('22/06/01','RR/MM/DD'),null,null,728);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'ㄱㄱ','ㄱㄱ',to_date('22/06/01','RR/MM/DD'),null,null,729);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다.','글 내용입니다',to_date('22/06/01','RR/MM/DD'),null,null,730);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,731);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,732);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다.','글 내용입니다',to_date('22/06/01','RR/MM/DD'),null,null,733);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목이었다','제목이 있었어용',to_date('22/06/01','RR/MM/DD'),null,null,734);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'행복한 6월입니다','잘 지내시죠?',to_date('22/06/01','RR/MM/DD'),null,null,735);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다','벚꽃엔딩',to_date('22/06/01','RR/MM/DD'),null,null,736);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'감사합니다','ㅎㅇ',to_date('22/06/01','RR/MM/DD'),null,null,737);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'ㄱㄱ','ㄱㄱ',to_date('22/06/01','RR/MM/DD'),null,null,738);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,739);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다.','글 내용입니다',to_date('22/06/01','RR/MM/DD'),null,null,21);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,22);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,23);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'안녕하세요?','반가워요',to_date('22/06/01','RR/MM/DD'),null,null,24);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다.','글 내용입니다',to_date('22/06/01','RR/MM/DD'),null,null,30);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목이었다','제목이 있었어용',to_date('22/06/01','RR/MM/DD'),null,null,25);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'행복한 6월입니다','잘 지내시죠?',to_date('22/06/01','RR/MM/DD'),null,null,26);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다','벚꽃엔딩',to_date('22/06/01','RR/MM/DD'),null,null,27);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'감사합니다','ㅎㅇ',to_date('22/06/01','RR/MM/DD'),null,null,28);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'ㄱㄱ','ㄱㄱ',to_date('22/06/01','RR/MM/DD'),null,null,29);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,31);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,32);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'안녕하세요?','반가워요',to_date('22/06/01','RR/MM/DD'),null,null,33);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목이었다','제목이 있었어용',to_date('22/06/01','RR/MM/DD'),null,null,34);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'행복한 6월입니다','잘 지내시죠?',to_date('22/06/01','RR/MM/DD'),null,null,35);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다','벚꽃엔딩',to_date('22/06/01','RR/MM/DD'),null,null,36);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'감사합니다','ㅎㅇ',to_date('22/06/01','RR/MM/DD'),null,null,37);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'ㄱㄱ','ㄱㄱ',to_date('22/06/01','RR/MM/DD'),null,null,38);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다.','글 내용입니다',to_date('22/06/01','RR/MM/DD'),null,null,39);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,40);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,41);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'안녕하세요?','반가워요',to_date('22/06/01','RR/MM/DD'),null,null,42);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목이었다','제목이 있었어용',to_date('22/06/01','RR/MM/DD'),null,null,43);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'행복한 6월입니다','잘 지내시죠?',to_date('22/06/01','RR/MM/DD'),null,null,44);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다','벚꽃엔딩',to_date('22/06/01','RR/MM/DD'),null,null,45);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'감사합니다','ㅎㅇ',to_date('22/06/01','RR/MM/DD'),null,null,46);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'ㄱㄱ','ㄱㄱ',to_date('22/06/01','RR/MM/DD'),null,null,47);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다.','글 내용입니다',to_date('22/06/01','RR/MM/DD'),null,null,48);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,49);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,50);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'안녕하세요?','반가워요',to_date('22/06/01','RR/MM/DD'),null,null,51);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목이었다','제목이 있었어용',to_date('22/06/01','RR/MM/DD'),null,null,52);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'행복한 6월입니다','잘 지내시죠?',to_date('22/06/01','RR/MM/DD'),null,null,53);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다','벚꽃엔딩',to_date('22/06/01','RR/MM/DD'),null,null,54);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'감사합니다','ㅎㅇ',to_date('22/06/01','RR/MM/DD'),null,null,55);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'ㄱㄱ','ㄱㄱ',to_date('22/06/01','RR/MM/DD'),null,null,56);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다.','글 내용입니다',to_date('22/06/01','RR/MM/DD'),null,null,57);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,58);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,59);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'안녕하세요?','반가워요',to_date('22/06/01','RR/MM/DD'),null,null,60);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다.','글 내용입니다',to_date('22/06/01','RR/MM/DD'),null,null,61);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목이었다','제목이 있었어용',to_date('22/06/01','RR/MM/DD'),null,null,62);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'행복한 6월입니다','잘 지내시죠?',to_date('22/06/01','RR/MM/DD'),null,null,63);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다','벚꽃엔딩',to_date('22/06/01','RR/MM/DD'),null,null,64);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'감사합니다','ㅎㅇ',to_date('22/06/01','RR/MM/DD'),null,null,65);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'ㄱㄱ','ㄱㄱ',to_date('22/06/01','RR/MM/DD'),null,null,66);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,67);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,68);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'안녕하세요?','반가워요',to_date('22/06/01','RR/MM/DD'),null,null,69);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목이었다','제목이 있었어용',to_date('22/06/01','RR/MM/DD'),null,null,70);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'행복한 6월입니다','잘 지내시죠?',to_date('22/06/01','RR/MM/DD'),null,null,71);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다','벚꽃엔딩',to_date('22/06/01','RR/MM/DD'),null,null,72);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'감사합니다','ㅎㅇ',to_date('22/06/01','RR/MM/DD'),null,null,73);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'ㄱㄱ','ㄱㄱ',to_date('22/06/01','RR/MM/DD'),null,null,74);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다.','글 내용입니다',to_date('22/06/01','RR/MM/DD'),null,null,75);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,76);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,77);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'안녕하세요?','반가워요',to_date('22/06/01','RR/MM/DD'),null,null,78);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목이었다','제목이 있었어용',to_date('22/06/01','RR/MM/DD'),null,null,79);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'행복한 6월입니다','잘 지내시죠?',to_date('22/06/01','RR/MM/DD'),null,null,80);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다','벚꽃엔딩',to_date('22/06/01','RR/MM/DD'),null,null,81);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'감사합니다','ㅎㅇ',to_date('22/06/01','RR/MM/DD'),null,null,82);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'ㄱㄱ','ㄱㄱ',to_date('22/06/01','RR/MM/DD'),null,null,83);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다.','글 내용입니다',to_date('22/06/01','RR/MM/DD'),null,null,84);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,85);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,86);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'안녕하세요?','반가워요',to_date('22/06/01','RR/MM/DD'),null,null,87);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목이었다','제목이 있었어용',to_date('22/06/01','RR/MM/DD'),null,null,88);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'행복한 6월입니다','잘 지내시죠?',to_date('22/06/01','RR/MM/DD'),null,null,89);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다','벚꽃엔딩',to_date('22/06/01','RR/MM/DD'),null,null,90);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'감사합니다','ㅎㅇ',to_date('22/06/01','RR/MM/DD'),null,null,91);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'ㄱㄱ','ㄱㄱ',to_date('22/06/01','RR/MM/DD'),null,null,92);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다.','글 내용입니다',to_date('22/06/01','RR/MM/DD'),null,null,93);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,94);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,95);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'안녕하세요?','반가워요',to_date('22/06/01','RR/MM/DD'),null,null,96);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다.','글 내용입니다',to_date('22/06/01','RR/MM/DD'),null,null,97);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목이었다','제목이 있었어용',to_date('22/06/01','RR/MM/DD'),null,null,98);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'행복한 6월입니다','잘 지내시죠?',to_date('22/06/01','RR/MM/DD'),null,null,99);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다','벚꽃엔딩',to_date('22/06/01','RR/MM/DD'),null,null,100);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'감사합니다','ㅎㅇ',to_date('22/06/01','RR/MM/DD'),null,null,101);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'ㄱㄱ','ㄱㄱ',to_date('22/06/01','RR/MM/DD'),null,null,102);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,103);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,104);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'안녕하세요?','반가워요',to_date('22/06/01','RR/MM/DD'),null,null,105);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목이었다','제목이 있었어용',to_date('22/06/01','RR/MM/DD'),null,null,106);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'행복한 6월입니다','잘 지내시죠?',to_date('22/06/01','RR/MM/DD'),null,null,107);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다','벚꽃엔딩',to_date('22/06/01','RR/MM/DD'),null,null,108);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'감사합니다','ㅎㅇ',to_date('22/06/01','RR/MM/DD'),null,null,109);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'ㄱㄱ','ㄱㄱ',to_date('22/06/01','RR/MM/DD'),null,null,110);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다.','글 내용입니다',to_date('22/06/01','RR/MM/DD'),null,null,111);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,112);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,113);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'안녕하세요?','반가워요',to_date('22/06/01','RR/MM/DD'),null,null,114);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목이었다','제목이 있었어용',to_date('22/06/01','RR/MM/DD'),null,null,115);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'행복한 6월입니다','잘 지내시죠?',to_date('22/06/01','RR/MM/DD'),null,null,116);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다','벚꽃엔딩',to_date('22/06/01','RR/MM/DD'),null,null,117);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'감사합니다','ㅎㅇ',to_date('22/06/01','RR/MM/DD'),null,null,118);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'ㄱㄱ','ㄱㄱ',to_date('22/06/01','RR/MM/DD'),null,null,119);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다.','글 내용입니다',to_date('22/06/01','RR/MM/DD'),null,null,120);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,121);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,122);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'안녕하세요?','반가워요',to_date('22/06/01','RR/MM/DD'),null,null,123);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목이었다','제목이 있었어용',to_date('22/06/01','RR/MM/DD'),null,null,124);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'행복한 6월입니다','잘 지내시죠?',to_date('22/06/01','RR/MM/DD'),null,null,125);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다','벚꽃엔딩',to_date('22/06/01','RR/MM/DD'),null,null,126);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'감사합니다','ㅎㅇ',to_date('22/06/01','RR/MM/DD'),null,null,127);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'ㄱㄱ','ㄱㄱ',to_date('22/06/01','RR/MM/DD'),null,null,128);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다.','글 내용입니다',to_date('22/06/01','RR/MM/DD'),null,null,129);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,130);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,131);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'안녕하세요?','반가워요',to_date('22/06/01','RR/MM/DD'),null,null,132);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다.','글 내용입니다',to_date('22/06/01','RR/MM/DD'),null,null,133);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목이었다','제목이 있었어용',to_date('22/06/01','RR/MM/DD'),null,null,134);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'행복한 6월입니다','잘 지내시죠?',to_date('22/06/01','RR/MM/DD'),null,null,135);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다','벚꽃엔딩',to_date('22/06/01','RR/MM/DD'),null,null,136);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'감사합니다','ㅎㅇ',to_date('22/06/01','RR/MM/DD'),null,null,137);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'ㄱㄱ','ㄱㄱ',to_date('22/06/01','RR/MM/DD'),null,null,138);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,139);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,140);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'안녕하세요?','반가워요',to_date('22/06/01','RR/MM/DD'),null,null,141);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목이었다','제목이 있었어용',to_date('22/06/01','RR/MM/DD'),null,null,142);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'행복한 6월입니다','잘 지내시죠?',to_date('22/06/01','RR/MM/DD'),null,null,143);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다','벚꽃엔딩',to_date('22/06/01','RR/MM/DD'),null,null,144);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'감사합니다','ㅎㅇ',to_date('22/06/01','RR/MM/DD'),null,null,145);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'ㄱㄱ','ㄱㄱ',to_date('22/06/01','RR/MM/DD'),null,null,146);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다.','글 내용입니다',to_date('22/06/01','RR/MM/DD'),null,null,147);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,148);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,149);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'안녕하세요?','반가워요',to_date('22/06/01','RR/MM/DD'),null,null,150);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목이었다','제목이 있었어용',to_date('22/06/01','RR/MM/DD'),null,null,151);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'행복한 6월입니다','잘 지내시죠?',to_date('22/06/01','RR/MM/DD'),null,null,152);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다','벚꽃엔딩',to_date('22/06/01','RR/MM/DD'),null,null,153);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'감사합니다','ㅎㅇ',to_date('22/06/01','RR/MM/DD'),null,null,154);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'ㄱㄱ','ㄱㄱ',to_date('22/06/01','RR/MM/DD'),null,null,155);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다.','글 내용입니다',to_date('22/06/01','RR/MM/DD'),null,null,156);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,157);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,158);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'안녕하세요?','반가워요',to_date('22/06/01','RR/MM/DD'),null,null,159);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목이었다','제목이 있었어용',to_date('22/06/01','RR/MM/DD'),null,null,160);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'행복한 6월입니다','잘 지내시죠?',to_date('22/06/01','RR/MM/DD'),null,null,161);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다','벚꽃엔딩',to_date('22/06/01','RR/MM/DD'),null,null,162);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'감사합니다','ㅎㅇ',to_date('22/06/01','RR/MM/DD'),null,null,163);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'ㄱㄱ','ㄱㄱ',to_date('22/06/01','RR/MM/DD'),null,null,164);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다.','글 내용입니다',to_date('22/06/01','RR/MM/DD'),null,null,165);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,166);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,167);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'안녕하세요?','반가워요',to_date('22/06/01','RR/MM/DD'),null,null,168);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다.','글 내용입니다',to_date('22/06/01','RR/MM/DD'),null,null,169);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목이었다','제목이 있었어용',to_date('22/06/01','RR/MM/DD'),null,null,170);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'행복한 6월입니다','잘 지내시죠?',to_date('22/06/01','RR/MM/DD'),null,null,171);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다','벚꽃엔딩',to_date('22/06/01','RR/MM/DD'),null,null,172);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'감사합니다','ㅎㅇ',to_date('22/06/01','RR/MM/DD'),null,null,173);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'ㄱㄱ','ㄱㄱ',to_date('22/06/01','RR/MM/DD'),null,null,174);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,175);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,176);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'안녕하세요?','반가워요',to_date('22/06/01','RR/MM/DD'),null,null,177);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목이었다','제목이 있었어용',to_date('22/06/01','RR/MM/DD'),null,null,178);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'행복한 6월입니다','잘 지내시죠?',to_date('22/06/01','RR/MM/DD'),null,null,179);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다','벚꽃엔딩',to_date('22/06/01','RR/MM/DD'),null,null,180);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'감사합니다','ㅎㅇ',to_date('22/06/01','RR/MM/DD'),null,null,181);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'ㄱㄱ','ㄱㄱ',to_date('22/06/01','RR/MM/DD'),null,null,182);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다.','글 내용입니다',to_date('22/06/01','RR/MM/DD'),null,null,183);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,184);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,185);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'안녕하세요?','반가워요',to_date('22/06/01','RR/MM/DD'),null,null,186);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목이었다','제목이 있었어용',to_date('22/06/01','RR/MM/DD'),null,null,187);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'행복한 6월입니다','잘 지내시죠?',to_date('22/06/01','RR/MM/DD'),null,null,188);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다','벚꽃엔딩',to_date('22/06/01','RR/MM/DD'),null,null,189);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'감사합니다','ㅎㅇ',to_date('22/06/01','RR/MM/DD'),null,null,190);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'ㄱㄱ','ㄱㄱ',to_date('22/06/01','RR/MM/DD'),null,null,191);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다.','글 내용입니다',to_date('22/06/01','RR/MM/DD'),null,null,192);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,193);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,194);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'안녕하세요?','반가워요',to_date('22/06/01','RR/MM/DD'),null,null,195);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목이었다','제목이 있었어용',to_date('22/06/01','RR/MM/DD'),null,null,196);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'행복한 6월입니다','잘 지내시죠?',to_date('22/06/01','RR/MM/DD'),null,null,197);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다','벚꽃엔딩',to_date('22/06/01','RR/MM/DD'),null,null,198);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'감사합니다','ㅎㅇ',to_date('22/06/01','RR/MM/DD'),null,null,199);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'ㄱㄱ','ㄱㄱ',to_date('22/06/01','RR/MM/DD'),null,null,200);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다.','글 내용입니다',to_date('22/06/01','RR/MM/DD'),null,null,201);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,202);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,203);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'안녕하세요?','반가워요',to_date('22/06/01','RR/MM/DD'),null,null,204);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다.','글 내용입니다',to_date('22/06/01','RR/MM/DD'),null,null,205);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목이었다','제목이 있었어용',to_date('22/06/01','RR/MM/DD'),null,null,206);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'행복한 6월입니다','잘 지내시죠?',to_date('22/06/01','RR/MM/DD'),null,null,207);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다','벚꽃엔딩',to_date('22/06/01','RR/MM/DD'),null,null,208);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'감사합니다','ㅎㅇ',to_date('22/06/01','RR/MM/DD'),null,null,209);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'ㄱㄱ','ㄱㄱ',to_date('22/06/01','RR/MM/DD'),null,null,210);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,211);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,212);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'안녕하세요?','반가워요',to_date('22/06/01','RR/MM/DD'),null,null,213);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목이었다','제목이 있었어용',to_date('22/06/01','RR/MM/DD'),null,null,214);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'행복한 6월입니다','잘 지내시죠?',to_date('22/06/01','RR/MM/DD'),null,null,215);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다','벚꽃엔딩',to_date('22/06/01','RR/MM/DD'),null,null,216);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'감사합니다','ㅎㅇ',to_date('22/06/01','RR/MM/DD'),null,null,217);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'ㄱㄱ','ㄱㄱ',to_date('22/06/01','RR/MM/DD'),null,null,218);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다.','글 내용입니다',to_date('22/06/01','RR/MM/DD'),null,null,219);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,220);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,221);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'안녕하세요?','반가워요',to_date('22/06/01','RR/MM/DD'),null,null,222);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목이었다','제목이 있었어용',to_date('22/06/01','RR/MM/DD'),null,null,223);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'행복한 6월입니다','잘 지내시죠?',to_date('22/06/01','RR/MM/DD'),null,null,224);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다','벚꽃엔딩',to_date('22/06/01','RR/MM/DD'),null,null,225);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'감사합니다','ㅎㅇ',to_date('22/06/01','RR/MM/DD'),null,null,226);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'ㄱㄱ','ㄱㄱ',to_date('22/06/01','RR/MM/DD'),null,null,227);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다.','글 내용입니다',to_date('22/06/01','RR/MM/DD'),null,null,228);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,229);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,230);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'안녕하세요?','반가워요',to_date('22/06/01','RR/MM/DD'),null,null,231);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목이었다','제목이 있었어용',to_date('22/06/01','RR/MM/DD'),null,null,232);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'행복한 6월입니다','잘 지내시죠?',to_date('22/06/01','RR/MM/DD'),null,null,233);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다','벚꽃엔딩',to_date('22/06/01','RR/MM/DD'),null,null,234);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'감사합니다','ㅎㅇ',to_date('22/06/01','RR/MM/DD'),null,null,235);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'ㄱㄱ','ㄱㄱ',to_date('22/06/01','RR/MM/DD'),null,null,236);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다.','글 내용입니다',to_date('22/06/01','RR/MM/DD'),null,null,237);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,238);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,239);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'안녕하세요?','반가워요',to_date('22/06/01','RR/MM/DD'),null,null,240);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다.','글 내용입니다',to_date('22/06/01','RR/MM/DD'),null,null,241);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목이었다','제목이 있었어용',to_date('22/06/01','RR/MM/DD'),null,null,242);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'행복한 6월입니다','잘 지내시죠?',to_date('22/06/01','RR/MM/DD'),null,null,243);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다','벚꽃엔딩',to_date('22/06/01','RR/MM/DD'),null,null,244);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'감사합니다','ㅎㅇ',to_date('22/06/01','RR/MM/DD'),null,null,245);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'ㄱㄱ','ㄱㄱ',to_date('22/06/01','RR/MM/DD'),null,null,246);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,247);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,248);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'안녕하세요?','반가워요',to_date('22/06/01','RR/MM/DD'),null,null,249);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목이었다','제목이 있었어용',to_date('22/06/01','RR/MM/DD'),null,null,250);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'행복한 6월입니다','잘 지내시죠?',to_date('22/06/01','RR/MM/DD'),null,null,251);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다','벚꽃엔딩',to_date('22/06/01','RR/MM/DD'),null,null,252);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'감사합니다','ㅎㅇ',to_date('22/06/01','RR/MM/DD'),null,null,253);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'ㄱㄱ','ㄱㄱ',to_date('22/06/01','RR/MM/DD'),null,null,254);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다.','글 내용입니다',to_date('22/06/01','RR/MM/DD'),null,null,255);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,256);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,257);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'안녕하세요?','반가워요',to_date('22/06/01','RR/MM/DD'),null,null,258);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목이었다','제목이 있었어용',to_date('22/06/01','RR/MM/DD'),null,null,259);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'행복한 6월입니다','잘 지내시죠?',to_date('22/06/01','RR/MM/DD'),null,null,260);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다','벚꽃엔딩',to_date('22/06/01','RR/MM/DD'),null,null,261);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'감사합니다','ㅎㅇ',to_date('22/06/01','RR/MM/DD'),null,null,262);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'ㄱㄱ','ㄱㄱ',to_date('22/06/01','RR/MM/DD'),null,null,263);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다.','글 내용입니다',to_date('22/06/01','RR/MM/DD'),null,null,264);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,265);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,266);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'안녕하세요?','반가워요',to_date('22/06/01','RR/MM/DD'),null,null,267);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목이었다','제목이 있었어용',to_date('22/06/01','RR/MM/DD'),null,null,268);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'행복한 6월입니다','잘 지내시죠?',to_date('22/06/01','RR/MM/DD'),null,null,269);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다','벚꽃엔딩',to_date('22/06/01','RR/MM/DD'),null,null,270);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'감사합니다','ㅎㅇ',to_date('22/06/01','RR/MM/DD'),null,null,271);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'ㄱㄱ','ㄱㄱ',to_date('22/06/01','RR/MM/DD'),null,null,272);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다.','글 내용입니다',to_date('22/06/01','RR/MM/DD'),null,null,273);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,274);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,275);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'안녕하세요?','반가워요',to_date('22/06/01','RR/MM/DD'),null,null,276);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다.','글 내용입니다',to_date('22/06/01','RR/MM/DD'),null,null,277);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목이었다','제목이 있었어용',to_date('22/06/01','RR/MM/DD'),null,null,278);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'행복한 6월입니다','잘 지내시죠?',to_date('22/06/01','RR/MM/DD'),null,null,279);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다','벚꽃엔딩',to_date('22/06/01','RR/MM/DD'),null,null,280);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'감사합니다','ㅎㅇ',to_date('22/06/01','RR/MM/DD'),null,null,281);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'ㄱㄱ','ㄱㄱ',to_date('22/06/01','RR/MM/DD'),null,null,282);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,283);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,284);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'안녕하세요?','반가워요',to_date('22/06/01','RR/MM/DD'),null,null,285);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목이었다','제목이 있었어용',to_date('22/06/01','RR/MM/DD'),null,null,286);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'행복한 6월입니다','잘 지내시죠?',to_date('22/06/01','RR/MM/DD'),null,null,287);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다','벚꽃엔딩',to_date('22/06/01','RR/MM/DD'),null,null,288);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'감사합니다','ㅎㅇ',to_date('22/06/01','RR/MM/DD'),null,null,289);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'ㄱㄱ','ㄱㄱ',to_date('22/06/01','RR/MM/DD'),null,null,290);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다.','글 내용입니다',to_date('22/06/01','RR/MM/DD'),null,null,291);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,292);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,293);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'안녕하세요?','반가워요',to_date('22/06/01','RR/MM/DD'),null,null,294);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목이었다','제목이 있었어용',to_date('22/06/01','RR/MM/DD'),null,null,295);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'행복한 6월입니다','잘 지내시죠?',to_date('22/06/01','RR/MM/DD'),null,null,296);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다','벚꽃엔딩',to_date('22/06/01','RR/MM/DD'),null,null,297);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'감사합니다','ㅎㅇ',to_date('22/06/01','RR/MM/DD'),null,null,298);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'ㄱㄱ','ㄱㄱ',to_date('22/06/01','RR/MM/DD'),null,null,299);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다.','글 내용입니다',to_date('22/06/01','RR/MM/DD'),null,null,300);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,301);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,302);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'안녕하세요?','반가워요',to_date('22/06/01','RR/MM/DD'),null,null,303);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목이었다','제목이 있었어용',to_date('22/06/01','RR/MM/DD'),null,null,304);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'행복한 6월입니다','잘 지내시죠?',to_date('22/06/01','RR/MM/DD'),null,null,305);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다','벚꽃엔딩',to_date('22/06/01','RR/MM/DD'),null,null,306);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'감사합니다','ㅎㅇ',to_date('22/06/01','RR/MM/DD'),null,null,307);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'ㄱㄱ','ㄱㄱ',to_date('22/06/01','RR/MM/DD'),null,null,308);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다.','글 내용입니다',to_date('22/06/01','RR/MM/DD'),null,null,309);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,310);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,311);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'안녕하세요?','반가워요',to_date('22/06/01','RR/MM/DD'),null,null,312);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목이었다','제목이 있었어용',to_date('22/06/01','RR/MM/DD'),null,null,1320);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'행복한 6월입니다','잘 지내시죠?',to_date('22/06/01','RR/MM/DD'),null,null,1321);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다','벚꽃엔딩',to_date('22/06/01','RR/MM/DD'),null,null,1322);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'감사합니다','ㅎㅇ',to_date('22/06/01','RR/MM/DD'),null,null,1323);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'ㄱㄱ','ㄱㄱ',to_date('22/06/01','RR/MM/DD'),null,null,1324);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다.','글 내용입니다',to_date('22/06/01','RR/MM/DD'),null,null,1325);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,1326);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,1327);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'안녕하세요?','반가워요',to_date('22/06/01','RR/MM/DD'),null,null,1328);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목이었다','제목이 있었어용',to_date('22/06/01','RR/MM/DD'),null,null,1329);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'행복한 6월입니다','잘 지내시죠?',to_date('22/06/01','RR/MM/DD'),null,null,1330);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다','벚꽃엔딩',to_date('22/06/01','RR/MM/DD'),null,null,1331);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'감사합니다','ㅎㅇ',to_date('22/06/01','RR/MM/DD'),null,null,1332);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'ㄱㄱ','ㄱㄱ',to_date('22/06/01','RR/MM/DD'),null,null,1333);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다.','글 내용입니다',to_date('22/06/01','RR/MM/DD'),null,null,1334);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,1335);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,1336);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'안녕하세요?','반가워요',to_date('22/06/01','RR/MM/DD'),null,null,1337);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목이었다','제목이 있었어용',to_date('22/06/01','RR/MM/DD'),null,null,1338);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'행복한 6월입니다','잘 지내시죠?',to_date('22/06/01','RR/MM/DD'),null,null,1339);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다','벚꽃엔딩',to_date('22/06/01','RR/MM/DD'),null,null,1340);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'감사합니다','ㅎㅇ',to_date('22/06/01','RR/MM/DD'),null,null,1341);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'ㄱㄱ','ㄱㄱ',to_date('22/06/01','RR/MM/DD'),null,null,1342);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다.','글 내용입니다',to_date('22/06/01','RR/MM/DD'),null,null,1343);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,1344);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,1345);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'안녕하세요?','반가워요',to_date('22/06/01','RR/MM/DD'),null,null,1346);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다.','글 내용입니다',to_date('22/06/01','RR/MM/DD'),null,null,1347);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목이었다','제목이 있었어용',to_date('22/06/01','RR/MM/DD'),null,null,1348);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'행복한 6월입니다','잘 지내시죠?',to_date('22/06/01','RR/MM/DD'),null,null,1349);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다','벚꽃엔딩',to_date('22/06/01','RR/MM/DD'),null,null,1350);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'감사합니다','ㅎㅇ',to_date('22/06/01','RR/MM/DD'),null,null,1351);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'ㄱㄱ','ㄱㄱ',to_date('22/06/01','RR/MM/DD'),null,null,1352);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,1353);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,1354);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'안녕하세요?','반가워요',to_date('22/06/01','RR/MM/DD'),null,null,1355);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목이었다','제목이 있었어용',to_date('22/06/01','RR/MM/DD'),null,null,1356);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'행복한 6월입니다','잘 지내시죠?',to_date('22/06/01','RR/MM/DD'),null,null,1357);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다','벚꽃엔딩',to_date('22/06/01','RR/MM/DD'),null,null,1358);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'감사합니다','ㅎㅇ',to_date('22/06/01','RR/MM/DD'),null,null,1359);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'ㄱㄱ','ㄱㄱ',to_date('22/06/01','RR/MM/DD'),null,null,1360);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다.','글 내용입니다',to_date('22/06/01','RR/MM/DD'),null,null,1361);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,1362);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,1363);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'안녕하세요?','반가워요',to_date('22/06/01','RR/MM/DD'),null,null,1364);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목이었다','제목이 있었어용',to_date('22/06/01','RR/MM/DD'),null,null,1365);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'행복한 6월입니다','잘 지내시죠?',to_date('22/06/01','RR/MM/DD'),null,null,1366);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다','벚꽃엔딩',to_date('22/06/01','RR/MM/DD'),null,null,1367);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'감사합니다','ㅎㅇ',to_date('22/06/01','RR/MM/DD'),null,null,1368);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'ㄱㄱ','ㄱㄱ',to_date('22/06/01','RR/MM/DD'),null,null,1369);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다.','글 내용입니다',to_date('22/06/01','RR/MM/DD'),null,null,1370);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,1371);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,1372);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'안녕하세요?','반가워요',to_date('22/06/01','RR/MM/DD'),null,null,1373);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목이었다','제목이 있었어용',to_date('22/06/01','RR/MM/DD'),null,null,1374);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'행복한 6월입니다','잘 지내시죠?',to_date('22/06/01','RR/MM/DD'),null,null,1375);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다','벚꽃엔딩',to_date('22/06/01','RR/MM/DD'),null,null,1376);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'감사합니다','ㅎㅇ',to_date('22/06/01','RR/MM/DD'),null,null,1377);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'ㄱㄱ','ㄱㄱ',to_date('22/06/01','RR/MM/DD'),null,null,1378);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다.','글 내용입니다',to_date('22/06/01','RR/MM/DD'),null,null,1379);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,1380);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,1381);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'안녕하세요?','반가워요',to_date('22/06/01','RR/MM/DD'),null,null,1382);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다.','글 내용입니다',to_date('22/06/01','RR/MM/DD'),null,null,1383);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목이었다','제목이 있었어용',to_date('22/06/01','RR/MM/DD'),null,null,1384);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'행복한 6월입니다','잘 지내시죠?',to_date('22/06/01','RR/MM/DD'),null,null,1385);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다','벚꽃엔딩',to_date('22/06/01','RR/MM/DD'),null,null,1386);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'감사합니다','ㅎㅇ',to_date('22/06/01','RR/MM/DD'),null,null,1387);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'ㄱㄱ','ㄱㄱ',to_date('22/06/01','RR/MM/DD'),null,null,1388);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,1389);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,1390);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'안녕하세요?','반가워요',to_date('22/06/01','RR/MM/DD'),null,null,1391);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목이었다','제목이 있었어용',to_date('22/06/01','RR/MM/DD'),null,null,1392);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'행복한 6월입니다','잘 지내시죠?',to_date('22/06/01','RR/MM/DD'),null,null,1393);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다','벚꽃엔딩',to_date('22/06/01','RR/MM/DD'),null,null,1394);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'감사합니다','ㅎㅇ',to_date('22/06/01','RR/MM/DD'),null,null,1395);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'ㄱㄱ','ㄱㄱ',to_date('22/06/01','RR/MM/DD'),null,null,1396);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다.','글 내용입니다',to_date('22/06/01','RR/MM/DD'),null,null,1397);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,1398);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,1399);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'안녕하세요?','반가워요',to_date('22/06/01','RR/MM/DD'),null,null,1400);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목이었다','제목이 있었어용',to_date('22/06/01','RR/MM/DD'),null,null,1401);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'행복한 6월입니다','잘 지내시죠?',to_date('22/06/01','RR/MM/DD'),null,null,1402);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다','벚꽃엔딩',to_date('22/06/01','RR/MM/DD'),null,null,1403);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'감사합니다','ㅎㅇ',to_date('22/06/01','RR/MM/DD'),null,null,1404);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'ㄱㄱ','ㄱㄱ',to_date('22/06/01','RR/MM/DD'),null,null,1405);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다.','글 내용입니다',to_date('22/06/01','RR/MM/DD'),null,null,1406);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,1407);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,1408);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'안녕하세요?','반가워요',to_date('22/06/01','RR/MM/DD'),null,null,1409);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목이었다','제목이 있었어용',to_date('22/06/01','RR/MM/DD'),null,null,1410);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'행복한 6월입니다','잘 지내시죠?',to_date('22/06/01','RR/MM/DD'),null,null,1411);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다','벚꽃엔딩',to_date('22/06/01','RR/MM/DD'),null,null,1412);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'감사합니다','ㅎㅇ',to_date('22/06/01','RR/MM/DD'),null,null,1413);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'ㄱㄱ','ㄱㄱ',to_date('22/06/01','RR/MM/DD'),null,null,1414);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다.','글 내용입니다',to_date('22/06/01','RR/MM/DD'),null,null,1415);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,1416);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,1417);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'안녕하세요?','반가워요',to_date('22/06/01','RR/MM/DD'),null,null,1418);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다.','글 내용입니다',to_date('22/06/01','RR/MM/DD'),null,null,1419);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목이었다','제목이 있었어용',to_date('22/06/01','RR/MM/DD'),null,null,1420);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'행복한 6월입니다','잘 지내시죠?',to_date('22/06/01','RR/MM/DD'),null,null,1421);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다','벚꽃엔딩',to_date('22/06/01','RR/MM/DD'),null,null,1422);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'감사합니다','ㅎㅇ',to_date('22/06/01','RR/MM/DD'),null,null,1423);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'ㄱㄱ','ㄱㄱ',to_date('22/06/01','RR/MM/DD'),null,null,1424);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,1425);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,1426);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'안녕하세요?','반가워요',to_date('22/06/01','RR/MM/DD'),null,null,1427);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목이었다','제목이 있었어용',to_date('22/06/01','RR/MM/DD'),null,null,1428);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'행복한 6월입니다','잘 지내시죠?',to_date('22/06/01','RR/MM/DD'),null,null,1429);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다','벚꽃엔딩',to_date('22/06/01','RR/MM/DD'),null,null,1430);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'감사합니다','ㅎㅇ',to_date('22/06/01','RR/MM/DD'),null,null,1431);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'ㄱㄱ','ㄱㄱ',to_date('22/06/01','RR/MM/DD'),null,null,1432);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다.','글 내용입니다',to_date('22/06/01','RR/MM/DD'),null,null,1433);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,1434);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,1435);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'안녕하세요?','반가워요',to_date('22/06/01','RR/MM/DD'),null,null,1436);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목이었다','제목이 있었어용',to_date('22/06/01','RR/MM/DD'),null,null,1437);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'행복한 6월입니다','잘 지내시죠?',to_date('22/06/01','RR/MM/DD'),null,null,1438);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다','벚꽃엔딩',to_date('22/06/01','RR/MM/DD'),null,null,1439);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'감사합니다','ㅎㅇ',to_date('22/06/01','RR/MM/DD'),null,null,1440);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'ㄱㄱ','ㄱㄱ',to_date('22/06/01','RR/MM/DD'),null,null,1441);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다.','글 내용입니다',to_date('22/06/01','RR/MM/DD'),null,null,1442);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다.','글 내용입니다',to_date('22/06/01','RR/MM/DD'),null,null,1443);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'안녕하세요?','반가워요',to_date('22/06/01','RR/MM/DD'),null,null,1444);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목이었다','제목이 있었어용',to_date('22/06/01','RR/MM/DD'),null,null,1445);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'행복한 6월입니다','잘 지내시죠?',to_date('22/06/01','RR/MM/DD'),null,null,1446);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다','벚꽃엔딩',to_date('22/06/01','RR/MM/DD'),null,null,1447);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'감사합니다','ㅎㅇ',to_date('22/06/01','RR/MM/DD'),null,null,1448);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'ㄱㄱ','ㄱㄱ',to_date('22/06/01','RR/MM/DD'),null,null,1449);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,1450);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,1451);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'안녕하세요?','반가워요',to_date('22/06/01','RR/MM/DD'),null,null,1452);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목이었다','제목이 있었어용',to_date('22/06/01','RR/MM/DD'),null,null,1453);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,1454);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,1455);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'안녕하세요?','반가워요',to_date('22/06/01','RR/MM/DD'),null,null,1456);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목이었다','제목이 있었어용',to_date('22/06/01','RR/MM/DD'),null,null,1457);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'행복한 6월입니다','잘 지내시죠?',to_date('22/06/01','RR/MM/DD'),null,null,1458);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다','벚꽃엔딩',to_date('22/06/01','RR/MM/DD'),null,null,1459);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'감사합니다','ㅎㅇ',to_date('22/06/01','RR/MM/DD'),null,null,1460);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'ㄱㄱ','ㄱㄱ',to_date('22/06/01','RR/MM/DD'),null,null,1461);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'감사합니다','ㅎㅇ',to_date('22/06/01','RR/MM/DD'),null,null,1462);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'ㄱㄱ','ㄱㄱ',to_date('22/06/01','RR/MM/DD'),null,null,1463);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다.','글 내용입니다',to_date('22/06/01','RR/MM/DD'),null,null,1464);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,1465);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,1466);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'안녕하세요?','반가워요',to_date('22/06/01','RR/MM/DD'),null,null,1467);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목이었다','제목이 있었어용',to_date('22/06/01','RR/MM/DD'),null,null,1468);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'행복한 6월입니다','잘 지내시죠?',to_date('22/06/01','RR/MM/DD'),null,null,1469);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다','벚꽃엔딩',to_date('22/06/01','RR/MM/DD'),null,null,1470);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'감사합니다','ㅎㅇ',to_date('22/06/01','RR/MM/DD'),null,null,1471);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'ㄱㄱ','ㄱㄱ',to_date('22/06/01','RR/MM/DD'),null,null,1472);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다.','글 내용입니다',to_date('22/06/01','RR/MM/DD'),null,null,1473);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,1474);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,1475);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'안녕하세요?','반가워요',to_date('22/06/01','RR/MM/DD'),null,null,1476);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목이었다','제목이 있었어용',to_date('22/06/01','RR/MM/DD'),null,null,1477);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'행복한 6월입니다','잘 지내시죠?',to_date('22/06/01','RR/MM/DD'),null,null,1478);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다','벚꽃엔딩',to_date('22/06/01','RR/MM/DD'),null,null,1479);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'감사합니다','ㅎㅇ',to_date('22/06/01','RR/MM/DD'),null,null,1480);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'ㄱㄱ','ㄱㄱ',to_date('22/06/01','RR/MM/DD'),null,null,1481);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다.','글 내용입니다',to_date('22/06/01','RR/MM/DD'),null,null,1482);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,1483);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,1484);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'안녕하세요?','반가워요',to_date('22/06/01','RR/MM/DD'),null,null,1485);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다.','글 내용입니다',to_date('22/06/01','RR/MM/DD'),null,null,1486);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목이었다','제목이 있었어용',to_date('22/06/01','RR/MM/DD'),null,null,1487);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'행복한 6월입니다','잘 지내시죠?',to_date('22/06/01','RR/MM/DD'),null,null,1488);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다','벚꽃엔딩',to_date('22/06/01','RR/MM/DD'),null,null,1489);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'감사합니다','ㅎㅇ',to_date('22/06/01','RR/MM/DD'),null,null,1490);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'ㄱㄱ','ㄱㄱ',to_date('22/06/01','RR/MM/DD'),null,null,1491);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,1492);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,1493);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'안녕하세요?','반가워요',to_date('22/06/01','RR/MM/DD'),null,null,1494);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목이었다','제목이 있었어용',to_date('22/06/01','RR/MM/DD'),null,null,1495);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'행복한 6월입니다','잘 지내시죠?',to_date('22/06/01','RR/MM/DD'),null,null,1496);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다','벚꽃엔딩',to_date('22/06/01','RR/MM/DD'),null,null,1497);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'감사합니다','ㅎㅇ',to_date('22/06/01','RR/MM/DD'),null,null,1498);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'ㄱㄱ','ㄱㄱ',to_date('22/06/01','RR/MM/DD'),null,null,1499);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다.','글 내용입니다',to_date('22/06/01','RR/MM/DD'),null,null,1500);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,1501);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,1502);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'안녕하세요?','반가워요',to_date('22/06/01','RR/MM/DD'),null,null,1503);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목이었다','제목이 있었어용',to_date('22/06/01','RR/MM/DD'),null,null,1504);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'행복한 6월입니다','잘 지내시죠?',to_date('22/06/01','RR/MM/DD'),null,null,1505);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다','벚꽃엔딩',to_date('22/06/01','RR/MM/DD'),null,null,1506);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'감사합니다','ㅎㅇ',to_date('22/06/01','RR/MM/DD'),null,null,1507);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'ㄱㄱ','ㄱㄱ',to_date('22/06/01','RR/MM/DD'),null,null,1508);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다.','글 내용입니다',to_date('22/06/01','RR/MM/DD'),null,null,1509);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,1510);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,1511);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'안녕하세요?','반가워요',to_date('22/06/01','RR/MM/DD'),null,null,1512);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목이었다','제목이 있었어용',to_date('22/06/01','RR/MM/DD'),null,null,1513);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'행복한 6월입니다','잘 지내시죠?',to_date('22/06/01','RR/MM/DD'),null,null,1514);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다','벚꽃엔딩',to_date('22/06/01','RR/MM/DD'),null,null,1515);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'감사합니다','ㅎㅇ',to_date('22/06/01','RR/MM/DD'),null,null,1516);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'ㄱㄱ','ㄱㄱ',to_date('22/06/01','RR/MM/DD'),null,null,1517);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다.','글 내용입니다',to_date('22/06/01','RR/MM/DD'),null,null,1518);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,1519);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,1520);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'안녕하세요?','반가워요',to_date('22/06/01','RR/MM/DD'),null,null,1521);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다.','글 내용입니다',to_date('22/06/01','RR/MM/DD'),null,null,1522);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목이었다','제목이 있었어용',to_date('22/06/01','RR/MM/DD'),null,null,1523);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'행복한 6월입니다','잘 지내시죠?',to_date('22/06/01','RR/MM/DD'),null,null,1524);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다','벚꽃엔딩',to_date('22/06/01','RR/MM/DD'),null,null,1525);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'감사합니다','ㅎㅇ',to_date('22/06/01','RR/MM/DD'),null,null,1526);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'ㄱㄱ','ㄱㄱ',to_date('22/06/01','RR/MM/DD'),null,null,1527);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,1528);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,1529);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'안녕하세요?','반가워요',to_date('22/06/01','RR/MM/DD'),null,null,1530);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목이었다','제목이 있었어용',to_date('22/06/01','RR/MM/DD'),null,null,1531);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'행복한 6월입니다','잘 지내시죠?',to_date('22/06/01','RR/MM/DD'),null,null,1532);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다','벚꽃엔딩',to_date('22/06/01','RR/MM/DD'),null,null,1533);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'감사합니다','ㅎㅇ',to_date('22/06/01','RR/MM/DD'),null,null,1534);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'ㄱㄱ','ㄱㄱ',to_date('22/06/01','RR/MM/DD'),null,null,1535);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다.','글 내용입니다',to_date('22/06/01','RR/MM/DD'),null,null,1536);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,1537);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,1538);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'안녕하세요?','반가워요',to_date('22/06/01','RR/MM/DD'),null,null,1539);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목이었다','제목이 있었어용',to_date('22/06/01','RR/MM/DD'),null,null,1540);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'행복한 6월입니다','잘 지내시죠?',to_date('22/06/01','RR/MM/DD'),null,null,1541);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다','벚꽃엔딩',to_date('22/06/01','RR/MM/DD'),null,null,1542);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'감사합니다','ㅎㅇ',to_date('22/06/01','RR/MM/DD'),null,null,1543);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'ㄱㄱ','ㄱㄱ',to_date('22/06/01','RR/MM/DD'),null,null,1544);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다.','글 내용입니다',to_date('22/06/01','RR/MM/DD'),null,null,1545);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,1546);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,1547);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'안녕하세요?','반가워요',to_date('22/06/01','RR/MM/DD'),null,null,1548);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목이었다','제목이 있었어용',to_date('22/06/01','RR/MM/DD'),null,null,1549);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'행복한 6월입니다','잘 지내시죠?',to_date('22/06/01','RR/MM/DD'),null,null,1550);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다','벚꽃엔딩',to_date('22/06/01','RR/MM/DD'),null,null,1551);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'감사합니다','ㅎㅇ',to_date('22/06/01','RR/MM/DD'),null,null,1552);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'ㄱㄱ','ㄱㄱ',to_date('22/06/01','RR/MM/DD'),null,null,1553);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다.','글 내용입니다',to_date('22/06/01','RR/MM/DD'),null,null,1554);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,1555);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,1556);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'안녕하세요?','반가워요',to_date('22/06/01','RR/MM/DD'),null,null,1557);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다.','글 내용입니다',to_date('22/06/01','RR/MM/DD'),null,null,1558);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목이었다','제목이 있었어용',to_date('22/06/01','RR/MM/DD'),null,null,1559);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'행복한 6월입니다','잘 지내시죠?',to_date('22/06/01','RR/MM/DD'),null,null,1560);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다','벚꽃엔딩',to_date('22/06/01','RR/MM/DD'),null,null,1561);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'감사합니다','ㅎㅇ',to_date('22/06/01','RR/MM/DD'),null,null,1562);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'ㄱㄱ','ㄱㄱ',to_date('22/06/01','RR/MM/DD'),null,null,1563);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,1564);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,1565);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'안녕하세요?','반가워요',to_date('22/06/01','RR/MM/DD'),null,null,1566);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목이었다','제목이 있었어용',to_date('22/06/01','RR/MM/DD'),null,null,1567);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'행복한 6월입니다','잘 지내시죠?',to_date('22/06/01','RR/MM/DD'),null,null,1568);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다','벚꽃엔딩',to_date('22/06/01','RR/MM/DD'),null,null,1569);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'감사합니다','ㅎㅇ',to_date('22/06/01','RR/MM/DD'),null,null,1570);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'ㄱㄱ','ㄱㄱ',to_date('22/06/01','RR/MM/DD'),null,null,1571);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다.','글 내용입니다',to_date('22/06/01','RR/MM/DD'),null,null,1572);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,1573);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,1574);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'안녕하세요?','반가워요',to_date('22/06/01','RR/MM/DD'),null,null,1575);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목이었다','제목이 있었어용',to_date('22/06/01','RR/MM/DD'),null,null,1576);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'행복한 6월입니다','잘 지내시죠?',to_date('22/06/01','RR/MM/DD'),null,null,1577);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다','벚꽃엔딩',to_date('22/06/01','RR/MM/DD'),null,null,1578);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'감사합니다','ㅎㅇ',to_date('22/06/01','RR/MM/DD'),null,null,1579);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'ㄱㄱ','ㄱㄱ',to_date('22/06/01','RR/MM/DD'),null,null,1580);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다.','글 내용입니다',to_date('22/06/01','RR/MM/DD'),null,null,1581);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,1582);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,1583);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'안녕하세요?','반가워요',to_date('22/06/01','RR/MM/DD'),null,null,1584);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목이었다','제목이 있었어용',to_date('22/06/01','RR/MM/DD'),null,null,1585);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'행복한 6월입니다','잘 지내시죠?',to_date('22/06/01','RR/MM/DD'),null,null,1586);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다','벚꽃엔딩',to_date('22/06/01','RR/MM/DD'),null,null,1587);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'감사합니다','ㅎㅇ',to_date('22/06/01','RR/MM/DD'),null,null,1588);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'ㄱㄱ','ㄱㄱ',to_date('22/06/01','RR/MM/DD'),null,null,1589);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다.','글 내용입니다',to_date('22/06/01','RR/MM/DD'),null,null,1590);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,1591);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,1592);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다.','글 내용입니다',to_date('22/06/01','RR/MM/DD'),null,null,1593);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목이었다','제목이 있었어용',to_date('22/06/01','RR/MM/DD'),null,null,1594);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'행복한 6월입니다','잘 지내시죠?',to_date('22/06/01','RR/MM/DD'),null,null,1595);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다','벚꽃엔딩',to_date('22/06/01','RR/MM/DD'),null,null,1596);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'감사합니다','ㅎㅇ',to_date('22/06/01','RR/MM/DD'),null,null,1597);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'ㄱㄱ','ㄱㄱ',to_date('22/06/01','RR/MM/DD'),null,null,1598);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,1599);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다.','글 내용입니다',to_date('22/06/01','RR/MM/DD'),null,null,1600);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,1601);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,1602);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'안녕하세요?','반가워요',to_date('22/06/01','RR/MM/DD'),null,null,1603);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다.','글 내용입니다',to_date('22/06/01','RR/MM/DD'),null,null,1604);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목이었다','제목이 있었어용',to_date('22/06/01','RR/MM/DD'),null,null,1605);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'행복한 6월입니다','잘 지내시죠?',to_date('22/06/01','RR/MM/DD'),null,null,1606);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다','벚꽃엔딩',to_date('22/06/01','RR/MM/DD'),null,null,1607);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'감사합니다','ㅎㅇ',to_date('22/06/01','RR/MM/DD'),null,null,1608);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'ㄱㄱ','ㄱㄱ',to_date('22/06/01','RR/MM/DD'),null,null,1609);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,1610);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,1611);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'안녕하세요?','반가워요',to_date('22/06/01','RR/MM/DD'),null,null,1612);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목이었다','제목이 있었어용',to_date('22/06/01','RR/MM/DD'),null,null,1613);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'행복한 6월입니다','잘 지내시죠?',to_date('22/06/01','RR/MM/DD'),null,null,1614);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다','벚꽃엔딩',to_date('22/06/01','RR/MM/DD'),null,null,1615);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'감사합니다','ㅎㅇ',to_date('22/06/01','RR/MM/DD'),null,null,1616);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'ㄱㄱ','ㄱㄱ',to_date('22/06/01','RR/MM/DD'),null,null,1617);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다.','글 내용입니다',to_date('22/06/01','RR/MM/DD'),null,null,1618);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,1619);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,1620);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'안녕하세요?','반가워요',to_date('22/06/01','RR/MM/DD'),null,null,1621);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목이었다','제목이 있었어용',to_date('22/06/01','RR/MM/DD'),null,null,1622);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'행복한 6월입니다','잘 지내시죠?',to_date('22/06/01','RR/MM/DD'),null,null,1623);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다','벚꽃엔딩',to_date('22/06/01','RR/MM/DD'),null,null,1624);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'감사합니다','ㅎㅇ',to_date('22/06/01','RR/MM/DD'),null,null,1625);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'ㄱㄱ','ㄱㄱ',to_date('22/06/01','RR/MM/DD'),null,null,1626);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다.','글 내용입니다',to_date('22/06/01','RR/MM/DD'),null,null,1627);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,1628);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,1629);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'안녕하세요?','반가워요',to_date('22/06/01','RR/MM/DD'),null,null,1630);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목이었다','제목이 있었어용',to_date('22/06/01','RR/MM/DD'),null,null,1631);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'행복한 6월입니다','잘 지내시죠?',to_date('22/06/01','RR/MM/DD'),null,null,1632);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다','벚꽃엔딩',to_date('22/06/01','RR/MM/DD'),null,null,1633);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'감사합니다','ㅎㅇ',to_date('22/06/01','RR/MM/DD'),null,null,1634);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'ㄱㄱ','ㄱㄱ',to_date('22/06/01','RR/MM/DD'),null,null,1635);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다.','글 내용입니다',to_date('22/06/01','RR/MM/DD'),null,null,1636);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,1637);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,1638);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'안녕하세요?','반가워요',to_date('22/06/01','RR/MM/DD'),null,null,1639);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다.','글 내용입니다',to_date('22/06/01','RR/MM/DD'),null,null,1640);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목이었다','제목이 있었어용',to_date('22/06/01','RR/MM/DD'),null,null,1641);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'행복한 6월입니다','잘 지내시죠?',to_date('22/06/01','RR/MM/DD'),null,null,1642);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다','벚꽃엔딩',to_date('22/06/01','RR/MM/DD'),null,null,1643);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'감사합니다','ㅎㅇ',to_date('22/06/01','RR/MM/DD'),null,null,1644);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'ㄱㄱ','ㄱㄱ',to_date('22/06/01','RR/MM/DD'),null,null,1645);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,1646);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,1647);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'안녕하세요?','반가워요',to_date('22/06/01','RR/MM/DD'),null,null,1648);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목이었다','제목이 있었어용',to_date('22/06/01','RR/MM/DD'),null,null,1649);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'행복한 6월입니다','잘 지내시죠?',to_date('22/06/01','RR/MM/DD'),null,null,1650);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다','벚꽃엔딩',to_date('22/06/01','RR/MM/DD'),null,null,1651);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'감사합니다','ㅎㅇ',to_date('22/06/01','RR/MM/DD'),null,null,1652);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'ㄱㄱ','ㄱㄱ',to_date('22/06/01','RR/MM/DD'),null,null,1653);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다.','글 내용입니다',to_date('22/06/01','RR/MM/DD'),null,null,1654);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,1655);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,1656);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'안녕하세요?','반가워요',to_date('22/06/01','RR/MM/DD'),null,null,1657);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목이었다','제목이 있었어용',to_date('22/06/01','RR/MM/DD'),null,null,1658);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'행복한 6월입니다','잘 지내시죠?',to_date('22/06/01','RR/MM/DD'),null,null,1659);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다','벚꽃엔딩',to_date('22/06/01','RR/MM/DD'),null,null,1660);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'감사합니다','ㅎㅇ',to_date('22/06/01','RR/MM/DD'),null,null,1661);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'ㄱㄱ','ㄱㄱ',to_date('22/06/01','RR/MM/DD'),null,null,1662);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다.','글 내용입니다',to_date('22/06/01','RR/MM/DD'),null,null,1663);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,1664);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,1665);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'안녕하세요?','반가워요',to_date('22/06/01','RR/MM/DD'),null,null,1666);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목이었다','제목이 있었어용',to_date('22/06/01','RR/MM/DD'),null,null,1667);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'행복한 6월입니다','잘 지내시죠?',to_date('22/06/01','RR/MM/DD'),null,null,1668);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다','벚꽃엔딩',to_date('22/06/01','RR/MM/DD'),null,null,1669);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'감사합니다','ㅎㅇ',to_date('22/06/01','RR/MM/DD'),null,null,1670);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'ㄱㄱ','ㄱㄱ',to_date('22/06/01','RR/MM/DD'),null,null,1671);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다.','글 내용입니다',to_date('22/06/01','RR/MM/DD'),null,null,1672);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,1673);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,1674);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'안녕하세요?','반가워요',to_date('22/06/01','RR/MM/DD'),null,null,1675);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다.','글 내용입니다',to_date('22/06/01','RR/MM/DD'),null,null,1676);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목이었다','제목이 있었어용',to_date('22/06/01','RR/MM/DD'),null,null,1677);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'행복한 6월입니다','잘 지내시죠?',to_date('22/06/01','RR/MM/DD'),null,null,1678);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다','벚꽃엔딩',to_date('22/06/01','RR/MM/DD'),null,null,1679);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'감사합니다','ㅎㅇ',to_date('22/06/01','RR/MM/DD'),null,null,1680);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'ㄱㄱ','ㄱㄱ',to_date('22/06/01','RR/MM/DD'),null,null,1681);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,1682);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,1683);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'안녕하세요?','반가워요',to_date('22/06/01','RR/MM/DD'),null,null,1684);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목이었다','제목이 있었어용',to_date('22/06/01','RR/MM/DD'),null,null,1685);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'행복한 6월입니다','잘 지내시죠?',to_date('22/06/01','RR/MM/DD'),null,null,1686);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다','벚꽃엔딩',to_date('22/06/01','RR/MM/DD'),null,null,1687);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'감사합니다','ㅎㅇ',to_date('22/06/01','RR/MM/DD'),null,null,1688);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'ㄱㄱ','ㄱㄱ',to_date('22/06/01','RR/MM/DD'),null,null,1689);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다.','글 내용입니다',to_date('22/06/01','RR/MM/DD'),null,null,1690);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,1691);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,1692);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'안녕하세요?','반가워요',to_date('22/06/01','RR/MM/DD'),null,null,1693);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목이었다','제목이 있었어용',to_date('22/06/01','RR/MM/DD'),null,null,1694);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'행복한 6월입니다','잘 지내시죠?',to_date('22/06/01','RR/MM/DD'),null,null,1695);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다','벚꽃엔딩',to_date('22/06/01','RR/MM/DD'),null,null,1696);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'감사합니다','ㅎㅇ',to_date('22/06/01','RR/MM/DD'),null,null,1697);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'ㄱㄱ','ㄱㄱ',to_date('22/06/01','RR/MM/DD'),null,null,1698);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다.','글 내용입니다',to_date('22/06/01','RR/MM/DD'),null,null,1699);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,1700);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,1701);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'안녕하세요?','반가워요',to_date('22/06/01','RR/MM/DD'),null,null,1702);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목이었다','제목이 있었어용',to_date('22/06/01','RR/MM/DD'),null,null,1703);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'행복한 6월입니다','잘 지내시죠?',to_date('22/06/01','RR/MM/DD'),null,null,1704);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다','벚꽃엔딩',to_date('22/06/01','RR/MM/DD'),null,null,1705);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'감사합니다','ㅎㅇ',to_date('22/06/01','RR/MM/DD'),null,null,1706);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'ㄱㄱ','ㄱㄱ',to_date('22/06/01','RR/MM/DD'),null,null,1707);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다.','글 내용입니다',to_date('22/06/01','RR/MM/DD'),null,null,1708);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,1709);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,1710);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'안녕하세요?','반가워요',to_date('22/06/01','RR/MM/DD'),null,null,1711);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다.','글 내용입니다',to_date('22/06/01','RR/MM/DD'),null,null,1712);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목이었다','제목이 있었어용',to_date('22/06/01','RR/MM/DD'),null,null,1713);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'행복한 6월입니다','잘 지내시죠?',to_date('22/06/01','RR/MM/DD'),null,null,1714);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다','벚꽃엔딩',to_date('22/06/01','RR/MM/DD'),null,null,1715);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'감사합니다','ㅎㅇ',to_date('22/06/01','RR/MM/DD'),null,null,1716);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'ㄱㄱ','ㄱㄱ',to_date('22/06/01','RR/MM/DD'),null,null,1717);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,1718);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,1719);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'안녕하세요?','반가워요',to_date('22/06/01','RR/MM/DD'),null,null,1720);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목이었다','제목이 있었어용',to_date('22/06/01','RR/MM/DD'),null,null,1721);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'행복한 6월입니다','잘 지내시죠?',to_date('22/06/01','RR/MM/DD'),null,null,1722);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다','벚꽃엔딩',to_date('22/06/01','RR/MM/DD'),null,null,1723);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'감사합니다','ㅎㅇ',to_date('22/06/01','RR/MM/DD'),null,null,1724);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'ㄱㄱ','ㄱㄱ',to_date('22/06/01','RR/MM/DD'),null,null,1725);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다.','글 내용입니다',to_date('22/06/01','RR/MM/DD'),null,null,1726);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,1727);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,1728);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'안녕하세요?','반가워요',to_date('22/06/01','RR/MM/DD'),null,null,1729);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목이었다','제목이 있었어용',to_date('22/06/01','RR/MM/DD'),null,null,1730);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'행복한 6월입니다','잘 지내시죠?',to_date('22/06/01','RR/MM/DD'),null,null,1731);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다','벚꽃엔딩',to_date('22/06/01','RR/MM/DD'),null,null,1732);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'감사합니다','ㅎㅇ',to_date('22/06/01','RR/MM/DD'),null,null,1733);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'ㄱㄱ','ㄱㄱ',to_date('22/06/01','RR/MM/DD'),null,null,1734);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다.','글 내용입니다',to_date('22/06/01','RR/MM/DD'),null,null,1735);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,1736);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,1737);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'안녕하세요?','반가워요',to_date('22/06/01','RR/MM/DD'),null,null,1738);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목이었다','제목이 있었어용',to_date('22/06/01','RR/MM/DD'),null,null,1739);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'행복한 6월입니다','잘 지내시죠?',to_date('22/06/01','RR/MM/DD'),null,null,1740);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다','벚꽃엔딩',to_date('22/06/01','RR/MM/DD'),null,null,1741);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'감사합니다','ㅎㅇ',to_date('22/06/01','RR/MM/DD'),null,null,1742);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'ㄱㄱ','ㄱㄱ',to_date('22/06/01','RR/MM/DD'),null,null,1743);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다.','글 내용입니다',to_date('22/06/01','RR/MM/DD'),null,null,1744);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,1745);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,1746);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'안녕하세요?','반가워요',to_date('22/06/01','RR/MM/DD'),null,null,1747);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다.','글 내용입니다',to_date('22/06/01','RR/MM/DD'),null,null,1748);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목이었다','제목이 있었어용',to_date('22/06/01','RR/MM/DD'),null,null,1749);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'행복한 6월입니다','잘 지내시죠?',to_date('22/06/01','RR/MM/DD'),null,null,1750);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다','벚꽃엔딩',to_date('22/06/01','RR/MM/DD'),null,null,1751);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'감사합니다','ㅎㅇ',to_date('22/06/01','RR/MM/DD'),null,null,1752);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'ㄱㄱ','ㄱㄱ',to_date('22/06/01','RR/MM/DD'),null,null,1753);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,1754);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,1755);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'안녕하세요?','반가워요',to_date('22/06/01','RR/MM/DD'),null,null,1756);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목이었다','제목이 있었어용',to_date('22/06/01','RR/MM/DD'),null,null,1757);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'행복한 6월입니다','잘 지내시죠?',to_date('22/06/01','RR/MM/DD'),null,null,1758);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다','벚꽃엔딩',to_date('22/06/01','RR/MM/DD'),null,null,1759);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'감사합니다','ㅎㅇ',to_date('22/06/01','RR/MM/DD'),null,null,1760);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'ㄱㄱ','ㄱㄱ',to_date('22/06/01','RR/MM/DD'),null,null,1761);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다.','글 내용입니다',to_date('22/06/01','RR/MM/DD'),null,null,1762);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,1763);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,1764);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'안녕하세요?','반가워요',to_date('22/06/01','RR/MM/DD'),null,null,1765);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목이었다','제목이 있었어용',to_date('22/06/01','RR/MM/DD'),null,null,1766);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'행복한 6월입니다','잘 지내시죠?',to_date('22/06/01','RR/MM/DD'),null,null,1767);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다','벚꽃엔딩',to_date('22/06/01','RR/MM/DD'),null,null,1768);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'감사합니다','ㅎㅇ',to_date('22/06/01','RR/MM/DD'),null,null,1769);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'ㄱㄱ','ㄱㄱ',to_date('22/06/01','RR/MM/DD'),null,null,1770);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다.','글 내용입니다',to_date('22/06/01','RR/MM/DD'),null,null,1771);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,1772);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,1773);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'안녕하세요?','반가워요',to_date('22/06/01','RR/MM/DD'),null,null,1774);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목이었다','제목이 있었어용',to_date('22/06/01','RR/MM/DD'),null,null,1775);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'행복한 6월입니다','잘 지내시죠?',to_date('22/06/01','RR/MM/DD'),null,null,1776);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다','벚꽃엔딩',to_date('22/06/01','RR/MM/DD'),null,null,1777);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'감사합니다','ㅎㅇ',to_date('22/06/01','RR/MM/DD'),null,null,1778);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'ㄱㄱ','ㄱㄱ',to_date('22/06/01','RR/MM/DD'),null,null,1779);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다.','글 내용입니다',to_date('22/06/01','RR/MM/DD'),null,null,1780);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,1781);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,1782);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'안녕하세요?','반가워요',to_date('22/06/01','RR/MM/DD'),null,null,1783);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다.','글 내용입니다',to_date('22/06/01','RR/MM/DD'),null,null,1784);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목이었다','제목이 있었어용',to_date('22/06/01','RR/MM/DD'),null,null,1785);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'행복한 6월입니다','잘 지내시죠?',to_date('22/06/01','RR/MM/DD'),null,null,1786);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다','벚꽃엔딩',to_date('22/06/01','RR/MM/DD'),null,null,1787);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'감사합니다','ㅎㅇ',to_date('22/06/01','RR/MM/DD'),null,null,1788);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'ㄱㄱ','ㄱㄱ',to_date('22/06/01','RR/MM/DD'),null,null,1789);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,1790);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,1791);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'안녕하세요?','반가워요',to_date('22/06/01','RR/MM/DD'),null,null,1792);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목이었다','제목이 있었어용',to_date('22/06/01','RR/MM/DD'),null,null,1793);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'행복한 6월입니다','잘 지내시죠?',to_date('22/06/01','RR/MM/DD'),null,null,1794);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다','벚꽃엔딩',to_date('22/06/01','RR/MM/DD'),null,null,1795);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'감사합니다','ㅎㅇ',to_date('22/06/01','RR/MM/DD'),null,null,1796);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'ㄱㄱ','ㄱㄱ',to_date('22/06/01','RR/MM/DD'),null,null,1797);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다.','글 내용입니다',to_date('22/06/01','RR/MM/DD'),null,null,1798);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,1799);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,1800);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'안녕하세요?','반가워요',to_date('22/06/01','RR/MM/DD'),null,null,1801);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목이었다','제목이 있었어용',to_date('22/06/01','RR/MM/DD'),null,null,1802);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'행복한 6월입니다','잘 지내시죠?',to_date('22/06/01','RR/MM/DD'),null,null,1803);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다','벚꽃엔딩',to_date('22/06/01','RR/MM/DD'),null,null,1804);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'감사합니다','ㅎㅇ',to_date('22/06/01','RR/MM/DD'),null,null,1805);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'ㄱㄱ','ㄱㄱ',to_date('22/06/01','RR/MM/DD'),null,null,1806);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다.','글 내용입니다',to_date('22/06/01','RR/MM/DD'),null,null,1807);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,1808);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,1809);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'안녕하세요?','반가워요',to_date('22/06/01','RR/MM/DD'),null,null,1810);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목이었다','제목이 있었어용',to_date('22/06/01','RR/MM/DD'),null,null,1811);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'행복한 6월입니다','잘 지내시죠?',to_date('22/06/01','RR/MM/DD'),null,null,1812);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다','벚꽃엔딩',to_date('22/06/01','RR/MM/DD'),null,null,1813);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'감사합니다','ㅎㅇ',to_date('22/06/01','RR/MM/DD'),null,null,1814);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'ㄱㄱ','ㄱㄱ',to_date('22/06/01','RR/MM/DD'),null,null,1815);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다.','글 내용입니다',to_date('22/06/01','RR/MM/DD'),null,null,1816);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,1817);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,1818);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'안녕하세요?','반가워요',to_date('22/06/01','RR/MM/DD'),null,null,1819);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다.','글 내용입니다',to_date('22/06/01','RR/MM/DD'),null,null,1820);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목이었다','제목이 있었어용',to_date('22/06/01','RR/MM/DD'),null,null,1821);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'행복한 6월입니다','잘 지내시죠?',to_date('22/06/01','RR/MM/DD'),null,null,1822);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다','벚꽃엔딩',to_date('22/06/01','RR/MM/DD'),null,null,1823);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'감사합니다','ㅎㅇ',to_date('22/06/01','RR/MM/DD'),null,null,1824);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'ㄱㄱ','ㄱㄱ',to_date('22/06/01','RR/MM/DD'),null,null,1825);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,1826);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,1827);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'안녕하세요?','반가워요',to_date('22/06/01','RR/MM/DD'),null,null,1828);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목이었다','제목이 있었어용',to_date('22/06/01','RR/MM/DD'),null,null,1829);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'행복한 6월입니다','잘 지내시죠?',to_date('22/06/01','RR/MM/DD'),null,null,1830);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다','벚꽃엔딩',to_date('22/06/01','RR/MM/DD'),null,null,1831);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'감사합니다','ㅎㅇ',to_date('22/06/01','RR/MM/DD'),null,null,1832);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'ㄱㄱ','ㄱㄱ',to_date('22/06/01','RR/MM/DD'),null,null,1833);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다.','글 내용입니다',to_date('22/06/01','RR/MM/DD'),null,null,1834);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,1835);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,1836);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'안녕하세요?','반가워요',to_date('22/06/01','RR/MM/DD'),null,null,1837);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목이었다','제목이 있었어용',to_date('22/06/01','RR/MM/DD'),null,null,1838);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'행복한 6월입니다','잘 지내시죠?',to_date('22/06/01','RR/MM/DD'),null,null,1839);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다','벚꽃엔딩',to_date('22/06/01','RR/MM/DD'),null,null,1840);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'감사합니다','ㅎㅇ',to_date('22/06/01','RR/MM/DD'),null,null,1841);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'ㄱㄱ','ㄱㄱ',to_date('22/06/01','RR/MM/DD'),null,null,1842);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다.','글 내용입니다',to_date('22/06/01','RR/MM/DD'),null,null,1843);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,1844);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,1845);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'안녕하세요?','반가워요',to_date('22/06/01','RR/MM/DD'),null,null,1846);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목이었다','제목이 있었어용',to_date('22/06/01','RR/MM/DD'),null,null,1847);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'행복한 6월입니다','잘 지내시죠?',to_date('22/06/01','RR/MM/DD'),null,null,1848);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다','벚꽃엔딩',to_date('22/06/01','RR/MM/DD'),null,null,1849);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'감사합니다','ㅎㅇ',to_date('22/06/01','RR/MM/DD'),null,null,1850);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'ㄱㄱ','ㄱㄱ',to_date('22/06/01','RR/MM/DD'),null,null,1851);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다.','글 내용입니다',to_date('22/06/01','RR/MM/DD'),null,null,1852);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,1853);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,1854);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'안녕하세요?','반가워요',to_date('22/06/01','RR/MM/DD'),null,null,1855);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다.','글 내용입니다',to_date('22/06/01','RR/MM/DD'),null,null,1856);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목이었다','제목이 있었어용',to_date('22/06/01','RR/MM/DD'),null,null,1857);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'행복한 6월입니다','잘 지내시죠?',to_date('22/06/01','RR/MM/DD'),null,null,1858);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다','벚꽃엔딩',to_date('22/06/01','RR/MM/DD'),null,null,1859);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'감사합니다','ㅎㅇ',to_date('22/06/01','RR/MM/DD'),null,null,1860);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'ㄱㄱ','ㄱㄱ',to_date('22/06/01','RR/MM/DD'),null,null,1861);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,1862);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,1863);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'안녕하세요?','반가워요',to_date('22/06/01','RR/MM/DD'),null,null,1864);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목이었다','제목이 있었어용',to_date('22/06/01','RR/MM/DD'),null,null,1865);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'행복한 6월입니다','잘 지내시죠?',to_date('22/06/01','RR/MM/DD'),null,null,1866);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다','벚꽃엔딩',to_date('22/06/01','RR/MM/DD'),null,null,1867);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'감사합니다','ㅎㅇ',to_date('22/06/01','RR/MM/DD'),null,null,1868);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'ㄱㄱ','ㄱㄱ',to_date('22/06/01','RR/MM/DD'),null,null,1869);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다.','글 내용입니다',to_date('22/06/01','RR/MM/DD'),null,null,1870);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,1871);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,1872);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'안녕하세요?','반가워요',to_date('22/06/01','RR/MM/DD'),null,null,1873);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목이었다','제목이 있었어용',to_date('22/06/01','RR/MM/DD'),null,null,1874);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'행복한 6월입니다','잘 지내시죠?',to_date('22/06/01','RR/MM/DD'),null,null,1875);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다','벚꽃엔딩',to_date('22/06/01','RR/MM/DD'),null,null,1876);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'감사합니다','ㅎㅇ',to_date('22/06/01','RR/MM/DD'),null,null,1877);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'ㄱㄱ','ㄱㄱ',to_date('22/06/01','RR/MM/DD'),null,null,1878);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다.','글 내용입니다',to_date('22/06/01','RR/MM/DD'),null,null,1879);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,1880);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,1881);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'안녕하세요?','반가워요',to_date('22/06/01','RR/MM/DD'),null,null,1882);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목이었다','제목이 있었어용',to_date('22/06/01','RR/MM/DD'),null,null,1883);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'행복한 6월입니다','잘 지내시죠?',to_date('22/06/01','RR/MM/DD'),null,null,1884);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다','벚꽃엔딩',to_date('22/06/01','RR/MM/DD'),null,null,1885);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'감사합니다','ㅎㅇ',to_date('22/06/01','RR/MM/DD'),null,null,1886);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'ㄱㄱ','ㄱㄱ',to_date('22/06/01','RR/MM/DD'),null,null,1887);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다.','글 내용입니다',to_date('22/06/01','RR/MM/DD'),null,null,1888);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,1889);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,1890);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'안녕하세요?','반가워요',to_date('22/06/01','RR/MM/DD'),null,null,1891);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,1892);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'안녕하세요?','반가워요',to_date('22/06/01','RR/MM/DD'),null,null,1893);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목이었다','제목이 있었어용',to_date('22/06/01','RR/MM/DD'),null,null,1894);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'행복한 6월입니다','잘 지내시죠?',to_date('22/06/01','RR/MM/DD'),null,null,1895);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다','벚꽃엔딩',to_date('22/06/01','RR/MM/DD'),null,null,1896);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'감사합니다','ㅎㅇ',to_date('22/06/01','RR/MM/DD'),null,null,1897);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'ㄱㄱ','ㄱㄱ',to_date('22/06/01','RR/MM/DD'),null,null,1898);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다.','글 내용입니다',to_date('22/06/01','RR/MM/DD'),null,null,1899);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,1900);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,1901);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,740);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'안녕하세요?','반가워요',to_date('22/06/01','RR/MM/DD'),null,null,741);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목이었다','제목이 있었어용',to_date('22/06/01','RR/MM/DD'),null,null,742);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'행복한 6월입니다','잘 지내시죠?',to_date('22/06/01','RR/MM/DD'),null,null,743);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다','벚꽃엔딩',to_date('22/06/01','RR/MM/DD'),null,null,744);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'감사합니다','ㅎㅇ',to_date('22/06/01','RR/MM/DD'),null,null,745);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'ㄱㄱ','ㄱㄱ',to_date('22/06/01','RR/MM/DD'),null,null,746);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다.','글 내용입니다',to_date('22/06/01','RR/MM/DD'),null,null,747);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,748);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,749);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'안녕하세요?','반가워요',to_date('22/06/01','RR/MM/DD'),null,null,750);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목이었다','제목이 있었어용',to_date('22/06/01','RR/MM/DD'),null,null,751);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'행복한 6월입니다','잘 지내시죠?',to_date('22/06/01','RR/MM/DD'),null,null,752);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다','벚꽃엔딩',to_date('22/06/01','RR/MM/DD'),null,null,753);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'감사합니다','ㅎㅇ',to_date('22/06/01','RR/MM/DD'),null,null,754);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'ㄱㄱ','ㄱㄱ',to_date('22/06/01','RR/MM/DD'),null,null,755);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다.','글 내용입니다',to_date('22/06/01','RR/MM/DD'),null,null,756);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,757);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,758);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'안녕하세요?','반가워요',to_date('22/06/01','RR/MM/DD'),null,null,759);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목이었다','제목이 있었어용',to_date('22/06/01','RR/MM/DD'),null,null,760);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'행복한 6월입니다','잘 지내시죠?',to_date('22/06/01','RR/MM/DD'),null,null,761);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다','벚꽃엔딩',to_date('22/06/01','RR/MM/DD'),null,null,762);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'감사합니다','ㅎㅇ',to_date('22/06/01','RR/MM/DD'),null,null,763);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'ㄱㄱ','ㄱㄱ',to_date('22/06/01','RR/MM/DD'),null,null,764);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다.','글 내용입니다',to_date('22/06/01','RR/MM/DD'),null,null,765);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,766);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,767);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'안녕하세요?','반가워요',to_date('22/06/01','RR/MM/DD'),null,null,768);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다.','글 내용입니다',to_date('22/06/01','RR/MM/DD'),null,null,769);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목이었다','제목이 있었어용',to_date('22/06/01','RR/MM/DD'),null,null,770);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'행복한 6월입니다','잘 지내시죠?',to_date('22/06/01','RR/MM/DD'),null,null,771);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다','벚꽃엔딩',to_date('22/06/01','RR/MM/DD'),null,null,772);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'감사합니다','ㅎㅇ',to_date('22/06/01','RR/MM/DD'),null,null,773);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'ㄱㄱ','ㄱㄱ',to_date('22/06/01','RR/MM/DD'),null,null,774);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,775);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,776);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'안녕하세요?','반가워요',to_date('22/06/01','RR/MM/DD'),null,null,777);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목이었다','제목이 있었어용',to_date('22/06/01','RR/MM/DD'),null,null,778);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'행복한 6월입니다','잘 지내시죠?',to_date('22/06/01','RR/MM/DD'),null,null,779);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다','벚꽃엔딩',to_date('22/06/01','RR/MM/DD'),null,null,780);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'감사합니다','ㅎㅇ',to_date('22/06/01','RR/MM/DD'),null,null,781);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'ㄱㄱ','ㄱㄱ',to_date('22/06/01','RR/MM/DD'),null,null,782);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다.','글 내용입니다',to_date('22/06/01','RR/MM/DD'),null,null,783);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,784);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,785);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'안녕하세요?','반가워요',to_date('22/06/01','RR/MM/DD'),null,null,786);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목이었다','제목이 있었어용',to_date('22/06/01','RR/MM/DD'),null,null,787);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'행복한 6월입니다','잘 지내시죠?',to_date('22/06/01','RR/MM/DD'),null,null,788);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다','벚꽃엔딩',to_date('22/06/01','RR/MM/DD'),null,null,789);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'감사합니다','ㅎㅇ',to_date('22/06/01','RR/MM/DD'),null,null,790);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'ㄱㄱ','ㄱㄱ',to_date('22/06/01','RR/MM/DD'),null,null,791);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다.','글 내용입니다',to_date('22/06/01','RR/MM/DD'),null,null,792);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,793);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,794);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'안녕하세요?','반가워요',to_date('22/06/01','RR/MM/DD'),null,null,795);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목이었다','제목이 있었어용',to_date('22/06/01','RR/MM/DD'),null,null,796);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'행복한 6월입니다','잘 지내시죠?',to_date('22/06/01','RR/MM/DD'),null,null,797);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다','벚꽃엔딩',to_date('22/06/01','RR/MM/DD'),null,null,798);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'감사합니다','ㅎㅇ',to_date('22/06/01','RR/MM/DD'),null,null,799);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'ㄱㄱ','ㄱㄱ',to_date('22/06/01','RR/MM/DD'),null,null,800);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다.','글 내용입니다',to_date('22/06/01','RR/MM/DD'),null,null,801);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,802);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,803);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'안녕하세요?','반가워요',to_date('22/06/01','RR/MM/DD'),null,null,804);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다.','글 내용입니다',to_date('22/06/01','RR/MM/DD'),null,null,805);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목이었다','제목이 있었어용',to_date('22/06/01','RR/MM/DD'),null,null,806);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'행복한 6월입니다','잘 지내시죠?',to_date('22/06/01','RR/MM/DD'),null,null,807);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다','벚꽃엔딩',to_date('22/06/01','RR/MM/DD'),null,null,808);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'감사합니다','ㅎㅇ',to_date('22/06/01','RR/MM/DD'),null,null,809);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'ㄱㄱ','ㄱㄱ',to_date('22/06/01','RR/MM/DD'),null,null,810);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,811);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,812);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'안녕하세요?','반가워요',to_date('22/06/01','RR/MM/DD'),null,null,813);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목이었다','제목이 있었어용',to_date('22/06/01','RR/MM/DD'),null,null,814);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'행복한 6월입니다','잘 지내시죠?',to_date('22/06/01','RR/MM/DD'),null,null,815);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다','벚꽃엔딩',to_date('22/06/01','RR/MM/DD'),null,null,816);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'감사합니다','ㅎㅇ',to_date('22/06/01','RR/MM/DD'),null,null,817);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'ㄱㄱ','ㄱㄱ',to_date('22/06/01','RR/MM/DD'),null,null,818);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다.','글 내용입니다',to_date('22/06/01','RR/MM/DD'),null,null,819);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,820);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,821);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'안녕하세요?','반가워요',to_date('22/06/01','RR/MM/DD'),null,null,822);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목이었다','제목이 있었어용',to_date('22/06/01','RR/MM/DD'),null,null,823);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'행복한 6월입니다','잘 지내시죠?',to_date('22/06/01','RR/MM/DD'),null,null,824);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다','벚꽃엔딩',to_date('22/06/01','RR/MM/DD'),null,null,825);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'감사합니다','ㅎㅇ',to_date('22/06/01','RR/MM/DD'),null,null,826);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'ㄱㄱ','ㄱㄱ',to_date('22/06/01','RR/MM/DD'),null,null,827);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다.','글 내용입니다',to_date('22/06/01','RR/MM/DD'),null,null,828);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,829);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,830);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'안녕하세요?','반가워요',to_date('22/06/01','RR/MM/DD'),null,null,831);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목이었다','제목이 있었어용',to_date('22/06/01','RR/MM/DD'),null,null,832);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'행복한 6월입니다','잘 지내시죠?',to_date('22/06/01','RR/MM/DD'),null,null,833);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다','벚꽃엔딩',to_date('22/06/01','RR/MM/DD'),null,null,834);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'감사합니다','ㅎㅇ',to_date('22/06/01','RR/MM/DD'),null,null,835);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'ㄱㄱ','ㄱㄱ',to_date('22/06/01','RR/MM/DD'),null,null,836);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다.','글 내용입니다',to_date('22/06/01','RR/MM/DD'),null,null,837);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,838);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,839);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'안녕하세요?','반가워요',to_date('22/06/01','RR/MM/DD'),null,null,840);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다.','글 내용입니다',to_date('22/06/01','RR/MM/DD'),null,null,841);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목이었다','제목이 있었어용',to_date('22/06/01','RR/MM/DD'),null,null,842);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'행복한 6월입니다','잘 지내시죠?',to_date('22/06/01','RR/MM/DD'),null,null,843);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다','벚꽃엔딩',to_date('22/06/01','RR/MM/DD'),null,null,844);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'감사합니다','ㅎㅇ',to_date('22/06/01','RR/MM/DD'),null,null,845);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'ㄱㄱ','ㄱㄱ',to_date('22/06/01','RR/MM/DD'),null,null,846);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,847);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,848);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'안녕하세요?','반가워요',to_date('22/06/01','RR/MM/DD'),null,null,849);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목이었다','제목이 있었어용',to_date('22/06/01','RR/MM/DD'),null,null,850);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'행복한 6월입니다','잘 지내시죠?',to_date('22/06/01','RR/MM/DD'),null,null,851);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다','벚꽃엔딩',to_date('22/06/01','RR/MM/DD'),null,null,852);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'감사합니다','ㅎㅇ',to_date('22/06/01','RR/MM/DD'),null,null,853);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'ㄱㄱ','ㄱㄱ',to_date('22/06/01','RR/MM/DD'),null,null,854);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다.','글 내용입니다',to_date('22/06/01','RR/MM/DD'),null,null,855);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,856);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,857);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'안녕하세요?','반가워요',to_date('22/06/01','RR/MM/DD'),null,null,858);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목이었다','제목이 있었어용',to_date('22/06/01','RR/MM/DD'),null,null,859);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'행복한 6월입니다','잘 지내시죠?',to_date('22/06/01','RR/MM/DD'),null,null,860);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다','벚꽃엔딩',to_date('22/06/01','RR/MM/DD'),null,null,861);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'감사합니다','ㅎㅇ',to_date('22/06/01','RR/MM/DD'),null,null,862);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'ㄱㄱ','ㄱㄱ',to_date('22/06/01','RR/MM/DD'),null,null,863);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,864);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,865);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'안녕하세요?','반가워요',to_date('22/06/01','RR/MM/DD'),null,null,866);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목이었다','제목이 있었어용',to_date('22/06/01','RR/MM/DD'),null,null,867);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'행복한 6월입니다','잘 지내시죠?',to_date('22/06/01','RR/MM/DD'),null,null,868);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다','벚꽃엔딩',to_date('22/06/01','RR/MM/DD'),null,null,869);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'감사합니다','ㅎㅇ',to_date('22/06/01','RR/MM/DD'),null,null,870);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'ㄱㄱ','ㄱㄱ',to_date('22/06/01','RR/MM/DD'),null,null,871);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다.','글 내용입니다',to_date('22/06/01','RR/MM/DD'),null,null,872);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,873);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,874);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'안녕하세요?','반가워요',to_date('22/06/01','RR/MM/DD'),null,null,875);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다.','글 내용입니다',to_date('22/06/01','RR/MM/DD'),null,null,876);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목이었다','제목이 있었어용',to_date('22/06/01','RR/MM/DD'),null,null,877);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'행복한 6월입니다','잘 지내시죠?',to_date('22/06/01','RR/MM/DD'),null,null,878);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다','벚꽃엔딩',to_date('22/06/01','RR/MM/DD'),null,null,879);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'감사합니다','ㅎㅇ',to_date('22/06/01','RR/MM/DD'),null,null,880);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'ㄱㄱ','ㄱㄱ',to_date('22/06/01','RR/MM/DD'),null,null,881);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,882);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,883);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'안녕하세요?','반가워요',to_date('22/06/01','RR/MM/DD'),null,null,884);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목이었다','제목이 있었어용',to_date('22/06/01','RR/MM/DD'),null,null,885);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'행복한 6월입니다','잘 지내시죠?',to_date('22/06/01','RR/MM/DD'),null,null,886);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다','벚꽃엔딩',to_date('22/06/01','RR/MM/DD'),null,null,887);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'감사합니다','ㅎㅇ',to_date('22/06/01','RR/MM/DD'),null,null,888);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'ㄱㄱ','ㄱㄱ',to_date('22/06/01','RR/MM/DD'),null,null,889);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다.','글 내용입니다',to_date('22/06/01','RR/MM/DD'),null,null,890);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,891);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,892);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'안녕하세요?','반가워요',to_date('22/06/01','RR/MM/DD'),null,null,893);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목이었다','제목이 있었어용',to_date('22/06/01','RR/MM/DD'),null,null,894);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'행복한 6월입니다','잘 지내시죠?',to_date('22/06/01','RR/MM/DD'),null,null,895);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다','벚꽃엔딩',to_date('22/06/01','RR/MM/DD'),null,null,896);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'감사합니다','ㅎㅇ',to_date('22/06/01','RR/MM/DD'),null,null,897);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'ㄱㄱ','ㄱㄱ',to_date('22/06/01','RR/MM/DD'),null,null,898);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다.','글 내용입니다',to_date('22/06/01','RR/MM/DD'),null,null,899);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,900);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,901);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'안녕하세요?','반가워요',to_date('22/06/01','RR/MM/DD'),null,null,902);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목이었다','제목이 있었어용',to_date('22/06/01','RR/MM/DD'),null,null,903);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'행복한 6월입니다','잘 지내시죠?',to_date('22/06/01','RR/MM/DD'),null,null,904);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다','벚꽃엔딩',to_date('22/06/01','RR/MM/DD'),null,null,905);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'감사합니다','ㅎㅇ',to_date('22/06/01','RR/MM/DD'),null,null,906);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'ㄱㄱ','ㄱㄱ',to_date('22/06/01','RR/MM/DD'),null,null,907);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다.','글 내용입니다',to_date('22/06/01','RR/MM/DD'),null,null,908);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,909);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,910);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'안녕하세요?','반가워요',to_date('22/06/01','RR/MM/DD'),null,null,911);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다.','글 내용입니다',to_date('22/06/01','RR/MM/DD'),null,null,912);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목이었다','제목이 있었어용',to_date('22/06/01','RR/MM/DD'),null,null,913);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'행복한 6월입니다','잘 지내시죠?',to_date('22/06/01','RR/MM/DD'),null,null,914);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다','벚꽃엔딩',to_date('22/06/01','RR/MM/DD'),null,null,915);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'감사합니다','ㅎㅇ',to_date('22/06/01','RR/MM/DD'),null,null,916);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'ㄱㄱ','ㄱㄱ',to_date('22/06/01','RR/MM/DD'),null,null,917);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,918);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,919);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'안녕하세요?','반가워요',to_date('22/06/01','RR/MM/DD'),null,null,920);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목이었다','제목이 있었어용',to_date('22/06/01','RR/MM/DD'),null,null,921);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'행복한 6월입니다','잘 지내시죠?',to_date('22/06/01','RR/MM/DD'),null,null,922);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다','벚꽃엔딩',to_date('22/06/01','RR/MM/DD'),null,null,923);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'감사합니다','ㅎㅇ',to_date('22/06/01','RR/MM/DD'),null,null,924);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'ㄱㄱ','ㄱㄱ',to_date('22/06/01','RR/MM/DD'),null,null,925);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다.','글 내용입니다',to_date('22/06/01','RR/MM/DD'),null,null,926);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,927);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,928);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'안녕하세요?','반가워요',to_date('22/06/01','RR/MM/DD'),null,null,929);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목이었다','제목이 있었어용',to_date('22/06/01','RR/MM/DD'),null,null,930);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'행복한 6월입니다','잘 지내시죠?',to_date('22/06/01','RR/MM/DD'),null,null,931);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다','벚꽃엔딩',to_date('22/06/01','RR/MM/DD'),null,null,932);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'감사합니다','ㅎㅇ',to_date('22/06/01','RR/MM/DD'),null,null,933);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'ㄱㄱ','ㄱㄱ',to_date('22/06/01','RR/MM/DD'),null,null,934);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다.','글 내용입니다',to_date('22/06/01','RR/MM/DD'),null,null,935);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,936);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,937);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'안녕하세요?','반가워요',to_date('22/06/01','RR/MM/DD'),null,null,938);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목이었다','제목이 있었어용',to_date('22/06/01','RR/MM/DD'),null,null,939);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'행복한 6월입니다','잘 지내시죠?',to_date('22/06/01','RR/MM/DD'),null,null,940);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다','벚꽃엔딩',to_date('22/06/01','RR/MM/DD'),null,null,941);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'감사합니다','ㅎㅇ',to_date('22/06/01','RR/MM/DD'),null,null,942);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'ㄱㄱ','ㄱㄱ',to_date('22/06/01','RR/MM/DD'),null,null,943);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다.','글 내용입니다',to_date('22/06/01','RR/MM/DD'),null,null,944);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,945);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,946);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'안녕하세요?','반가워요',to_date('22/06/01','RR/MM/DD'),null,null,947);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다.','글 내용입니다',to_date('22/06/01','RR/MM/DD'),null,null,948);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목이었다','제목이 있었어용',to_date('22/06/01','RR/MM/DD'),null,null,949);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'행복한 6월입니다','잘 지내시죠?',to_date('22/06/01','RR/MM/DD'),null,null,950);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다','벚꽃엔딩',to_date('22/06/01','RR/MM/DD'),null,null,951);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'감사합니다','ㅎㅇ',to_date('22/06/01','RR/MM/DD'),null,null,952);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'ㄱㄱ','ㄱㄱ',to_date('22/06/01','RR/MM/DD'),null,null,953);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,954);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,955);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'안녕하세요?','반가워요',to_date('22/06/01','RR/MM/DD'),null,null,956);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목이었다','제목이 있었어용',to_date('22/06/01','RR/MM/DD'),null,null,957);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'행복한 6월입니다','잘 지내시죠?',to_date('22/06/01','RR/MM/DD'),null,null,958);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다','벚꽃엔딩',to_date('22/06/01','RR/MM/DD'),null,null,959);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'감사합니다','ㅎㅇ',to_date('22/06/01','RR/MM/DD'),null,null,960);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'ㄱㄱ','ㄱㄱ',to_date('22/06/01','RR/MM/DD'),null,null,961);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다.','글 내용입니다',to_date('22/06/01','RR/MM/DD'),null,null,962);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,963);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,964);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'안녕하세요?','반가워요',to_date('22/06/01','RR/MM/DD'),null,null,965);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목이었다','제목이 있었어용',to_date('22/06/01','RR/MM/DD'),null,null,966);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'행복한 6월입니다','잘 지내시죠?',to_date('22/06/01','RR/MM/DD'),null,null,967);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다','벚꽃엔딩',to_date('22/06/01','RR/MM/DD'),null,null,968);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'감사합니다','ㅎㅇ',to_date('22/06/01','RR/MM/DD'),null,null,969);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'ㄱㄱ','ㄱㄱ',to_date('22/06/01','RR/MM/DD'),null,null,970);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다.','글 내용입니다',to_date('22/06/01','RR/MM/DD'),null,null,971);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,972);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,973);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'안녕하세요?','반가워요',to_date('22/06/01','RR/MM/DD'),null,null,974);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목이었다','제목이 있었어용',to_date('22/06/01','RR/MM/DD'),null,null,975);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'행복한 6월입니다','잘 지내시죠?',to_date('22/06/01','RR/MM/DD'),null,null,976);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다','벚꽃엔딩',to_date('22/06/01','RR/MM/DD'),null,null,977);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'감사합니다','ㅎㅇ',to_date('22/06/01','RR/MM/DD'),null,null,978);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'ㄱㄱ','ㄱㄱ',to_date('22/06/01','RR/MM/DD'),null,null,979);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다.','글 내용입니다',to_date('22/06/01','RR/MM/DD'),null,null,980);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,981);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,982);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'안녕하세요?','반가워요',to_date('22/06/01','RR/MM/DD'),null,null,983);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다.','글 내용입니다',to_date('22/06/01','RR/MM/DD'),null,null,984);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목이었다','제목이 있었어용',to_date('22/06/01','RR/MM/DD'),null,null,985);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'행복한 6월입니다','잘 지내시죠?',to_date('22/06/01','RR/MM/DD'),null,null,986);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다','벚꽃엔딩',to_date('22/06/01','RR/MM/DD'),null,null,987);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'감사합니다','ㅎㅇ',to_date('22/06/01','RR/MM/DD'),null,null,988);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'ㄱㄱ','ㄱㄱ',to_date('22/06/01','RR/MM/DD'),null,null,989);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,990);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,991);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'안녕하세요?','반가워요',to_date('22/06/01','RR/MM/DD'),null,null,992);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목이었다','제목이 있었어용',to_date('22/06/01','RR/MM/DD'),null,null,993);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'행복한 6월입니다','잘 지내시죠?',to_date('22/06/01','RR/MM/DD'),null,null,994);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다','벚꽃엔딩',to_date('22/06/01','RR/MM/DD'),null,null,995);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'감사합니다','ㅎㅇ',to_date('22/06/01','RR/MM/DD'),null,null,996);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'ㄱㄱ','ㄱㄱ',to_date('22/06/01','RR/MM/DD'),null,null,997);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다.','글 내용입니다',to_date('22/06/01','RR/MM/DD'),null,null,998);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,999);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,1000);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'안녕하세요?','반가워요',to_date('22/06/01','RR/MM/DD'),null,null,1001);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목이었다','제목이 있었어용',to_date('22/06/01','RR/MM/DD'),null,null,1002);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'행복한 6월입니다','잘 지내시죠?',to_date('22/06/01','RR/MM/DD'),null,null,1003);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다','벚꽃엔딩',to_date('22/06/01','RR/MM/DD'),null,null,1004);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'감사합니다','ㅎㅇ',to_date('22/06/01','RR/MM/DD'),null,null,1005);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'ㄱㄱ','ㄱㄱ',to_date('22/06/01','RR/MM/DD'),null,null,1006);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다.','글 내용입니다',to_date('22/06/01','RR/MM/DD'),null,null,1007);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,1008);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,1009);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'안녕하세요?','반가워요',to_date('22/06/01','RR/MM/DD'),null,null,1010);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목이었다','제목이 있었어용',to_date('22/06/01','RR/MM/DD'),null,null,1011);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'행복한 6월입니다','잘 지내시죠?',to_date('22/06/01','RR/MM/DD'),null,null,1012);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다','벚꽃엔딩',to_date('22/06/01','RR/MM/DD'),null,null,1013);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'감사합니다','ㅎㅇ',to_date('22/06/01','RR/MM/DD'),null,null,1014);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'ㄱㄱ','ㄱㄱ',to_date('22/06/01','RR/MM/DD'),null,null,1015);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다.','글 내용입니다',to_date('22/06/01','RR/MM/DD'),null,null,1016);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,1017);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,1018);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'안녕하세요?','반가워요',to_date('22/06/01','RR/MM/DD'),null,null,1019);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다.','글 내용입니다',to_date('22/06/01','RR/MM/DD'),null,null,1020);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목이었다','제목이 있었어용',to_date('22/06/01','RR/MM/DD'),null,null,1021);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'행복한 6월입니다','잘 지내시죠?',to_date('22/06/01','RR/MM/DD'),null,null,1022);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다','벚꽃엔딩',to_date('22/06/01','RR/MM/DD'),null,null,1023);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'감사합니다','ㅎㅇ',to_date('22/06/01','RR/MM/DD'),null,null,1024);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'ㄱㄱ','ㄱㄱ',to_date('22/06/01','RR/MM/DD'),null,null,1025);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,1026);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,1027);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'안녕하세요?','반가워요',to_date('22/06/01','RR/MM/DD'),null,null,1028);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목이었다','제목이 있었어용',to_date('22/06/01','RR/MM/DD'),null,null,1029);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'행복한 6월입니다','잘 지내시죠?',to_date('22/06/01','RR/MM/DD'),null,null,1030);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다','벚꽃엔딩',to_date('22/06/01','RR/MM/DD'),null,null,1031);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'감사합니다','ㅎㅇ',to_date('22/06/01','RR/MM/DD'),null,null,1032);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'ㄱㄱ','ㄱㄱ',to_date('22/06/01','RR/MM/DD'),null,null,1033);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다.','글 내용입니다',to_date('22/06/01','RR/MM/DD'),null,null,1034);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,1035);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,1036);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'안녕하세요?','반가워요',to_date('22/06/01','RR/MM/DD'),null,null,1037);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목이었다','제목이 있었어용',to_date('22/06/01','RR/MM/DD'),null,null,1038);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'행복한 6월입니다','잘 지내시죠?',to_date('22/06/01','RR/MM/DD'),null,null,1039);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다','벚꽃엔딩',to_date('22/06/01','RR/MM/DD'),null,null,1040);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'감사합니다','ㅎㅇ',to_date('22/06/01','RR/MM/DD'),null,null,1041);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'ㄱㄱ','ㄱㄱ',to_date('22/06/01','RR/MM/DD'),null,null,1042);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다.','글 내용입니다',to_date('22/06/01','RR/MM/DD'),null,null,1043);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,1044);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,1045);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'안녕하세요?','반가워요',to_date('22/06/01','RR/MM/DD'),null,null,1046);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목이었다','제목이 있었어용',to_date('22/06/01','RR/MM/DD'),null,null,1047);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'행복한 6월입니다','잘 지내시죠?',to_date('22/06/01','RR/MM/DD'),null,null,1048);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다','벚꽃엔딩',to_date('22/06/01','RR/MM/DD'),null,null,1049);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'감사합니다','ㅎㅇ',to_date('22/06/01','RR/MM/DD'),null,null,1050);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'ㄱㄱ','ㄱㄱ',to_date('22/06/01','RR/MM/DD'),null,null,1051);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다.','글 내용입니다',to_date('22/06/01','RR/MM/DD'),null,null,1052);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,1053);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,1054);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'안녕하세요?','반가워요',to_date('22/06/01','RR/MM/DD'),null,null,1055);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다.','글 내용입니다',to_date('22/06/01','RR/MM/DD'),null,null,1056);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목이었다','제목이 있었어용',to_date('22/06/01','RR/MM/DD'),null,null,1057);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'행복한 6월입니다','잘 지내시죠?',to_date('22/06/01','RR/MM/DD'),null,null,1058);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다','벚꽃엔딩',to_date('22/06/01','RR/MM/DD'),null,null,1059);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'감사합니다','ㅎㅇ',to_date('22/06/01','RR/MM/DD'),null,null,1060);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'ㄱㄱ','ㄱㄱ',to_date('22/06/01','RR/MM/DD'),null,null,1061);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,1062);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,1063);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'안녕하세요?','반가워요',to_date('22/06/01','RR/MM/DD'),null,null,1064);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목이었다','제목이 있었어용',to_date('22/06/01','RR/MM/DD'),null,null,1065);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'행복한 6월입니다','잘 지내시죠?',to_date('22/06/01','RR/MM/DD'),null,null,1066);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다','벚꽃엔딩',to_date('22/06/01','RR/MM/DD'),null,null,1067);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'감사합니다','ㅎㅇ',to_date('22/06/01','RR/MM/DD'),null,null,1068);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'ㄱㄱ','ㄱㄱ',to_date('22/06/01','RR/MM/DD'),null,null,1069);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다.','글 내용입니다',to_date('22/06/01','RR/MM/DD'),null,null,1070);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,1071);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,1072);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'안녕하세요?','반가워요',to_date('22/06/01','RR/MM/DD'),null,null,1073);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목이었다','제목이 있었어용',to_date('22/06/01','RR/MM/DD'),null,null,1074);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'행복한 6월입니다','잘 지내시죠?',to_date('22/06/01','RR/MM/DD'),null,null,1075);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다','벚꽃엔딩',to_date('22/06/01','RR/MM/DD'),null,null,1076);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'감사합니다','ㅎㅇ',to_date('22/06/01','RR/MM/DD'),null,null,1077);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'ㄱㄱ','ㄱㄱ',to_date('22/06/01','RR/MM/DD'),null,null,1078);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다.','글 내용입니다',to_date('22/06/01','RR/MM/DD'),null,null,1079);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,1080);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,1081);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'안녕하세요?','반가워요',to_date('22/06/01','RR/MM/DD'),null,null,1082);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목이었다','제목이 있었어용',to_date('22/06/01','RR/MM/DD'),null,null,1083);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'행복한 6월입니다','잘 지내시죠?',to_date('22/06/01','RR/MM/DD'),null,null,1084);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다','벚꽃엔딩',to_date('22/06/01','RR/MM/DD'),null,null,1085);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'감사합니다','ㅎㅇ',to_date('22/06/01','RR/MM/DD'),null,null,1086);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'ㄱㄱ','ㄱㄱ',to_date('22/06/01','RR/MM/DD'),null,null,1087);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다.','글 내용입니다',to_date('22/06/01','RR/MM/DD'),null,null,1088);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,1089);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,1090);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'안녕하세요?','반가워요',to_date('22/06/01','RR/MM/DD'),null,null,1091);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다.','글 내용입니다',to_date('22/06/01','RR/MM/DD'),null,null,1092);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목이었다','제목이 있었어용',to_date('22/06/01','RR/MM/DD'),null,null,1093);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'행복한 6월입니다','잘 지내시죠?',to_date('22/06/01','RR/MM/DD'),null,null,1094);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다','벚꽃엔딩',to_date('22/06/01','RR/MM/DD'),null,null,1095);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'감사합니다','ㅎㅇ',to_date('22/06/01','RR/MM/DD'),null,null,1096);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'ㄱㄱ','ㄱㄱ',to_date('22/06/01','RR/MM/DD'),null,null,1097);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,1098);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,1099);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'안녕하세요?','반가워요',to_date('22/06/01','RR/MM/DD'),null,null,1100);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목이었다','제목이 있었어용',to_date('22/06/01','RR/MM/DD'),null,null,1101);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'행복한 6월입니다','잘 지내시죠?',to_date('22/06/01','RR/MM/DD'),null,null,1102);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다','벚꽃엔딩',to_date('22/06/01','RR/MM/DD'),null,null,1103);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'감사합니다','ㅎㅇ',to_date('22/06/01','RR/MM/DD'),null,null,1104);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'ㄱㄱ','ㄱㄱ',to_date('22/06/01','RR/MM/DD'),null,null,1105);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다.','글 내용입니다',to_date('22/06/01','RR/MM/DD'),null,null,1106);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,1107);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,1108);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'안녕하세요?','반가워요',to_date('22/06/01','RR/MM/DD'),null,null,1109);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목이었다','제목이 있었어용',to_date('22/06/01','RR/MM/DD'),null,null,1110);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'행복한 6월입니다','잘 지내시죠?',to_date('22/06/01','RR/MM/DD'),null,null,1111);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다','벚꽃엔딩',to_date('22/06/01','RR/MM/DD'),null,null,1112);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'감사합니다','ㅎㅇ',to_date('22/06/01','RR/MM/DD'),null,null,1113);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'ㄱㄱ','ㄱㄱ',to_date('22/06/01','RR/MM/DD'),null,null,1114);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다.','글 내용입니다',to_date('22/06/01','RR/MM/DD'),null,null,1115);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,1116);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,1117);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'안녕하세요?','반가워요',to_date('22/06/01','RR/MM/DD'),null,null,1118);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목이었다','제목이 있었어용',to_date('22/06/01','RR/MM/DD'),null,null,1119);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'행복한 6월입니다','잘 지내시죠?',to_date('22/06/01','RR/MM/DD'),null,null,1120);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다','벚꽃엔딩',to_date('22/06/01','RR/MM/DD'),null,null,1121);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'감사합니다','ㅎㅇ',to_date('22/06/01','RR/MM/DD'),null,null,1122);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'ㄱㄱ','ㄱㄱ',to_date('22/06/01','RR/MM/DD'),null,null,1123);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다.','글 내용입니다',to_date('22/06/01','RR/MM/DD'),null,null,1124);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,1125);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,1126);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'안녕하세요?','반가워요',to_date('22/06/01','RR/MM/DD'),null,null,1127);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다.','글 내용입니다',to_date('22/06/01','RR/MM/DD'),null,null,1128);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목이었다','제목이 있었어용',to_date('22/06/01','RR/MM/DD'),null,null,1129);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'행복한 6월입니다','잘 지내시죠?',to_date('22/06/01','RR/MM/DD'),null,null,1130);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다','벚꽃엔딩',to_date('22/06/01','RR/MM/DD'),null,null,1131);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'감사합니다','ㅎㅇ',to_date('22/06/01','RR/MM/DD'),null,null,1132);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'ㄱㄱ','ㄱㄱ',to_date('22/06/01','RR/MM/DD'),null,null,1133);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,1134);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,1135);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'안녕하세요?','반가워요',to_date('22/06/01','RR/MM/DD'),null,null,1136);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목이었다','제목이 있었어용',to_date('22/06/01','RR/MM/DD'),null,null,1137);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'행복한 6월입니다','잘 지내시죠?',to_date('22/06/01','RR/MM/DD'),null,null,1138);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다','벚꽃엔딩',to_date('22/06/01','RR/MM/DD'),null,null,1139);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'감사합니다','ㅎㅇ',to_date('22/06/01','RR/MM/DD'),null,null,1140);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'ㄱㄱ','ㄱㄱ',to_date('22/06/01','RR/MM/DD'),null,null,1141);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다.','글 내용입니다',to_date('22/06/01','RR/MM/DD'),null,null,1142);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,1143);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,1144);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'안녕하세요?','반가워요',to_date('22/06/01','RR/MM/DD'),null,null,1145);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목이었다','제목이 있었어용',to_date('22/06/01','RR/MM/DD'),null,null,1146);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'행복한 6월입니다','잘 지내시죠?',to_date('22/06/01','RR/MM/DD'),null,null,1147);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다','벚꽃엔딩',to_date('22/06/01','RR/MM/DD'),null,null,1148);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'감사합니다','ㅎㅇ',to_date('22/06/01','RR/MM/DD'),null,null,1149);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'ㄱㄱ','ㄱㄱ',to_date('22/06/01','RR/MM/DD'),null,null,1150);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다.','글 내용입니다',to_date('22/06/01','RR/MM/DD'),null,null,1151);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,1152);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,1153);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'안녕하세요?','반가워요',to_date('22/06/01','RR/MM/DD'),null,null,1154);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목이었다','제목이 있었어용',to_date('22/06/01','RR/MM/DD'),null,null,1155);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'행복한 6월입니다','잘 지내시죠?',to_date('22/06/01','RR/MM/DD'),null,null,1156);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다','벚꽃엔딩',to_date('22/06/01','RR/MM/DD'),null,null,1157);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'감사합니다','ㅎㅇ',to_date('22/06/01','RR/MM/DD'),null,null,1158);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'ㄱㄱ','ㄱㄱ',to_date('22/06/01','RR/MM/DD'),null,null,1159);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다.','글 내용입니다',to_date('22/06/01','RR/MM/DD'),null,null,1160);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,1161);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,1162);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'안녕하세요?','반가워요',to_date('22/06/01','RR/MM/DD'),null,null,1163);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다.','글 내용입니다',to_date('22/06/01','RR/MM/DD'),null,null,1164);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다.','글 내용입니다',to_date('22/06/01','RR/MM/DD'),null,null,1165);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'안녕하세요?','반가워요',to_date('22/06/01','RR/MM/DD'),null,null,1166);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목이었다','제목이 있었어용',to_date('22/06/01','RR/MM/DD'),null,null,1167);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'행복한 6월입니다','잘 지내시죠?',to_date('22/06/01','RR/MM/DD'),null,null,1168);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다','벚꽃엔딩',to_date('22/06/01','RR/MM/DD'),null,null,1169);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'감사합니다','ㅎㅇ',to_date('22/06/01','RR/MM/DD'),null,null,1170);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'ㄱㄱ','ㄱㄱ',to_date('22/06/01','RR/MM/DD'),null,null,1171);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,1172);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,1173);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'안녕하세요?','반가워요',to_date('22/06/01','RR/MM/DD'),null,null,1174);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목이었다','제목이 있었어용',to_date('22/06/01','RR/MM/DD'),null,null,1175);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'행복한 6월입니다','잘 지내시죠?',to_date('22/06/01','RR/MM/DD'),null,null,1176);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다','벚꽃엔딩',to_date('22/06/01','RR/MM/DD'),null,null,1177);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'감사합니다','ㅎㅇ',to_date('22/06/01','RR/MM/DD'),null,null,1178);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'ㄱㄱ','ㄱㄱ',to_date('22/06/01','RR/MM/DD'),null,null,1179);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다.','글 내용입니다',to_date('22/06/01','RR/MM/DD'),null,null,1180);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,1181);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,1182);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'안녕하세요?','반가워요',to_date('22/06/01','RR/MM/DD'),null,null,1183);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목이었다','제목이 있었어용',to_date('22/06/01','RR/MM/DD'),null,null,1184);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'행복한 6월입니다','잘 지내시죠?',to_date('22/06/01','RR/MM/DD'),null,null,1185);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다','벚꽃엔딩',to_date('22/06/01','RR/MM/DD'),null,null,1186);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'감사합니다','ㅎㅇ',to_date('22/06/01','RR/MM/DD'),null,null,1187);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'ㄱㄱ','ㄱㄱ',to_date('22/06/01','RR/MM/DD'),null,null,1188);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다.','글 내용입니다',to_date('22/06/01','RR/MM/DD'),null,null,1189);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,1190);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,1191);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'안녕하세요?','반가워요',to_date('22/06/01','RR/MM/DD'),null,null,1192);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목이었다','제목이 있었어용',to_date('22/06/01','RR/MM/DD'),null,null,1193);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'행복한 6월입니다','잘 지내시죠?',to_date('22/06/01','RR/MM/DD'),null,null,1194);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다','벚꽃엔딩',to_date('22/06/01','RR/MM/DD'),null,null,1195);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'감사합니다','ㅎㅇ',to_date('22/06/01','RR/MM/DD'),null,null,1196);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'ㄱㄱ','ㄱㄱ',to_date('22/06/01','RR/MM/DD'),null,null,1197);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다.','글 내용입니다',to_date('22/06/01','RR/MM/DD'),null,null,1198);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,1199);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,1200);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'안녕하세요?','반가워요',to_date('22/06/01','RR/MM/DD'),null,null,1201);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다.','글 내용입니다',to_date('22/06/01','RR/MM/DD'),null,null,1202);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목이었다','제목이 있었어용',to_date('22/06/01','RR/MM/DD'),null,null,1203);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'행복한 6월입니다','잘 지내시죠?',to_date('22/06/01','RR/MM/DD'),null,null,1204);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다','벚꽃엔딩',to_date('22/06/01','RR/MM/DD'),null,null,1205);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'감사합니다','ㅎㅇ',to_date('22/06/01','RR/MM/DD'),null,null,1206);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'ㄱㄱ','ㄱㄱ',to_date('22/06/01','RR/MM/DD'),null,null,1207);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,1208);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,1209);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'안녕하세요?','반가워요',to_date('22/06/01','RR/MM/DD'),null,null,1210);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목이었다','제목이 있었어용',to_date('22/06/01','RR/MM/DD'),null,null,1211);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'행복한 6월입니다','잘 지내시죠?',to_date('22/06/01','RR/MM/DD'),null,null,1212);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다','벚꽃엔딩',to_date('22/06/01','RR/MM/DD'),null,null,1213);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'감사합니다','ㅎㅇ',to_date('22/06/01','RR/MM/DD'),null,null,1214);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'ㄱㄱ','ㄱㄱ',to_date('22/06/01','RR/MM/DD'),null,null,1215);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다.','글 내용입니다',to_date('22/06/01','RR/MM/DD'),null,null,1216);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,1217);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,1218);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'안녕하세요?','반가워요',to_date('22/06/01','RR/MM/DD'),null,null,1219);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목이었다','제목이 있었어용',to_date('22/06/01','RR/MM/DD'),null,null,1220);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'행복한 6월입니다','잘 지내시죠?',to_date('22/06/01','RR/MM/DD'),null,null,1221);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다','벚꽃엔딩',to_date('22/06/01','RR/MM/DD'),null,null,1222);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'감사합니다','ㅎㅇ',to_date('22/06/01','RR/MM/DD'),null,null,1223);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'ㄱㄱ','ㄱㄱ',to_date('22/06/01','RR/MM/DD'),null,null,1224);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다.','글 내용입니다',to_date('22/06/01','RR/MM/DD'),null,null,1225);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,1226);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,1227);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'안녕하세요?','반가워요',to_date('22/06/01','RR/MM/DD'),null,null,1228);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목이었다','제목이 있었어용',to_date('22/06/01','RR/MM/DD'),null,null,1229);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'행복한 6월입니다','잘 지내시죠?',to_date('22/06/01','RR/MM/DD'),null,null,1230);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다','벚꽃엔딩',to_date('22/06/01','RR/MM/DD'),null,null,1231);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'감사합니다','ㅎㅇ',to_date('22/06/01','RR/MM/DD'),null,null,1232);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'ㄱㄱ','ㄱㄱ',to_date('22/06/01','RR/MM/DD'),null,null,1233);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다.','글 내용입니다',to_date('22/06/01','RR/MM/DD'),null,null,1234);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,1235);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,1236);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'안녕하세요?','반가워요',to_date('22/06/01','RR/MM/DD'),null,null,1237);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다.','글 내용입니다',to_date('22/06/01','RR/MM/DD'),null,null,1238);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목이었다','제목이 있었어용',to_date('22/06/01','RR/MM/DD'),null,null,1239);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'행복한 6월입니다','잘 지내시죠?',to_date('22/06/01','RR/MM/DD'),null,null,1240);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다','벚꽃엔딩',to_date('22/06/01','RR/MM/DD'),null,null,1241);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'감사합니다','ㅎㅇ',to_date('22/06/01','RR/MM/DD'),null,null,1242);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'ㄱㄱ','ㄱㄱ',to_date('22/06/01','RR/MM/DD'),null,null,1243);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,1244);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,1245);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'안녕하세요?','반가워요',to_date('22/06/01','RR/MM/DD'),null,null,1246);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목이었다','제목이 있었어용',to_date('22/06/01','RR/MM/DD'),null,null,1247);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'행복한 6월입니다','잘 지내시죠?',to_date('22/06/01','RR/MM/DD'),null,null,1248);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다','벚꽃엔딩',to_date('22/06/01','RR/MM/DD'),null,null,1249);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'감사합니다','ㅎㅇ',to_date('22/06/01','RR/MM/DD'),null,null,1250);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'ㄱㄱ','ㄱㄱ',to_date('22/06/01','RR/MM/DD'),null,null,1251);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다.','글 내용입니다',to_date('22/06/01','RR/MM/DD'),null,null,1252);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,1253);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,1254);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'안녕하세요?','반가워요',to_date('22/06/01','RR/MM/DD'),null,null,1255);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목이었다','제목이 있었어용',to_date('22/06/01','RR/MM/DD'),null,null,1256);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'행복한 6월입니다','잘 지내시죠?',to_date('22/06/01','RR/MM/DD'),null,null,1257);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다','벚꽃엔딩',to_date('22/06/01','RR/MM/DD'),null,null,1258);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'감사합니다','ㅎㅇ',to_date('22/06/01','RR/MM/DD'),null,null,1259);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'ㄱㄱ','ㄱㄱ',to_date('22/06/01','RR/MM/DD'),null,null,1260);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다.','글 내용입니다',to_date('22/06/01','RR/MM/DD'),null,null,1261);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,1262);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,1263);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'안녕하세요?','반가워요',to_date('22/06/01','RR/MM/DD'),null,null,1264);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목이었다','제목이 있었어용',to_date('22/06/01','RR/MM/DD'),null,null,1265);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'행복한 6월입니다','잘 지내시죠?',to_date('22/06/01','RR/MM/DD'),null,null,1266);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다','벚꽃엔딩',to_date('22/06/01','RR/MM/DD'),null,null,1267);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'감사합니다','ㅎㅇ',to_date('22/06/01','RR/MM/DD'),null,null,1268);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'ㄱㄱ','ㄱㄱ',to_date('22/06/01','RR/MM/DD'),null,null,1269);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다.','글 내용입니다',to_date('22/06/01','RR/MM/DD'),null,null,1270);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,1271);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,1272);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'안녕하세요?','반가워요',to_date('22/06/01','RR/MM/DD'),null,null,1273);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다.','글 내용입니다',to_date('22/06/01','RR/MM/DD'),null,null,1274);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목이었다','제목이 있었어용',to_date('22/06/01','RR/MM/DD'),null,null,1275);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'행복한 6월입니다','잘 지내시죠?',to_date('22/06/01','RR/MM/DD'),null,null,1276);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다','벚꽃엔딩',to_date('22/06/01','RR/MM/DD'),null,null,1277);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'감사합니다','ㅎㅇ',to_date('22/06/01','RR/MM/DD'),null,null,1278);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'ㄱㄱ','ㄱㄱ',to_date('22/06/01','RR/MM/DD'),null,null,1279);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,1280);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,1281);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'안녕하세요?','반가워요',to_date('22/06/01','RR/MM/DD'),null,null,1282);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목이었다','제목이 있었어용',to_date('22/06/01','RR/MM/DD'),null,null,1283);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'행복한 6월입니다','잘 지내시죠?',to_date('22/06/01','RR/MM/DD'),null,null,1284);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다','벚꽃엔딩',to_date('22/06/01','RR/MM/DD'),null,null,1285);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'감사합니다','ㅎㅇ',to_date('22/06/01','RR/MM/DD'),null,null,1286);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'ㄱㄱ','ㄱㄱ',to_date('22/06/01','RR/MM/DD'),null,null,1287);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다.','글 내용입니다',to_date('22/06/01','RR/MM/DD'),null,null,1288);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,1289);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,1290);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'안녕하세요?','반가워요',to_date('22/06/01','RR/MM/DD'),null,null,1291);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목이었다','제목이 있었어용',to_date('22/06/01','RR/MM/DD'),null,null,1292);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'행복한 6월입니다','잘 지내시죠?',to_date('22/06/01','RR/MM/DD'),null,null,1293);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다','벚꽃엔딩',to_date('22/06/01','RR/MM/DD'),null,null,1294);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'감사합니다','ㅎㅇ',to_date('22/06/01','RR/MM/DD'),null,null,1295);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'ㄱㄱ','ㄱㄱ',to_date('22/06/01','RR/MM/DD'),null,null,1296);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다.','글 내용입니다',to_date('22/06/01','RR/MM/DD'),null,null,1297);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,1298);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,1299);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'안녕하세요?','반가워요',to_date('22/06/01','RR/MM/DD'),null,null,1300);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목이었다','제목이 있었어용',to_date('22/06/01','RR/MM/DD'),null,null,1301);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'행복한 6월입니다','잘 지내시죠?',to_date('22/06/01','RR/MM/DD'),null,null,1302);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다','벚꽃엔딩',to_date('22/06/01','RR/MM/DD'),null,null,1303);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'감사합니다','ㅎㅇ',to_date('22/06/01','RR/MM/DD'),null,null,1304);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'ㄱㄱ','ㄱㄱ',to_date('22/06/01','RR/MM/DD'),null,null,1305);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다.','글 내용입니다',to_date('22/06/01','RR/MM/DD'),null,null,1306);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,1307);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,1308);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다.','글 내용입니다',to_date('22/06/01','RR/MM/DD'),null,null,1309);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목이었다','제목이 있었어용',to_date('22/06/01','RR/MM/DD'),null,null,1310);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'행복한 6월입니다','잘 지내시죠?',to_date('22/06/01','RR/MM/DD'),null,null,1311);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'행복한 6월입니다','잘 지내시죠?',to_date('22/06/01','RR/MM/DD'),null,null,1312);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다','벚꽃엔딩',to_date('22/06/01','RR/MM/DD'),null,null,1313);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다','벚꽃엔딩',to_date('22/06/01','RR/MM/DD'),null,null,1314);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'감사합니다','ㅎㅇ',to_date('22/06/01','RR/MM/DD'),null,null,1315);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'ㄱㄱ','ㄱㄱ',to_date('22/06/01','RR/MM/DD'),null,null,1316);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,1317);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,1318);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'안녕하세요?','반가워요',to_date('22/06/01','RR/MM/DD'),null,null,1319);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다','벚꽃엔딩',to_date('22/06/01','RR/MM/DD'),null,null,2192);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'감사합니다','ㅎㅇ',to_date('22/06/01','RR/MM/DD'),null,null,2193);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'ㄱㄱ','ㄱㄱ',to_date('22/06/01','RR/MM/DD'),null,null,2194);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다.','글 내용입니다',to_date('22/06/01','RR/MM/DD'),null,null,2195);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,2196);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,2197);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'안녕하세요?','반가워요',to_date('22/06/01','RR/MM/DD'),null,null,2198);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목이었다','제목이 있었어용',to_date('22/06/01','RR/MM/DD'),null,null,2199);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'행복한 6월입니다','잘 지내시죠?',to_date('22/06/01','RR/MM/DD'),null,null,2200);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다','벚꽃엔딩',to_date('22/06/01','RR/MM/DD'),null,null,2201);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'감사합니다','ㅎㅇ',to_date('22/06/01','RR/MM/DD'),null,null,2202);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'ㄱㄱ','ㄱㄱ',to_date('22/06/01','RR/MM/DD'),null,null,2203);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다.','글 내용입니다',to_date('22/06/01','RR/MM/DD'),null,null,2204);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,2205);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,2206);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'안녕하세요?','반가워요',to_date('22/06/01','RR/MM/DD'),null,null,2207);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다.','글 내용입니다',to_date('22/06/01','RR/MM/DD'),null,null,2208);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목이었다','제목이 있었어용',to_date('22/06/01','RR/MM/DD'),null,null,2209);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'행복한 6월입니다','잘 지내시죠?',to_date('22/06/01','RR/MM/DD'),null,null,2210);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다','벚꽃엔딩',to_date('22/06/01','RR/MM/DD'),null,null,2211);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'감사합니다','ㅎㅇ',to_date('22/06/01','RR/MM/DD'),null,null,2212);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'ㄱㄱ','ㄱㄱ',to_date('22/06/01','RR/MM/DD'),null,null,2213);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,2214);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,2215);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'안녕하세요?','반가워요',to_date('22/06/01','RR/MM/DD'),null,null,2216);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목이었다','제목이 있었어용',to_date('22/06/01','RR/MM/DD'),null,null,2217);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'행복한 6월입니다','잘 지내시죠?',to_date('22/06/01','RR/MM/DD'),null,null,2218);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다','벚꽃엔딩',to_date('22/06/01','RR/MM/DD'),null,null,2219);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'감사합니다','ㅎㅇ',to_date('22/06/01','RR/MM/DD'),null,null,2220);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'ㄱㄱ','ㄱㄱ',to_date('22/06/01','RR/MM/DD'),null,null,2221);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다.','글 내용입니다',to_date('22/06/01','RR/MM/DD'),null,null,2222);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,2223);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,2224);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'안녕하세요?','반가워요',to_date('22/06/01','RR/MM/DD'),null,null,2225);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목이었다','제목이 있었어용',to_date('22/06/01','RR/MM/DD'),null,null,2226);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'행복한 6월입니다','잘 지내시죠?',to_date('22/06/01','RR/MM/DD'),null,null,2227);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다','벚꽃엔딩',to_date('22/06/01','RR/MM/DD'),null,null,2228);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'감사합니다','ㅎㅇ',to_date('22/06/01','RR/MM/DD'),null,null,2229);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'ㄱㄱ','ㄱㄱ',to_date('22/06/01','RR/MM/DD'),null,null,2230);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다.','글 내용입니다',to_date('22/06/01','RR/MM/DD'),null,null,2231);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,2232);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,2233);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'안녕하세요?','반가워요',to_date('22/06/01','RR/MM/DD'),null,null,2234);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목이었다','제목이 있었어용',to_date('22/06/01','RR/MM/DD'),null,null,2235);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'행복한 6월입니다','잘 지내시죠?',to_date('22/06/01','RR/MM/DD'),null,null,2236);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다','벚꽃엔딩',to_date('22/06/01','RR/MM/DD'),null,null,2237);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'감사합니다','ㅎㅇ',to_date('22/06/01','RR/MM/DD'),null,null,2238);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'ㄱㄱ','ㄱㄱ',to_date('22/06/01','RR/MM/DD'),null,null,2239);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다.','글 내용입니다',to_date('22/06/01','RR/MM/DD'),null,null,2240);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,2241);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,2242);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'안녕하세요?','반가워요',to_date('22/06/01','RR/MM/DD'),null,null,2243);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다.','글 내용입니다',to_date('22/06/01','RR/MM/DD'),null,null,2244);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목이었다','제목이 있었어용',to_date('22/06/01','RR/MM/DD'),null,null,2245);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'행복한 6월입니다','잘 지내시죠?',to_date('22/06/01','RR/MM/DD'),null,null,2246);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다','벚꽃엔딩',to_date('22/06/01','RR/MM/DD'),null,null,2247);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'감사합니다','ㅎㅇ',to_date('22/06/01','RR/MM/DD'),null,null,2248);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'ㄱㄱ','ㄱㄱ',to_date('22/06/01','RR/MM/DD'),null,null,2249);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,2250);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,2251);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'안녕하세요?','반가워요',to_date('22/06/01','RR/MM/DD'),null,null,2252);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목이었다','제목이 있었어용',to_date('22/06/01','RR/MM/DD'),null,null,2253);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'행복한 6월입니다','잘 지내시죠?',to_date('22/06/01','RR/MM/DD'),null,null,2254);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다','벚꽃엔딩',to_date('22/06/01','RR/MM/DD'),null,null,2255);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'감사합니다','ㅎㅇ',to_date('22/06/01','RR/MM/DD'),null,null,2256);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'ㄱㄱ','ㄱㄱ',to_date('22/06/01','RR/MM/DD'),null,null,2257);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다.','글 내용입니다',to_date('22/06/01','RR/MM/DD'),null,null,2258);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,2259);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,2260);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'안녕하세요?','반가워요',to_date('22/06/01','RR/MM/DD'),null,null,2261);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목이었다','제목이 있었어용',to_date('22/06/01','RR/MM/DD'),null,null,2262);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'행복한 6월입니다','잘 지내시죠?',to_date('22/06/01','RR/MM/DD'),null,null,2263);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다','벚꽃엔딩',to_date('22/06/01','RR/MM/DD'),null,null,2264);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'감사합니다','ㅎㅇ',to_date('22/06/01','RR/MM/DD'),null,null,2265);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'ㄱㄱ','ㄱㄱ',to_date('22/06/01','RR/MM/DD'),null,null,2266);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다.','글 내용입니다',to_date('22/06/01','RR/MM/DD'),null,null,2267);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,2268);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,2269);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'안녕하세요?','반가워요',to_date('22/06/01','RR/MM/DD'),null,null,2270);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목이었다','제목이 있었어용',to_date('22/06/01','RR/MM/DD'),null,null,2271);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'행복한 6월입니다','잘 지내시죠?',to_date('22/06/01','RR/MM/DD'),null,null,2272);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다','벚꽃엔딩',to_date('22/06/01','RR/MM/DD'),null,null,2273);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'감사합니다','ㅎㅇ',to_date('22/06/01','RR/MM/DD'),null,null,2274);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'ㄱㄱ','ㄱㄱ',to_date('22/06/01','RR/MM/DD'),null,null,2275);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다.','글 내용입니다',to_date('22/06/01','RR/MM/DD'),null,null,2276);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,2277);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,2278);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'안녕하세요?','반가워요',to_date('22/06/01','RR/MM/DD'),null,null,2279);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다.','글 내용입니다',to_date('22/06/01','RR/MM/DD'),null,null,2280);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목이었다','제목이 있었어용',to_date('22/06/01','RR/MM/DD'),null,null,2281);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'행복한 6월입니다','잘 지내시죠?',to_date('22/06/01','RR/MM/DD'),null,null,2282);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다','벚꽃엔딩',to_date('22/06/01','RR/MM/DD'),null,null,2283);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'감사합니다','ㅎㅇ',to_date('22/06/01','RR/MM/DD'),null,null,2284);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'ㄱㄱ','ㄱㄱ',to_date('22/06/01','RR/MM/DD'),null,null,2285);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,2286);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,2287);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'안녕하세요?','반가워요',to_date('22/06/01','RR/MM/DD'),null,null,2288);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목이었다','제목이 있었어용',to_date('22/06/01','RR/MM/DD'),null,null,2289);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'행복한 6월입니다','잘 지내시죠?',to_date('22/06/01','RR/MM/DD'),null,null,2290);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다','벚꽃엔딩',to_date('22/06/01','RR/MM/DD'),null,null,2291);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'감사합니다','ㅎㅇ',to_date('22/06/01','RR/MM/DD'),null,null,2292);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'ㄱㄱ','ㄱㄱ',to_date('22/06/01','RR/MM/DD'),null,null,2293);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다.','글 내용입니다',to_date('22/06/01','RR/MM/DD'),null,null,2294);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,2295);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,2296);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'안녕하세요?','반가워요',to_date('22/06/01','RR/MM/DD'),null,null,2297);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목이었다','제목이 있었어용',to_date('22/06/01','RR/MM/DD'),null,null,2298);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'행복한 6월입니다','잘 지내시죠?',to_date('22/06/01','RR/MM/DD'),null,null,2299);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다','벚꽃엔딩',to_date('22/06/01','RR/MM/DD'),null,null,2300);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'감사합니다','ㅎㅇ',to_date('22/06/01','RR/MM/DD'),null,null,2301);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'ㄱㄱ','ㄱㄱ',to_date('22/06/01','RR/MM/DD'),null,null,2302);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다.','글 내용입니다',to_date('22/06/01','RR/MM/DD'),null,null,2303);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,2304);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,2305);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'안녕하세요?','반가워요',to_date('22/06/01','RR/MM/DD'),null,null,2306);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목이었다','제목이 있었어용',to_date('22/06/01','RR/MM/DD'),null,null,2307);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'행복한 6월입니다','잘 지내시죠?',to_date('22/06/01','RR/MM/DD'),null,null,2308);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다','벚꽃엔딩',to_date('22/06/01','RR/MM/DD'),null,null,2309);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'감사합니다','ㅎㅇ',to_date('22/06/01','RR/MM/DD'),null,null,2310);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'ㄱㄱ','ㄱㄱ',to_date('22/06/01','RR/MM/DD'),null,null,2311);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다.','글 내용입니다',to_date('22/06/01','RR/MM/DD'),null,null,2312);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,2313);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,2314);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'안녕하세요?','반가워요',to_date('22/06/01','RR/MM/DD'),null,null,2315);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'공지사항입니다','안녕하세요. 육육걸즈입니다. 항상 저희 쇼핑몰을 이용해주시는 회원님들께 감사 말씀 드립니다. 

육육걸즈 이용약관에 쿠폰에 대한 정책 개정이 아래와 같이 예정되어 있어 미리 안내 드립니다.



약관 개정 공지일 : 2022년 3월 17일(목)

개정 약관 적용일 : 2022년 3월 24일(목)



[변경내용요약]

‘쿠폰 발급 및 사용’ 관련 이용약관 수정



[정책 개정 사항] 

- 제17조의 2(쿠폰 발급 및 사용) 내용 추가 :

제17조의 2(쿠폰 발급 및 사용)

① “몰”은 회원에게 일정 금액 또는 일정비율을 할인 받을 수 있는 쿠폰을 발급할 수 있습니다. 쿠폰의 종류 및 내용과 발급여부 및 사용방법은 “몰”의 정책에 따라 변경될 수 있습니다.



제18조의 2(쿠폰 소멸) 내용 추가 :

제18조의 2(쿠폰 소멸)

① 쿠폰은 사전에 명시된 유효기간 내에 사용될 수 있으며, 유효기간이 경과하거나 회원 자격이 상실되면 소멸합니다. “몰”은 쿠폰의 발급시 및 쿠폰의 유효기간 만료 전 회원에게 통지합니다.



[안내 사항]

개정 공지기간 동안 개정약관에 대해 별도의 의사표시를 하지 않으신 경우 개정에 동의하신 것으로 간주됩니다.



앞으로도 회원님들의 즐거운 쇼핑을 위해 최선을 다하는 육육걸즈가 되겠습니다.

감사합니다.',to_date('22/06/02','RR/MM/DD'),null,null,2317);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'안녕하세요?','반가워요',to_date('22/06/01','RR/MM/DD'),null,null,1902);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목이었다','제목이 있었어용',to_date('22/06/01','RR/MM/DD'),null,null,1903);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'행복한 6월입니다','잘 지내시죠?',to_date('22/06/01','RR/MM/DD'),null,null,1904);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다','벚꽃엔딩',to_date('22/06/01','RR/MM/DD'),null,null,1905);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'감사합니다','ㅎㅇ',to_date('22/06/01','RR/MM/DD'),null,null,1906);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'ㄱㄱ','ㄱㄱ',to_date('22/06/01','RR/MM/DD'),null,null,1907);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다.','글 내용입니다',to_date('22/06/01','RR/MM/DD'),null,null,1908);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,1909);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,1910);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'안녕하세요?','반가워요',to_date('22/06/01','RR/MM/DD'),null,null,1911);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목이었다','제목이 있었어용',to_date('22/06/01','RR/MM/DD'),null,null,1912);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'행복한 6월입니다','잘 지내시죠?',to_date('22/06/01','RR/MM/DD'),null,null,1913);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다','벚꽃엔딩',to_date('22/06/01','RR/MM/DD'),null,null,1914);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'감사합니다','ㅎㅇ',to_date('22/06/01','RR/MM/DD'),null,null,1915);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'ㄱㄱ','ㄱㄱ',to_date('22/06/01','RR/MM/DD'),null,null,1916);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다.','글 내용입니다',to_date('22/06/01','RR/MM/DD'),null,null,1917);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,1918);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,1919);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'안녕하세요?','반가워요',to_date('22/06/01','RR/MM/DD'),null,null,1920);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다.','글 내용입니다',to_date('22/06/01','RR/MM/DD'),null,null,1921);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목이었다','제목이 있었어용',to_date('22/06/01','RR/MM/DD'),null,null,1922);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'행복한 6월입니다','잘 지내시죠?',to_date('22/06/01','RR/MM/DD'),null,null,1923);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다','벚꽃엔딩',to_date('22/06/01','RR/MM/DD'),null,null,1924);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'감사합니다','ㅎㅇ',to_date('22/06/01','RR/MM/DD'),null,null,1925);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'ㄱㄱ','ㄱㄱ',to_date('22/06/01','RR/MM/DD'),null,null,1926);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,1927);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,1928);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'안녕하세요?','반가워요',to_date('22/06/01','RR/MM/DD'),null,null,1929);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목이었다','제목이 있었어용',to_date('22/06/01','RR/MM/DD'),null,null,1930);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'행복한 6월입니다','잘 지내시죠?',to_date('22/06/01','RR/MM/DD'),null,null,1931);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다','벚꽃엔딩',to_date('22/06/01','RR/MM/DD'),null,null,1932);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'감사합니다','ㅎㅇ',to_date('22/06/01','RR/MM/DD'),null,null,1933);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'ㄱㄱ','ㄱㄱ',to_date('22/06/01','RR/MM/DD'),null,null,1934);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다.','글 내용입니다',to_date('22/06/01','RR/MM/DD'),null,null,1935);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,1936);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,1937);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'안녕하세요?','반가워요',to_date('22/06/01','RR/MM/DD'),null,null,1938);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목이었다','제목이 있었어용',to_date('22/06/01','RR/MM/DD'),null,null,1939);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'행복한 6월입니다','잘 지내시죠?',to_date('22/06/01','RR/MM/DD'),null,null,1940);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다','벚꽃엔딩',to_date('22/06/01','RR/MM/DD'),null,null,1941);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'감사합니다','ㅎㅇ',to_date('22/06/01','RR/MM/DD'),null,null,1942);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'ㄱㄱ','ㄱㄱ',to_date('22/06/01','RR/MM/DD'),null,null,1943);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다.','글 내용입니다',to_date('22/06/01','RR/MM/DD'),null,null,1944);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,1945);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,1946);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'안녕하세요?','반가워요',to_date('22/06/01','RR/MM/DD'),null,null,1947);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목이었다','제목이 있었어용',to_date('22/06/01','RR/MM/DD'),null,null,1948);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'행복한 6월입니다','잘 지내시죠?',to_date('22/06/01','RR/MM/DD'),null,null,1949);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다','벚꽃엔딩',to_date('22/06/01','RR/MM/DD'),null,null,1950);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'감사합니다','ㅎㅇ',to_date('22/06/01','RR/MM/DD'),null,null,1951);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'ㄱㄱ','ㄱㄱ',to_date('22/06/01','RR/MM/DD'),null,null,1952);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다.','글 내용입니다',to_date('22/06/01','RR/MM/DD'),null,null,1953);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,1954);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,1955);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'안녕하세요?','반가워요',to_date('22/06/01','RR/MM/DD'),null,null,1956);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다.','글 내용입니다',to_date('22/06/01','RR/MM/DD'),null,null,1957);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목이었다','제목이 있었어용',to_date('22/06/01','RR/MM/DD'),null,null,1958);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'행복한 6월입니다','잘 지내시죠?',to_date('22/06/01','RR/MM/DD'),null,null,1959);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다','벚꽃엔딩',to_date('22/06/01','RR/MM/DD'),null,null,1960);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'감사합니다','ㅎㅇ',to_date('22/06/01','RR/MM/DD'),null,null,1961);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'ㄱㄱ','ㄱㄱ',to_date('22/06/01','RR/MM/DD'),null,null,1962);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,1963);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,1964);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'안녕하세요?','반가워요',to_date('22/06/01','RR/MM/DD'),null,null,1965);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목이었다','제목이 있었어용',to_date('22/06/01','RR/MM/DD'),null,null,1966);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'행복한 6월입니다','잘 지내시죠?',to_date('22/06/01','RR/MM/DD'),null,null,1967);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다','벚꽃엔딩',to_date('22/06/01','RR/MM/DD'),null,null,1968);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'감사합니다','ㅎㅇ',to_date('22/06/01','RR/MM/DD'),null,null,1969);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'ㄱㄱ','ㄱㄱ',to_date('22/06/01','RR/MM/DD'),null,null,1970);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다.','글 내용입니다',to_date('22/06/01','RR/MM/DD'),null,null,1971);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,1972);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,1973);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'안녕하세요?','반가워요',to_date('22/06/01','RR/MM/DD'),null,null,1974);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목이었다','제목이 있었어용',to_date('22/06/01','RR/MM/DD'),null,null,1975);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'행복한 6월입니다','잘 지내시죠?',to_date('22/06/01','RR/MM/DD'),null,null,1976);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다','벚꽃엔딩',to_date('22/06/01','RR/MM/DD'),null,null,1977);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'감사합니다','ㅎㅇ',to_date('22/06/01','RR/MM/DD'),null,null,1978);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'ㄱㄱ','ㄱㄱ',to_date('22/06/01','RR/MM/DD'),null,null,1979);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다.','글 내용입니다',to_date('22/06/01','RR/MM/DD'),null,null,1980);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,1981);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,1982);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'안녕하세요?','반가워요',to_date('22/06/01','RR/MM/DD'),null,null,1983);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목이었다','제목이 있었어용',to_date('22/06/01','RR/MM/DD'),null,null,1984);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'행복한 6월입니다','잘 지내시죠?',to_date('22/06/01','RR/MM/DD'),null,null,1985);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다','벚꽃엔딩',to_date('22/06/01','RR/MM/DD'),null,null,1986);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'감사합니다','ㅎㅇ',to_date('22/06/01','RR/MM/DD'),null,null,1987);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'ㄱㄱ','ㄱㄱ',to_date('22/06/01','RR/MM/DD'),null,null,1988);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다.','글 내용입니다',to_date('22/06/01','RR/MM/DD'),null,null,1989);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,1990);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,1991);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'안녕하세요?','반가워요',to_date('22/06/01','RR/MM/DD'),null,null,1992);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다.','글 내용입니다',to_date('22/06/01','RR/MM/DD'),null,null,1993);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목이었다','제목이 있었어용',to_date('22/06/01','RR/MM/DD'),null,null,1994);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'행복한 6월입니다','잘 지내시죠?',to_date('22/06/01','RR/MM/DD'),null,null,1995);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다','벚꽃엔딩',to_date('22/06/01','RR/MM/DD'),null,null,1996);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'감사합니다','ㅎㅇ',to_date('22/06/01','RR/MM/DD'),null,null,1997);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'ㄱㄱ','ㄱㄱ',to_date('22/06/01','RR/MM/DD'),null,null,1998);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,1999);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,2000);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'안녕하세요?','반가워요',to_date('22/06/01','RR/MM/DD'),null,null,2001);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목이었다','제목이 있었어용',to_date('22/06/01','RR/MM/DD'),null,null,2002);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'행복한 6월입니다','잘 지내시죠?',to_date('22/06/01','RR/MM/DD'),null,null,2003);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다','벚꽃엔딩',to_date('22/06/01','RR/MM/DD'),null,null,2004);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'감사합니다','ㅎㅇ',to_date('22/06/01','RR/MM/DD'),null,null,2005);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'ㄱㄱ','ㄱㄱ',to_date('22/06/01','RR/MM/DD'),null,null,2006);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다.','글 내용입니다',to_date('22/06/01','RR/MM/DD'),null,null,2007);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,2008);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,2009);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'안녕하세요?','반가워요',to_date('22/06/01','RR/MM/DD'),null,null,2010);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목이었다','제목이 있었어용',to_date('22/06/01','RR/MM/DD'),null,null,2011);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'행복한 6월입니다','잘 지내시죠?',to_date('22/06/01','RR/MM/DD'),null,null,2012);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다','벚꽃엔딩',to_date('22/06/01','RR/MM/DD'),null,null,2013);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'감사합니다','ㅎㅇ',to_date('22/06/01','RR/MM/DD'),null,null,2014);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'ㄱㄱ','ㄱㄱ',to_date('22/06/01','RR/MM/DD'),null,null,2015);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,2016);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,2017);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'안녕하세요?','반가워요',to_date('22/06/01','RR/MM/DD'),null,null,2018);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목이었다','제목이 있었어용',to_date('22/06/01','RR/MM/DD'),null,null,2019);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'행복한 6월입니다','잘 지내시죠?',to_date('22/06/01','RR/MM/DD'),null,null,2020);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다','벚꽃엔딩',to_date('22/06/01','RR/MM/DD'),null,null,2021);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'감사합니다','ㅎㅇ',to_date('22/06/01','RR/MM/DD'),null,null,2022);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'ㄱㄱ','ㄱㄱ',to_date('22/06/01','RR/MM/DD'),null,null,2023);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다.','글 내용입니다',to_date('22/06/01','RR/MM/DD'),null,null,2024);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,2025);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,2026);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'안녕하세요?','반가워요',to_date('22/06/01','RR/MM/DD'),null,null,2027);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다.','글 내용입니다',to_date('22/06/01','RR/MM/DD'),null,null,2028);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목이었다','제목이 있었어용',to_date('22/06/01','RR/MM/DD'),null,null,2029);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'행복한 6월입니다','잘 지내시죠?',to_date('22/06/01','RR/MM/DD'),null,null,2030);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다','벚꽃엔딩',to_date('22/06/01','RR/MM/DD'),null,null,2031);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'감사합니다','ㅎㅇ',to_date('22/06/01','RR/MM/DD'),null,null,2032);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'ㄱㄱ','ㄱㄱ',to_date('22/06/01','RR/MM/DD'),null,null,2033);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,2034);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,2035);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'안녕하세요?','반가워요',to_date('22/06/01','RR/MM/DD'),null,null,2036);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목이었다','제목이 있었어용',to_date('22/06/01','RR/MM/DD'),null,null,2037);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'행복한 6월입니다','잘 지내시죠?',to_date('22/06/01','RR/MM/DD'),null,null,2038);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다','벚꽃엔딩',to_date('22/06/01','RR/MM/DD'),null,null,2039);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'감사합니다','ㅎㅇ',to_date('22/06/01','RR/MM/DD'),null,null,2040);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'ㄱㄱ','ㄱㄱ',to_date('22/06/01','RR/MM/DD'),null,null,2041);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다.','글 내용입니다',to_date('22/06/01','RR/MM/DD'),null,null,2042);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,2043);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,2044);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'안녕하세요?','반가워요',to_date('22/06/01','RR/MM/DD'),null,null,2045);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목이었다','제목이 있었어용',to_date('22/06/01','RR/MM/DD'),null,null,2046);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'행복한 6월입니다','잘 지내시죠?',to_date('22/06/01','RR/MM/DD'),null,null,2047);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다','벚꽃엔딩',to_date('22/06/01','RR/MM/DD'),null,null,2048);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'감사합니다','ㅎㅇ',to_date('22/06/01','RR/MM/DD'),null,null,2049);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'ㄱㄱ','ㄱㄱ',to_date('22/06/01','RR/MM/DD'),null,null,2050);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다.','글 내용입니다',to_date('22/06/01','RR/MM/DD'),null,null,2051);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,2052);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,2053);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'안녕하세요?','반가워요',to_date('22/06/01','RR/MM/DD'),null,null,2054);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목이었다','제목이 있었어용',to_date('22/06/01','RR/MM/DD'),null,null,2055);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'행복한 6월입니다','잘 지내시죠?',to_date('22/06/01','RR/MM/DD'),null,null,2056);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다','벚꽃엔딩',to_date('22/06/01','RR/MM/DD'),null,null,2057);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'감사합니다','ㅎㅇ',to_date('22/06/01','RR/MM/DD'),null,null,2058);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'ㄱㄱ','ㄱㄱ',to_date('22/06/01','RR/MM/DD'),null,null,2059);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다.','글 내용입니다',to_date('22/06/01','RR/MM/DD'),null,null,2060);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,2061);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,2062);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'안녕하세요?','반가워요',to_date('22/06/01','RR/MM/DD'),null,null,2063);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다.','글 내용입니다',to_date('22/06/01','RR/MM/DD'),null,null,2064);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목이었다','제목이 있었어용',to_date('22/06/01','RR/MM/DD'),null,null,2065);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'행복한 6월입니다','잘 지내시죠?',to_date('22/06/01','RR/MM/DD'),null,null,2066);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다','벚꽃엔딩',to_date('22/06/01','RR/MM/DD'),null,null,2067);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'감사합니다','ㅎㅇ',to_date('22/06/01','RR/MM/DD'),null,null,2068);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'ㄱㄱ','ㄱㄱ',to_date('22/06/01','RR/MM/DD'),null,null,2069);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,2070);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,2071);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'안녕하세요?','반가워요',to_date('22/06/01','RR/MM/DD'),null,null,2072);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목이었다','제목이 있었어용',to_date('22/06/01','RR/MM/DD'),null,null,2073);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'행복한 6월입니다','잘 지내시죠?',to_date('22/06/01','RR/MM/DD'),null,null,2074);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다','벚꽃엔딩',to_date('22/06/01','RR/MM/DD'),null,null,2075);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'감사합니다','ㅎㅇ',to_date('22/06/01','RR/MM/DD'),null,null,2076);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'ㄱㄱ','ㄱㄱ',to_date('22/06/01','RR/MM/DD'),null,null,2077);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다.','글 내용입니다',to_date('22/06/01','RR/MM/DD'),null,null,2078);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,2079);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,2080);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'안녕하세요?','반가워요',to_date('22/06/01','RR/MM/DD'),null,null,2081);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목이었다','제목이 있었어용',to_date('22/06/01','RR/MM/DD'),null,null,2082);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'행복한 6월입니다','잘 지내시죠?',to_date('22/06/01','RR/MM/DD'),null,null,2083);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다','벚꽃엔딩',to_date('22/06/01','RR/MM/DD'),null,null,2084);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'감사합니다','ㅎㅇ',to_date('22/06/01','RR/MM/DD'),null,null,2085);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'ㄱㄱ','ㄱㄱ',to_date('22/06/01','RR/MM/DD'),null,null,2086);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다.','글 내용입니다',to_date('22/06/01','RR/MM/DD'),null,null,2087);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,2088);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,2089);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'안녕하세요?','반가워요',to_date('22/06/01','RR/MM/DD'),null,null,2090);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목이었다','제목이 있었어용',to_date('22/06/01','RR/MM/DD'),null,null,2091);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'행복한 6월입니다','잘 지내시죠?',to_date('22/06/01','RR/MM/DD'),null,null,2092);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다','벚꽃엔딩',to_date('22/06/01','RR/MM/DD'),null,null,2093);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'감사합니다','ㅎㅇ',to_date('22/06/01','RR/MM/DD'),null,null,2094);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'ㄱㄱ','ㄱㄱ',to_date('22/06/01','RR/MM/DD'),null,null,2095);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다.','글 내용입니다',to_date('22/06/01','RR/MM/DD'),null,null,2096);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,2097);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,2098);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'안녕하세요?','반가워요',to_date('22/06/01','RR/MM/DD'),null,null,2099);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다.','글 내용입니다',to_date('22/06/01','RR/MM/DD'),null,null,2100);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목이었다','제목이 있었어용',to_date('22/06/01','RR/MM/DD'),null,null,2101);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'행복한 6월입니다','잘 지내시죠?',to_date('22/06/01','RR/MM/DD'),null,null,2102);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다','벚꽃엔딩',to_date('22/06/01','RR/MM/DD'),null,null,2103);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'감사합니다','ㅎㅇ',to_date('22/06/01','RR/MM/DD'),null,null,2104);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'ㄱㄱ','ㄱㄱ',to_date('22/06/01','RR/MM/DD'),null,null,2105);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,2106);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,2107);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'안녕하세요?','반가워요',to_date('22/06/01','RR/MM/DD'),null,null,2108);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목이었다','제목이 있었어용',to_date('22/06/01','RR/MM/DD'),null,null,2109);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'행복한 6월입니다','잘 지내시죠?',to_date('22/06/01','RR/MM/DD'),null,null,2110);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다','벚꽃엔딩',to_date('22/06/01','RR/MM/DD'),null,null,2111);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'감사합니다','ㅎㅇ',to_date('22/06/01','RR/MM/DD'),null,null,2112);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'ㄱㄱ','ㄱㄱ',to_date('22/06/01','RR/MM/DD'),null,null,2113);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다.','글 내용입니다',to_date('22/06/01','RR/MM/DD'),null,null,2114);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,2115);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,2116);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'안녕하세요?','반가워요',to_date('22/06/01','RR/MM/DD'),null,null,2117);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목이었다','제목이 있었어용',to_date('22/06/01','RR/MM/DD'),null,null,2118);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'행복한 6월입니다','잘 지내시죠?',to_date('22/06/01','RR/MM/DD'),null,null,2119);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다','벚꽃엔딩',to_date('22/06/01','RR/MM/DD'),null,null,2120);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'감사합니다','ㅎㅇ',to_date('22/06/01','RR/MM/DD'),null,null,2121);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'ㄱㄱ','ㄱㄱ',to_date('22/06/01','RR/MM/DD'),null,null,2122);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다.','글 내용입니다',to_date('22/06/01','RR/MM/DD'),null,null,2123);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,2124);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,2125);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'안녕하세요?','반가워요',to_date('22/06/01','RR/MM/DD'),null,null,2126);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목이었다','제목이 있었어용',to_date('22/06/01','RR/MM/DD'),null,null,2127);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'행복한 6월입니다','잘 지내시죠?',to_date('22/06/01','RR/MM/DD'),null,null,2128);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다','벚꽃엔딩',to_date('22/06/01','RR/MM/DD'),null,null,2129);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'감사합니다','ㅎㅇ',to_date('22/06/01','RR/MM/DD'),null,null,2130);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'ㄱㄱ','ㄱㄱ',to_date('22/06/01','RR/MM/DD'),null,null,2131);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다.','글 내용입니다',to_date('22/06/01','RR/MM/DD'),null,null,2132);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,2133);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,2134);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'안녕하세요?','반가워요',to_date('22/06/01','RR/MM/DD'),null,null,2135);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다.','글 내용입니다',to_date('22/06/01','RR/MM/DD'),null,null,2136);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목이었다','제목이 있었어용',to_date('22/06/01','RR/MM/DD'),null,null,2137);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'행복한 6월입니다','잘 지내시죠?',to_date('22/06/01','RR/MM/DD'),null,null,2138);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다','벚꽃엔딩',to_date('22/06/01','RR/MM/DD'),null,null,2139);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'감사합니다','ㅎㅇ',to_date('22/06/01','RR/MM/DD'),null,null,2140);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'ㄱㄱ','ㄱㄱ',to_date('22/06/01','RR/MM/DD'),null,null,2141);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,2142);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,2143);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'안녕하세요?','반가워요',to_date('22/06/01','RR/MM/DD'),null,null,2144);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목이었다','제목이 있었어용',to_date('22/06/01','RR/MM/DD'),null,null,2145);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'행복한 6월입니다','잘 지내시죠?',to_date('22/06/01','RR/MM/DD'),null,null,2146);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다','벚꽃엔딩',to_date('22/06/01','RR/MM/DD'),null,null,2147);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'감사합니다','ㅎㅇ',to_date('22/06/01','RR/MM/DD'),null,null,2148);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'ㄱㄱ','ㄱㄱ',to_date('22/06/01','RR/MM/DD'),null,null,2149);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다.','글 내용입니다',to_date('22/06/01','RR/MM/DD'),null,null,2150);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,2151);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,2152);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'안녕하세요?','반가워요',to_date('22/06/01','RR/MM/DD'),null,null,2153);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목이었다','제목이 있었어용',to_date('22/06/01','RR/MM/DD'),null,null,2154);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'행복한 6월입니다','잘 지내시죠?',to_date('22/06/01','RR/MM/DD'),null,null,2155);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다','벚꽃엔딩',to_date('22/06/01','RR/MM/DD'),null,null,2156);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'감사합니다','ㅎㅇ',to_date('22/06/01','RR/MM/DD'),null,null,2157);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'ㄱㄱ','ㄱㄱ',to_date('22/06/01','RR/MM/DD'),null,null,2158);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다.','글 내용입니다',to_date('22/06/01','RR/MM/DD'),null,null,2159);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,2160);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,2161);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'안녕하세요?','반가워요',to_date('22/06/01','RR/MM/DD'),null,null,2162);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목이었다','제목이 있었어용',to_date('22/06/01','RR/MM/DD'),null,null,2163);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'행복한 6월입니다','잘 지내시죠?',to_date('22/06/01','RR/MM/DD'),null,null,2164);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다','벚꽃엔딩',to_date('22/06/01','RR/MM/DD'),null,null,2165);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'감사합니다','ㅎㅇ',to_date('22/06/01','RR/MM/DD'),null,null,2166);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'ㄱㄱ','ㄱㄱ',to_date('22/06/01','RR/MM/DD'),null,null,2167);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다.','글 내용입니다',to_date('22/06/01','RR/MM/DD'),null,null,2168);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,2169);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,2170);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'안녕하세요?','반가워요',to_date('22/06/01','RR/MM/DD'),null,null,2171);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다.','글 내용입니다',to_date('22/06/01','RR/MM/DD'),null,null,2172);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목이었다','제목이 있었어용',to_date('22/06/01','RR/MM/DD'),null,null,2173);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'행복한 6월입니다','잘 지내시죠?',to_date('22/06/01','RR/MM/DD'),null,null,2174);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다','벚꽃엔딩',to_date('22/06/01','RR/MM/DD'),null,null,2175);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'감사합니다','ㅎㅇ',to_date('22/06/01','RR/MM/DD'),null,null,2176);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'ㄱㄱ','ㄱㄱ',to_date('22/06/01','RR/MM/DD'),null,null,2177);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,2178);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,2179);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'안녕하세요?','반가워요',to_date('22/06/01','RR/MM/DD'),null,null,2180);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목이었다','제목이 있었어용',to_date('22/06/01','RR/MM/DD'),null,null,2181);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'행복한 6월입니다','잘 지내시죠?',to_date('22/06/01','RR/MM/DD'),null,null,2182);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다','벚꽃엔딩',to_date('22/06/01','RR/MM/DD'),null,null,2183);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'감사합니다','ㅎㅇ',to_date('22/06/01','RR/MM/DD'),null,null,2184);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'ㄱㄱ','ㄱㄱ',to_date('22/06/01','RR/MM/DD'),null,null,2185);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목입니다.','글 내용입니다',to_date('22/06/01','RR/MM/DD'),null,null,2186);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,2187);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'웹등록','웹에서 등록',to_date('22/06/01','RR/MM/DD'),null,null,2188);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'안녕하세요?','반가워요',to_date('22/06/01','RR/MM/DD'),null,null,2189);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'제목이었다','제목이 있었어용',to_date('22/06/01','RR/MM/DD'),null,null,2190);
Insert into YKK.NOTICE (AID,NTITLE,NCONTENT,NREG,NHIT,NFILE,NBNO) values (null,'행복한 6월입니다','잘 지내시죠?',to_date('22/06/01','RR/MM/DD'),null,null,2191);
REM INSERTING into YKK.PRODUCT
SET DEFINE OFF;
Insert into YKK.PRODUCT (PNUM,PNAME,PREG,AID,PPRICE,PIMAGE1,PIMAGE2,PDETAIL,PDEL,PCATEGORY,PREADCOUNT,PSALE,PINVENTORY,PMODE) values (1,'감바스',to_date('22/06/02','RR/MM/DD'),'admin',11000,null,null,null,null,null,null,null,null,null);
Insert into YKK.PRODUCT (PNUM,PNAME,PREG,AID,PPRICE,PIMAGE1,PIMAGE2,PDETAIL,PDEL,PCATEGORY,PREADCOUNT,PSALE,PINVENTORY,PMODE) values (2,'쌀국수',to_date('22/06/02','RR/MM/DD'),null,22909,null,null,null,null,null,null,null,null,null);
Insert into YKK.PRODUCT (PNUM,PNAME,PREG,AID,PPRICE,PIMAGE1,PIMAGE2,PDETAIL,PDEL,PCATEGORY,PREADCOUNT,PSALE,PINVENTORY,PMODE) values (3,'타코',to_date('22/06/03','RR/MM/DD'),null,33221,null,null,null,null,null,null,null,null,null);
Insert into YKK.PRODUCT (PNUM,PNAME,PREG,AID,PPRICE,PIMAGE1,PIMAGE2,PDETAIL,PDEL,PCATEGORY,PREADCOUNT,PSALE,PINVENTORY,PMODE) values (4,' 라이스페이퍼',to_date('22/06/09','RR/MM/DD'),null,13243,null,null,null,null,null,null,null,null,null);
Insert into YKK.PRODUCT (PNUM,PNAME,PREG,AID,PPRICE,PIMAGE1,PIMAGE2,PDETAIL,PDEL,PCATEGORY,PREADCOUNT,PSALE,PINVENTORY,PMODE) values (5,'팟타이',to_date('22/06/12','RR/MM/DD'),null,23132,null,null,null,null,null,null,null,null,null);
Insert into YKK.PRODUCT (PNUM,PNAME,PREG,AID,PPRICE,PIMAGE1,PIMAGE2,PDETAIL,PDEL,PCATEGORY,PREADCOUNT,PSALE,PINVENTORY,PMODE) values (6,'멘보샤',to_date('22/06/16','RR/MM/DD'),null,213123,null,null,null,null,null,null,null,null,null);
Insert into YKK.PRODUCT (PNUM,PNAME,PREG,AID,PPRICE,PIMAGE1,PIMAGE2,PDETAIL,PDEL,PCATEGORY,PREADCOUNT,PSALE,PINVENTORY,PMODE) values (7,'노르웨이연어',to_date('22/06/15','RR/MM/DD'),null,123123,null,null,null,null,null,null,null,null,null);
REM INSERTING into YKK.QNA
SET DEFINE OFF;
--------------------------------------------------------
--  DDL for Index ADMIN_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "YKK"."ADMIN_PK" ON "YKK"."ADMIN" ("AID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "BTD" ;
--------------------------------------------------------
--  DDL for Index NOTICE_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "YKK"."NOTICE_PK" ON "YKK"."NOTICE" ("NBNO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "BTD" ;
--------------------------------------------------------
--  DDL for Index PRODUCT_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "YKK"."PRODUCT_PK" ON "YKK"."PRODUCT" ("PNUM") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "BTD" ;
--------------------------------------------------------
--  DDL for Index SYS_C008081
--------------------------------------------------------

  CREATE UNIQUE INDEX "YKK"."SYS_C008081" ON "YKK"."MEMBER" ("USERID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "BTD" ;
--------------------------------------------------------
--  DDL for Index SYS_C008215
--------------------------------------------------------

  CREATE UNIQUE INDEX "YKK"."SYS_C008215" ON "YKK"."CART" ("USERID", "PNUM") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "BTD" ;
--------------------------------------------------------
--  DDL for Index SYS_C008217
--------------------------------------------------------

  CREATE UNIQUE INDEX "YKK"."SYS_C008217" ON "YKK"."CART" ("CARTID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "BTD" ;
--------------------------------------------------------
--  DDL for Index ADMIN_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "YKK"."ADMIN_PK" ON "YKK"."ADMIN" ("AID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "BTD" ;
--------------------------------------------------------
--  DDL for Index SYS_C008215
--------------------------------------------------------

  CREATE UNIQUE INDEX "YKK"."SYS_C008215" ON "YKK"."CART" ("USERID", "PNUM") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "BTD" ;
--------------------------------------------------------
--  DDL for Index SYS_C008217
--------------------------------------------------------

  CREATE UNIQUE INDEX "YKK"."SYS_C008217" ON "YKK"."CART" ("CARTID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "BTD" ;
--------------------------------------------------------
--  DDL for Index SYS_C008081
--------------------------------------------------------

  CREATE UNIQUE INDEX "YKK"."SYS_C008081" ON "YKK"."MEMBER" ("USERID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "BTD" ;
--------------------------------------------------------
--  DDL for Index NOTICE_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "YKK"."NOTICE_PK" ON "YKK"."NOTICE" ("NBNO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "BTD" ;
--------------------------------------------------------
--  DDL for Index PRODUCT_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "YKK"."PRODUCT_PK" ON "YKK"."PRODUCT" ("PNUM") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "BTD" ;
--------------------------------------------------------
--  DDL for Trigger NOTICE_TRG
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "YKK"."NOTICE_TRG" 
BEFORE INSERT ON NOTICE 
FOR EACH ROW 
BEGIN
  <<COLUMN_SEQUENCES>>
  BEGIN
    NULL;
  END COLUMN_SEQUENCES;
END;
/
ALTER TRIGGER "YKK"."NOTICE_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger NOTICE_TRG
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "YKK"."NOTICE_TRG" 
BEFORE INSERT ON NOTICE 
FOR EACH ROW 
BEGIN
  <<COLUMN_SEQUENCES>>
  BEGIN
    NULL;
  END COLUMN_SEQUENCES;
END;
/
ALTER TRIGGER "YKK"."NOTICE_TRG" ENABLE;
--------------------------------------------------------
--  Constraints for Table ADMIN
--------------------------------------------------------

  ALTER TABLE "YKK"."ADMIN" MODIFY ("AID" NOT NULL ENABLE);
  ALTER TABLE "YKK"."ADMIN" MODIFY ("APASS" NOT NULL ENABLE);
  ALTER TABLE "YKK"."ADMIN" MODIFY ("AREG" NOT NULL ENABLE);
  ALTER TABLE "YKK"."ADMIN" MODIFY ("ALEVEL" NOT NULL ENABLE);
  ALTER TABLE "YKK"."ADMIN" MODIFY ("ANAME" NOT NULL ENABLE);
  ALTER TABLE "YKK"."ADMIN" ADD CONSTRAINT "ADMIN_PK" PRIMARY KEY ("AID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "BTD"  ENABLE;
--------------------------------------------------------
--  Constraints for Table CART
--------------------------------------------------------

  ALTER TABLE "YKK"."CART" ADD UNIQUE ("USERID", "PNUM")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "BTD"  ENABLE;
  ALTER TABLE "YKK"."CART" MODIFY ("CARTID" NOT NULL ENABLE);
  ALTER TABLE "YKK"."CART" ADD PRIMARY KEY ("CARTID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "BTD"  ENABLE;
--------------------------------------------------------
--  Constraints for Table EVENT
--------------------------------------------------------

  ALTER TABLE "YKK"."EVENT" MODIFY ("AID" NOT NULL ENABLE);
  ALTER TABLE "YKK"."EVENT" MODIFY ("ANAME" NOT NULL ENABLE);
  ALTER TABLE "YKK"."EVENT" MODIFY ("ETITLE" NOT NULL ENABLE);
  ALTER TABLE "YKK"."EVENT" MODIFY ("EBNO" NOT NULL ENABLE);
  ALTER TABLE "YKK"."EVENT" MODIFY ("ECONTENT" NOT NULL ENABLE);
  ALTER TABLE "YKK"."EVENT" MODIFY ("EREG" NOT NULL ENABLE);
  ALTER TABLE "YKK"."EVENT" MODIFY ("EHIT" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table FOOD
--------------------------------------------------------

  ALTER TABLE "YKK"."FOOD" MODIFY ("USERID" NOT NULL ENABLE);
  ALTER TABLE "YKK"."FOOD" MODIFY ("USERNAME" NOT NULL ENABLE);
  ALTER TABLE "YKK"."FOOD" MODIFY ("FBNO" NOT NULL ENABLE);
  ALTER TABLE "YKK"."FOOD" MODIFY ("FTITLE" NOT NULL ENABLE);
  ALTER TABLE "YKK"."FOOD" MODIFY ("FCONTENT" NOT NULL ENABLE);
  ALTER TABLE "YKK"."FOOD" MODIFY ("FREG" NOT NULL ENABLE);
  ALTER TABLE "YKK"."FOOD" MODIFY ("FHIT" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table MEMBER
--------------------------------------------------------

  ALTER TABLE "YKK"."MEMBER" ADD PRIMARY KEY ("USERID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "BTD"  ENABLE;
--------------------------------------------------------
--  Constraints for Table NMEM_ADD
--------------------------------------------------------

  ALTER TABLE "YKK"."NMEM_ADD" MODIFY ("ADRNAME" NOT NULL ENABLE);
  ALTER TABLE "YKK"."NMEM_ADD" MODIFY ("DELADD1" NOT NULL ENABLE);
  ALTER TABLE "YKK"."NMEM_ADD" MODIFY ("DELADD2" NOT NULL ENABLE);
  ALTER TABLE "YKK"."NMEM_ADD" MODIFY ("DELADD3" NOT NULL ENABLE);
  ALTER TABLE "YKK"."NMEM_ADD" MODIFY ("PHONNUM" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table NOTICE
--------------------------------------------------------

  ALTER TABLE "YKK"."NOTICE" MODIFY ("NBNO" NOT NULL ENABLE);
  ALTER TABLE "YKK"."NOTICE" ADD CONSTRAINT "NOTICE_PK" PRIMARY KEY ("NBNO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "BTD"  ENABLE;
  ALTER TABLE "YKK"."NOTICE" MODIFY ("NTITLE" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table PRODUCT
--------------------------------------------------------

  ALTER TABLE "YKK"."PRODUCT" MODIFY ("PNUM" NOT NULL ENABLE);
  ALTER TABLE "YKK"."PRODUCT" MODIFY ("PNAME" NOT NULL ENABLE);
  ALTER TABLE "YKK"."PRODUCT" MODIFY ("PPRICE" NOT NULL ENABLE);
  ALTER TABLE "YKK"."PRODUCT" ADD CONSTRAINT "PRODUCT_PK" PRIMARY KEY ("PNUM")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "BTD"  ENABLE;
--------------------------------------------------------
--  Constraints for Table QNA
--------------------------------------------------------

  ALTER TABLE "YKK"."QNA" MODIFY ("AID" NOT NULL ENABLE);
  ALTER TABLE "YKK"."QNA" MODIFY ("USERID" NOT NULL ENABLE);
  ALTER TABLE "YKK"."QNA" MODIFY ("ANAME" NOT NULL ENABLE);
  ALTER TABLE "YKK"."QNA" MODIFY ("USERNAME" NOT NULL ENABLE);
  ALTER TABLE "YKK"."QNA" MODIFY ("QBNO" NOT NULL ENABLE);
  ALTER TABLE "YKK"."QNA" MODIFY ("QTITLE" NOT NULL ENABLE);
  ALTER TABLE "YKK"."QNA" MODIFY ("QCONTENT" NOT NULL ENABLE);
  ALTER TABLE "YKK"."QNA" MODIFY ("QREG" NOT NULL ENABLE);
--------------------------------------------------------
--  Ref Constraints for Table CART
--------------------------------------------------------

  ALTER TABLE "YKK"."CART" ADD CONSTRAINT "FK_CARTUI" FOREIGN KEY ("USERID")
	  REFERENCES "YKK"."MEMBER" ("USERID") ENABLE;
  ALTER TABLE "YKK"."CART" ADD CONSTRAINT "FK_CARTNUM" FOREIGN KEY ("PNUM")
	  REFERENCES "YKK"."PRODUCT" ("PNUM") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table EVENT
--------------------------------------------------------

  ALTER TABLE "YKK"."EVENT" ADD CONSTRAINT "FK_EID" FOREIGN KEY ("AID")
	  REFERENCES "YKK"."ADMIN" ("AID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table FOOD
--------------------------------------------------------

  ALTER TABLE "YKK"."FOOD" ADD CONSTRAINT "FK_FUID" FOREIGN KEY ("USERID")
	  REFERENCES "YKK"."MEMBER" ("USERID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table NOTICE
--------------------------------------------------------

  ALTER TABLE "YKK"."NOTICE" ADD CONSTRAINT "FK_NID" FOREIGN KEY ("AID")
	  REFERENCES "YKK"."ADMIN" ("AID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table PRODUCT
--------------------------------------------------------

  ALTER TABLE "YKK"."PRODUCT" ADD CONSTRAINT "FK_PID" FOREIGN KEY ("AID")
	  REFERENCES "YKK"."ADMIN" ("AID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table QNA
--------------------------------------------------------

  ALTER TABLE "YKK"."QNA" ADD CONSTRAINT "FK_QAID" FOREIGN KEY ("AID")
	  REFERENCES "YKK"."ADMIN" ("AID") ENABLE;
  ALTER TABLE "YKK"."QNA" ADD CONSTRAINT "FK_QUI" FOREIGN KEY ("USERID")
	  REFERENCES "YKK"."MEMBER" ("USERID") ENABLE;
