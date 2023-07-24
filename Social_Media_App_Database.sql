-- CREATING A SOCIAL MEDIA DATABASE
create database Social_Media;
use Social_Media;

-- CREATING USERS TABLE
create table Users(
  user_id int primary key auto_increment,
  username varchar(20),
  email varchar(40),
  join_date date,
  last_login timestamp
);

-- CREATING POSTS TABLE
create table Posts(
	post_id int primary key,
    user_id int,
    content varchar(200),
    post_date date,
    likes int,
    comments text,
    foreign key(user_id) references Users(user_id)
);

-- CREATING FOLLOWERS TABLE
create table followers(
	follower_id int primary key,
    user_id int,
    follower_user_id int,
    follow_date date,
    foreign key(user_id) references Users(user_id),
    foreign key(follower_user_id) references Users(user_id)
);

-- CREATING ANALYTICS TABLE
create table Analytics(
	analytics_id int primary key,
	post_id int,
    views int,
    shares int, 
    saves int, 
    reach int, 
    engagement int,
	foreign key(post_id) references Posts(post_id)
);

-- CREATING MESSAGES TABLE
create table messages(
	message_id int primary key,
    sender_id int,
    receiver_id int,
    message_text text,
    message_date date,
    is_read tinyint,
	foreign key(sender_id) references Users(user_id),
	foreign key(receiver_id) references Users(user_id)
);

show tables;
