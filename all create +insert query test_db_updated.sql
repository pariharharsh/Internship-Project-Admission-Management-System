-- MariaDB dump 10.17  Distrib 10.4.11-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: admission
-- ------------------------------------------------------
-- Server version	10.4.11-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `academic_details`
--

DROP TABLE IF EXISTS `academic_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `academic_details` (
  `registration_id` varchar(100) NOT NULL,
  `fk_application_id` varchar(100) NOT NULL,
  `qualification` varchar(45) DEFAULT NULL,
  `board` varchar(45) DEFAULT NULL,
  `grade_system` varchar(45) DEFAULT NULL,
  `percentage` decimal(65,0) DEFAULT NULL,
  `cgpa` varchar(45) DEFAULT NULL,
  `passing_year` year(4) DEFAULT NULL,
  PRIMARY KEY (`registration_id`),
  KEY `application_id_idx` (`fk_application_id`),
  CONSTRAINT `fk_application_id_ad` FOREIGN KEY (`fk_application_id`) REFERENCES `application` (`application_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `academic_details`
--

LOCK TABLES `academic_details` WRITE;
/*!40000 ALTER TABLE `academic_details` DISABLE KEYS */;
INSERT INTO `academic_details` VALUES ('REG001','APP001','10th','CBSE','CGPA',0,'8.8',2021),('REG002','APP001','12th','CBSE','Percentage',92,'0',2020),('REG003','APP002','10th','ICSE','CGPA',0,'9.2',2021),('REG004','APP002','12th','ISC','CGPA',0,'8.8',2021),('REG005','APP003','10th','UTTRAKHAND BOARD','Percentage',95,'0',2019),('REG006','APP003','12th','UTTRAKHAND BOARD','Percentage',85,'0',2020),('REG007','APP004','10th','UP BOARD','CGPA',0,'9.4',2022),('REG008','APP004','12th','UP BOARD','Percentage',88,'0',2023),('REG009','APP005','10th','CBSE','CGPA',0,'8.4',2020),('REG010','APP005','12th','CBSE','Percentage',95,'0',2018);
/*!40000 ALTER TABLE `academic_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admission_test`
--

DROP TABLE IF EXISTS `admission_test`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admission_test` (
  `test_id` varchar(100) NOT NULL,
  `test_type` varchar(45) DEFAULT NULL,
  `fk_program_id` varchar(100) NOT NULL,
  `max_marks` decimal(10,0) DEFAULT NULL,
  `mini_qualifying_marks` decimal(10,0) NOT NULL,
  `test_date` date NOT NULL,
  `test_fee` int(11) DEFAULT NULL,
  PRIMARY KEY (`test_id`),
  KEY `ProgramID_idx` (`fk_program_id`),
  CONSTRAINT `fk_program_id_admission_test` FOREIGN KEY (`fk_program_id`) REFERENCES `program` (`program_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admission_test`
--

LOCK TABLES `admission_test` WRITE;
/*!40000 ALTER TABLE `admission_test` DISABLE KEYS */;
INSERT INTO `admission_test` VALUES ('TST001','ONLINE','PRO001',200,90,'2025-01-06',250),('TST002','ONLINE','PRO002',200,90,'2025-01-07',250),('TST003','ONLINE','PRO003',200,90,'2025-01-08',250),('TST004','ONLINE','PRO004',200,90,'2025-01-09',250),('TST005','ONLINE','PRO005',200,90,'2025-01-10',250),('TST006','ONLINE','PRO006',200,90,'2025-01-11',250),('TST007','ONLINE','PRO007',200,90,'2025-01-12',250),('TST008','ONLINE','PRO008',200,90,'2025-01-13',250),('TST009','ONLINE','PRO009',200,90,'2025-01-14',250),('TST010','ONLINE','PRO010',200,90,'2025-01-15',250);
/*!40000 ALTER TABLE `admission_test` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `applicant`
--

DROP TABLE IF EXISTS `applicant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `applicant` (
  `applicant_id` varchar(100) NOT NULL,
  `full_name` varchar(45) DEFAULT NULL,
  `gender` varchar(45) DEFAULT NULL,
  `dob` varchar(100) NOT NULL,
  `father_name` varchar(45) DEFAULT NULL,
  `mother_name` varchar(45) DEFAULT NULL,
  `category` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `phone_no` varchar(100) DEFAULT NULL,
  `address` varchar(45) DEFAULT NULL,
  `fk_program_id1` varchar(100) NOT NULL,
  `coupon_id` varchar(45) DEFAULT NULL,
  `photo_url` varchar(45) DEFAULT NULL,
  `emergency_contact` varchar(100) DEFAULT NULL,
  `program_mode` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`applicant_id`),
  KEY `ProgramID_idx` (`fk_program_id1`),
  CONSTRAINT `fk_program_id_applicant` FOREIGN KEY (`fk_program_id1`) REFERENCES `program` (`program_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `applicant`
--

LOCK TABLES `applicant` WRITE;
/*!40000 ALTER TABLE `applicant` DISABLE KEYS */;
INSERT INTO `applicant` VALUES ('STU001','Riya Sharma','Female','2005-05-04','ABC Sharma','XYZ Sharma','General','riya@yahoo.com','9955800874','578 delhi, NC 34644.','PRO001','No coupon code','photo_STU001.pdf','9919589441','ONLINE'),('STU002','Aarav Mehta','Male','2004-04-07','ABC Mehta','XYZ Mehta','ST','aarave@garrett.com','9950987735','5789 delhi, NC 34645.','PRO002','DISC50_002','photo_STU002.pdf','9867381688','ONLINE'),('STU003','Priya Verma','Female','2006-02-11','ABC Verma','XYZ Verma','SC','priya@gmail.com','9920228141','579 delhi, NC 34644.','PRO003','DISC50_003','photo_STU003.pdf','9813435895','OFFLINE'),('STU004','Rohan Kapoor','Male','2004-07-11','ABC Kapoor','XYZ Kapoor','OBC','rohan@gmail.com','9911332836','5790 delhi, NC 34645.','PRO004','DISC50_004','photo_STU004.pdf','9815046584','PARTTIME'),('STU005','Neha Agarwal','Female','2004-10-04','ABC Agarwal','XYZ Agarwal','OBC','neha@gmail.com','9899668270','580 delhi, NC 34644.','PRO004','DISC50_005','photo_STU005.pdf','9977337056','OFFLINE'),('STU006','Ananya Singh','Female','2004-07-09','ABC Singh','XYZ Singh','ST','ananya@gmail.com','9818744480','5791 delhi, NC 34645.','PRO005','!!!Not allocate!!!','photo_STU006.pdf','9835974606','ONLINE'),('STU007','Kabir Joshi','Male','2006-04-12','ABC Joshi','XYZ Joshi','SC','kabir@yayoo.com','9839037226','581 delhi, NC 34644.','PRO001','!!!Not allocate!!!','photo_STU007.pdf','9974660826','OFFLINE'),('STU008','Aditya Nair','Male','2004-06-02','ABC Nair','XYZ Nair','ST','aditya@gmail.com','9852726492','5792 delhi, NC 34645.','PRO007','!!!Not allocate!!!','photo_STU008.pdf','9804677932','PARTTIME'),('STU009','Isha Malhotra','Female','2005-05-03','ABC Malhotra','XYZ Malhotra','ST','isha@yayoo.com','9815318609','582 delhi, NC 34644.','PRO007','!!!Not allocate!!!','photo_STU009.pdf','9803261671','PARTTIME'),('STU010','Rohan Kapoor','Male','2004-10-05','ABC Kapoor','XYZ Kapoor','SC','rohan@gmail.com','9833537317','5793 delhi, NC 34645.','PRO008','!!!Not allocate!!!','photo_STU010.pdf','9806147716','ONLINE'),('STU011','Ranveer Deshmukh','Male','2005-12-09','ABC Deshmukh','XYZ Deshmukh','General','ranveer@yahoo.com','9857053032','583 delhi, NC 34644.','PRO009','!!!Not allocate!!!','photo_STU011.pdf','9800262340','OFFLINE');
/*!40000 ALTER TABLE `applicant` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `application`
--

DROP TABLE IF EXISTS `application`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `application` (
  `application_id` varchar(100) NOT NULL,
  `fk_applicant_id` varchar(100) NOT NULL,
  `fk_program_id` varchar(100) NOT NULL,
  `fk_faculty_id` varchar(100) NOT NULL,
  `application_date` date NOT NULL,
  `status` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`application_id`),
  KEY `ApplicantID_idx` (`fk_applicant_id`),
  KEY `ProgramID_idx` (`fk_program_id`),
  KEY `FacultyID_idx` (`fk_faculty_id`),
  CONSTRAINT `fk_applicant_id_application` FOREIGN KEY (`fk_applicant_id`) REFERENCES `applicant` (`applicant_id`),
  CONSTRAINT `fk_faculty_id_application` FOREIGN KEY (`fk_faculty_id`) REFERENCES `faculties` (`faculty_id`),
  CONSTRAINT `fk_program_id_application` FOREIGN KEY (`fk_program_id`) REFERENCES `program` (`program_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `application`
--

LOCK TABLES `application` WRITE;
/*!40000 ALTER TABLE `application` DISABLE KEYS */;
INSERT INTO `application` VALUES ('APP001','STU001','PRO001','FAC001','2025-06-03','VERIFIED'),('APP002','STU002','PRO002','FAC002','2025-04-24','VERIFIED'),('APP003','STU003','PRO003','FAC003','2025-05-19','PENDING'),('APP004','STU004','PRO004','FAC004','2025-05-12','REJECTED'),('APP005','STU005','PRO005','FAC005','2025-02-12','VERIFIED'),('APP006','STU006','PRO006','FAC006','2025-03-24','PENDING'),('APP007','STU007','PRO007','FAC007','2025-01-17','VERIFIED'),('APP008','STU008','PRO008','FAC008','2025-03-13','PENDING'),('APP009','STU009','PRO009','FAC009','2025-02-12','VERIFIED'),('APP010','STU010','PRO010','FAC010','2025-02-20','VERIFIED');
/*!40000 ALTER TABLE `application` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `application_fee_payment`
--

DROP TABLE IF EXISTS `application_fee_payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `application_fee_payment` (
  `transaction_id` varchar(100) NOT NULL,
  `fk_application_id` varchar(45) NOT NULL,
  `amount_paid` int(10) DEFAULT NULL,
  `payment_mode` varchar(45) DEFAULT NULL,
  `payment_status` varchar(45) DEFAULT NULL,
  `receipt_url` varchar(45) DEFAULT NULL,
  `fk_program_id` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`transaction_id`),
  KEY `application_id_application_fee_payment` (`fk_application_id`),
  KEY `program_id_application_fee_payment` (`fk_program_id`),
  CONSTRAINT `application_id_application_fee_payment` FOREIGN KEY (`fk_application_id`) REFERENCES `application` (`application_id`),
  CONSTRAINT `program_id_application_fee_payment` FOREIGN KEY (`fk_program_id`) REFERENCES `program` (`program_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `application_fee_payment`
--

LOCK TABLES `application_fee_payment` WRITE;
/*!40000 ALTER TABLE `application_fee_payment` DISABLE KEYS */;
INSERT INTO `application_fee_payment` VALUES ('TRA001','APP001',65000,'CASH','SUCCESSFUL','receipt_abc.pdf','PRO001'),('TRA002','APP002',75000,'UPI','SUCCESSFUL','receipt_abc.pdf','PRO002'),('TRA003','APP003',85000,'UPI','SUCCESSFUL','receipt_abc.pdf','PRO003'),('TRA004','APP004',45000,'CASH','SUCCESSFUL','receipt_abc.pdf','PRO004'),('TRA005','APP005',45000,'UPI','SUCCESSFUL','receipt_abc.pdf','PRO004'),('TRA006','APP006',95000,'ONLINE','SUCCESSFUL','receipt_abc.pdf','PRO005'),('TRA007','APP007',65000,'CASH','SUCCESSFUL','receipt_abc.pdf','PRO001'),('TRA008','APP008',35000,'ONLINE','SUCCESSFUL','receipt_abc.pdf','PRO007');
/*!40000 ALTER TABLE `application_fee_payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `coupons`
--

DROP TABLE IF EXISTS `coupons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `coupons` (
  `coupon_code` varchar(100) NOT NULL,
  `fk_applicant_id` varchar(100) NOT NULL,
  `discount_percentage` varchar(45) DEFAULT NULL,
  `isactive` varchar(45) DEFAULT NULL,
  `expiry_date` date DEFAULT NULL,
  `coupon_id` varchar(45) DEFAULT NULL,
  `category_eligibility` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`coupon_code`),
  UNIQUE KEY `coupon_id_UNIQUE` (`coupon_id`),
  KEY `applicant_id_idx` (`fk_applicant_id`),
  CONSTRAINT `fk_applicant_id_coupons` FOREIGN KEY (`fk_applicant_id`) REFERENCES `applicant` (`applicant_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coupons`
--

LOCK TABLES `coupons` WRITE;
/*!40000 ALTER TABLE `coupons` DISABLE KEYS */;
INSERT INTO `coupons` VALUES ('DISC50_002','STU002','50','1',NULL,'COP002','ST'),('DISC50_003','STU003','50','1',NULL,'COP003','SC'),('DISC50_004','STU004','50','1',NULL,'COP004','OBC'),('DISC50_005','STU005','50','1',NULL,'COP005','OBC'),('No coupon code','STU001','50','1',NULL,'COP001','General');
/*!40000 ALTER TABLE `coupons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `degree`
--

DROP TABLE IF EXISTS `degree`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `degree` (
  `degree_id` varchar(100) NOT NULL,
  `fk_faculty_id` varchar(100) NOT NULL,
  `degree_name` varchar(45) NOT NULL,
  `level_ug_pg` varchar(45) NOT NULL,
  `duration` int(11) NOT NULL,
  `credit_requirement` int(11) NOT NULL,
  PRIMARY KEY (`degree_id`),
  KEY `fk_faculty_id_idx` (`fk_faculty_id`),
  CONSTRAINT `fk_faculty_id` FOREIGN KEY (`fk_faculty_id`) REFERENCES `faculties` (`faculty_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `degree`
--

LOCK TABLES `degree` WRITE;
/*!40000 ALTER TABLE `degree` DISABLE KEYS */;
INSERT INTO `degree` VALUES ('DEG01','FAC001','B.Tech','UG',4,160),('DEG02','FAC002','B.Sc','UG',3,140),('DEG03','FAC003','B.A','UG',3,130),('DEG04','FAC004','BBA','UG',3,140),('DEG05','FAC005','LL.B','UG',3,150),('DEG06','FAC006','MBBS','UG',5,180),('DEG07','FAC007','BFA','UG',3,120),('DEG08','FAC008','B.Sc Agriculture','UG',4,160),('DEG09','FAC009','M.Tech','PG',2,80),('DEG10','FAC010','M.Sc','PG',2,80);
/*!40000 ALTER TABLE `degree` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `documents`
--

DROP TABLE IF EXISTS `documents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `documents` (
  `document_id` varchar(100) NOT NULL,
  `fk_applicant_id` varchar(100) NOT NULL,
  `id_doc` int(10) DEFAULT NULL,
  `10th_doc` int(10) DEFAULT NULL,
  `12th_doc` int(10) DEFAULT NULL,
  `graduation_doc` int(10) DEFAULT NULL,
  `other_doc1` int(10) DEFAULT NULL,
  `other_doc2` int(10) DEFAULT NULL,
  `fk_mdocument_id` varchar(100) NOT NULL,
  `file_path` varchar(45) DEFAULT NULL,
  `document_path` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`document_id`),
  KEY `fk_applicant_id_documents_idx` (`fk_applicant_id`),
  KEY `fk_mdocument_id_documents_idx` (`fk_mdocument_id`),
  CONSTRAINT `fk_applicant_id_documents` FOREIGN KEY (`fk_applicant_id`) REFERENCES `applicant` (`applicant_id`),
  CONSTRAINT `fk_mdocument_id` FOREIGN KEY (`fk_mdocument_id`) REFERENCES `master_documents` (`mdocument_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `documents`
--

LOCK TABLES `documents` WRITE;
/*!40000 ALTER TABLE `documents` DISABLE KEYS */;
INSERT INTO `documents` VALUES ('DOC001','STU001',1,2,4,NULL,NULL,NULL,'M001','//fileserver/edu_docs/view.pdf',NULL),('DOC002','STU002',1,2,4,NULL,NULL,NULL,'M001','//fileserver/edu_docs/view.pdf',NULL),('DOC003','STU003',1,2,4,NULL,NULL,NULL,'M001','//fileserver/edu_docs/view.pdf',NULL),('DOC004','STU004',1,2,4,NULL,NULL,NULL,'M001',' //fileserver/edu_docs/view.pdf',NULL),('DOC005','STU005',1,2,4,NULL,NULL,NULL,'M001','//fileserver/edu_docs/view.pdf',NULL),('DOC006','STU006',1,2,4,NULL,NULL,NULL,'M001',' //fileserver/edu_docs/view.pdf',NULL),('DOC007','STU007',1,2,4,NULL,NULL,NULL,'M001','//fileserver/edu_docs/view.pdf ',NULL),('DOC008','STU008',1,2,4,NULL,NULL,NULL,'M001','//fileserver/edu_docs/view.pdf',NULL),('DOC009','STU009',1,2,4,11,NULL,NULL,'M001','//fileserver/edu_docs/view.pdf',NULL),('DOC010','STU010',1,2,4,NULL,12,NULL,'M001','//fileserver/edu_docs/view.pdf',NULL);
/*!40000 ALTER TABLE `documents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faculties`
--

DROP TABLE IF EXISTS `faculties`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `faculties` (
  `faculty_id` varchar(100) NOT NULL,
  `fk_institute_id` varchar(100) NOT NULL,
  `faculty_name` varchar(45) DEFAULT NULL,
  `faculty_code` varchar(100) DEFAULT NULL,
  `dean_name` varchar(45) NOT NULL,
  `contact` varchar(100) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `faculty_office_location` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`faculty_id`),
  KEY `fk_institute_id_idx` (`fk_institute_id`),
  CONSTRAINT `fk_institute_id` FOREIGN KEY (`fk_institute_id`) REFERENCES `institute` (`institute_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faculties`
--

LOCK TABLES `faculties` WRITE;
/*!40000 ALTER TABLE `faculties` DISABLE KEYS */;
INSERT INTO `faculties` VALUES ('FAC001','INST001','Engineering','ENG','Dr. A. Kumar','9874365115','eng@tech.edu.in','Block A, Floor 2'),('FAC002','INST001','Science','SCI','Dr.B Mehta','7896354781','sci@tech.edu.in','Block B, Floor 1'),('FAC003','INST001','Humanities','HUM','Dr.C.Singh','5987415698','hum@tech.edu.in','Block C, Floor 3'),('FAC004','INST001','Business Studies','BUS','Dr.D.Joshi','9874582463','bus@tech.edu.in','Block D, Floor 2'),('FAC005','INST001','Law','LAW','Dr. E.Nair','7894587145','law@tech.edu.in','Block E, Floor 4'),('FAC006','INST001','Medical Science','MED','Dr. F.Roy','8748521483','med@tech.edu.in','Block F, Floor 1'),('FAC007','INST001','Fine Arts','FIN','Dr.G.Desai','7824581465','fin@tech.edu.in','Block G, Floor 2'),('FAC008','INST001','Agriculture','AGR','Dr. H.Sinha','9847854125','agr@tech.edu.in','Block H, Floor 4'),('FAC009','INST001','Psychology','PSY','Dr. M.Murgan','5569855236','psy@tech.edu.in','Block M, Floor 5'),('FAC010','INST001','Architecture','ARC','Dr. JS.Parihar','8955265563','psy@tech.edu.in','Block K, Floor 4');
/*!40000 ALTER TABLE `faculties` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `form_completion_status`
--

DROP TABLE IF EXISTS `form_completion_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `form_completion_status` (
  `completion_id` varchar(100) NOT NULL,
  `fk_application_id` varchar(100) NOT NULL,
  `status` varchar(45) DEFAULT NULL,
  `application_form` varchar(45) DEFAULT NULL,
  `receipt_url` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`completion_id`),
  KEY `application_id_idx` (`fk_application_id`),
  CONSTRAINT `fk_application_id_form_completion_status` FOREIGN KEY (`fk_application_id`) REFERENCES `application` (`application_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `form_completion_status`
--

LOCK TABLES `form_completion_status` WRITE;
/*!40000 ALTER TABLE `form_completion_status` DISABLE KEYS */;
INSERT INTO `form_completion_status` VALUES ('TECH001','APP001','Successful','ApplicationForm_TECH001_APP001.pdf','receipt_TECH001.pdf'),('TECH002','APP002','Successful','ApplicationForm_TECH002_APP002.pdf','receipt_TECH002.pdf'),('TECH003','APP003','Successful','ApplicationForm_TECH003_APP003.pdf','receipt_TECH003.pdf'),('TECH004','APP004','Successful','ApplicationForm_TECH004_APP004.pdf','receipt_TECH004.pdf'),('TECH005','APP005','Successful','ApplicationForm_TECH005_APP005.pdf','receipt_TECH005.pdf'),('TECH006','APP006','Successful','ApplicationForm_TECH006_APP006.pdf','receipt_TECH006.pdf'),('TECH007','APP007','Successful','ApplicationForm_TECH007_APP007.pdf','receipt_TECH007.pdf'),('TECH008','APP008','Successful','ApplicationForm_TECH008_APP008.pdf','receipt_TECH008.pdf'),('TECH009','APP009','Successful','ApplicationForm_TECH009_APP009.pdf','receipt_TECH009.pdf'),('TECH010','APP010','Successful','ApplicationForm_TECH010_APP010.pdf','receipt_TECH010.pdf');
/*!40000 ALTER TABLE `form_completion_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `institute`
--

DROP TABLE IF EXISTS `institute`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `institute` (
  `institute_id` varchar(100) NOT NULL,
  `institute_name` varchar(45) NOT NULL,
  `location` varchar(45) NOT NULL,
  `type` varchar(45) NOT NULL,
  `affiliated_university` varchar(45) NOT NULL,
  `established_year` varchar(45) NOT NULL,
  PRIMARY KEY (`institute_id`),
  UNIQUE KEY `institute_name_UNIQUE` (`institute_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `institute`
--

LOCK TABLES `institute` WRITE;
/*!40000 ALTER TABLE `institute` DISABLE KEYS */;
INSERT INTO `institute` VALUES ('INST001','Tech Institute of Technology','GTB Nagar','Private','Delhi University','2005');
/*!40000 ALTER TABLE `institute` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `log_in`
--

DROP TABLE IF EXISTS `log_in`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `log_in` (
  `login_id` varchar(100) NOT NULL,
  `fk_applicant_id` varchar(100) NOT NULL,
  `user_name` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `Role` varchar(45) NOT NULL,
  PRIMARY KEY (`login_id`),
  KEY `fk_applicant_id_idx` (`fk_applicant_id`),
  CONSTRAINT `fk_applicant_id_log_in` FOREIGN KEY (`fk_applicant_id`) REFERENCES `applicant` (`applicant_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `log_in`
--

LOCK TABLES `log_in` WRITE;
/*!40000 ALTER TABLE `log_in` DISABLE KEYS */;
INSERT INTO `log_in` VALUES ('1','STU001','ysullivan','P3zO0vIbhJ8','Student'),('10','STU010','thouston','0ugGeBV5R65','Student'),('2','STU002','ypage','X2Ctq7QKG3X','Student'),('3','STU003','rjones','xNpAeM5fhCr','Student'),('4','STU004','loganmelissa','hTmlQH0gHEB','Student'),('5','STU005','carlsonholly','lWVvM614d6p','Student'),('6','STU006','joanne84','W6gdE6t7pX1','Student'),('7','STU007','hensontroy','TnRoLN7CIvg','Student'),('8','STU008','robin14','f365I2Jky4a','Student'),('9','STU009','monica23','uwn1PG7YUSc','Student');
/*!40000 ALTER TABLE `log_in` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `master_documents`
--

DROP TABLE IF EXISTS `master_documents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `master_documents` (
  `mdocument_id` varchar(100) NOT NULL,
  `aadhar_card` int(11) NOT NULL,
  `10th_marksheet` int(11) DEFAULT NULL,
  `10th_certificate` int(11) DEFAULT NULL,
  `12th_marksheet` int(11) DEFAULT NULL,
  `12th_certificate` int(11) DEFAULT NULL,
  `migration_certificate` int(11) DEFAULT NULL,
  `caste_certificate` int(11) DEFAULT NULL,
  `domicile_certificate` int(11) DEFAULT NULL,
  `test_result` int(11) DEFAULT NULL,
  `character_certificate` int(11) DEFAULT NULL,
  `graduation_degree` int(11) DEFAULT NULL,
  `graduation_provisional` int(11) DEFAULT NULL,
  `masters_degree` int(11) DEFAULT NULL,
  `phd` int(11) DEFAULT NULL,
  PRIMARY KEY (`mdocument_id`),
  UNIQUE KEY `aadharcard_UNIQUE` (`aadhar_card`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `master_documents`
--

LOCK TABLES `master_documents` WRITE;
/*!40000 ALTER TABLE `master_documents` DISABLE KEYS */;
INSERT INTO `master_documents` VALUES ('M001',1,2,3,4,5,6,7,8,9,10,11,12,13,14);
/*!40000 ALTER TABLE `master_documents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `program`
--

DROP TABLE IF EXISTS `program`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `program` (
  `program_id` varchar(100) NOT NULL,
  `fk_degree_id` varchar(100) NOT NULL,
  `program_name` varchar(100) NOT NULL,
  `specialization` varchar(100) NOT NULL,
  `intake_capacity` int(11) NOT NULL,
  `accreditation_status` varchar(45) NOT NULL,
  `duration` int(11) NOT NULL,
  `program_fee` int(11) NOT NULL,
  PRIMARY KEY (`program_id`),
  KEY `DegreeID_idx` (`fk_degree_id`),
  CONSTRAINT `fk_degree_id` FOREIGN KEY (`fk_degree_id`) REFERENCES `degree` (`degree_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `program`
--

LOCK TABLES `program` WRITE;
/*!40000 ALTER TABLE `program` DISABLE KEYS */;
INSERT INTO `program` VALUES ('PRO001','DEG01','Computer Science Engineering','AI & ML',60,'Accredited',4,65000),('PRO002','DEG02','M.Tech in Data Science','Big Data',40,'Accredited',2,75000),('PRO003','DEG03','M.Sc. In Physics','Quantum Mechanics',35,'Accredited',2,85000),('PRO004','DEG04','M.A. in English Literature','Postcolonial Studies',30,'Accredited',2,45000),('PRO005','DEG05','Diploma in AI','Machine Learning',25,'Accredited',1,95000),('PRO006','DEG06','Diploma in Lab Technology','Pathology',30,'Accredited',1,120000),('PRO007','DEG07','Certificate In Spoken English','communication Skills',50,'Accredited',1,35000),('PRO008','DEG08','Certificate in Primary Nursing','community Health',40,'Accredited',1,65500),('PRO009','DEG09','Certificate in Psychology','community Psychology',40,'Accredited',1,65500),('PRO010','DEG10','Certificate in Architecture','community Architecture',40,'Accredited',1,65500);
/*!40000 ALTER TABLE `program` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `program_fees`
--

DROP TABLE IF EXISTS `program_fees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `program_fees` (
  `fee_transaction_id` varchar(100) NOT NULL,
  `fk_program_id` varchar(100) NOT NULL,
  `fk_applicant_id` varchar(45) NOT NULL,
  `fee_amount` decimal(10,0) NOT NULL,
  `fee_calendar` varchar(45) DEFAULT NULL,
  `coupon_code` varchar(45) DEFAULT NULL,
  `discounted_fee` int(11) DEFAULT NULL,
  PRIMARY KEY (`fee_transaction_id`),
  KEY `ProgramID_idx` (`fk_program_id`),
  KEY `fk_applicant_id_idx` (`fk_applicant_id`),
  CONSTRAINT `fk_applicant_id` FOREIGN KEY (`fk_applicant_id`) REFERENCES `applicant` (`applicant_id`),
  CONSTRAINT `fk_program_id` FOREIGN KEY (`fk_program_id`) REFERENCES `program` (`program_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `program_fees`
--

LOCK TABLES `program_fees` WRITE;
/*!40000 ALTER TABLE `program_fees` DISABLE KEYS */;
INSERT INTO `program_fees` VALUES ('FTXN001','PRO001','STU001',65000,'Annual','No coupon code',65000),('FTXN002','PRO002','STU002',75000,'Annual','DISC50_002',37500),('FTXN003','PRO003','STU003',85000,'Annual','DISC50_003',42500),('FTXN004','PRO004','STU004',45000,'Annual','DISC50_004',22500),('FTXN005','PRO005','STU005',95000,'Annual','DISC50_005',47500),('FTXN006','PRO006','STU006',120000,'Annual','!!!Not allocate!!!',60000),('FTXN007','PRO007','STU007',35000,'Annual','!!!Not allocate!!!',17500),('FTXN008','PRO008','STU008',65500,'Annual','!!!Not allocate!!!',32750),('FTXN009','PRO009','STU009',65500,'Annual','!!!Not allocate!!!',31750),('FTXN010','PRO010','STU010',65500,'Annual','!!!Not allocate!!!',33750);
/*!40000 ALTER TABLE `program_fees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `test_completion_status`
--

DROP TABLE IF EXISTS `test_completion_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `test_completion_status` (
  `status_id` varchar(100) NOT NULL,
  `fk_applicant_id` varchar(100) NOT NULL,
  `fk_test_id` varchar(100) NOT NULL,
  `general_knowldge` int(11) DEFAULT NULL,
  `reasoning` int(11) DEFAULT NULL,
  `basic_maths` int(11) DEFAULT NULL,
  `english` int(11) DEFAULT NULL,
  `total_marks` int(11) DEFAULT NULL,
  `result_status` varchar(45) DEFAULT NULL,
  `rank_` int(11) DEFAULT NULL,
  PRIMARY KEY (`status_id`),
  KEY `ApplicantID_idx` (`fk_applicant_id`),
  KEY `TestID_idx` (`fk_test_id`),
  CONSTRAINT `fk_applicant_id_tcs` FOREIGN KEY (`fk_applicant_id`) REFERENCES `applicant` (`applicant_id`),
  CONSTRAINT `fk_test_id_tcs` FOREIGN KEY (`fk_test_id`) REFERENCES `admission_test` (`test_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `test_completion_status`
--

LOCK TABLES `test_completion_status` WRITE;
/*!40000 ALTER TABLE `test_completion_status` DISABLE KEYS */;
INSERT INTO `test_completion_status` VALUES ('STS001','STU001','TST001',35,45,20,42,142,'PASS',8),('STS002','STU002','TST001',25,46,26,40,137,'PASS',10),('STS003','STU003','TST001',20,49,28,46,143,'PASS',7),('STS004','STU004','TST001',36,50,29,47,162,'PASS',2),('STS005','STU005','TST001',34,38,24,42,138,'PASS',9),('STS006','STU006','TST001',45,42,35,31,153,'PASS',5),('STS007','STU007','TST001',42,41,38,39,160,'PASS',3),('STS008','STU008','TST001',15,48,45,38,146,'PASS',6),('STS009','STU009','TST001',25,49,42,41,157,'PASS',4),('STS010','STU010','TST001',33,47,41,42,163,'PASS',1);
/*!40000 ALTER TABLE `test_completion_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `test_fee_payment`
--

DROP TABLE IF EXISTS `test_fee_payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `test_fee_payment` (
  `test_payment_id` varchar(100) NOT NULL,
  `fk_applicant_id` varchar(100) NOT NULL,
  `fk_test_id` varchar(100) NOT NULL,
  `amount_paid` int(11) DEFAULT NULL,
  `transaction_id` varchar(100) NOT NULL,
  `payment_date` varchar(45) DEFAULT NULL,
  `payment_method` varchar(45) DEFAULT NULL,
  `payment_status` varchar(45) DEFAULT NULL,
  `receipt_url` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`test_payment_id`),
  UNIQUE KEY `transaction_id_UNIQUE` (`transaction_id`),
  KEY `ApplicantID_idx` (`fk_applicant_id`),
  KEY `TestID_idx` (`fk_test_id`),
  CONSTRAINT `fk_applicant_id_test_fee_payment` FOREIGN KEY (`fk_applicant_id`) REFERENCES `applicant` (`applicant_id`),
  CONSTRAINT `fk_test_id` FOREIGN KEY (`fk_test_id`) REFERENCES `admission_test` (`test_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `test_fee_payment`
--

LOCK TABLES `test_fee_payment` WRITE;
/*!40000 ALTER TABLE `test_fee_payment` DISABLE KEYS */;
INSERT INTO `test_fee_payment` VALUES ('TP001','STU001','TST001',125,'TTXN001','2025-02-28','Card','PAID','receip_stu001.pdf'),('TP002','STU002','TST001',125,'TTXN002','2025-01-03','NetBanking','PAID','receip_stu002.pdf'),('TP003','STU003','TST001',125,'TTXN003','2025-05-28','NetBanking','PAID','receip_stu003.pdf'),('TP004','STU004','TST001',125,'TTXN004','2025-06-13','NetBanking','PAID','receip_stu004.pdf'),('TP005','STU005','TST001',125,'TTXN005','2025-03-29','UPI','PAID','receip_stu005.pdf'),('TP006','STU006','TST001',125,'TTXN006','2025-03-06','NetBanking','PAID','receip_stu006.pdf'),('TP007','STU007','TST001',125,'TTXN007','2025-06-17','Card','PAID','receip_stu007.pdf'),('TP008','STU008','TST001',125,'TTXN008','2025-02-01','Card','PAID','receip_stu008.pdf'),('TP009','STU009','TST001',125,'TTXN009','2025-06-05','UPI','PAID','receip_stu009.pdf'),('TP010','STU010','TST001',125,'TTXN010','2025-01-29','NetBanking','PAID','receip_stu010.pdf');
/*!40000 ALTER TABLE `test_fee_payment` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-08-02 23:32:20
