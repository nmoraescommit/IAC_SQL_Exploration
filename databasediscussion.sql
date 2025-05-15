-- Create rec table
CREATE TABLE rec (
    superid VARCHAR,
    id VARCHAR,
    ar_number INTEGER,
    arc2 INTEGER,
    impstatus VARCHAR,
    impcost INTEGER,
    psourccode VARCHAR,
    pconserved DOUBLE,
    psourconsv DOUBLE,
    psaved INTEGER,
    fy INTEGER
);

-- Load data into rec
COPY rec FROM 'data/rec.csv' (HEADER);

-- Create assess table
CREATE TABLE assess (
    id VARCHAR PRIMARY KEY,
    center VARCHAR,
    fy INTEGER,
    sic VARCHAR,
    naics VARCHAR,
    state VARCHAR,
    products VARCHAR,
    ec_plant_cost DOUBLE,
    ec_plant_usage DOUBLE
);

-- Load data into assess
COPY assess FROM 'data/assess.csv' (
    HEADER true,
    DELIMITER ',',
    QUOTE '"',
    ESCAPE '"',
    IGNORE_ERRORS true  -- Skip problematic rows for data insertion into table
);

-- Create naics table
CREATE TABLE naics (
    naics VARCHAR,  -- Primary key as NAICS code is the unique identifier
    naics_title VARCHAR,
    naics_description TEXT
);

-- Load data into naics
COPY naics FROM 'data/naics.csv' (HEADER);

-- Create crosswalk table
CREATE TABLE crosswalk (
    naics VARCHAR,
    naics_title VARCHAR,
    sic VARCHAR,
    sic_description VARCHAR
);

-- Load data into crosswalk
COPY crosswalk FROM 'data/crosswalk.csv' (HEADER);