drop table member_c;

create table member_c(
	id varchar2(10) primary key,
	password varchar2(10) not null,
	gender varchar2(1) not null,
	age number not null, 
	location varchar2(100) not null, 
	job varchar2(50) not null, 
	height number not null, 
	hobby varchar2(50) not null, 
	admin varchar2(1) not null, 
	picture varchar2(100) not null, 
	mbti varchar2(4) not null, 
	kakao varchar2(50) not null 
)

insert into member_c values('java','1234','M','25','제주','학생',1,'영화',1,'iu.jpg','intp','kilene');
insert into member_c values('jsp','1234','F','27','서울','학생',1,'영화',1,'iu.jpg','esfp','jinyong');
select * from member_c; 

drop table board_c; 

create table board_c(
	post_no number primary key, 
	title varchar(100) not null, 
	content clob not null, 
	time_posted date not null,
	id not null, 
	constraint fk_boardId foreign key(id) references member_c(id)
)

drop sequence board_c_seq; 
create sequence board_c_seq; 

drop table poke_c; 

create table poke_c(
	poke_no number primary key,
	se_Id varchar(10) not null,
	re_Id varchar(10) not null, 
	confirm varchar(1) not null, 
	constraint fk_seId foreign key(se_Id) references member_c(id),
	constraint fk_reId foreign key(re_Id) references member_c(id)
)

insert into poke_c values(poke_seq.nextval,'java','jsp',0);
select * from POKE_C; 

--내가 보낸 쪽지
select m.id, p.re_Id, p.confirm
from member_c m, POKE_C p
where m.id = p.se_Id; 

--내가 받은 쪽지 
select m.id, p.se_Id, p.confirm
from member_c m, poke_c p
where m.id = p.re_Id; 

drop sequence poke_seq; 

create sequence poke_seq; 