DROP TABLE member CASCADE constraints;
DROP TABLE character CASCADE constraints;
DROP TABLE cart CASCADE constraints;
DROP TABLE PAYMENT cascade constraints;
DROP TABLE blog cascade constraints;
DROP TABLE scrap cascade constraints;

CREATE TABLE member(
	member_id varchar2(20),
	pw varchar2(20),
	name varchar2(20),
	email varchar2(20),
	CONSTRAINT pk_member_id PRIMARY KEY(member_id)
);

CREATE TABLE character(
	character_filename varchar2(500),
	member_id varchar2(20),
	character_title varchar2(100),
	constraint pk_character_filename primary key(character_filename),
	constraint fk_member_id_characeter FOREIGN KEY (member_id) REFERENCES member(member_id)
);

CREATE TABLE cart(
	cart_id NUMBER (20) NOT NULL,
	member_id varchar2(20),
	group_id NUMBER(20),
	CONSTRAINT pk_cart_cid PRIMARY KEY(cart_id)
);

CREATE TABLE cart(
	cart_filename varchar2(500),
	member_id varchar2(20),
	cart_price varchar2(20),
	constraint fk_member_id_cart FOREIGN KEY (member_id) REFERENCES member(member_id),
	constraint fk_cart_filename_cart FOREIGN KEY (cart_filename) REFERENCES character(character_filename)
);



CREATE TABLE PAYMENT(
	payment_id NUMBER (20),
	member_id varchar2(20),
	time varchar2(20),
	price varchar2(20),
	cart_id NUMBER (20),
	CONSTRAINT pk_payment_pid PRIMARY KEY(payment_id),
	constraint uk_payment_tm unique(time)
);

CREATE TABLE blog(
	filename varchar2(500),
	member_id varchar2(20),
	content varchar2(1000),
	title varchar2(100),
	recommend number,
	constraint pk_filename primary key(filename),
	constraint fk_member_id_blog FOREIGN KEY (member_id) REFERENCES member(member_id)
);


CREATE TABLE scrap(
	member_id VARCHAR2(20),
	group_id NUMBER(20),
	payment_id NUMBER(20),
	time VARCHAR2(20),
	constraint fk_member_id FOREIGN KEY (member_id) REFERENCES member(member_id),
	constraint fk_group_id FOREIGN KEY (group_id) REFERENCES character(group_id),
	constraint fk_payment_id FOREIGN KEY (payment_id) REFERENCES payment(payment_id),
	constraint fk_time FOREIGN KEY (time) REFERENCES payment(time)
);

select * from member;
select * from cart;

select * from blog;
select * from character;

insert into CHARACTER values('characterImg/1.png', 'song','aaa'); 
insert into CHARACTER values('characterImg/2.png', 'song','aaa'); 
insert into CHARACTER values('characterImg/3.png', 'song','aaa'); 
insert into CHARACTER values('characterImg/4.png', 'song','aaa'); 
insert into CHARACTER values('characterImg/5.png', 'song','aaa'); 
insert into CHARACTER values('characterImg/6.png', 'song','aaa'); 
insert into CHARACTER values('characterImg/7.png', 'song','aaa'); 
insert into CHARACTER values('characterImg/8.png', 'song','aaa'); 
insert into CHARACTER values('characterImg/9.png', 'song','aaa'); 
insert into CHARACTER values('characterImg/10.png', 'song','aaa'); 

insert into blog values('1.png','song', '제목','설명입니다',0); 


select e.*
from (select ROWNUM as rn, CHARACTER_FILENAME, MEMBER_ID, CHARACTER_TITLE
      from character
      order by dbms_random.value
     ) e
where rn <= 5;

