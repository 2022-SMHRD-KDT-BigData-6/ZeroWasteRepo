-- 사용자 정보 테이블
create table userInfo (
id varchar2(20),
pw varchar2(20) not null,
nickname varchar2(20) not null,
point number(4,1) default 0 not null,
constraint userInfo_id_pk primary key(id),
);

insert into userInfo(id, pw, nickname)
values ('masterid', '1234', 'master')

select * from USERINFO

drop table userInfo

update USERINFO set point = 1 where id = '최현우'
update USERINFO set point = 2 where id = '김채윤'
update USERINFO set point = 3 where id = '유슬이'
update USERINFO set point = 4 where id = '김연이'
update USERINFO set point = 5 where id = 'masterid'

-- 매장 정보 테이블
create table storeInfo (
storeNum number(10),
storeName varchar2(50) not null,
storeAddress varchar2(200) not null,
foodType varchar2(20) not null,
latutude varchar2(20) not null,
longitude varchar2(20) not null,
url varchar2(150) not null,
imageurl varchar2(330),
constraint store_snum_pk primary key(storeNum)
);

-- 매장번호에 쓸 시퀀스
create sequence store_num_seq
        start with 137
        increment by 1
        maxvalue 999999
        nocycle
        nocache
        
drop sequence store_num_seq

insert into storeInfo
values (store_num_seq.nextval,'동명식빵','광주광역시 동구 동계천로 157','카페','35.14919736053822',' 126.92650745620224','https://pcmap.place.naver.com/restaurant/1451719606/home?from=map&fromPanelNum=2&ts=1654222632165')

select * from storeInfo

drop table storeInfo

-- 보상정보 테이블
create table rewardInfo(
treeGrade varchar2(30),
minValue number(4,1) not null,
maxValue number(4,1) not null,
constraint rewardInfo_tree_pk primary key(treeGrade)
);

insert into rewardInfo
values ('씨앗',0.0,0.9)

select * from rewardInfo

drop table rewardInfo

-- 인증정보 테이블
create table certiInfo(
cerNum number(10),
id varchar2(20) not null,
storeName varchar2(50) not null,
review varchar2(500),
fileName varchar2(100) not null,
day DATE not null,
constraint certiInfo_cnum_pk primary key(cerNum),
constraint certiInfo_id_fk foreign key(id) references userInfo(id)
);

select * from certiInfo

-- 인증순번에 쓸 시퀀스
create sequence cer_num_seq
        start with 1
        increment by 1
        maxvalue 999999
        nocycle
        nocache

drop table certiInfo
drop sequence cer_num_seq

select u.nickname, r.treegrade
		from userInfo u, rewardInfo r
		where u.point between r.minvalue and r.maxvalue
		and id = '최현우'
		
select * from certiInfo order by day desc;

select * from certiInfo

delete from CERTIINFO
where cernum between 1 and 1+9
order by day desc