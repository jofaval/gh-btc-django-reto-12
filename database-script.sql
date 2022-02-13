CREATE DATABASE IF NOT EXISTS bookstore;

USE bookstore;

DROP TABLE IF EXISTS api_book;
DROP TABLE IF EXISTS api_author;

CREATE TABLE IF NOT EXISTS api_author (
    `id` int auto_increment,
    `name` varchar(100) not null,
    `created_date` datetime not null,
    primary key (`id`),
    `added_by_id` int,
    foreign key (`added_by_id`) references `api_author`(`id`)
    on delete no action
    on update cascade
);

CREATE TABLE IF NOT EXISTS api_book (
    `id` int auto_increment,
    `title` varchar(100) not null,
    `description` text,
    `created_date` datetime not null,
    `added_by_id` int,
    `author_id` int,
    primary key (`id`),
    foreign key (`author_id`) references `api_author`(`id`)
    on delete no action
    on update cascade,
    foreign key (`added_by_id`) references `api_author`(`id`)
    on delete no action
    on update cascade
);