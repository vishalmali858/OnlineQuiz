-- phpMyAdmin SQL Dump
-- version 3.3.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 29, 2016 at 06:16 PM
-- Server version: 5.5.8
-- PHP Version: 5.3.5

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `onlinequiz`
--

-- --------------------------------------------------------

--
-- Table structure for table `question`
--

CREATE TABLE IF NOT EXISTS `question` (
  `questionID` int(10) NOT NULL AUTO_INCREMENT,
  `quizID` int(5) NOT NULL,
  `question` text NOT NULL,
  `correctAns` char(1) NOT NULL,
  `optionA` varchar(50) NOT NULL,
  `optionB` varchar(50) NOT NULL,
  `optionC` varchar(50) NOT NULL,
  `optionD` varchar(50) NOT NULL,
  PRIMARY KEY (`questionID`),
  KEY `quizID` (`quizID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=50 ;

--
-- Dumping data for table `question`
--

INSERT INTO `question` (`questionID`, `quizID`, `question`, `correctAns`, `optionA`, `optionB`, `optionC`, `optionD`) VALUES
(1, 1, 'Which one of these lists contains only Java programming language keywords?', 'B', 'class, if, void, long, Int, continue', 'goto, instanceof, native, finally, default, throws', 'try, virtual, throw, final, volatile, transient', 'strictfp, constant, super, implements, do'),
(2, 1, 'Which four options describe the correct default values for array elements of the types indicated?<br>\r\nint -> 0<br>\r\nString -> "null"<br>\r\nDog -> null<br>\r\nchar -> ''\\u0000''<br>\r\nfloat -> 0.0f<br>\r\nboolean -> true<br>', 'B', '1, 2, 3, 4', '1, 2, 3, 4', '1, 2, 3, 4', '3, 4, 5, 6'),
(3, 1, 'Which will legally declare, construct, and initialize an array?', 'D', 'int [] myList = {"1", "2", "3"};', 'int [] myList = (5, 8, 2);', 'int myList [] [] = {4,9,7,0};', 'int myList [] = {4, 3, 7};'),
(4, 1, 'Which is a reserved word in the Java programming language?', 'B', 'method', 'native', 'subclasses', 'reference'),
(5, 1, 'Which is a valid keyword in java?', 'A', 'interface', 'string', 'Float', 'unsigned'),
(6, 1, 'Which three are legal array declarations?\r\nint [] myScores [];<br>\r\nchar [] myChars;<br>\r\nint [6] myScores;<br>\r\nDog myDogs [];<br>\r\nDog myDogs [7];<br>', 'A', '1, 2, 4', '2, 4, 5', '2, 3, 4', 'All are correct.'),
(7, 1, 'public interface Foo \r\n{ \r\n    int k = 4; /* Line 3 */\r\n}\r\nWhich three piece of codes are equivalent to line 3?<br>\r\nfinal int k = 4;<br>\r\npublic int k = 4;<br>\r\nstatic int k = 4;<br>\r\nabstract int k = 4;<br>\r\nvolatile int k = 4;<br>\r\nprotected int k = 4;<br>', 'A', '1, 2 and 3', '2, 3 and 4', '3, 4 and 5', '4, 5 and 6'),
(8, 1, 'Which one of the following will declare an array and initialize it with five numbers?', 'B', 'Array a = new Array(5);', 'int [] a = {23,22,21,20,19};', 'int a [] = new int[5];', 'int [5] array;'),
(9, 1, 'Which three are valid declarations of a char?<br>\r\nchar c1 = 064770;<br>\r\nchar c2 = ''face'';<br>\r\nchar c3 = 0xbeef;<br>\r\nchar c4 = \\u0022;<br>\r\nchar c5 = ''\\iface'';<br>\r\nchar c6 = ''\\uface'';<br>', 'B', '1, 2, 4', '1, 3, 6', '3, 5', '5 only'),
(10, 1, 'Which is the valid declarations within an interface definition?', 'A', 'public double methoda();', 'public final double methoda();', 'static void methoda(double d1);', 'protected void methoda(double d1);'),
(11, 2, 'You can add a row using SQL in a database with which of the following?', 'C', 'ADD', 'CREATE', 'INSERT', 'MAKE'),
(12, 2, 'The command to remove rows from a table ''CUSTOMER'' is:\r\n', 'C', 'REMOVE FROM CUSTOMER ...', 'DROP FROM CUSTOMER ...', 'DELETE FROM CUSTOMER WHERE ...', 'UPDATE FROM CUSTOMER ...'),
(13, 2, 'The SQL WHERE clause:', 'B', 'limits the column data that are returned.', 'limits the row data are returned.', 'Both A and B are correct.', 'Neither A nor B are correct.'),
(14, 2, 'Which of the following is the original purpose of SQL?', 'D', 'To specify the syntax and semantics of SQL data de', 'To specify the syntax and semantics of SQL manipul', 'To define the data structures', 'All of the above.'),
(15, 2, 'The wildcard in a WHERE clause is useful when?', 'B', 'An exact match is necessary in a SELECT statement.', 'An exact match is not possible in a SELECT stateme', 'An exact match is necessary in a CREATE statement.', 'An exact match is not possible in a CREATE stateme');

-- --------------------------------------------------------

--
-- Table structure for table `quiz`
--

CREATE TABLE IF NOT EXISTS `quiz` (
  `quizID` int(5) NOT NULL AUTO_INCREMENT,
  `quizName` varchar(15) NOT NULL,
  `noOfQue` int(5) NOT NULL,
  `isTimed` tinyint(2) NOT NULL,
  `quizTime` int(5) NOT NULL,
  PRIMARY KEY (`quizID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `quiz`
--

INSERT INTO `quiz` (`quizID`, `quizName`, `noOfQue`, `isTimed`, `quizTime`) VALUES
(1, 'Java', 10, 1, 10),
(2, 'SQL', 5, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `recoveryquestion`
--

CREATE TABLE IF NOT EXISTS `recoveryquestion` (
  `recoveryQuestionID` int(5) NOT NULL AUTO_INCREMENT,
  `question` varchar(100) NOT NULL,
  PRIMARY KEY (`recoveryQuestionID`),
  UNIQUE KEY `question` (`question`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `recoveryquestion`
--

INSERT INTO `recoveryquestion` (`recoveryQuestionID`, `question`) VALUES
(3, 'What is Your Favorite Colour?'),
(1, 'What is Your Favorite Game?'),
(2, 'What is Your First Mobile No?');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `userID` int(10) NOT NULL AUTO_INCREMENT,
  `userName` varchar(20) NOT NULL,
  `firstName` varchar(20) NOT NULL,
  `lastName` varchar(20) NOT NULL,
  `emailID` varchar(30) NOT NULL,
  `password` varchar(20) NOT NULL,
  `recoveryQuestionID` int(5) NOT NULL,
  `recoveryAnswer` varchar(20) NOT NULL,
  PRIMARY KEY (`userID`),
  UNIQUE KEY `userName` (`userName`),
  KEY `recoveryQuestionID` (`recoveryQuestionID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`userID`, `userName`, `firstName`, `lastName`, `emailID`, `password`, `recoveryQuestionID`, `recoveryAnswer`) VALUES
(6, 'bhavinoza', 'Bhavin', 'Oza', 'bhavin.oza98@gmail.com', 'oza1234', 3, 'Blue'),
(7, 'Admin', 'Admin', ' ', 'admin@onlinequiz.com', '123456', 2, '9123456780');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `question`
--
ALTER TABLE `question`
  ADD CONSTRAINT `question_ibfk_1` FOREIGN KEY (`quizID`) REFERENCES `quiz` (`quizID`) ON DELETE NO ACTION ON UPDATE NO ACTION;
