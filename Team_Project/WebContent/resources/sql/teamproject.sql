use persondb;
drop table if exists members;
create table members(
	user_id          varchar(20)  not null,				
	user_pw          varchar(20)  not null,
	user_name		varchar(10)   not null,
	user_birth		 varchar(20)  not null,
	user_email		 varchar(30)  not null,
	user_address	 varchar(90)  not null,
	primary key (user_id)
);

insert into members values('gumi', '0217', '구미', '19880101', 'lee@naver.com', '구미시');
select * from members;

drop table if exists bookmark;
create table bookmark(
	book_page_title   varchar(100),  
	book_page_url	varchar(200), 
	user_id    		varchar(20),
	foreign key (user_id) references members(user_id),
	primary key (book_page_url)
);

 













