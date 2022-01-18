-- Drops existing tables, so we start fresh with each
-- run of this script
-- e.g. DROP TABLE IF EXISTS ______;
DROP TABLE IF EXISTS contacts;
DROP TABLE IF EXISTS activities;
DROP TABLE IF EXISTS companies;
DROP TABLE IF EXISTS salespersons;
DROP TABLE IF EXISTS ;

-- CREATE TABLES
CREATE TABLE contacts (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    title TEXT,
    first_name TEXT,
    last_name TEXT,
    email TEXT,
    phone_number INTEGER,
    company_id INTEGER
);

CREATE TABLE activities (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    contact_id INTEGER,
    type TEXT,
    date TEXT,
    time TEXT,
    notes TEXT,
    salesperson_id INTEGER
);

CREATE TABLE companies (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT,
    industry TEXT
);

CREATE TABLE salespersons (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    first_name TEXT,
    last_name TEXT,
    email TEXT,
    phone_number TEXT
);

CREATE TABLE revenues (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    value INTEGER,
    date TEXT,
    salesperson_id INTEGER,
    company_id INTEGER
);