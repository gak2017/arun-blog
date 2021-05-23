-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 23, 2021 at 02:52 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 7.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blogging`
--

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `sno` int(50) NOT NULL,
  `name` text NOT NULL,
  `phone_num` varchar(50) NOT NULL,
  `mes` text NOT NULL,
  `date` datetime DEFAULT current_timestamp(),
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`sno`, `name`, `phone_num`, `mes`, `date`, `email`) VALUES
(1, 'first post', '8712708656', 'yoyo ', '2021-05-19 07:34:23', 'firstpost@gmail.com'),
(2, 'kjqw', '7895612304', 'jwenfjbfanscnkijnew', NULL, 'dnc@gamil.com'),
(3, 'Arun', '7894561230', 'hii im here now@', '2021-05-19 08:03:31', 'Arun@gmail.com'),
(4, 'Arun', '7894561230', 'hii im here now@', '2021-05-19 09:11:26', 'Arun@gmail.com'),
(5, 'jhabh', '9496189494', 'abuycbnenca', '2021-05-19 09:40:39', 'kjn@wqdo.com'),
(6, 'jhabh', '9496189494', 'abuycbnenca', '2021-05-19 09:41:16', 'kjn@wqdo.com'),
(7, 'jhabh', '9496189494', 'abuycbnenca', '2021-05-19 09:41:55', 'kjn@wqdo.com'),
(8, 'jhabh', '9496189494', 'abuycbnenca', '2021-05-19 09:47:43', 'kjn@wqdo.com'),
(9, 'jhabh', '9496189494', 'abuycbnenca', '2021-05-19 09:50:19', 'kjn@wqdo.com'),
(10, 'Arun kumar', '874569852', 'hii im done successfully', '2021-05-19 09:50:58', 'Arun@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `sno` int(50) NOT NULL,
  `title` text NOT NULL,
  `sub_heading` text NOT NULL,
  `slug` varchar(25) NOT NULL,
  `content` text NOT NULL,
  `img_file` varchar(12) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`sno`, `title`, `sub_heading`, `slug`, `content`, `img_file`, `date`) VALUES
(1, 'Mental Models', 'The Best Way to Make Intelligent Decisions', 'mental-models', 'What Are Mental Models?\r\n\r\nMental models  Mental models  are how we understand the world. Not only do they shape what we think and how we understand but they shape the connections and opportunities that we see. Mental models are how we simplify complexity, why we consider some things more relevant than others, and how we reason.\r\n\r\nA mental model is simply a representation of how something works. We cannot keep all of the details of the world in our brains, so we use models to simplify the complex into understandable and organizable chunks.\r\n\r\nLearning to Think Better\r\nThe quality of our thinking is proportional to the models in our head and their usefulness in the situation at hand. The more models you have—the bigger your toolbox—the more likely you are to have the right models to see reality. It turns out that when it comes to improving your ability to make decisions variety matters.\r\n\r\nMost of us, however, are specialists. Instead of a latticework of mental models, we have a few from our discipline. Each specialist sees something different. By default, a typical Engineer will think in systems. A psychologist will think in terms of incentives. A biologist will think in terms of evolution. By putting these disciplines together in our head, we can walk around a problem in a three dimensional way. If we’re only looking at the problem one way, we’ve got a blind spot. And blind spots can kill you.\r\n\r\nHere’s another way to think about it. When a botanist looks at a forest they may focus on the ecosystem, an environmentalist sees the impact of climate change, a forestry engineer the state of the tree growth, a business person the value of the land. None are wrong, but neither are any of them able to describe the full scope of the forest. Sharing knowledge, or learning the basics of the other disciplines, would lead to a more well-rounded understanding that would allow for better initial decisions about managing the forest.\r\n\r\nIn a famous speech in the 1990s, Charlie Munger summed up the approach to practical wisdom through understanding mental models by saying: “Well, the first rule is that you can’t really know anything if you just remember isolated facts and try and bang ’em back. If the facts don’t hang together on a latticework of theory, you don’t have them in a usable form. You’ve got to have models in your head. And you’ve got to array your experience both vicarious and direct on this latticework of models. You may have noticed students who just try to remember and pound back what is remembered. Well, they fail in school and in life. You’ve got to hang experience on a latticework of models in your head.”', 'about-bg.jpg', '2021-05-19 15:18:56'),
(2, 'This is Second post', 'This is only for testing , dont take it serious', 'second-post', 'em chepamantav ra nayana , eroju ela ina ee blogging website complete chesi host cheyali , repatininchi time unnapudu alla post lu  create cheyali', '', '2021-05-19 11:24:38'),
(3, 'Bulk Emails', 'wanna see 3', 'third-post', 'Usually in a web application you will be sending one or two emails per request. In certain situations you might want to be able to send perhaps dozens or hundreds of emails in a single batch - probably in an external process such as a command-line script or cronjob.\r\n\r\nIn that case you do things slightly differently:', '', '2021-05-19 11:35:57'),
(4, 'Unit tests and suppressing emails', 'wanna see 4', 'fourth-post', 'When you are sending messages inside of unit tests, or in a development environment, it’s useful to be able to suppress email sending.\r\n\r\nIf the setting TESTING is set to True, emails will be suppressed. Calling send() on your messages will not result in any messages being actually sent.\r\n\r\nAlternatively outside a testing environment you can set MAIL_SUPPRESS_SEND to False. This will have the same effect.\r\n\r\nHowever, it’s still useful to keep track of emails that would have been sent when you are writing unit tests.\r\n\r\nIn order to keep track of dispatched emails, use the record_messages method:', '', '2021-05-19 11:35:57'),
(5, 'API', 'wanna see 6', 'sixth-post', 'lass flask_mail.Mail(app=None)\r\nManages email messaging\r\n\r\nParameters:	app – Flask instance\r\nsend(message)\r\nSends a single message instance. If TESTING is True the message will not actually be sent.\r\n\r\nParameters:	message – a Message instance.\r\nconnect()\r\nOpens a connection to the mail host.\r\n\r\nsend_message(*args, **kwargs)\r\nShortcut for send(msg).\r\n\r\nTakes same arguments as Message constructor.\r\n\r\nVersionadded :	0.3.5\r\nclass flask_mail.Attachment(filename=None, content_type=None, data=None, disposition=None, headers=None)\r\nEncapsulates file attachment information.\r\n\r\nVersionadded :	\r\n0.3.5\r\n\r\nParameters:	\r\nfilename – filename of attachment\r\ncontent_type – file mimetype\r\ndata – the raw file data\r\ndisposition – content-disposition (if any)\r\nclass flask_mail.Connection(mail)\r\nHandles connection to host.\r\n\r\nsend(message, envelope_from=None)\r\nVerifies and sends message.\r\n\r\nParameters:	\r\nmessage – Message instance.\r\nenvelope_from – Email address to be used in MAIL FROM command.\r\nsend_message(*args, **kwargs)\r\nShortcut for send(msg).\r\n\r\nTakes same arguments as Message constructor.', '', '2021-05-19 11:38:19'),
(6, 'learn anything', 'your knowledge', 'knowledge-yours', 'jbgfiudsozlcn asbsp shbpc hacoblhyfgbwrauiuhfsdfeoi efw', 'im.png', '2021-05-19 14:57:20');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`sno`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `sno` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `sno` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
