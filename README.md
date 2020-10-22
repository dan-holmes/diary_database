# Diary App -

## Installation

```
> psql
> CREATE DATABASE diary;
> \c diary
> CREATE TABLE entries (id SERIAL PRIMARY KEY, title VARCHAR (50), body VARCHAR (500));
> exit
> psql
> CREATE DATABASE diary_test;
> \c diary_test
> CREATE TABLE entries (id SERIAL PRIMARY KEY, title VARCHAR (50), body VARCHAR (500));
```