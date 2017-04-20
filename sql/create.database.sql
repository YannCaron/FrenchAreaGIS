CREATE DATABASE home
  WITH OWNER = pggis
       ENCODING = 'UTF8'
       TABLESPACE = pg_default
       LC_COLLATE = 'en_US.UTF-8'
       LC_CTYPE = 'en_US.UTF-8'
       CONNECTION LIMIT = -1;

-- Enable PostGIS (includes raster)
CREATE EXTENSION postgis;
-- Enable Topology
CREATE EXTENSION postgis_topology;
-- Enable PostGIS Advanced 3D 
-- and other geoprocessing algorithms
-- sfcgal not available with all distributions
--CREATE EXTENSION postgis_sfcgal;
-- fuzzy matching needed for Tiger
--CREATE EXTENSION fuzzystrmatch;
-- rule based standardizer
-- CREATE EXTENSION address_standardizer;
-- example rule data set
-- CREATE EXTENSION address_standardizer_data_us;
-- Enable US Tiger Geocoder
--CREATE EXTENSION postgis_tiger_geocoder;

