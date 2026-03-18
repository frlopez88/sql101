---- Relations

create table tweet (
  id serial primary key, 
  username  varchar(50), 
  post varchar(250)
);


create table comments (
  id serial primary key,
  comment varchar(150), 
  username varchar(50),
  id_tweet int references tweet(id)
); 

insert into tweet
(username, post)
values
('fernando', 'I like React ❤️!');

insert into comments
(comment, username, id_tweet)
values
('Me too, it rocks! 🤘🏼', 'jerod', 1),
('React is the best framework!', 'kiundra', 1);

insert into tweet
(username, post)
values
('shayla', 'My preferred programming language is SQL');


insert into comments
(comment, username, id_tweet)
values
('SQL sucks! 😭', 'fernando', 2);



select * from tweet;

select * from comments;

-- how can we get all the comments from the tweet id=1

select * from comments
where id_tweet=1;

-- inner join 

-- how can we get all the comments from the tweet id=1 and the user that created the tweet
select tweet.id, tweet.post, tweet.username, comments.comment, comments.username as user_comment from tweet  
inner join comments 
on tweet.id = comments.id_tweet
-- allways we connect to 2 tables with the primary key and the foreign key
where id_tweet=1;


--- update statement

select * from students;

update students
set grade = 100;


update students
set grade = 95
where id= 2;

update students
set grade = 98
where id= 3;

update students
set grade = 99
where id= 4;

update students
set grade = 100, 
    birth_date = '02-feb-2000'
where id= 4;


--- delete statement

delete from students;
---      def       SQL      HTTP(Method)
---C  : Create  : Insert  : POST
---R  : Read    : Select  : GET
---U  : Update  : Update  : PATCH o PUT
---D  : Delete  : Delete  : DELETE