use health_insurance;

delete from person p
where ssn = '123456789';
delete from person p
where ssn = '875675477';
select * from person_del_log;

insert into person
	values(935729475,'Joe','8347837484','783 Mark hill,NC',7675,3453,7865);
insert into person
	values(835729491,'Jack','8347867484','564 Clark hill,NH',9564,4554,1234);

update claim           
set paid_date = '2022-12-16'
where ssn = 956365675;

update claim           
set paid_date = '2022-09-11'
where ssn = 747626547;

insert into visit
	values(956365675,3243,'2021-11-19','ADHD','1');
insert into visit
	values(747626547,5465,'2022-09-23','Covid','1');
insert into visit
	values(747626547,5465,'2022-09-27','Covid','1');
