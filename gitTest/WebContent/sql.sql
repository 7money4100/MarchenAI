DROP TABLE member CASCADE constraints;
DROP TABLE character CASCADE constraints;
DROP TABLE cart CASCADE constraints;
DROP TABLE PAYMENT cascade constraints;
DROP TABLE blog cascade constraints;
DROP TABLE scrap cascade constraints;

CREATE TABLE member CASCADE constraints(
	member_id varchar2(20),
	pw varchar2(20),
	name varchar2(20),
	email varchar2(20),
	CONSTRAINT pk_member_mid PRIMARY KEY(member_id)
);

CREATE TABLE character(
	group_id number,
	time varchar2(20),
	filenameprefix varchar2(20),
	constraint pk_member_mid primary key(group_id)
);

CREATE TABLE cart(
	cart_id NUMBER (20) NOT NULL,
	member_id varchar2(20),
	group_id NUMBER(20),
	CONSTRAINT pk_cart_cid PRIMARY KEY(cart_id)
);

CREATE TABLE PAYMENT(
	payment_id NUMBER (20),
	member_id varchar2(20),
	time varchar2(20),
	price varchar2(20),
	cart_id NUMBER (20),
	CONSTRAINT pk_payment_pid PRIMARY KEY(payment_id)
);

CREATE TABLE blog(
	blog_id number,
	member_id varchar2(20),
	group_id number,
	content varchar2(20),
	time varchar2(20),
	recommend varchar2(20),
	constraint pk_blog_bid primary key(blog_id)
);

CREATE TABLE scrap(
	member_id VARCHAR2(20) FOREIGN KEY REFERENCES member (member_id),
	group_id NUMBER(20) FOREIGN KEY REFERENCES character (group_id),
	payment_id NUMBER(20) FOREIGN KEY REFERENCES payment (payment_id),
	time VARCHAR2(20) FOREIGN KEY REFERENCES payment (time)
);