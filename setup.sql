CREATE TABLE posts (
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	title VARCHAR(255) NOT NULL,
	created TIMESTAMP DEFAULT NOW() NOT NULL,
	last_modified TIMESTAMP(8) NOT NULL,
	content TEXT NOT NULL,
	category INT NOT NULL
);

CREATE TABLE categories (
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	title VARCHAR(255) NOT NULL UNIQUE,
);

CREATE TABLE comments (
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	mail VARCHAR(255),
	nickname VARCHAR(255),
	created TIMESTAMP DEFAULT NOW() NOT NULL,
	comment TEXT NOT NULL
);