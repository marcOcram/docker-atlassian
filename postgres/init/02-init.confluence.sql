CREATE ROLE confluence WITH
	LOGIN
	PASSWORD 'confluence';

CREATE DATABASE confluence WITH
	ENCODING 'UTF8'
	LC_COLLATE 'en_US.utf8'
	LC_CTYPE 'en_US.utf8'
	TEMPLATE template0;

GRANT ALL PRIVILEGES ON DATABASE confluence TO confluence;
