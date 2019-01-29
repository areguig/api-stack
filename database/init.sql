CREATE SCHEMA IF NOT EXISTS application;

CREATE table application.app_messages(
    id serial PRIMARY KEY,
    message VARCHAR
);

insert into application.app_messages(message)
values('hello from the stack.');