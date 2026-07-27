-- 1
CREATE DATABASE "LibraryDB";

-- 2
CREATE SCHEMA library;

-- 3
CREATE TABLE library.books (
	book_id SERIAL PRIMARY KEY,
	title VARCHAR(100) NOT NULL,
	author VARCHAR(255) NOT NULL,
	published_year INT,
	available BOOLEAN DEFAULT TRUE
);

-- 4
CREATE TABLE library.members (
	member_id SERIAL PRIMARY KEY,
	name VARCHAR(100) NOT NULL,
	email VARCHAR(255) UNIQUE NOT NULL,
	join_date DATE DEFAULT CURRENT_DATE
);