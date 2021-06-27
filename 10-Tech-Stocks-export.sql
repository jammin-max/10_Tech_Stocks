-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/REBYWx
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "ticker_name" (
    "ticker" VARCHAR   NOT NULL,
    "company_name" VARCHAR   NOT NULL,
    "avg_opening" FLOAT   NOT NULL,
    "avg_closing" FLOAT   NOT NULL,
    "max_high" FLOAT   NOT NULL,
    "min_low" FLOAT   NOT NULL,
    CONSTRAINT "pk_ticker_name" PRIMARY KEY (
        "ticker"
     )
);

CREATE TABLE "sentiment" (
    "index" INT   NOT NULL,
    "ticker" VARCHAR   NOT NULL,
    "date" DATE   NOT NULL,
    "news_title" VARCHAR   NOT NULL,
    "compound_score" FLOAT   NOT NULL,
    CONSTRAINT "pk_Sentiment" PRIMARY KEY (
        "index"
     )
);

CREATE TABLE "ticker_daily" (
    "index" INT   NOT NULL,
    "ticker" VARCHAR   NOT NULL,
    "opening" FLOAT   NOT NULL,
    "closing" FLOAT   NOT NULL,
    "high" FLOAT   NOT NULL,
    "low" FLOAT   NOT NULL,
    "date" DATE   NOT NULL,
    CONSTRAINT "pk_ticker_daily-" PRIMARY KEY (
        "index"
     )
);

ALTER TABLE "sentiment" ADD CONSTRAINT "fk_Sentiment_ticker" FOREIGN KEY("ticker")
REFERENCES "ticker_name" ("ticker");

ALTER TABLE "ticker_daily" ADD CONSTRAINT "fk_ticker_daily-_ticker" FOREIGN KEY("ticker")
REFERENCES "ticker_name" ("ticker");

