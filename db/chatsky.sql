DROP DATABASE IF EXISTS `chatsky`;

CREATE DATABASE `chatsky`;

USE `chatsky`;

CREATE TABLE IF NOT EXISTS `login` (
  `id` int(10) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
);

INSERT INTO
  `login` (`id`, `username`, `password`)
VALUES
  (1, 'tanmay', 'pass'),
  (2, 'tushar', 'pass'),
  (3, 'rushi', 'pass');

CREATE TABLE IF NOT EXISTS `chats` (
  `id` int(10) NOT NULL,
  `username` varchar(40) NOT NULL,
  `msg` text NOT NULL
);

INSERT INTO
  `chats` (`id`, `username`, `msg`)
VALUES
  (55, 'tushar', 'Hello, how are you?'),
  (56, 'tanmay', 'Hi @tushar, i''m fine!'),
  (
    57,
    'tushar',
    'So, what are you doing right now?'
  ),
  (
    58,
    'tanmay',
    'Nothing special, I''m just chilling'
  );

ALTER TABLE
  `login`
ADD
  PRIMARY KEY (`id`);

ALTER TABLE
  `chats`
ADD
  PRIMARY KEY (`id`);

ALTER TABLE
  `login`
MODIFY
  `id` int(10) NOT NULL AUTO_INCREMENT,
  AUTO_INCREMENT = 3;

ALTER TABLE
  `chats`
MODIFY
  `id` int(10) NOT NULL AUTO_INCREMENT,
  AUTO_INCREMENT = 59;