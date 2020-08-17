create database BlogTask

create table Posts (
post_id int identity primary key,
title varchar(100),
posted_on datetime,
updated_on datetime,
user_id int foreign key references Users(user_id)
)

	create procedure sp_Fetch_Posts(@postid int) as
	begin
	if(@postid>0)
	begin
	select * from Posts where post_id =@postid;
	end;
	else
	begin
	select * from Posts;
	end;
	end;


begin 
select * from Posts where user_id=@userid
end

exec sp_Fetch_Posts 1

select * from posts

insert into Posts values('Data Republic', GETDATE(), Null, 1)
insert into Posts values('Smartblogger', GETDATE(), Null, 1)
insert into Posts values('Zen Habits', GETDATE(), Null, 1)

create procedure sp_userLogin(@uname varchar(20),@pass varchar(20))
as
begin 
select * from users where user_name=@uname and password=@pass;
end

select * from users