CREATE TABLE ticker_name (
	ticker VARCHAR PRIMARY KEY,
	company_name VARCHAR,
	avg_opening FLOAT,
	avg_closing FLOAT,
	max_high FLOAT,
	min_low FLOAT
);

CREATE TABLE sentiment (
	index int PRIMARY KEY,
	ticker VARCHAR,
	date DATE,
	news_title VARCHAR,
	compound_score FLOAT,
	FOREIGN KEY (ticker) REFERENCES ticker_name(ticker)
);

CREATE TABLE ticker_daily (
	index INT PRIMARY KEY,
	ticker VARCHAR,
	opening FLOAT,
	closing FLOAT,
	high FLOAT,
	low FLOAT,
	date DATE,
	FOREIGN KEY (ticker) REFERENCES ticker_name(ticker)
);