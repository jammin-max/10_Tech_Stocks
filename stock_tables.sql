-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/REBYWx
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE Sentiment (
    sentiment_id serial   NOT NULL,
    symbol VARCHAR   NOT NULL,
    date VARCHAR   NOT NULL,
    news_title VARCHAR   NOT NULL,
    compound_score VARCHAR   NOT NULL,
    CONSTRAINT pk_Sentiment PRIMARY KEY (
        sentiment_id )
);

CREATE TABLE ticker (
	key INT Not NULL,
    symbol VARCHAR   NOT NULL,
    company_name VARCHAR (50) NOT NULL,
    CONSTRAINT pk_ticker PRIMARY KEY (symbol)
	
);

CREATE TABLE ticker_daily (
    tick_id serial   NOT NULL,
    ticker VARCHAR   NOT NULL,
    opening INT   NOT NULL,
    closing INT   NOT NULL,
    high INT   NOT NULL,
    low INT   NOT NULL,
	date VARCHAR NOT NULL,
    CONSTRAINT ticker_daily PRIMARY KEY (
        tick_id
     )
);

ALTER TABLE polygon_api ADD CONSTRAINT fk_polygon_api_ticker FOREIGN KEY(ticker)
REFERENCES Scraped_data (ticker);

select * from ticker_daily
