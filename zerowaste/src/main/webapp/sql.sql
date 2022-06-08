-- ����� ���� ���̺�
create table userInfo (
id varchar2(20),
pw varchar2(20) not null,
nickname varchar2(20) not null,
point number(4,1) default 0 not null,
constraint userInfo_id_pk primary key(id),
constraint userInfo_nick_uq unique (nickname)
);

insert into userInfo(id, pw, nickname)
values ('masterid', '1234', 'master')

select * from USERINFO

drop table userInfo

-- ���� ���� ���̺�
create table storeInfo (
storeNum number(10),
storeName varchar2(50) not null,
storeAddress varchar2(200) not null,
foodType varchar2(20) not null,
latutude varchar2(20) not null,
longitude varchar2(20) not null,
url varchar2(150) not null,
constraint store_snum_pk primary key(storeNum)
);

-- �����ȣ�� �� ������
create sequence store_num_seq
        start with 1
        increment by 1
        maxvalue 999999
        nocycle
        nocache
        
insert into storeInfo
values (store_num_seq.nextval,'����Ļ�','���ֱ����� ���� ����õ�� 157','ī��','35.14919736053822',' 126.92650745620224','https://pcmap.place.naver.com/restaurant/1451719606/home?from=map&fromPanelNum=2&ts=1654222632165')

select * from storeInfo

drop table storeInfo

-- �������� ���̺�
create table rewardInfo(
treeGrade varchar2(30),
minValue number(4,1) not null,
maxValue number(4,1) not null,
constraint rewardInfo_tree_pk primary key(treeGrade)
);

insert into rewardInfo
values ('����',0.0,0.9)

select * from rewardInfo

-- �������� ���̺�
create table certiInfo(
cerNum number(10),
id varchar2(20) not null,
storeName varchar2(50) not null,
review varchar2(500),
constraint certiInfo_cnum_pk primary key(cerNum),
constraint certiInfo_id_fk foreign key(id) references userInfo(id)
);

select * from certiInfo

-- ���������� �� ������
create sequence cer_num_seq
        start with 1
        increment by 1
        maxvalue 999999
        nocycle
        nocache
        
alter table certiInfo add fileName varchar2(100);
alter table certiInfo modify (fileName not null)