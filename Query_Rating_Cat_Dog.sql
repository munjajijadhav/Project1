
show databases;
drop table search_result;
create database search_result;
use search_result;
create table search_result (
Query_ VARCHAR(50) ,
 Result_id INTEGER unique,
 Position INTEGER,
 Rating INTEGER,
 Notes VARCHAR(50));
 
insert into search_result (
query_ , result_id, position, rating, Notes)
values ('dog',1000,1,2,'Picture of Snoop dog');
insert into search_result (
query_ , result_id, position, rating, Notes)
values ('dog',998,2,4,'Dog Walking');
insert into search_result (
query_ , result_id, position, rating, Notes)
values ('dog',342,3,1,'Donkey');
insert into search_result (
query_ , result_id, position, rating, Notes)
values ('cat',123,1,4,'Picture of cat');
insert into search_result (
query_ , result_id, position, rating, Notes)
values ('cat',435,2,2,'Cat memes');
insert into search_result (
query_ , result_id, position, rating, Notes)
values ('cat',545,3,1,'Burrito');

#ALTER TABLE search_result
# ADD Notes varchar(40) NOT NULL
#AFTER rating;
#SET SQL_SAFE_UPDATES = 1;

select * from search_result;
#The table below indicates the search results of ‘dog’ and ‘cat’ on Twitter, position column represents 
#each position the search result came in, and the rating column represents the rating allotted to the 
#search result (1 to 5 rating, where 5 is high relevance and 1 is low relevance). 
#Write a query to compute a metric to measure the quality of the search results for each query.


select query_ as Query, round(avg(rating) ,2) as avg_rating  from search_result
where query_ = 'dog';

select query_ as Query, round(avg(rating) ,2) as avg_rating  from search_result
where query_ = 'cat';