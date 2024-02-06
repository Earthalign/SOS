/*==============================================================*/
/* DBMS name:      Sybase SQL Anywhere 12                       */
/* Created on:     21/01/2024 13:10:53                          */
/*==============================================================*/


/*==============================================================*/
/* Table: ACCOUNT                                               */
/*==============================================================*/
create table ACCOUNT 
(
   ACCOUNT_ID           integer                        not null,
   ACCOUNTSTATUS_ID     integer                        not null,
   "LOGIN"              varchar(50)                    null,
   PASSWORD             varchar(50)                    null,
   EMAIL                varchar(50)                    null,
   constraint PK_ACCOUNT primary key (ACCOUNT_ID)
);

/*==============================================================*/
/* Table: ACCOUNTSTATUS                                         */
/*==============================================================*/
create table ACCOUNTSTATUS 
(
   ACCOUNTSTATUS_ID     integer                        not null,
   ACCOUNTSTATUS        varchar(50)                    not null,
   constraint PK_ACCOUNTSTATUS primary key (ACCOUNTSTATUS_ID)
);

/*==============================================================*/
/* Table: BOOK                                                  */
/*==============================================================*/
create table BOOK 
(
   BOOK_ID              integer                        not null,
   STUDENT_ID           integer                        null,
   BOOKSTATUS_ID        integer                        not null,
   NAME                 varchar(50)                    null,
   SERIAL_NUMBER        varchar(50)                    null,
   BORROW_DATE          date                           null,
   RETURN_DATE          date                           null,
   constraint PK_BOOK primary key (BOOK_ID)
);

/*==============================================================*/
/* Table: BOOKSTATUS                                            */
/*==============================================================*/
create table BOOKSTATUS 
(
   BOOKSTATUS_ID        integer                        not null,
   BOOKSTATUS           varchar(50)                    not null,
   constraint PK_BOOKSTATUS primary key (BOOKSTATUS_ID)
);


/*==============================================================*/
/* Table: LECTURE                                               */
/*==============================================================*/
create table LECTURE 
(
   LECTURE_ID           integer                        not null,
   NAME                 varchar(50)                    null,
   "DATE"               date                           null,
   DESCRIPTION          varchar(100)                   null,
   constraint PK_LECTURE primary key (LECTURE_ID)
);


/*==============================================================*/
/* Table: MARK                                                  */
/*==============================================================*/
create table MARK 
(
   MARK_ID              integer                        not null,
   LECTURE_ID           integer                        not null,
   STUDENT_ID           integer                        not null,
   NAME                 varchar(50)                    null,
   VALUE                integer                        null,
   "DATE"               date                           null,
   DESCRIPTION          varchar(100)                   null,
   constraint PK_MARK primary key (MARK_ID)
);


/*==============================================================*/
/* Table: PAYMENT                                               */
/*==============================================================*/
create table PAYMENT 
(
   PAYMENT_ID           integer                        not null,
   STUDENT_ID           integer                        not null,
   AMMOUNT              float(10)                      null,
   TITLE                varchar(50)                    null,
   IS_PAID              boolean                        null,
   constraint PK_PAYMENT primary key (PAYMENT_ID)
);

/*==============================================================*/
/* Table: STUDENT                                               */
/*==============================================================*/
create table STUDENT 
(
   STUDENT_ID           integer                        not null,
   ACCOUNT_ID           integer                        not null,
   INDEX_NUMBER         integer                        null,
   FIRST_NAME           varchar(50)                    null,
   SURNAME              varchar(50)                    null,
   BIRTHDATY_DATE       date                           null,
   PHONE                varchar(50)                    null,
   ADDRESS              varchar(50)                    null,
   constraint PK_STUDENT primary key (STUDENT_ID)
);
