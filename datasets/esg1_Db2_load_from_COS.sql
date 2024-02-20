INSERT INTO <schema_name>.esg1 
SELECT * FROM EXTERNAL 'esg1.csv' 
USING (CCSID 1208 s3('s3.us-east.cloud-object-storage.appdomain.cloud', 
		'access_key_id', 
		'secret_access_key', 
		'gas-datamon') 
SKIPROWS 1 DELIMITER ',' MAXERRORS 0);
