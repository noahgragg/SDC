DROP TABLE IF EXISTS users CASCADE;
DROP TABLE IF EXISTS projects CASCADE;

CREATE TABLE users (
    user_id int PRIMARY KEY GENERATED BY DEFAULT AS IDENTITY,
    username varchar (40),
    first_name varchar (40),
    last_name varchar (40),
    summary text,
    resume_link varchar(100),
    github_link varchar (100)
);

CREATE TABLE projects (
    project_id int PRIMARY KEY GENERATED BY DEFAULT AS IDENTITY,
    project_name varchar (40),
    project_link varchar (100),
    project_desc varchar (500),
    user_id int REFERENCES users ON DELETE CASCADE 
);