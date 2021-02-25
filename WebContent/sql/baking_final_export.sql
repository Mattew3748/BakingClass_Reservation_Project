--------------------------------------------------------
--  ������ ������ - ������-2��-24-2021   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Sequence CLS_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "CLS_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 41 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence LIKEPAGE_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "LIKEPAGE_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence NOTICE_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "NOTICE_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 21 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence PAYMENT_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "PAYMENT_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 21 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence RESERVATION_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "RESERVATION_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 41 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence REVIEW_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "REVIEW_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence REVIEW_SEQ1
--------------------------------------------------------

   CREATE SEQUENCE  "REVIEW_SEQ1"  MINVALUE 1 MAXVALUE 10000 INCREMENT BY 1 START WITH 241 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence REVIEW_SEQ2
--------------------------------------------------------

   CREATE SEQUENCE  "REVIEW_SEQ2"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Table CLS
--------------------------------------------------------

  CREATE TABLE "CLS" 
   (	"CLS_IDX" NUMBER(10,0), 
	"CLS_NAME" VARCHAR2(50 BYTE), 
	"CLS_CONTENT" CLOB, 
	"CLS_IMAGE1" VARCHAR2(100 BYTE), 
	"CLS_PRICE" NUMBER(10,0), 
	"CLS_STARTDATE" DATE, 
	"CLS_ENDDATE" DATE, 
	"TEACHER_ID" VARCHAR2(20 BYTE), 
	"CLS_LOCATION" VARCHAR2(50 BYTE), 
	"CLS_IMAGE2" VARCHAR2(100 BYTE), 
	"CLS_IMAGE3" VARCHAR2(100 BYTE)
   ) ;

   COMMENT ON COLUMN "CLS"."CLS_IDX" IS 'Ŭ������ȣ';
   COMMENT ON COLUMN "CLS"."CLS_NAME" IS '��ǰ��';
   COMMENT ON COLUMN "CLS"."CLS_CONTENT" IS '������';
   COMMENT ON COLUMN "CLS"."CLS_IMAGE1" IS '����1';
   COMMENT ON COLUMN "CLS"."CLS_PRICE" IS '����';
   COMMENT ON COLUMN "CLS"."CLS_STARTDATE" IS '���� ��¥';
   COMMENT ON COLUMN "CLS"."CLS_ENDDATE" IS '���� ��¥';
   COMMENT ON COLUMN "CLS"."TEACHER_ID" IS '���� ���̵�';
   COMMENT ON COLUMN "CLS"."CLS_LOCATION" IS '���';
   COMMENT ON COLUMN "CLS"."CLS_IMAGE2" IS '����2';
   COMMENT ON COLUMN "CLS"."CLS_IMAGE3" IS '����3';
   COMMENT ON TABLE "CLS"  IS 'Ŭ���� ��������';
--------------------------------------------------------
--  DDL for Table MEMBER
--------------------------------------------------------

  CREATE TABLE "MEMBER" 
   (	"ID" VARCHAR2(20 BYTE), 
	"PWD" VARCHAR2(20 BYTE), 
	"NAME" VARCHAR2(20 BYTE), 
	"PHONE" VARCHAR2(30 BYTE), 
	"ADDR" VARCHAR2(50 BYTE)
   ) ;

   COMMENT ON COLUMN "MEMBER"."ID" IS '���̵�';
   COMMENT ON COLUMN "MEMBER"."PWD" IS '��й�ȣ';
   COMMENT ON COLUMN "MEMBER"."NAME" IS '�̸�';
   COMMENT ON COLUMN "MEMBER"."PHONE" IS '��ȭ��ȣ';
   COMMENT ON COLUMN "MEMBER"."ADDR" IS '�ּ�';
   COMMENT ON TABLE "MEMBER"  IS 'ȸ��';
--------------------------------------------------------
--  DDL for Table NOTICE
--------------------------------------------------------

  CREATE TABLE "NOTICE" 
   (	"NOTICE_IDX" NUMBER(10,0), 
	"NOTICE_NAME" VARCHAR2(20 BYTE), 
	"NOTICE_TITLE" VARCHAR2(200 BYTE), 
	"NOTICE_CONTENT" CLOB, 
	"NOTICE_DATE" DATE, 
	"NOTICE_HIT" NUMBER(10,0), 
	"NOTICE_IMAGE" VARCHAR2(100 BYTE)
   ) ;

   COMMENT ON COLUMN "NOTICE"."NOTICE_IDX" IS '�������� �� ��ȣ';
   COMMENT ON COLUMN "NOTICE"."NOTICE_NAME" IS '�ۼ���';
   COMMENT ON COLUMN "NOTICE"."NOTICE_TITLE" IS '����';
   COMMENT ON COLUMN "NOTICE"."NOTICE_CONTENT" IS '����';
   COMMENT ON COLUMN "NOTICE"."NOTICE_DATE" IS '��¥';
   COMMENT ON COLUMN "NOTICE"."NOTICE_HIT" IS '��ȸ��';
   COMMENT ON COLUMN "NOTICE"."NOTICE_IMAGE" IS '�̹���';
   COMMENT ON TABLE "NOTICE"  IS '��������';
--------------------------------------------------------
--  DDL for Table PAYMENT
--------------------------------------------------------

  CREATE TABLE "PAYMENT" 
   (	"PAY_IDX" NUMBER(10,0), 
	"PAY_DATE" VARCHAR2(50 BYTE), 
	"PAY_PRICE" NUMBER, 
	"PAY_METHOD" VARCHAR2(100 BYTE), 
	"RESERV_IDX" NUMBER(10,0), 
	"PAY_CARD" VARCHAR2(100 BYTE), 
	"PAY_BANK" VARCHAR2(100 BYTE)
   ) ;

   COMMENT ON COLUMN "PAYMENT"."PAY_IDX" IS '������ȣ';
   COMMENT ON COLUMN "PAYMENT"."PAY_DATE" IS '������¥';
   COMMENT ON COLUMN "PAYMENT"."PAY_PRICE" IS '�����ݾ�';
   COMMENT ON COLUMN "PAYMENT"."PAY_METHOD" IS '��������';
   COMMENT ON COLUMN "PAYMENT"."RESERV_IDX" IS '�����ȣ';
   COMMENT ON COLUMN "PAYMENT"."PAY_CARD" IS 'ī���ȣ';
   COMMENT ON COLUMN "PAYMENT"."PAY_BANK" IS '(������)���¹�ȣ';
   COMMENT ON TABLE "PAYMENT"  IS '����';
--------------------------------------------------------
--  DDL for Table RESERVATION
--------------------------------------------------------

  CREATE TABLE "RESERVATION" 
   (	"RESERV_IDX" NUMBER(10,0), 
	"RESERV_DATE" DATE, 
	"RESERV_TIME" VARCHAR2(20 BYTE), 
	"RESERV_PEOPLE" NUMBER(10,0), 
	"RESERV_PRICE" NUMBER(10,0), 
	"CLS_IDX" NUMBER(10,0), 
	"ID" VARCHAR2(20 BYTE), 
	"RESERV_STATUS" VARCHAR2(20 BYTE), 
	"RESERV_INPUTDATE" DATE
   ) ;

   COMMENT ON COLUMN "RESERVATION"."RESERV_IDX" IS '�����ȣ';
   COMMENT ON COLUMN "RESERVATION"."RESERV_DATE" IS '��¥';
   COMMENT ON COLUMN "RESERVATION"."RESERV_TIME" IS '�ð�';
   COMMENT ON COLUMN "RESERVATION"."RESERV_PEOPLE" IS '�ο�';
   COMMENT ON COLUMN "RESERVATION"."RESERV_PRICE" IS '���� �ݾ�';
   COMMENT ON COLUMN "RESERVATION"."CLS_IDX" IS 'Ŭ������ȣ';
   COMMENT ON COLUMN "RESERVATION"."ID" IS '���̵�';
   COMMENT ON COLUMN "RESERVATION"."RESERV_STATUS" IS '����';
   COMMENT ON COLUMN "RESERVATION"."RESERV_INPUTDATE" IS '���೯¥';
   COMMENT ON TABLE "RESERVATION"  IS '����(����)����';
--------------------------------------------------------
--  DDL for Table REVIEW
--------------------------------------------------------

  CREATE TABLE "REVIEW" 
   (	"REVIEW_IDX" NUMBER(10,0), 
	"REVIEW_TITLE" VARCHAR2(200 BYTE), 
	"REVIEW_CONTENT" CLOB, 
	"REVIEW_DATE" DATE, 
	"REVIEW_HIT" NUMBER(10,0), 
	"REVIEW_IMAGE" VARCHAR2(100 BYTE), 
	"ID" VARCHAR2(20 BYTE), 
	"REVIEW_CLS" VARCHAR2(30 BYTE), 
	"REVIEW_STAR" VARCHAR2(30 BYTE), 
	"REVIEW_FILEPATH" VARCHAR2(200 BYTE)
   ) ;

   COMMENT ON COLUMN "REVIEW"."REVIEW_IDX" IS '�ı� �� ��ȣ';
   COMMENT ON COLUMN "REVIEW"."REVIEW_TITLE" IS '����';
   COMMENT ON COLUMN "REVIEW"."REVIEW_CONTENT" IS '����';
   COMMENT ON COLUMN "REVIEW"."REVIEW_DATE" IS '��¥';
   COMMENT ON COLUMN "REVIEW"."REVIEW_HIT" IS '��ȸ��';
   COMMENT ON COLUMN "REVIEW"."REVIEW_IMAGE" IS '�̹���';
   COMMENT ON COLUMN "REVIEW"."ID" IS '���̵�';
   COMMENT ON COLUMN "REVIEW"."REVIEW_CLS" IS 'Ŭ���� �̸�';
   COMMENT ON COLUMN "REVIEW"."REVIEW_STAR" IS '�ı� ����';
   COMMENT ON COLUMN "REVIEW"."REVIEW_FILEPATH" IS '���� ���';
   COMMENT ON TABLE "REVIEW"  IS '�ı�';
--------------------------------------------------------
--  DDL for Table TEACHER
--------------------------------------------------------

  CREATE TABLE "TEACHER" 
   (	"TEACHER_ID" VARCHAR2(20 BYTE), 
	"TEA_NAME" VARCHAR2(50 BYTE), 
	"TEA_INFO" CLOB, 
	"TEA_CLASS" VARCHAR2(50 BYTE), 
	"TEA_EMAIL" VARCHAR2(50 BYTE), 
	"TEA_IMAGE" VARCHAR2(50 BYTE), 
	"TEA_INFO2" CLOB
   ) ;

   COMMENT ON COLUMN "TEACHER"."TEACHER_ID" IS '���� ���̵�';
   COMMENT ON COLUMN "TEACHER"."TEA_NAME" IS '�̸�';
   COMMENT ON COLUMN "TEACHER"."TEA_INFO" IS '���� ����';
   COMMENT ON COLUMN "TEACHER"."TEA_CLASS" IS '��� Ŭ����';
   COMMENT ON COLUMN "TEACHER"."TEA_EMAIL" IS '���� �̸���';
   COMMENT ON COLUMN "TEACHER"."TEA_IMAGE" IS '�����̹���';
   COMMENT ON COLUMN "TEACHER"."TEA_INFO2" IS '���� ����';
   COMMENT ON TABLE "TEACHER"  IS '���� ����';
REM INSERTING into CLS
SET DEFINE OFF;
Insert into CLS (CLS_IDX,CLS_NAME,CLS_IMAGE1,CLS_PRICE,CLS_STARTDATE,CLS_ENDDATE,TEACHER_ID,CLS_LOCATION,CLS_IMAGE2,CLS_IMAGE3) values (600,'�̴�Ÿ��Ʈ Ŭ����','mini2.png',35000,to_date('2021/03/01','YYYY/MM/DD'),to_date('2021/07/31','YYYY/MM/DD'),'bbogang','����Ƽ���� 102ȣ','mini3.png','mini4.png');
Insert into CLS (CLS_IDX,CLS_NAME,CLS_IMAGE1,CLS_PRICE,CLS_STARTDATE,CLS_ENDDATE,TEACHER_ID,CLS_LOCATION,CLS_IMAGE2,CLS_IMAGE3) values (500,'��ī�� Ŭ����','macarong1.png',32000,to_date('2021/03/03','YYYY/MM/DD'),to_date('2021/05/03','YYYY/MM/DD'),'sunba','����Ƽ���� 203ȣ','macarong2.png','macarong3.png');
Insert into CLS (CLS_IDX,CLS_NAME,CLS_IMAGE1,CLS_PRICE,CLS_STARTDATE,CLS_ENDDATE,TEACHER_ID,CLS_LOCATION,CLS_IMAGE2,CLS_IMAGE3) values (400,'���ݸ� Ŭ����','choco6.jpg',25000,to_date('2021/03/05','YYYY/MM/DD'),to_date('2021/06/30','YYYY/MM/DD'),'yuna1880','����Ƽ���� 502ȣ','choco2.PNG','choco5.png');
Insert into CLS (CLS_IDX,CLS_NAME,CLS_IMAGE1,CLS_PRICE,CLS_STARTDATE,CLS_ENDDATE,TEACHER_ID,CLS_LOCATION,CLS_IMAGE2,CLS_IMAGE3) values (300,'���� Ŭ����','scon.png',30000,to_date('2021/03/08','YYYY/MM/DD'),to_date('2021/08/04','YYYY/MM/DD'),'ans','����Ƽ���� 305ȣ','scon2.png','scon3.png');
Insert into CLS (CLS_IDX,CLS_NAME,CLS_IMAGE1,CLS_PRICE,CLS_STARTDATE,CLS_ENDDATE,TEACHER_ID,CLS_LOCATION,CLS_IMAGE2,CLS_IMAGE3) values (200,'����ũ Ŭ����','cake.png',40000,to_date('2021/03/10','YYYY/MM/DD'),to_date('2021/10/28','YYYY/MM/DD'),'2sanghee','����Ƽ���� 401ȣ','cake2.png','cake4.png');
Insert into CLS (CLS_IDX,CLS_NAME,CLS_IMAGE1,CLS_PRICE,CLS_STARTDATE,CLS_ENDDATE,TEACHER_ID,CLS_LOCATION,CLS_IMAGE2,CLS_IMAGE3) values (100,'��Ű Ŭ����','cookie.png',20000,to_date('2021/03/16','YYYY/MM/DD'),to_date('2021/09/20','YYYY/MM/DD'),'hong','����Ƽ���� 205ȣ','cookie2.png','cookie3.png');
REM INSERTING into MEMBER
SET DEFINE OFF;
Insert into MEMBER (ID,PWD,NAME,PHONE,ADDR) values ('cothis','1234','�̳�','010-8989-9090','����');
Insert into MEMBER (ID,PWD,NAME,PHONE,ADDR) values ('fresh1015','dbsk1880','������','000-0000-0000','����');
Insert into MEMBER (ID,PWD,NAME,PHONE,ADDR) values ('potato12','yuna1880','��������','010-5555-8888','����');
Insert into MEMBER (ID,PWD,NAME,PHONE,ADDR) values ('yuna1880','12345','������','010-0000-1111','���');
Insert into MEMBER (ID,PWD,NAME,PHONE,ADDR) values ('teacher','1234','Ƽó','010-0000-0000','����');
Insert into MEMBER (ID,PWD,NAME,PHONE,ADDR) values ('bbogang','1234','�躸��','010-8388-1234','���');
Insert into MEMBER (ID,PWD,NAME,PHONE,ADDR) values ('2sanghee','1234','�̻���','010-2244-4857','����');
Insert into MEMBER (ID,PWD,NAME,PHONE,ADDR) values ('sunba','1234','�輱��','010-4578-7897','����');
Insert into MEMBER (ID,PWD,NAME,PHONE,ADDR) values ('ans','1234','�Ƚ�','010-4877-1998','����');
Insert into MEMBER (ID,PWD,NAME,PHONE,ADDR) values ('hong','1234','����ȫ','010-4578-9898','����');
REM INSERTING into NOTICE
SET DEFINE OFF;
Insert into NOTICE (NOTICE_IDX,NOTICE_NAME,NOTICE_TITLE,NOTICE_DATE,NOTICE_HIT,NOTICE_IMAGE) values (1,'SWEETIE','�������� �ȳ�',to_date('2021/02/22','YYYY/MM/DD'),187,null);
Insert into NOTICE (NOTICE_IDX,NOTICE_NAME,NOTICE_TITLE,NOTICE_DATE,NOTICE_HIT,NOTICE_IMAGE) values (2,'SWEETIE','������ ���� �ȳ� (2021.02.22~)',to_date('2021/02/22','YYYY/MM/DD'),257,null);
Insert into NOTICE (NOTICE_IDX,NOTICE_NAME,NOTICE_TITLE,NOTICE_DATE,NOTICE_HIT,NOTICE_IMAGE) values (3,'SWEETIE','�ߺ� ���� ���� �ȳ�',to_date('2021/02/22','YYYY/MM/DD'),346,null);
Insert into NOTICE (NOTICE_IDX,NOTICE_NAME,NOTICE_TITLE,NOTICE_DATE,NOTICE_HIT,NOTICE_IMAGE) values (4,'SWEETIE','�ڷγ�19 ���� ������ Ŭ���� ȯ�� �� � �ȳ�',to_date('2021/02/22','YYYY/MM/DD'),675,null);
Insert into NOTICE (NOTICE_IDX,NOTICE_NAME,NOTICE_TITLE,NOTICE_DATE,NOTICE_HIT,NOTICE_IMAGE) values (5,'SWEETIE','�������� ó����ħ ���� �ȳ�',to_date('2021/02/22','YYYY/MM/DD'),231,null);
REM INSERTING into PAYMENT
SET DEFINE OFF;
Insert into PAYMENT (PAY_IDX,PAY_DATE,PAY_PRICE,PAY_METHOD,RESERV_IDX,PAY_CARD,PAY_BANK) values (15,'21/02/24',50000,'ī��',36,'3654 435234 2342/yuna/10/10/232','null');
Insert into PAYMENT (PAY_IDX,PAY_DATE,PAY_PRICE,PAY_METHOD,RESERV_IDX,PAY_CARD,PAY_BANK) values (13,'21/02/23',245000,'����',34,'null','�������/010-3090-3748/�̻���');
REM INSERTING into RESERVATION
SET DEFINE OFF;
Insert into RESERVATION (RESERV_IDX,RESERV_DATE,RESERV_TIME,RESERV_PEOPLE,RESERV_PRICE,CLS_IDX,ID,RESERV_STATUS,RESERV_INPUTDATE) values (28,to_date('2021/02/24','YYYY/MM/DD'),'14',2,50000,400,null,'��������',to_date('2021/02/23','YYYY/MM/DD'));
Insert into RESERVATION (RESERV_IDX,RESERV_DATE,RESERV_TIME,RESERV_PEOPLE,RESERV_PRICE,CLS_IDX,ID,RESERV_STATUS,RESERV_INPUTDATE) values (38,to_date('2021/02/10','YYYY/MM/DD'),'09',1,25000,400,'yuna1880','��������',to_date('2021/02/24','YYYY/MM/DD'));
Insert into RESERVATION (RESERV_IDX,RESERV_DATE,RESERV_TIME,RESERV_PEOPLE,RESERV_PRICE,CLS_IDX,ID,RESERV_STATUS,RESERV_INPUTDATE) values (32,to_date('2021/02/25','YYYY/MM/DD'),'09',2,50000,400,'yuna1880','��������',to_date('2021/02/23','YYYY/MM/DD'));
Insert into RESERVATION (RESERV_IDX,RESERV_DATE,RESERV_TIME,RESERV_PEOPLE,RESERV_PRICE,CLS_IDX,ID,RESERV_STATUS,RESERV_INPUTDATE) values (36,to_date('2021/02/18','YYYY/MM/DD'),'14',2,50000,400,'yuna1880','�����Ϸ�',to_date('2021/02/24','YYYY/MM/DD'));
Insert into RESERVATION (RESERV_IDX,RESERV_DATE,RESERV_TIME,RESERV_PEOPLE,RESERV_PRICE,CLS_IDX,ID,RESERV_STATUS,RESERV_INPUTDATE) values (30,to_date('2021/02/25','YYYY/MM/DD'),'09',2,50000,400,null,'��������',to_date('2021/02/23','YYYY/MM/DD'));
Insert into RESERVATION (RESERV_IDX,RESERV_DATE,RESERV_TIME,RESERV_PEOPLE,RESERV_PRICE,CLS_IDX,ID,RESERV_STATUS,RESERV_INPUTDATE) values (34,to_date('2021/02/10','YYYY/MM/DD'),'09',7,245000,600,'yuna1880','�Ա�Ȯ����',to_date('2021/02/23','YYYY/MM/DD'));
REM INSERTING into REVIEW
SET DEFINE OFF;
Insert into REVIEW (REVIEW_IDX,REVIEW_TITLE,REVIEW_DATE,REVIEW_HIT,REVIEW_IMAGE,ID,REVIEW_CLS,REVIEW_STAR,REVIEW_FILEPATH) values (191,'��ī�� ����°� �� ��վ�� ����',to_date('2021/02/24','YYYY/MM/DD'),0,null,'yuna1880','��ī�� Ŭ����','5',null);
Insert into REVIEW (REVIEW_IDX,REVIEW_TITLE,REVIEW_DATE,REVIEW_HIT,REVIEW_IMAGE,ID,REVIEW_CLS,REVIEW_STAR,REVIEW_FILEPATH) values (198,'������',to_date('2021/02/24','YYYY/MM/DD'),0,null,'yuna1880','�̴�Ÿ��Ʈ Ŭ����','4',null);
Insert into REVIEW (REVIEW_IDX,REVIEW_TITLE,REVIEW_DATE,REVIEW_HIT,REVIEW_IMAGE,ID,REVIEW_CLS,REVIEW_STAR,REVIEW_FILEPATH) values (200,'��ī�� ����� �� �̷��� ������ ������� ���� �� �ٵ� ��հ� �ѵ��մϴ�',to_date('2021/02/24','YYYY/MM/DD'),0,null,'yuna1880','��ī�� Ŭ����','5',null);
Insert into REVIEW (REVIEW_IDX,REVIEW_TITLE,REVIEW_DATE,REVIEW_HIT,REVIEW_IMAGE,ID,REVIEW_CLS,REVIEW_STAR,REVIEW_FILEPATH) values (212,'��¥ �ְ���� �ФФФФФ� ??',to_date('2021/02/24','YYYY/MM/DD'),0,'6.jpg','yuna1880','���� Ŭ����','5','D:\MYSTUDY\60_web\.metadata\.plugins\org.eclipse.wst.server.core\tmp0\wtpwebapps\Baking\upload\6.jpg');
Insert into REVIEW (REVIEW_IDX,REVIEW_TITLE,REVIEW_DATE,REVIEW_HIT,REVIEW_IMAGE,ID,REVIEW_CLS,REVIEW_STAR,REVIEW_FILEPATH) values (214,'������õ�մϴ�?',to_date('2021/02/24','YYYY/MM/DD'),0,'7.jpg','yuna1880','���� Ŭ����','5','D:\MYSTUDY\60_web\.metadata\.plugins\org.eclipse.wst.server.core\tmp0\wtpwebapps\Baking\upload\7.jpg');
Insert into REVIEW (REVIEW_IDX,REVIEW_TITLE,REVIEW_DATE,REVIEW_HIT,REVIEW_IMAGE,ID,REVIEW_CLS,REVIEW_STAR,REVIEW_FILEPATH) values (217,'�������ٵ� ���� �ʹ��� ����. ���ֽ��ϴ�...!',to_date('2021/02/24','YYYY/MM/DD'),0,'10.jpg','yuna1880','��Ű Ŭ����','5','D:\MYSTUDY\60_web\.metadata\.plugins\org.eclipse.wst.server.core\tmp0\wtpwebapps\Baking\upload\10.jpg');
Insert into REVIEW (REVIEW_IDX,REVIEW_TITLE,REVIEW_DATE,REVIEW_HIT,REVIEW_IMAGE,ID,REVIEW_CLS,REVIEW_STAR,REVIEW_FILEPATH) values (222,'�θ�԰� ���� ���� ����ũ ����⿴��~!!',to_date('2021/02/24','YYYY/MM/DD'),0,'13.jpg','yuna1880','����ũ Ŭ����','4','D:\MYSTUDY\60_web\.metadata\.plugins\org.eclipse.wst.server.core\tmp0\wtpwebapps\Baking\upload\13.jpg');
Insert into REVIEW (REVIEW_IDX,REVIEW_TITLE,REVIEW_DATE,REVIEW_HIT,REVIEW_IMAGE,ID,REVIEW_CLS,REVIEW_STAR,REVIEW_FILEPATH) values (231,'8�ǽ� ���� ���ͼ� ���������ؼ� �ֺ��� �����帮������.',to_date('2021/02/24','YYYY/MM/DD'),0,'22.jpg','yuna1880','��Ű Ŭ����','5','D:\MYSTUDY\60_web\.metadata\.plugins\org.eclipse.wst.server.core\tmp0\wtpwebapps\Baking\upload\22.jpg');
Insert into REVIEW (REVIEW_IDX,REVIEW_TITLE,REVIEW_DATE,REVIEW_HIT,REVIEW_IMAGE,ID,REVIEW_CLS,REVIEW_STAR,REVIEW_FILEPATH) values (186,'ģ����� ������ ���� ���� �Ѱ��� ���� ��ȯ�ϸ� ���ƿ�!',to_date('2021/02/24','YYYY/MM/DD'),0,null,'yuna1880','�̴�Ÿ��Ʈ Ŭ����','4',null);
Insert into REVIEW (REVIEW_IDX,REVIEW_TITLE,REVIEW_DATE,REVIEW_HIT,REVIEW_IMAGE,ID,REVIEW_CLS,REVIEW_STAR,REVIEW_FILEPATH) values (187,'�� �������ּż� �����մϴ�~',to_date('2021/02/24','YYYY/MM/DD'),0,null,'yuna1880','��ī�� Ŭ����','5',null);
Insert into REVIEW (REVIEW_IDX,REVIEW_TITLE,REVIEW_DATE,REVIEW_HIT,REVIEW_IMAGE,ID,REVIEW_CLS,REVIEW_STAR,REVIEW_FILEPATH) values (180,'Ÿ��Ʈ �ְ�',to_date('2021/02/24','YYYY/MM/DD'),0,null,'yuna1880','�̴�Ÿ��Ʈ Ŭ����','5',null);
Insert into REVIEW (REVIEW_IDX,REVIEW_TITLE,REVIEW_DATE,REVIEW_HIT,REVIEW_IMAGE,ID,REVIEW_CLS,REVIEW_STAR,REVIEW_FILEPATH) values (182,'����ģ���� ���� ������ϴ�.',to_date('2021/02/24','YYYY/MM/DD'),0,null,'yuna1880','��ī�� Ŭ����','5',null);
Insert into REVIEW (REVIEW_IDX,REVIEW_TITLE,REVIEW_DATE,REVIEW_HIT,REVIEW_IMAGE,ID,REVIEW_CLS,REVIEW_STAR,REVIEW_FILEPATH) values (192,'����̶� ���� �� ���ϴ´�� �ż� �����մϴ�',to_date('2021/02/24','YYYY/MM/DD'),0,null,'yuna1880','�̴�Ÿ��Ʈ Ŭ����','5',null);
Insert into REVIEW (REVIEW_IDX,REVIEW_TITLE,REVIEW_DATE,REVIEW_HIT,REVIEW_IMAGE,ID,REVIEW_CLS,REVIEW_STAR,REVIEW_FILEPATH) values (195,'�����Բ��� ��û ģ���ϰ� �������ֽð� ���Ҿ��..',to_date('2021/02/24','YYYY/MM/DD'),0,null,'yuna1880','�̴�Ÿ��Ʈ Ŭ����','5',null);
Insert into REVIEW (REVIEW_IDX,REVIEW_TITLE,REVIEW_DATE,REVIEW_HIT,REVIEW_IMAGE,ID,REVIEW_CLS,REVIEW_STAR,REVIEW_FILEPATH) values (197,'�ʹ����ƿ�',to_date('2021/02/24','YYYY/MM/DD'),0,null,'yuna1880','�̴�Ÿ��Ʈ Ŭ����','5',null);
Insert into REVIEW (REVIEW_IDX,REVIEW_TITLE,REVIEW_DATE,REVIEW_HIT,REVIEW_IMAGE,ID,REVIEW_CLS,REVIEW_STAR,REVIEW_FILEPATH) values (199,'���� ��վ����!???',to_date('2021/02/24','YYYY/MM/DD'),0,null,'yuna1880','���� Ŭ����','5',null);
Insert into REVIEW (REVIEW_IDX,REVIEW_TITLE,REVIEW_DATE,REVIEW_HIT,REVIEW_IMAGE,ID,REVIEW_CLS,REVIEW_STAR,REVIEW_FILEPATH) values (201,'�λ� ù ��ī�� Ŭ�������µ� ���� �ʹ� ��վ����!! ',to_date('2021/02/24','YYYY/MM/DD'),0,'review1 (1).jpg','yuna1880','��ī�� Ŭ����','5','D:\MYSTUDY\60_web\.metadata\.plugins\org.eclipse.wst.server.core\tmp0\wtpwebapps\Baking\upload\review1 (1).jpg');
Insert into REVIEW (REVIEW_IDX,REVIEW_TITLE,REVIEW_DATE,REVIEW_HIT,REVIEW_IMAGE,ID,REVIEW_CLS,REVIEW_STAR,REVIEW_FILEPATH) values (202,'��ī�� ���� �ٸ� Ŭ������ ���� �;��??',to_date('2021/02/24','YYYY/MM/DD'),0,null,'yuna1880','��ī�� Ŭ����','5',null);
Insert into REVIEW (REVIEW_IDX,REVIEW_TITLE,REVIEW_DATE,REVIEW_HIT,REVIEW_IMAGE,ID,REVIEW_CLS,REVIEW_STAR,REVIEW_FILEPATH) values (204,'��ī�� ó�������??��?������ �Բ��߽��ϴ�!',to_date('2021/02/24','YYYY/MM/DD'),0,null,'yuna1880','�̴�Ÿ��Ʈ Ŭ����','5',null);
Insert into REVIEW (REVIEW_IDX,REVIEW_TITLE,REVIEW_DATE,REVIEW_HIT,REVIEW_IMAGE,ID,REVIEW_CLS,REVIEW_STAR,REVIEW_FILEPATH) values (205,'�ֺ��� ��õ�Ϸ�����???',to_date('2021/02/24','YYYY/MM/DD'),0,'4.jpg','yuna1880','���� Ŭ����','5','D:\MYSTUDY\60_web\.metadata\.plugins\org.eclipse.wst.server.core\tmp0\wtpwebapps\Baking\upload\review1 (14).jpg');
Insert into REVIEW (REVIEW_IDX,REVIEW_TITLE,REVIEW_DATE,REVIEW_HIT,REVIEW_IMAGE,ID,REVIEW_CLS,REVIEW_STAR,REVIEW_FILEPATH) values (206,'��ī�� ������ �پ��ؼ� ���ҽ��ϴ�?',to_date('2021/02/24','YYYY/MM/DD'),0,'2.jpg','yuna1880','��ī�� Ŭ����','5','D:\MYSTUDY\60_web\.metadata\.plugins\org.eclipse.wst.server.core\tmp0\wtpwebapps\Baking\upload\2.jpg');
Insert into REVIEW (REVIEW_IDX,REVIEW_TITLE,REVIEW_DATE,REVIEW_HIT,REVIEW_IMAGE,ID,REVIEW_CLS,REVIEW_STAR,REVIEW_FILEPATH) values (213,'������ �����ϴ� ������ ����....??',to_date('2021/02/24','YYYY/MM/DD'),0,'7.jpg','yuna1880','���� Ŭ����','5','D:\MYSTUDY\60_web\.metadata\.plugins\org.eclipse.wst.server.core\tmp0\wtpwebapps\Baking\upload\7.jpg');
Insert into REVIEW (REVIEW_IDX,REVIEW_TITLE,REVIEW_DATE,REVIEW_HIT,REVIEW_IMAGE,ID,REVIEW_CLS,REVIEW_STAR,REVIEW_FILEPATH) values (215,'���ݷ�.. ���� ���ƿ� �����߾��',to_date('2021/02/24','YYYY/MM/DD'),0,'8.jpg','yuna1880','�̴�Ÿ��Ʈ Ŭ����','3','D:\MYSTUDY\60_web\.metadata\.plugins\org.eclipse.wst.server.core\tmp0\wtpwebapps\Baking\upload\8.jpg');
Insert into REVIEW (REVIEW_IDX,REVIEW_TITLE,REVIEW_DATE,REVIEW_HIT,REVIEW_IMAGE,ID,REVIEW_CLS,REVIEW_STAR,REVIEW_FILEPATH) values (223,'��հ� �ʹ��ʹ� ���־�� ?!!!!',to_date('2021/02/24','YYYY/MM/DD'),0,'14.jpg','yuna1880','����ũ Ŭ����','5','D:\MYSTUDY\60_web\.metadata\.plugins\org.eclipse.wst.server.core\tmp0\wtpwebapps\Baking\upload\14.jpg');
Insert into REVIEW (REVIEW_IDX,REVIEW_TITLE,REVIEW_DATE,REVIEW_HIT,REVIEW_IMAGE,ID,REVIEW_CLS,REVIEW_STAR,REVIEW_FILEPATH) values (226,'�̰� �Ӽ� 129...?',to_date('2021/02/24','YYYY/MM/DD'),0,'17.jpg','yuna1880','�̴�Ÿ��Ʈ Ŭ����','5','D:\MYSTUDY\60_web\.metadata\.plugins\org.eclipse.wst.server.core\tmp0\wtpwebapps\Baking\upload\17.jpg');
Insert into REVIEW (REVIEW_IDX,REVIEW_TITLE,REVIEW_DATE,REVIEW_HIT,REVIEW_IMAGE,ID,REVIEW_CLS,REVIEW_STAR,REVIEW_FILEPATH) values (236,'��ī�� ��¥ �˵�޴� �ְ��� ??',to_date('2021/02/24','YYYY/MM/DD'),0,'30.jpg','yuna1880','�̴�Ÿ��Ʈ Ŭ����','4','D:\MYSTUDY\60_web\.metadata\.plugins\org.eclipse.wst.server.core\tmp0\wtpwebapps\Baking\upload\30.jpg');
Insert into REVIEW (REVIEW_IDX,REVIEW_TITLE,REVIEW_DATE,REVIEW_HIT,REVIEW_IMAGE,ID,REVIEW_CLS,REVIEW_STAR,REVIEW_FILEPATH) values (237,'��ſ� �����̿��� ��ī���� �� ���� �������������ϴ�.?',to_date('2021/02/24','YYYY/MM/DD'),0,'31.jpg','yuna1880','��ī�� Ŭ����','5','D:\MYSTUDY\60_web\.metadata\.plugins\org.eclipse.wst.server.core\tmp0\wtpwebapps\Baking\upload\31.jpg');
Insert into REVIEW (REVIEW_IDX,REVIEW_TITLE,REVIEW_DATE,REVIEW_HIT,REVIEW_IMAGE,ID,REVIEW_CLS,REVIEW_STAR,REVIEW_FILEPATH) values (208,'��ī�� ���� �Ф�',to_date('2021/02/24','YYYY/MM/DD'),0,'1.jpg','yuna1880','��ī�� Ŭ����','5','D:\MYSTUDY\60_web\.metadata\.plugins\org.eclipse.wst.server.core\tmp0\wtpwebapps\Baking\upload\1.jpg');
Insert into REVIEW (REVIEW_IDX,REVIEW_TITLE,REVIEW_DATE,REVIEW_HIT,REVIEW_IMAGE,ID,REVIEW_CLS,REVIEW_STAR,REVIEW_FILEPATH) values (189,'�� �湮�ҷ����� ^^',to_date('2021/02/24','YYYY/MM/DD'),0,null,'yuna1880','��Ű Ŭ����','4',null);
Insert into REVIEW (REVIEW_IDX,REVIEW_TITLE,REVIEW_DATE,REVIEW_HIT,REVIEW_IMAGE,ID,REVIEW_CLS,REVIEW_STAR,REVIEW_FILEPATH) values (193,'���ο���...',to_date('2021/02/24','YYYY/MM/DD'),0,null,'yuna1880','�̴�Ÿ��Ʈ Ŭ����','2',null);
Insert into REVIEW (REVIEW_IDX,REVIEW_TITLE,REVIEW_DATE,REVIEW_HIT,REVIEW_IMAGE,ID,REVIEW_CLS,REVIEW_STAR,REVIEW_FILEPATH) values (216,'���ݷ�..��������',to_date('2021/02/24','YYYY/MM/DD'),0,'9.jpg','yuna1880','���ݸ� Ŭ����','3','D:\MYSTUDY\60_web\.metadata\.plugins\org.eclipse.wst.server.core\tmp0\wtpwebapps\Baking\upload\9.jpg');
Insert into REVIEW (REVIEW_IDX,REVIEW_TITLE,REVIEW_DATE,REVIEW_HIT,REVIEW_IMAGE,ID,REVIEW_CLS,REVIEW_STAR,REVIEW_FILEPATH) values (181,'Ÿ��Ʈ Ŭ������ �����ؼ�..',to_date('2021/02/24','YYYY/MM/DD'),0,null,'yuna1880','�̴�Ÿ��Ʈ Ŭ����','4',null);
Insert into REVIEW (REVIEW_IDX,REVIEW_TITLE,REVIEW_DATE,REVIEW_HIT,REVIEW_IMAGE,ID,REVIEW_CLS,REVIEW_STAR,REVIEW_FILEPATH) values (221,'�ʺ��ڵ� �ϱ� ���� �� �������ֽð�....',to_date('2021/02/24','YYYY/MM/DD'),0,'12.jpg','yuna1880','����ũ Ŭ����','5','D:\MYSTUDY\60_web\.metadata\.plugins\org.eclipse.wst.server.core\tmp0\wtpwebapps\Baking\upload\12.jpg');
Insert into REVIEW (REVIEW_IDX,REVIEW_TITLE,REVIEW_DATE,REVIEW_HIT,REVIEW_IMAGE,ID,REVIEW_CLS,REVIEW_STAR,REVIEW_FILEPATH) values (190,'���� �տ��ʺ��� ��� �� �ִ� Ŭ��������',to_date('2021/02/24','YYYY/MM/DD'),0,null,'yuna1880','��ī�� Ŭ����','5',null);
Insert into REVIEW (REVIEW_IDX,REVIEW_TITLE,REVIEW_DATE,REVIEW_HIT,REVIEW_IMAGE,ID,REVIEW_CLS,REVIEW_STAR,REVIEW_FILEPATH) values (196,'Ÿ��Ʈ �ְ�!',to_date('2021/02/24','YYYY/MM/DD'),0,null,'yuna1880','�̴�Ÿ��Ʈ Ŭ����','5',null);
Insert into REVIEW (REVIEW_IDX,REVIEW_TITLE,REVIEW_DATE,REVIEW_HIT,REVIEW_IMAGE,ID,REVIEW_CLS,REVIEW_STAR,REVIEW_FILEPATH) values (188,'������100!!',to_date('2021/02/24','YYYY/MM/DD'),0,null,'yuna1880','����ũ Ŭ����','5',null);
Insert into REVIEW (REVIEW_IDX,REVIEW_TITLE,REVIEW_DATE,REVIEW_HIT,REVIEW_IMAGE,ID,REVIEW_CLS,REVIEW_STAR,REVIEW_FILEPATH) values (203,'������ ��ī�� ��°ųİ� ��� �������������� ����',to_date('2021/02/24','YYYY/MM/DD'),0,'review1 (3).jpg','yuna1880','��ī�� Ŭ����','5','D:\MYSTUDY\60_web\.metadata\.plugins\org.eclipse.wst.server.core\tmp0\wtpwebapps\Baking\upload\review1 (3).jpg');
Insert into REVIEW (REVIEW_IDX,REVIEW_TITLE,REVIEW_DATE,REVIEW_HIT,REVIEW_IMAGE,ID,REVIEW_CLS,REVIEW_STAR,REVIEW_FILEPATH) values (207,'���ƿ�',to_date('2021/02/24','YYYY/MM/DD'),0,'3.jpg','yuna1880','���ݸ� Ŭ����','5','D:\MYSTUDY\60_web\.metadata\.plugins\org.eclipse.wst.server.core\tmp0\wtpwebapps\Baking\upload\review1 (1).png');
Insert into REVIEW (REVIEW_IDX,REVIEW_TITLE,REVIEW_DATE,REVIEW_HIT,REVIEW_IMAGE,ID,REVIEW_CLS,REVIEW_STAR,REVIEW_FILEPATH) values (211,' ����ְ� ����� �����ߴ� �ð��̿����ϴ�. ',to_date('2021/02/24','YYYY/MM/DD'),0,'5.jpg','yuna1880','���� Ŭ����','5','D:\MYSTUDY\60_web\.metadata\.plugins\org.eclipse.wst.server.core\tmp0\wtpwebapps\Baking\upload\5.jpg');
Insert into REVIEW (REVIEW_IDX,REVIEW_TITLE,REVIEW_DATE,REVIEW_HIT,REVIEW_IMAGE,ID,REVIEW_CLS,REVIEW_STAR,REVIEW_FILEPATH) values (224,'������ �����մϴ�.',to_date('2021/02/24','YYYY/MM/DD'),0,'15.jpg','yuna1880','����ũ Ŭ����','3','D:\MYSTUDY\60_web\.metadata\.plugins\org.eclipse.wst.server.core\tmp0\wtpwebapps\Baking\upload\15.jpg');
Insert into REVIEW (REVIEW_IDX,REVIEW_TITLE,REVIEW_DATE,REVIEW_HIT,REVIEW_IMAGE,ID,REVIEW_CLS,REVIEW_STAR,REVIEW_FILEPATH) values (229,'�ٸ� Ŭ������ �����Ͻø� �� �����ϰ� �;��?',to_date('2021/02/24','YYYY/MM/DD'),0,'21.jpg','yuna1880','��Ű Ŭ����','5','D:\MYSTUDY\60_web\.metadata\.plugins\org.eclipse.wst.server.core\tmp0\wtpwebapps\Baking\upload\21.jpg');
Insert into REVIEW (REVIEW_IDX,REVIEW_TITLE,REVIEW_DATE,REVIEW_HIT,REVIEW_IMAGE,ID,REVIEW_CLS,REVIEW_STAR,REVIEW_FILEPATH) values (232,'��ī�� ���� �ٸ� Ŭ������ ���� �;��??',to_date('2021/02/24','YYYY/MM/DD'),0,'24.jpg','yuna1880','��ī�� Ŭ����','5','D:\MYSTUDY\60_web\.metadata\.plugins\org.eclipse.wst.server.core\tmp0\wtpwebapps\Baking\upload\24.jpg');
Insert into REVIEW (REVIEW_IDX,REVIEW_TITLE,REVIEW_DATE,REVIEW_HIT,REVIEW_IMAGE,ID,REVIEW_CLS,REVIEW_STAR,REVIEW_FILEPATH) values (233,'�ʺ��ڵ� ���� �� �� �ֵ��� ���� �Ϻ��ϰ� ���ּſ�. ',to_date('2021/02/24','YYYY/MM/DD'),0,'23.jpg','yuna1880','��ī�� Ŭ����','5','D:\MYSTUDY\60_web\.metadata\.plugins\org.eclipse.wst.server.core\tmp0\wtpwebapps\Baking\upload\23.jpg');
Insert into REVIEW (REVIEW_IDX,REVIEW_TITLE,REVIEW_DATE,REVIEW_HIT,REVIEW_IMAGE,ID,REVIEW_CLS,REVIEW_STAR,REVIEW_FILEPATH) values (235,'���� �����Ѱͺ��� �ξ� �̻ڰ� ���ְ� �����Ե� ģ���ϼ���',to_date('2021/02/24','YYYY/MM/DD'),0,'27.jpg','yuna1880','���� Ŭ����','5','D:\MYSTUDY\60_web\.metadata\.plugins\org.eclipse.wst.server.core\tmp0\wtpwebapps\Baking\upload\27.jpg');
Insert into REVIEW (REVIEW_IDX,REVIEW_TITLE,REVIEW_DATE,REVIEW_HIT,REVIEW_IMAGE,ID,REVIEW_CLS,REVIEW_STAR,REVIEW_FILEPATH) values (225,'Ŭ������ ����...����Ƽ�� �̸� ��.....',to_date('2021/02/24','YYYY/MM/DD'),0,'16.jpg','yuna1880','����ũ Ŭ����','5','D:\MYSTUDY\60_web\.metadata\.plugins\org.eclipse.wst.server.core\tmp0\wtpwebapps\Baking\upload\16.jpg');
Insert into REVIEW (REVIEW_IDX,REVIEW_TITLE,REVIEW_DATE,REVIEW_HIT,REVIEW_IMAGE,ID,REVIEW_CLS,REVIEW_STAR,REVIEW_FILEPATH) values (227,'�ٽ� ����  ����� ���� ��ſ��� ��������~ �� �̻���^^',to_date('2021/02/24','YYYY/MM/DD'),0,'18.jpg','yuna1880','����ũ Ŭ����','4','D:\MYSTUDY\60_web\.metadata\.plugins\org.eclipse.wst.server.core\tmp0\wtpwebapps\Baking\upload\18.jpg');
Insert into REVIEW (REVIEW_IDX,REVIEW_TITLE,REVIEW_DATE,REVIEW_HIT,REVIEW_IMAGE,ID,REVIEW_CLS,REVIEW_STAR,REVIEW_FILEPATH) values (228,'���� �� ��û�Ѱ� ���� 10000%�����մϴ� ?',to_date('2021/02/24','YYYY/MM/DD'),0,'19.jpg','yuna1880','�̴�Ÿ��Ʈ Ŭ����','5','D:\MYSTUDY\60_web\.metadata\.plugins\org.eclipse.wst.server.core\tmp0\wtpwebapps\Baking\upload\19.jpg');
Insert into REVIEW (REVIEW_IDX,REVIEW_TITLE,REVIEW_DATE,REVIEW_HIT,REVIEW_IMAGE,ID,REVIEW_CLS,REVIEW_STAR,REVIEW_FILEPATH) values (183,'����Ʈ �ڽ��� �����ϴ�~~!!! ������õ!!',to_date('2021/02/24','YYYY/MM/DD'),0,null,'yuna1880','�̴�Ÿ��Ʈ Ŭ����','4',null);
Insert into REVIEW (REVIEW_IDX,REVIEW_TITLE,REVIEW_DATE,REVIEW_HIT,REVIEW_IMAGE,ID,REVIEW_CLS,REVIEW_STAR,REVIEW_FILEPATH) values (230,'�� ����(?) �����ϴ� �� �����ϴ٤Ф� �ٽ� �� �� �ʹ��� �����մϴ�.',to_date('2021/02/24','YYYY/MM/DD'),0,'20.jpg','yuna1880','�̴�Ÿ��Ʈ Ŭ����','4','D:\MYSTUDY\60_web\.metadata\.plugins\org.eclipse.wst.server.core\tmp0\wtpwebapps\Baking\upload\20.jpg');
Insert into REVIEW (REVIEW_IDX,REVIEW_TITLE,REVIEW_DATE,REVIEW_HIT,REVIEW_IMAGE,ID,REVIEW_CLS,REVIEW_STAR,REVIEW_FILEPATH) values (220,'�ʹ��ʹ���԰� ���Ե����ϱ����ƿ� ������ ���� �����մϴ�??????',to_date('2021/02/24','YYYY/MM/DD'),0,'11.jpg','yuna1880','��ī�� Ŭ����','5','D:\MYSTUDY\60_web\.metadata\.plugins\org.eclipse.wst.server.core\tmp0\wtpwebapps\Baking\upload\11.jpg');
Insert into REVIEW (REVIEW_IDX,REVIEW_TITLE,REVIEW_DATE,REVIEW_HIT,REVIEW_IMAGE,ID,REVIEW_CLS,REVIEW_STAR,REVIEW_FILEPATH) values (234,'������õ�մϴ�??',to_date('2021/02/24','YYYY/MM/DD'),0,'26.jpg','yuna1880','��ī�� Ŭ����','5','D:\MYSTUDY\60_web\.metadata\.plugins\org.eclipse.wst.server.core\tmp0\wtpwebapps\Baking\upload\26.jpg');
REM INSERTING into TEACHER
SET DEFINE OFF;
Insert into TEACHER (TEACHER_ID,TEA_NAME,TEA_CLASS,TEA_EMAIL,TEA_IMAGE) values ('yuna1880','������ ���ݶ�Ƽ��','���ݸ� Ŭ����','yuna@naver.com','tobi3.png');
Insert into TEACHER (TEACHER_ID,TEA_NAME,TEA_CLASS,TEA_EMAIL,TEA_IMAGE) values ('sunba','�輱�� ������','��ī�� Ŭ����','sunba@naver.com','tobi1.png');
Insert into TEACHER (TEACHER_ID,TEA_NAME,TEA_CLASS,TEA_EMAIL,TEA_IMAGE) values ('ans','�Ƚ� ���ݶ�Ƽ��','���� Ŭ����','ans@naver.com','tobi2.png');
Insert into TEACHER (TEACHER_ID,TEA_NAME,TEA_CLASS,TEA_EMAIL,TEA_IMAGE) values ('2sanghee','�̻��� ������','����ũ Ŭ����','sang@naver.com','tobi.png');
Insert into TEACHER (TEACHER_ID,TEA_NAME,TEA_CLASS,TEA_EMAIL,TEA_IMAGE) values ('hong','����ȫ ������','��Ű Ŭ����','hong@naver.com','tobi5.png');
Insert into TEACHER (TEACHER_ID,TEA_NAME,TEA_CLASS,TEA_EMAIL,TEA_IMAGE) values ('bbogang','�躸�� ��Ƽ��','�̴�Ÿ��Ʈ Ŭ����','bbo@naver.com','tobi6.png');
--------------------------------------------------------
--  DDL for Index CLS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "CLS_PK" ON "CLS" ("CLS_IDX") 
  ;
--------------------------------------------------------
--  DDL for Index MEMBER_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "MEMBER_PK" ON "MEMBER" ("ID") 
  ;
--------------------------------------------------------
--  DDL for Index NOTICE_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "NOTICE_PK" ON "NOTICE" ("NOTICE_IDX") 
  ;
--------------------------------------------------------
--  DDL for Index PAYMENT_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "PAYMENT_PK" ON "PAYMENT" ("PAY_IDX") 
  ;
--------------------------------------------------------
--  DDL for Index RESERVATION_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "RESERVATION_PK" ON "RESERVATION" ("RESERV_IDX") 
  ;
--------------------------------------------------------
--  DDL for Index REVIEW_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "REVIEW_PK" ON "REVIEW" ("REVIEW_IDX") 
  ;
--------------------------------------------------------
--  DDL for Index TEACHER_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "TEACHER_PK" ON "TEACHER" ("TEACHER_ID") 
  ;
--------------------------------------------------------
--  DDL for Index CLS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "CLS_PK" ON "CLS" ("CLS_IDX") 
  ;
--------------------------------------------------------
--  DDL for Index MEMBER_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "MEMBER_PK" ON "MEMBER" ("ID") 
  ;
--------------------------------------------------------
--  DDL for Index NOTICE_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "NOTICE_PK" ON "NOTICE" ("NOTICE_IDX") 
  ;
--------------------------------------------------------
--  DDL for Index PAYMENT_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "PAYMENT_PK" ON "PAYMENT" ("PAY_IDX") 
  ;
--------------------------------------------------------
--  DDL for Index RESERVATION_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "RESERVATION_PK" ON "RESERVATION" ("RESERV_IDX") 
  ;
--------------------------------------------------------
--  DDL for Index REVIEW_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "REVIEW_PK" ON "REVIEW" ("REVIEW_IDX") 
  ;
--------------------------------------------------------
--  DDL for Index TEACHER_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "TEACHER_PK" ON "TEACHER" ("TEACHER_ID") 
  ;
--------------------------------------------------------
--  DDL for Trigger CLS_AI_TRG
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "CLS_AI_TRG" 
BEFORE INSERT ON CLS 
REFERENCING NEW AS NEW FOR EACH ROW 
BEGIN 
    SELECT CLS_SEQ.NEXTVAL
    INTO :NEW.cls_idx
    FROM DUAL;
END;

/
ALTER TRIGGER "CLS_AI_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger NOTICE_AI_TRG
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "NOTICE_AI_TRG" 
BEFORE INSERT ON NOTICE 
REFERENCING NEW AS NEW FOR EACH ROW 
BEGIN 
    SELECT NOTICE_SEQ.NEXTVAL
    INTO :NEW.notice_idx
    FROM DUAL;
END;

/
ALTER TRIGGER "NOTICE_AI_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger PAYMENT_AI_TRG
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "PAYMENT_AI_TRG" 
BEFORE INSERT ON PAYMENT 
REFERENCING NEW AS NEW FOR EACH ROW 
BEGIN 
    SELECT PAYMENT_SEQ.NEXTVAL
    INTO :NEW.pay_idx
    FROM DUAL;
END;

/
ALTER TRIGGER "PAYMENT_AI_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger RESERVATION_AI_TRG
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "RESERVATION_AI_TRG" 
BEFORE INSERT ON RESERVATION 
REFERENCING NEW AS NEW FOR EACH ROW 
BEGIN 
    SELECT RESERVATION_SEQ.NEXTVAL
    INTO :NEW.reserv_idx
    FROM DUAL;
END;

/
ALTER TRIGGER "RESERVATION_AI_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger REVIEW_TRG
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "REVIEW_TRG" 
BEFORE INSERT ON REVIEW 
FOR EACH ROW 
BEGIN
  <<COLUMN_SEQUENCES>>
  BEGIN
    NULL;
  END COLUMN_SEQUENCES;
END;
/
ALTER TRIGGER "REVIEW_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger CLS_AI_TRG
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "CLS_AI_TRG" 
BEFORE INSERT ON CLS 
REFERENCING NEW AS NEW FOR EACH ROW 
BEGIN 
    SELECT CLS_SEQ.NEXTVAL
    INTO :NEW.cls_idx
    FROM DUAL;
END;

/
ALTER TRIGGER "CLS_AI_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger NOTICE_AI_TRG
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "NOTICE_AI_TRG" 
BEFORE INSERT ON NOTICE 
REFERENCING NEW AS NEW FOR EACH ROW 
BEGIN 
    SELECT NOTICE_SEQ.NEXTVAL
    INTO :NEW.notice_idx
    FROM DUAL;
END;

/
ALTER TRIGGER "NOTICE_AI_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger PAYMENT_AI_TRG
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "PAYMENT_AI_TRG" 
BEFORE INSERT ON PAYMENT 
REFERENCING NEW AS NEW FOR EACH ROW 
BEGIN 
    SELECT PAYMENT_SEQ.NEXTVAL
    INTO :NEW.pay_idx
    FROM DUAL;
END;

/
ALTER TRIGGER "PAYMENT_AI_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger RESERVATION_AI_TRG
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "RESERVATION_AI_TRG" 
BEFORE INSERT ON RESERVATION 
REFERENCING NEW AS NEW FOR EACH ROW 
BEGIN 
    SELECT RESERVATION_SEQ.NEXTVAL
    INTO :NEW.reserv_idx
    FROM DUAL;
END;

/
ALTER TRIGGER "RESERVATION_AI_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger REVIEW_TRG
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "REVIEW_TRG" 
BEFORE INSERT ON REVIEW 
FOR EACH ROW 
BEGIN
  <<COLUMN_SEQUENCES>>
  BEGIN
    NULL;
  END COLUMN_SEQUENCES;
END;
/
ALTER TRIGGER "REVIEW_TRG" ENABLE;
--------------------------------------------------------
--  Constraints for Table CLS
--------------------------------------------------------

  ALTER TABLE "CLS" ADD CONSTRAINT "CLS_PK" PRIMARY KEY ("CLS_IDX") ENABLE;
  ALTER TABLE "CLS" MODIFY ("CLS_IDX" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table MEMBER
--------------------------------------------------------

  ALTER TABLE "MEMBER" ADD CONSTRAINT "MEMBER_PK" PRIMARY KEY ("ID") ENABLE;
  ALTER TABLE "MEMBER" MODIFY ("NAME" NOT NULL ENABLE);
  ALTER TABLE "MEMBER" MODIFY ("PWD" NOT NULL ENABLE);
  ALTER TABLE "MEMBER" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table NOTICE
--------------------------------------------------------

  ALTER TABLE "NOTICE" ADD CONSTRAINT "NOTICE_PK" PRIMARY KEY ("NOTICE_IDX") ENABLE;
  ALTER TABLE "NOTICE" MODIFY ("NOTICE_IDX" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table PAYMENT
--------------------------------------------------------

  ALTER TABLE "PAYMENT" ADD CONSTRAINT "PAYMENT_PK" PRIMARY KEY ("PAY_IDX") ENABLE;
  ALTER TABLE "PAYMENT" MODIFY ("PAY_IDX" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table RESERVATION
--------------------------------------------------------

  ALTER TABLE "RESERVATION" ADD CONSTRAINT "RESERVATION_PK" PRIMARY KEY ("RESERV_IDX") ENABLE;
  ALTER TABLE "RESERVATION" MODIFY ("RESERV_IDX" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table REVIEW
--------------------------------------------------------

  ALTER TABLE "REVIEW" MODIFY ("REVIEW_STAR" NOT NULL ENABLE);
  ALTER TABLE "REVIEW" MODIFY ("REVIEW_CLS" NOT NULL ENABLE);
  ALTER TABLE "REVIEW" ADD CONSTRAINT "REVIEW_PK" PRIMARY KEY ("REVIEW_IDX") ENABLE;
  ALTER TABLE "REVIEW" MODIFY ("REVIEW_IDX" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table TEACHER
--------------------------------------------------------

  ALTER TABLE "TEACHER" ADD CONSTRAINT "TEACHER_PK" PRIMARY KEY ("TEACHER_ID") ENABLE;
  ALTER TABLE "TEACHER" MODIFY ("TEACHER_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Ref Constraints for Table CLS
--------------------------------------------------------

  ALTER TABLE "CLS" ADD CONSTRAINT "FK_CLS_TEACHER_ID_MEMBER_ID" FOREIGN KEY ("TEACHER_ID")
	  REFERENCES "MEMBER" ("ID") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table PAYMENT
--------------------------------------------------------

  ALTER TABLE "PAYMENT" ADD CONSTRAINT "FK_PAYMENT_RESERV_IDX_RESERVAT" FOREIGN KEY ("RESERV_IDX")
	  REFERENCES "RESERVATION" ("RESERV_IDX") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table RESERVATION
--------------------------------------------------------

  ALTER TABLE "RESERVATION" ADD CONSTRAINT "FK_RESERVATION_CLS_IDX_CLS_CLS" FOREIGN KEY ("CLS_IDX")
	  REFERENCES "CLS" ("CLS_IDX") ON DELETE CASCADE ENABLE;
  ALTER TABLE "RESERVATION" ADD CONSTRAINT "FK_RESERVATION_ID_MEMBER_ID" FOREIGN KEY ("ID")
	  REFERENCES "MEMBER" ("ID") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table REVIEW
--------------------------------------------------------

  ALTER TABLE "REVIEW" ADD CONSTRAINT "FK_REVIEW_ID_MEMBER_ID" FOREIGN KEY ("ID")
	  REFERENCES "MEMBER" ("ID") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table TEACHER
--------------------------------------------------------

  ALTER TABLE "TEACHER" ADD CONSTRAINT "FK_TEACHER_TEACHER_ID_MEMBER_I" FOREIGN KEY ("TEACHER_ID")
	  REFERENCES "MEMBER" ("ID") ON DELETE CASCADE ENABLE;
