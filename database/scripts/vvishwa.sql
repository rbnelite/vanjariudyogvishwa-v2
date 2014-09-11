CREATE DATABASE VVISHWA OWNER postgres;
CREATE USER vvishwa WITH PASSWORD 'rbnelite@123';
GRANT SELECT,INSERT,UPDATE,DELETE ON ALL TABLES IN SCHEMA public TO vvishwa;
\c vvishwa

/*Table structure for table `registration` */

CREATE TABLE USERS (
  SNO INT NOT NULL,
  FIRST_NAME VARCHAR(20) DEFAULT NULL,
  MIDDLE_NAME VARCHAR(20) DEFAULT NULL,
  LAST_NAME VARCHAR(20) DEFAULT NULL,
  EMAIL VARCHAR(30) NOT NULL UNIQUE,
  CONTACT_NO VARCHAR(22) DEFAULT NULL,
  GENDER VARCHAR(10) DEFAULT NULL,
  BIRTHDATE VARCHAR(22) DEFAULT NULL,
  PASSWORD VARCHAR(20) DEFAULT NULL,
  CONTACT_ID INT NOT NULL,
  HOME_ADDRESS VARCHAR(100) DEFAULT NULL,
  RELIGION VARCHAR(20) DEFAULT NULL,
  SUBCAST VARCHAR(20) DEFAULT NULL,
  OFFICE_ADDRESS VARCHAR(100) DEFAULT NULL,
  TELEPHONE VARCHAR(100) DEFAULT NULL,
  PRIMARY KEY (SNO)
 
);

CREATE SEQUENCE REGISTRATION_SEQUENCE; 

/*TABLE STRUCTURE FOR TABLE ASTRO */

CREATE TABLE ASTRO (
  ASTRO_ID INT NOT NULL,
  COUNTRY VARCHAR(20) DEFAULT NULL,
  CITY VARCHAR(20) DEFAULT NULL,
  ZODIAC VARCHAR(20) DEFAULT NULL,
  EMAIL VARCHAR(30) DEFAULT NULL,
  PRIMARY KEY (ASTRO_ID),
  FOREIGN KEY (EMAIL) REFERENCES USERS(EMAIL)
);

CREATE SEQUENCE ASTRO_SEQUENCE;

/*TABLE STRUCTURE FOR TABLE COMMENT */

CREATE TABLE COMMENTS (
  COMMENT_ID INT NOT NULL,
  COMMENT VARCHAR(10000) NOT NULL,
  COMMENT_WHOM VARCHAR(30) DEFAULT NULL,
  STATUS_ID INT DEFAULT NULL,
  COMMENT_ON VARCHAR(30) DEFAULT NULL,
  PRIMARY KEY (COMMENT_ID),
  FOREIGN KEY (COMMENT_WHOM) REFERENCES USERS(EMAIL)
);

CREATE SEQUENCE COMMENTS_SEQUENCE;

/*TABLE STRUCTURE FOR TABLE EDUCATIONWORK */

CREATE TABLE EDUCATION (
  EDUCATION_ID INT NOT NULL,
  SCHOOL VARCHAR(100) DEFAULT NULL,
  COLLAGE VARCHAR(100) DEFAULT NULL,
  GRADUATION VARCHAR(50) DEFAULT NULL,
  OTHER_GRADUATION VARCHAR(50) DEFAULT NULL,
  PG_COLLEGE VARCHAR(100) DEFAULT NULL,
  PG_DEGREE VARCHAR(50) DEFAULT NULL,
  OTHER_PG VARCHAR(50) DEFAULT NULL,
  EMAIL VARCHAR(30) DEFAULT NULL,
  PRIMARY KEY (EDUCATION_ID),
  FOREIGN KEY (EMAIL) REFERENCES USERS(EMAIL),
  CONSTRAINT "education_uniqueKey" UNIQUE (email)
);

CREATE SEQUENCE EDUCATION_SEQUENCE;

/*TABLE STRUCTURE FOR TABLE EMPLOYMENT */

CREATE TABLE EMPLOYMENT (
  EMPLOYEE_ID INT NOT NULL,
  COMPANY_NAME VARCHAR(100) DEFAULT NULL,
  OCCUPATION VARCHAR(100) DEFAULT NULL,
  PRODUCT_DETAILS VARCHAR(200) DEFAULT NULL,
  NUMBER_OF_EMP VARCHAR(100) DEFAULT NULL,
  EMP_TYPE VARCHAR(100) DEFAULT NULL,
  ANNUAL_INCOME VARCHAR(100) DEFAULT NULL,
  EMAIL VARCHAR(50) DEFAULT NULL,
  web_address VARCHAR(200),
  PRIMARY KEY (EMPLOYEE_ID),
  FOREIGN KEY (EMAIL) REFERENCES USERS(EMAIL)
);

CREATE SEQUENCE EMPLOYMENT_SEQUENCE;

/*TABLE STRUCTURE FOR TABLE EVENT */

CREATE TABLE EVENTS (
  EVENT_ID INT NOT NULL,
  NAME VARCHAR(100) DEFAULT NULL,
  DETAILS VARCHAR(500) DEFAULT NULL,
  LOCATION VARCHAR(100) DEFAULT NULL,
  DATATIME VARCHAR(100) DEFAULT NULL,
  EMAIL VARCHAR(30) DEFAULT NULL,
  PRIMARY KEY (EVENT_ID),
  FOREIGN KEY (EMAIL) REFERENCES USERS(EMAIL)
);

CREATE SEQUENCE EVENTS_SEQUENCE;

/*TABLE STRUCTURE FOR TABLE FRNDR_REQUESTS */

CREATE TABLE FRIEND_REQUESTS (
  REQUEST_ID INT DEFAULT NULL,
  REQUESTFROM_ID VARCHAR(50) DEFAULT NULL,
  REQUESTTO_ID VARCHAR(50) DEFAULT NULL,
  STATUS VARCHAR(10) DEFAULT NULL,
  DATE VARCHAR(50) DEFAULT NULL,
  PRIMARY KEY (REQUEST_ID),
  FOREIGN KEY (requestfrom_id)
      REFERENCES users (email) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION,
  FOREIGN KEY (requestto_id)
      REFERENCES users (email) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION
  );

CREATE SEQUENCE FRIEND_REQUESTS_SEQUENCE;

/*TABLE STRUCTURE FOR TABLE FRIENDS_DATA */

CREATE TABLE FRIENDS_DATA (
  FRIEND_ID INT DEFAULT NULL,
  WHOM_FRIEND VARCHAR(30) DEFAULT NULL,
  WHO_FRIEND VARCHAR(30) DEFAULT NULL,
  DATE VARCHAR(50) DEFAULT NULL,
  PRIMARY KEY (FRIEND_ID),
  FOREIGN KEY (WHOM_FRIEND) REFERENCES USERS(EMAIL),
  FOREIGN KEY (WHO_FRIEND) REFERENCES USERS(EMAIL)
  
);

CREATE SEQUENCE FRIENDS_DATA_SEQUENCE;

/*TABLE STRUCTURE FOR TABLE GROUP_IMAGE */

CREATE TABLE INTEREST_TYPE (
  INTEREST_ID INT NOT NULL,
  NAME VARCHAR(100) DEFAULT NULL,
  IMAGE_PATH VARCHAR(500) DEFAULT NULL,
  PRIMARY KEY (INTEREST_ID)
  
);

CREATE SEQUENCE GROUP_IMAGE_SEQUENCE;

/*TABLE STRUCTURE FOR TABLE GROUPS */

CREATE TABLE INTREST_AREAS (
  INTRESTAREA_ID INT NOT NULL,
  EMAIL VARCHAR(50) DEFAULT NULL,
  INTEREST_ID VARCHAR(100) DEFAULT NULL,
  PRIMARY KEY (INTRESTAREA_ID),
  FOREIGN KEY (EMAIL) REFERENCES USERS(EMAIL),
  FOREIGN KEY (INTEREST_ID) REFERENCES INTEREST_TYPE(INTEREST_ID)
);

CREATE SEQUENCE INTREST_AREAS_SEQUENCE;

/*TABLE STRUCTURE FOR TABLE HOBBIES */

CREATE TABLE HOBBIES (
  HOBBIES_ID INT NOT NULL,
  HOBBIES VARCHAR(100) DEFAULT NULL,
  FAVOURITE_MUSIC VARCHAR(100) DEFAULT NULL,
  FAVOURITE_BOOKS VARCHAR(100) DEFAULT NULL,
  DRESS_STYLE_TYPE VARCHAR(100) DEFAULT NULL,
  FAVOURIT_TV_SHOWS VARCHAR(100) DEFAULT NULL,
  FAVOURITE_MOVIES VARCHAR(200) DEFAULT NULL,
  SPORTS VARCHAR(100) DEFAULT NULL,
  FOODICOOK VARCHAR(100) DEFAULT NULL,
  VACATION_DESTINATION VARCHAR(100) DEFAULT NULL,
  EMAIL VARCHAR(30) DEFAULT NULL,
  PRIMARY KEY (HOBBIES_ID),
  FOREIGN KEY (EMAIL) REFERENCES USERS(EMAIL)
);

CREATE SEQUENCE HOBBIES_SEQUENCE;


/*TABLE STRUCTURE FOR TABLE LIFESTYLE */

CREATE TABLE LIFESTYLE (
  LIFE_STYLE_ID INT NOT NULL,
  DIET VARCHAR(20) DEFAULT NULL,
  SMOKE VARCHAR(20) DEFAULT NULL,
  DRINK VARCHAR(20) DEFAULT NULL,
  COMPLEXION VARCHAR(20) DEFAULT NULL,
  BODY_TYPE VARCHAR(20) DEFAULT NULL,
  BLOO_DGROUP VARCHAR(20) DEFAULT NULL,
  WEIGHT VARCHAR(20) DEFAULT NULL,
  EMAIL VARCHAR(30) DEFAULT NULL,
  PRIMARY KEY (LIFE_STYLE_ID),
  FOREIGN KEY (EMAIL) REFERENCES USERS(EMAIL)
);

CREATE SEQUENCE LIFESTYLE_SEQUENCE;

/*TABLE STRUCTURE FOR TABLE MESSAGE */

CREATE TABLE MESSAGES (
  MESSAGE_ID INT NOT NULL,
  SENDER_EMAIL_ID VARCHAR(30) DEFAULT NULL,
  RECEIVER_EMAIL_ID VARCHAR(70) DEFAULT NULL,
  MESSAGE_DATE VARCHAR(30) DEFAULT NULL,
  MESSAGE VARCHAR(1000) DEFAULT NULL,
  SENDER_DELETE_FLAG INT DEFAULT '0',
  RECEIVER_DELETE_FLAG INT DEFAULT '0',
  PRIMARY KEY (MESSAGE_ID),
  FOREIGN KEY (SENDER_EMAIL_ID) REFERENCES USERS(EMAIL),
  FOREIGN KEY (RECEIVER_EMAIL_ID) REFERENCES USERS(EMAIL)
);

CREATE SEQUENCE MESSAGES_SEQUENCE;

/*TABLE STRUCTURE FOR TABLE NOTIFICATIONS */

CREATE TABLE notifications (
  notification_id INT NOT NULL,
  datetime VARCHAR(50) DEFAULT NULL,
  email VARCHAR(50) DEFAULT NULL,
  status_id INT NOT NULL,
  comment_id INT NOT NULL,
  display_flag VARCHAR(2) NOT NULL,
  
  PRIMARY KEY (notification_id),
  FOREIGN KEY (email) REFERENCES users(email),
  FOREIGN KEY (status_id) REFERENCES status(status_id),
  FOREIGN KEY (comment_id) REFERENCES comments(comment_id)
);

CREATE SEQUENCE NOTIFICATIONS_SEQUENCE;

/*TABLE STRUCTURE FOR TABLE OTHERDETAILS */

CREATE TABLE OTHER_DETAILS (
  OTHER_ID INT NOT NULL,
  SOCIAL_STATUS VARCHAR(50) DEFAULT NULL,
  POLYTICAL_STATUS VARCHAR(50) DEFAULT NULL,
  SOCIAL_ACT VARCHAR(500) DEFAULT NULL,
  POLYTICAL_ACT VARCHAR(500) DEFAULT NULL,
  CULTURAL_ACT VARCHAR(500) DEFAULT NULL,
  EMAIL VARCHAR(30) DEFAULT NULL,
  PRIMARY KEY (OTHER_ID),
  FOREIGN KEY (EMAIL) REFERENCES USERS(EMAIL)
);

CREATE SEQUENCE OTHER_DETAILS_SEQUENCE;

/*TABLE STRUCTURE FOR TABLE PHOTOS */

CREATE TABLE PHOTOS (
  PHOTO_ID INT NOT NULL,
  PHOTO_PATH VARCHAR(500) DEFAULT NULL,
  EMAIL VARCHAR(100) DEFAULT NULL,
  POSTDATE VARCHAR(100) DEFAULT NULL,
  PRIMARY KEY (PHOTO_ID),
  FOREIGN KEY (EMAIL) REFERENCES USERS(EMAIL)
);

CREATE SEQUENCE PHOTOS_SEQUENCE;

/*TABLE STRUCTURE FOR TABLE PRODUCT */

CREATE TABLE PRODUCT (
  PRODUCT_ID INT NOT NULL,
  PRODUCT_NAME VARCHAR(50) DEFAULT NULL,
  PRODUCT_DETAILS VARCHAR(500) DEFAULT NULL,
  EMAIL VARCHAR(30) DEFAULT NULL,
  IMG_PATH VARCHAR(100) DEFAULT NULL,
  PRIMARY KEY (PRODUCT_ID),
  FOREIGN KEY (EMAIL) REFERENCES USERS(EMAIL)
);

CREATE SEQUENCE PRODUCT_SEQUENCE;

/*TABLE STRUCTURE FOR TABLE PRODUCTIMAGE */

CREATE TABLE PRODUCT_IMAGES (
  PRODUCTIMG_ID INT NOT NULL,
  PRODUCT_ID INT DEFAULT NULL,
  PATH VARCHAR(100) DEFAULT NULL,
  PRIMARY KEY (PRODUCTIMG_ID),
  FOREIGN KEY (PRODUCT_ID) REFERENCES PRODUCT(PRODUCT_ID)
);

CREATE SEQUENCE PRODUCT_IMAGES_SEQUENCE;

/*TABLE STRUCTURE FOR TABLE PROFILEIMAGES */

CREATE TABLE PROFILE_IMAGES (
  PROFILE_IMG_ID INT NOT NULL,
  PROFILE_IMG_PATH VARCHAR(100) DEFAULT NULL,
  EMAIL VARCHAR(50) DEFAULT NULL,
  PRIMARY KEY (PROFILE_IMG_ID),
  FOREIGN KEY (EMAIL) REFERENCES USERS(EMAIL)
);

CREATE SEQUENCE PROFILEIMAGES_SEQUENCE;

/*TABLE STRUCTURE FOR TABLE STATUS */

CREATE TABLE STATUS (
  STATUS_ID INT NOT NULL,
  POST VARCHAR(1000) DEFAULT NULL,
  POST_DATE VARCHAR(100) DEFAULT NULL,
  EMAIL VARCHAR(50) DEFAULT NULL,
  PRIMARY KEY (STATUS_ID),
  FOREIGN KEY (EMAIL) REFERENCES USERS(EMAIL)
);

CREATE SEQUENCE STATUS_SEQUENCE;

/*TABLE STRUCTURE FOR TABLE UNLIKE*/

CREATE TABLE LIKE_STATUS (
  LIKE_ID INT NOT NULL,
  STATUS BOOLEAN DEFAULT NULL,
  EMAIL VARCHAR(30) DEFAULT NULL,
  STATUS_ID INT DEFAULT NULL,
  PRIMARY KEY (LIKE_ID),
  FOREIGN KEY (STATUS_ID) REFERENCES STATUS(STATUS_ID),
  FOREIGN KEY (EMAIL) REFERENCES USERS(EMAIL) 
);

CREATE SEQUENCE LIKE_Status_SEQUENCE;

/*TABLE STRUCTURE FOR TABLE PHOTO_UNLIKE*/

CREATE TABLE like_photo (
  LIKE_ID INT NOT NULL,
  STATUS BOOLEAN DEFAULT NULL,
  EMAIL VARCHAR(30) DEFAULT NULL,
  PHOTO_ID INT DEFAULT NULL,
  PRIMARY KEY (LIKE_ID),
  FOREIGN KEY (PHOTO_ID) REFERENCES PHOTOS(PHOTO_ID),
  FOREIGN KEY (EMAIL) REFERENCES USERS(EMAIL) 
);

CREATE SEQUENCE LIKE_PHOTO_SEQUENCE;
