CREATE TABLE sentiment (
	index int PRIMARY KEY,
	symbol VARCHAR,
	date DATE,
	news_title VARCHAR,
	compound_score FLOAT
);

CREATE TABLE ticker_daily (
	index INT PRIMARY KEY,
	ticker VARCHAR,
	opening FLOAT,
	closing FLOAT,
	high FLOAT,
	low FLOAT,
	date DATE
);

CREATE TABLE ticker_name (
	symbol VARCHAR PRIMARY KEY,
	average FLOAT,
	... ...,
	... ...,
	... ...,
	... ....
);