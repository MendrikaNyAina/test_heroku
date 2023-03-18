CREATE SEQUENCE category_id_seq START WITH 1;
CREATE SEQUENCE article_id_seq START WITH 1;

CREATE  TABLE category ( 
	id                   integer DEFAULT nextval('category_id_seq'::regclass) NOT NULL  ,
	name                 varchar(50)  NOT NULL ,
	CONSTRAINT pk_category_id PRIMARY KEY ( id )
 );

CREATE  TABLE article ( 
	id                   integer DEFAULT nextval('article_id_seq'::regclass) NOT NULL  ,
	category_id          integer  NOT NULL ,
	title                varchar(100)  NOT NULL ,
	resume               text  NOT NULL ,
	content              text   ,
	CONSTRAINT pk_article_ids PRIMARY KEY ( id ),
	CONSTRAINT fk_article_category FOREIGN KEY ( category_id ) REFERENCES category( id )  
 );

INSERT INTO category VALUES
(1, 'info flash'),
(2, 'news'),
(3, 'evenement'),
(4, 'politics events'),
(5, 'sport'),
(6, 'culture'),
(7, 'economy'),
(8, 'science'),
(9, 'health'),
(10, 'technology'),
(11, 'travel'),
(12, 'entertainment'),
(13, 'lifestyle'),
(14, 'weather'),
(15, 'other');

