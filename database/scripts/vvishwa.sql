
/*Table structure for table `registration` */

CREATE TABLE registration (
  sno INT NOT NULL,
  firstName VARCHAR(20) DEFAULT NULL,
  middleName VARCHAR(20) DEFAULT NULL,
  lastName VARCHAR(20) DEFAULT NULL,
  emailId VARCHAR(30) DEFAULT NULL,
  contactNo VARCHAR(22) DEFAULT NULL,
  gender VARCHAR(10) DEFAULT NULL,
  birthDate VARCHAR(22) DEFAULT NULL,
  password VARCHAR(20) DEFAULT NULL,
  PRIMARY KEY (sno)
);


/*Table structure for table `astro` */

CREATE TABLE astro (
  astroId INT NOT NULL,
  country VARCHAR(20) DEFAULT NULL,
  city VARCHAR(20) DEFAULT NULL,
  zodiac VARCHAR(20) DEFAULT NULL,
  userMail VARCHAR(30) DEFAULT NULL,
  PRIMARY KEY (astroId)
);

/*Table structure for table `comment` */

CREATE TABLE comment (
  commentId INT NOT NULL,
  comment VARCHAR(10000) NOT NULL,
  whoseComent VARCHAR(30) DEFAULT NULL,
  statusId INT(100) DEFAULT NULL,
  commentOn VARCHAR(30) DEFAULT NULL,
  PRIMARY KEY (commentId)
);

/*Table structure for table `contact` */

CREATE TABLE contact (
  contactId INT NOT NULL,
  homeAddress VARCHAR(100) DEFAULT NULL,
  officeaddress VARCHAR(100) DEFAULT NULL,
  telephone VARCHAR(100) DEFAULT NULL,
  userMail VARCHAR(30) DEFAULT NULL,
  PRIMARY KEY (contactId)
);


/*Table structure for table `educationWork` */

CREATE TABLE Education (
  educationId INT NOT NULL,
  school VARCHAR(100) DEFAULT NULL,
  collage VARCHAR(100) DEFAULT NULL,
  graduation VARCHAR(50) DEFAULT NULL,
  otherGraduationDegree VARCHAR(50) DEFAULT NULL,
  PGCollege VARCHAR(100) DEFAULT NULL,
  PGDegree VARCHAR(50) DEFAULT NULL,
  otherPGDegree VARCHAR(50) DEFAULT NULL,
  userMail VARCHAR(30) DEFAULT NULL,
  PRIMARY KEY (educationId)
);

/*Table structure for table `employment` */

CREATE TABLE work (
  employeeId INT NOT NULL,
  companyName VARCHAR(100) DEFAULT NULL,
  occupation VARCHAR(100) DEFAULT NULL,
  productDetails VARCHAR(200) DEFAULT NULL,
  numberOfEmp VARCHAR(100) DEFAULT NULL,
  empType VARCHAR(100) DEFAULT NULL,
  annualIncome VARCHAR(100) DEFAULT NULL,
  userMail VARCHAR(50) DEFAULT NULL,
  PRIMARY KEY (employeeId)
);

/*Table structure for table `event` */

CREATE TABLE event (
  eventId INT(100) NOT NULL,
  name VARCHAR(100) DEFAULT NULL,
  details VARCHAR(100) DEFAULT NULL,
  location VARCHAR(100) DEFAULT NULL,
  dataTime VARCHAR(100) DEFAULT NULL,
  userMail VARCHAR(30) DEFAULT NULL,
  PRIMARY KEY (eventId)
);

/*Table structure for table `family` */

CREATE TABLE family (
  familyId INT(100) NOT NULL,
  familyValue VARCHAR(50) DEFAULT NULL,
  familyType VARCHAR(50) DEFAULT NULL,
  familyStatus VARCHAR(50) DEFAULT NULL,
  familyIncome VARCHAR(50) DEFAULT NULL,
  userMail VARCHAR(30) DEFAULT NULL,
  PRIMARY KEY (familyId)
);



/*Table structure for table `frndRrequest` */

CREATE TABLE `frndRequest` (
  `RequestId` INT(10) DEFAULT NULL,
  `RequestFromId` VARCHAR(50) DEFAULT NULL,
  `RequestToId` VARCHAR(50) DEFAULT NULL,
  `Status` VARCHAR(10) DEFAULT NULL,
  `Date` VARCHAR(50) DEFAULT NULL,
   PRIMARY KEY (`RequestId`)
);


/*Table structure for table `friendsData` */

CREATE TABLE `friendsData` (
  `FriendId` INT(10) DEFAULT NULL,
  `WhomFriend` VARCHAR(100) DEFAULT NULL,
  `WhoFriend` VARCHAR(100) DEFAULT NULL,
  `Date` VARCHAR(50) DEFAULT NULL
);



/*Table structure for table `groupImage` */


CREATE TABLE `groupImage` (
  `groupImgId` INT(200) NOT NULL AUTO_INCREMENT,
  `groupImgname` VARCHAR(100) DEFAULT NULL,
  `groupImagePath` VARCHAR(500) DEFAULT NULL,
  PRIMARY KEY (`groupImgId`)
);

/*Data for the table `groupImage` */



/*Table structure for table `groups` */


CREATE TABLE IntrestAreas (
  intrestAreaId INT NOT NULL,
  userMail VARCHAR(50) DEFAULT NULL,
  IntrestAreaName VARCHAR(500) DEFAULT NULL,
  PRIMARY KEY (intrestAreaId)
);



/*Table structure for table `hobbies` */

CREATE TABLE hobbies (
  hobbiesId INT NOT NULL,
  hobbies VARCHAR(100) DEFAULT NULL,
  favouriteMusic VARCHAR(100) DEFAULT NULL,
  favouriteBooks VARCHAR(100) DEFAULT NULL,
  DressStyletyle VARCHAR(100) DEFAULT NULL,
  favouritrTvShows VARCHAR(100) DEFAULT NULL,
  FavouriteMovies VARCHAR(100) DEFAULT NULL,
  sports VARCHAR(100) DEFAULT NULL,
  foodIcook VARCHAR(100) DEFAULT NULL,
  VacationDestination VARCHAR(100) DEFAULT NULL,
  userMail VARCHAR(30) DEFAULT NULL,
  PRIMARY KEY (hobbiesId)
);


/*Table structure for table `ineed` */

CREATE TABLE `ineed` (
  `needId` INT(100) NOT NULL,
  `need` VARCHAR(50) DEFAULT NULL,
  `description` VARCHAR(200) DEFAULT NULL,
  `mobile` VARCHAR(20) DEFAULT NULL,
  `userMail` VARCHAR(30) DEFAULT NULL,
  PRIMARY KEY (`needId`)
);


/*Table structure for table `lifestyle` */

CREATE TABLE `lifestyle` (
  `lifeStyleId` INT(100) NOT NULL,
  `diet` VARCHAR(20) DEFAULT NULL,
  `smoke` VARCHAR(20) DEFAULT NULL,
  `drink` VARCHAR(20) DEFAULT NULL,
  `complexion` VARCHAR(20) DEFAULT NULL,
  `bodyType` VARCHAR(20) DEFAULT NULL,
  `bloodGroup` VARCHAR(20) DEFAULT NULL,
  `weight` VARCHAR(20) DEFAULT NULL,
  `userMail` VARCHAR(30) DEFAULT NULL,
  PRIMARY KEY (`lifeStyleId`)
);


/*Table structure for table `like` */

CREATE TABLE like (
  likeId INT NOT NULL,
  count INT DEFAULT '0',
  names VARCHAR(500) DEFAULT NULL,
  satausId VARCHAR(100) DEFAULT NULL,
  PRIMARY KEY (likeId)
);


/*Table structure for table `message` */

CREATE TABLE `message` (
  `MessageID` INT(20) NOT NULL,
  `SenderID` VARCHAR(70) DEFAULT NULL,
  `ReceiverId` VARCHAR(70) DEFAULT NULL,
  `MessageDate` VARCHAR(30) DEFAULT NULL,
  `Message` VARCHAR(300) DEFAULT NULL,
  `SenderFlag` INT(5) DEFAULT '0',
  `ReceiverFlag` INT(5) DEFAULT '0',
  PRIMARY KEY (`MessageID`)
);


/*Table structure for table `needSolution` */

CREATE TABLE `needSolution` (
  `solutionId` INT(100) NOT NULL,
  `solution` VARCHAR(500) DEFAULT NULL,
  `needId` INT(50) DEFAULT NULL,
  `userMail` VARCHAR(50) DEFAULT NULL,
  PRIMARY KEY (`solutionId`)
);


/*Table structure for table `notifications` */

CREATE TABLE `notifications` (
  `notificationId` INT(100) NOT NULL,
  `notification` VARCHAR(1000) DEFAULT NULL,
  `dateTime` VARCHAR(50) DEFAULT NULL,
  `userMail` VARCHAR(50) DEFAULT NULL,
  PRIMARY KEY (`notificationId`)
);


/*Table structure for table `otherDetails` */

CREATE TABLE otherDetails (
  otherId INT(100) NOT NULL,
  socialStatus VARCHAR(50) DEFAULT NULL,
  polyticalStatus VARCHAR(50) DEFAULT NULL,
  socialAct VARCHAR(100) DEFAULT NULL,
  polyticalAct VARCHAR(100) DEFAULT NULL,
  culturalAct VARCHAR(100) DEFAULT NULL,
  games VARCHAR(100) DEFAULT NULL,
  userMail VARCHAR(30) DEFAULT NULL,
  PRIMARY KEY (otherId)
);


/*Table structure for table `photos` */

CREATE TABLE `photos` (
  `photoId` INT(100) NOT NULL,
  `path` VARCHAR(500) DEFAULT NULL,
  `userMail` VARCHAR(100) DEFAULT NULL,
  `postDate` VARCHAR(100) DEFAULT NULL,
  PRIMARY KEY (`photoId`)
);


/*Table structure for table `product` */

CREATE TABLE product (
  productId INT NOT NULL,
  productName VARCHAR(50) DEFAULT NULL,
  productDetais VARCHAR(200) DEFAULT NULL,
  userMail VARCHAR(30) DEFAULT NULL,
  imgPath VARCHAR(100) DEFAULT NULL,
  PRIMARY KEY (productId)
);


/*Table structure for table `productimage` */

CREATE TABLE `productimage` (
  `productImgId` INT(100) NOT NULL,
  `productId` INT(100) DEFAULT NULL,
  `path` VARCHAR(100) DEFAULT NULL,
  PRIMARY KEY (`productImgId`)
);



/*Table structure for table `profileimages` */

CREATE TABLE `profileimages` (
  `profileImgId` INT(100) NOT NULL,
  `ProfImgpath` VARCHAR(100) DEFAULT NULL,
  `userMail` VARCHAR(50) DEFAULT NULL,
  PRIMARY KEY (`profileImgId`)
);


/*Table structure for table `religion` */

CREATE TABLE religion (
  religionId INT NOT NULL,
  religion VARCHAR(20) DEFAULT NULL,
  cast VARCHAR(20) DEFAULT NULL,
  motherToung VARCHAR(20) DEFAULT NULL,
  nativePlace VARCHAR(50) DEFAULT NULL,
  userMail VARCHAR(30) DEFAULT NULL,
  PRIMARY KEY (religionId)
);



/*Table structure for table `status` */

CREATE TABLE status (
  statusId INT NOT NULL,
  post VARCHAR(1000) DEFAULT NULL,
  postDate VARCHAR(100) DEFAULT NULL,
  userEmail VARCHAR(50) DEFAULT NULL,
  PRIMARY KEY (statusId)
);


/*Table structure for table `unlike` */

CREATE TABLE unlikestatus (
  unlikeId INT NOT NULL,
  count INT(10) DEFAULT NULL,
  names VARCHAR(50) DEFAULT NULL,
  statusId VARCHAR(50) DEFAULT NULL,
  PRIMARY KEY (unlikeId)
);


