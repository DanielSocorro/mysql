# SQL and MySQL


#### What is a database?
A Database is a place where a large amount of data is stored, which is later converted into information through a process.

#### MySql Commands
Log in
~~~sql
    mysql -u user-name -p
~~~
Where -u is user and -p is password.
___
~~~sql
    use data-base-name;
~~~
Change the database to use.
___

~~~sql
    show full columns from books;
~~~
Shows the complete detail of the table.
___


#### Database Engines
The best-known database engines are __Innodb__ and __Myissam__, there are certain notable differences between the two that are worth mentioning to know which one to choose.

Innodb considered as an [ACID] ​​compliant transactional database engine with the ability to commit , rollback, crash recovery.

Myissam is a database engine that treats non-transactional tables which makes it faster to read and write data.

##### Some advantages and disadvantages
innodb
+ Transaction support.
+ Lock records.

Myissam
+ Greater speed in data recovery.
+ Recommended for applications where the __select__ statement prevails over the __inserts/updates__.

#### Cardinality
Cardinality is simply the relationships that can exist between tables in a database.
+ one to one
+ one to many
+ many to one

#### DDL language
Language of definition of data:
+ Create: create objects such as views, tables, store procedures and indices.
+ Drop: Used to remove objects such as views, store procedures, tables.
+ Alter: Used to edit tables by adding fields or changing their definition.

A good practice is that the name of the table must be a plural noun in English.

~~~sql
create table if not exists books(
    id Integer unsigned primary key auto_increment,
    authorInteger,
    title varchar(100) not null,
    year integer unsigned default 1990,
    language varchar(2) not null default 'en' comment 'ISO 639',
    cover_url varchar(500),
    price double(6,2) not null default 10.0,sellable tinyint() default 1,
    copies integer not null default 1,
    description text
);
~~~

#### DML language
Data manipulation language provided by database management systems that allows data query or modification tasks.

##### Select
~~~sql
select * from table where field = 'value'
~~~
##### Insert
~~~sql
insert into table (field1, field2) values ​​(value1, value2);
~~~

##### update
~~~sql
udate table field = 'value to modify' where field = value
~~~
#####Delete
~~~sql
delete from table where field = value;
~~~

##### Inner JOIN
It is considered the easiest way to obtain information, practically all the rows of table A that coincide with table B are obtained.

~~~sql
select * from table_a as a inner join table_b as b on a.pk = b.pk;
~~~

##### Left JOIN
All the rows from table A are selected, as well as the matching rows from table B.

~~~sql
select * from table_a as a left join table_b as b on a.pk = b.pk;
~~~
##### Right JOIN
All the rows from table B are selected, as well as the matching rows from table A.

~~~sql
select * from table_a as a left join table_b as b on a.pk = b.pk;
~~~
##### Outer JOIN
Returns all the rows of both tables in addition to making the union between the matching tables.

~~~sql
select * from table_a as a outer join table_b as b on a.pk = b.pk;
~~~
##### Left excluding JOIN
For this case, it returns all the rows of table A that do not have any coincidence with table B.
~~~sql
select * from table_a as a left join table_b as b on a.pk = b.pk where b.pk is null;
~~~
##### Right excluding JOIN
For this case, it returns all the rows of table B that do not have any coincidence with table A.
~~~sql
select * from table_a as a right join table_b as b on a.pk = b.pk where b.pk is null;
~~~
##### Outer excluding JOIN
For this case, it returns all the rows of both tables that do not have matches.
~~~sql
select * from table_a as a full outer join table_b as b on a.pk = b.pk where a.pk is null or b.pk is null;
~~~