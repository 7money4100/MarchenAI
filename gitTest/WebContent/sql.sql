DROP TABLE member CASCADE constraints;
DROP TABLE character CASCADE constraints;
DROP TABLE cart CASCADE constraints;
DROP TABLE blog cascade constraints;
DROP TABLE scrap cascade constraints;

CREATE TABLE member(
   member_id varchar2(20),
   pw varchar2(20),
   name varchar2(20),
   email varchar2(20),
   CONSTRAINT pk_member_id PRIMARY KEY(member_id)
);
select * from member; 


CREATE TABLE character(
   character_filename varchar2(500),
   member_id varchar2(20),
   character_price varchar2(20),
   constraint pk_character_filename primary key(character_filename),
   constraint fk_member_id_characeter FOREIGN KEY (member_id) REFERENCES member(member_id)
);
select * from character; 


CREATE TABLE cart(
   cart_filename varchar2(500),
   member_id varchar2(20),
   cart_price varchar2(20),
   constraint fk_member_id_cart FOREIGN KEY (member_id) REFERENCES member(member_id),
   constraint fk_cart_filename_cart FOREIGN KEY (cart_filename) REFERENCES character(character_filename)
);
select * from cart; 


CREATE TABLE blog(
   filename varchar2(500),
   member_id varchar2(20),
   content varchar2(1000),
   title varchar2(100) not null,
   recommend number,
   constraint pk_filename primary key(filename),
   constraint fk_member_id_blog FOREIGN KEY (member_id) REFERENCES member(member_id)
);
select * from blog;


CREATE TABLE love(
   l_file_name varchar2(500),
   l_member_id varchar2(20),
   l_recommend number
);
select * from love;


CREATE TABLE scrap(
   scrap_filename varchar2(500),
   member_id varchar2(20),
   scrap_price varchar2(20),
   constraint fk_member_id_scrap FOREIGN KEY (member_id) REFERENCES member(member_id),
   constraint fk_scrap_filename_scrap FOREIGN KEY (scrap_filename) REFERENCES character(character_filename)
);
select * from scrap;


insert into CHARACTER values('characterImg/1.png', '1','1'); 
insert into CHARACTER values('characterImg/2.png', '1','1'); 
insert into CHARACTER values('characterImg/3.png', '1','1'); 
insert into CHARACTER values('characterImg/4.png', '1','1'); 
insert into CHARACTER values('characterImg/5.png', '1','1'); 
insert into CHARACTER values('characterImg/6.png', '1','1'); 
insert into CHARACTER values('characterImg/7.png', '1','1'); 
insert into CHARACTER values('characterImg/8.png', '1','1'); 
insert into CHARACTER values('characterImg/9.png', '1','1'); 
insert into CHARACTER values('characterImg/10.png', '1','1'); 


select e.*
from (select ROWNUM as rn, CHARACTER_FILENAME, MEMBER_ID, CHARACTER_TITLE
      from character
      order by dbms_random.value
     ) e
where rn <= 5;