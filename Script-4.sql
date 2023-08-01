insert into "user" (user_id,username) values (1 ,'John Doe'),
(2, 'Jane Don'),
(3, 'Alice Jones'),
(4, 'Lisa Romero')


insert into training_details (user_training_id,user_id,training_id,training_date) values
(2,2,1,'2015-08-03'),
(3,3,2,'2015-08-02'),
(4,4,2,'2015-08-04'),
(5,2,2,'2015-08-03'),
(6,1,1,'2015-08-02'),
(7,3,2,'2015-08-04'),
(8,4,3,'2015-08-03'),
(9,1,4,'2015-08-03'),
(10,3,1,'2015-08-02'),
(11,4,2,'2015-08-04'),
(12,3,2,'2015-08-02'),
(13,1,1,'2015-08-02'),
(14,4,3,'2015-08-03')




SELECT u.username, t.user_id, t.training_date, COUNT(t.training_id) 
 FROM training_details t JOIN users u ON (u.user_id = t.user_id)
 GROUP BY u.username,t.user_id, t.training_id, t.training_date
 HAVING COUNT(t.training_id)>1
 ORDER BY t.training_date DESC;