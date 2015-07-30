-- phpMyAdmin SQL Dump
-- version 4.4.3
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jul 30, 2015 at 06:52 PM
-- Server version: 5.6.24
-- PHP Version: 5.6.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `blog-core`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`) VALUES
(1, 'News'),
(2, 'Projects'),
(3, 'Tutorial'),
(4, 'Video'),
(5, 'Other Posts'),
(6, 'TÃ¼rkÃ§e GÃ¶nderiler');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE IF NOT EXISTS `posts` (
  `id` int(11) NOT NULL,
  `category` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `author` varchar(255) NOT NULL,
  `tags` varchar(255) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `category`, `title`, `body`, `author`, `tags`, `date`) VALUES
(1, 1, 'Sample blog post', '<p>This blog post shows a few different types of content that''s supported and styled with Bootstrap. Basic typography, images, and code are all supported.</p>\r\n            <hr>\r\n            <p>Cum sociis natoque penatibus et magnis <a href="#">dis parturient montes</a>, nascetur ridiculus mus. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Sed posuere consectetur est at lobortis. Cras mattis consectetur purus sit amet fermentum.</p>\r\n            <blockquote>\r\n              <p>Curabitur blandit tempus porttitor. <strong>Nullam quis risus eget urna mollis</strong> ornare vel eu leo. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>\r\n            </blockquote>\r\n            <p>Etiam porta <em>sem malesuada magna</em> mollis euismod. Cras mattis consectetur purus sit amet fermentum. Aenean lacinia bibendum nulla sed consectetur.</p>\r\n            <h2>Heading</h2>\r\n            <p>Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Morbi leo risus, porta ac consectetur ac, vestibulum at eros.</p>\r\n            <h3>Sub-heading</h3>\r\n            <p>Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.</p>\r\n            <pre><code>Example code block</code></pre>\r\n            <p>Aenean lacinia bibendum nulla sed consectetur. Etiam porta sem malesuada magna mollis euismod. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa.</p>\r\n            <h3>Sub-heading</h3>\r\n            <p>Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Aenean lacinia bibendum nulla sed consectetur. Etiam porta sem malesuada magna mollis euismod. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus.</p>\r\n            <ul>\r\n              <li>Praesent commodo cursus magna, vel scelerisque nisl consectetur et.</li>\r\n              <li>Donec id elit non mi porta gravida at eget metus.</li>\r\n              <li>Nulla vitae elit libero, a pharetra augue.</li>\r\n            </ul>\r\n            <p>Donec ullamcorper nulla non metus auctor fringilla. Nulla vitae elit libero, a pharetra augue.</p>\r\n            <ol>\r\n              <li>Vestibulum id ligula porta felis euismod semper.</li>\r\n              <li>Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.</li>\r\n              <li>Maecenas sed diam eget risus varius blandit sit amet non magna.</li>\r\n            </ol>\r\n            <p>Cras mattis consectetur purus sit amet fermentum. Sed posuere consectetur est at lobortis.</p>', 'Abdullah', 'lorem, ipsum, tag, php, kitten code, test', '2015-07-28 12:01:46'),
(2, 1, 'Another blog post', ' <p>Cum sociis natoque penatibus et magnis <a href="#">dis parturient montes</a>, nascetur ridiculus mus. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Sed posuere consectetur est at lobortis. Cras mattis consectetur purus sit amet fermentum.</p>\n            <blockquote>\n              <p>Curabitur blandit tempus porttitor. <strong>Nullam quis risus eget urna mollis</strong> ornare vel eu leo. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>\n            </blockquote>\n            <p>Etiam porta <em>sem malesuada magna</em> mollis euismod. Cras mattis consectetur purus sit amet fermentum. Aenean lacinia bibendum nulla sed consectetur.</p>\n            <p>Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Morbi leo risus, porta ac consectetur ac, vestibulum at eros.</p>', 'My Cat', 'cat, kitten, tag, test', '2015-07-28 12:01:46'),
(3, 2, 'New feature', 'Quisque vitae quam sed justo lacinia gravida in a quam. Phasellus vel arcu a metus sodales iaculis at vel mauris. Donec aliquet velit non est bibendum ullamcorper ac non nibh. Donec suscipit ullamcorper purus nec facilisis. Sed sit amet velit malesuada dolor suscipit viverra. Sed suscipit dolor ornare pretium placerat. Phasellus volutpat rhoncus nibh consequat lobortis. Mauris tristique urna eros, eget consequat dolor placerat nec. Duis quis feugiat odio, et convallis risus. Praesent pretium dolor eu massa fermentum, vitae faucibus sapien scelerisque. Nulla venenatis nisi a tellus scelerisque, quis faucibus purus accumsan. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Nulla tincidunt enim eu gravida fermentum. Vivamus dapibus vulputate velit ac posuere. Nulla non lacinia tellus. Integer pretium fermentum mi quis pulvinar.\n            <ul>\n              <li>Praesent commodo cursus magna, vel scelerisque nisl consectetur et.</li>\n              <li>Donec id elit non mi porta gravida at eget metus.</li>\n              <li>Nulla vitae elit libero, a pharetra augue.</li>\n            </ul>\n            <p>Etiam porta <em>sem malesuada magna</em> mollis euismod. Cras mattis consectetur purus sit amet fermentum. Aenean lacinia bibendum nulla sed consectetur.</p>\n           <p>Donec ullamcorper nulla non metus auctor fringilla. Nulla vitae elit libero, a pharetra augue.</p>', 'Abdullah', 'post, test, blog, feature, tech', '2015-07-29 11:02:59'),
(4, 1, 'Baklava yapmasana', '    	    	<p> Damla dinle fanatik anlatÄ±ÅŸ ters heyecanlÄ± fÄ±sÄ±ltÄ± fatura plastik ÅŸapka demokrasi. TatsÄ±z evrak altmÄ±ÅŸ salÄ± gÃ¶kyÃ¼zÃ¼ olur dÃ¼kkan iÅŸyeri ondÃ¶rt elma. Cuma bayat birleÅŸim dizgin gel. AcÄ± dÃ¼ÅŸkÃ¼n bariz ÅŸÄ±k Ã§arÅŸamba.</p>\r\n<p> AbartÄ± deniz cÃ¼zdan eÅŸÅŸek tanker parlak Ã§izgi. ÅžÄ±marÄ±k salÄ± resim aldÄ±m imza yabancÄ± demokrasi bayat. Aperatif birleÅŸmiÅŸ gÃ¶kkuÅŸaÄŸÄ± neden belge akÄ±cÄ± giÅŸe deli dikiz deri onÃ¼Ã§ tatsÄ±z. Bulgur cumartesi berber tenha balo bundan. Efsane anlatÄ±yor pist. Maymun aÄŸÄ±rlaÅŸtÄ± ÅŸapka siyah baÄŸlama Ã§irkin deprem. Onlar etraf but diÅŸÃ§i fener dana dÃ¼z.</p> \r\n<p>  YÃ¼z kapak sapak tÃ¼rkÃ§e ÅŸaÅŸkÄ±n apartman satÄ±r nasÄ±l burun heyecanlÄ± meslek. Fatura bÄ±Ã§kÄ±n dÃ¼z. Eldiven baÄŸlantÄ± boya badem bÃ¶yle ÅŸÄ±k aÄŸabey devre araÃ§. BeÅŸ zÄ±mba mesela kÃ¼re bariz tÄ±r azami merdiven kavÅŸak Ã§arÅŸamba. Tez Ã§atÄ± koyu dede onbir hamam devam yedi yarÄ±n abakÃ¼s afet.</p>\r\n<p> OndÃ¶rt o yÃ¼zden derece daima banka sÄ±nÄ±r. Cuma yakÄ±ÅŸÄ±klÄ± ileri depo. Damla acil salon dokuz domuz. AnlatÄ±ÅŸ bin soy hemde muz cilt yaptÄ± kÄ±lÄ±bÄ±k yÃ¼ksek bÃ¼nye acÄ±msÄ±. BaÅŸarÄ±lÄ± bazen rahatsÄ±z garanti acemi kÄ±t yap saman ben tatlÄ±.</p>\r\n<p> Ã‡iÃ§ek bere deliksiz bay takÄ±m gÃ¶zlÃ¼k dizgin bant Ã¼Ã§ ekÅŸi dilekÃ§e haftaya. Baklava sÃ¼rÃ¼cÃ¼ petrol havale dÃ¼ÅŸÃ¼n yÃ¼rÃ¼ kahve. Abide masa yavaÅŸ evrim bu bÃ¶ylece saray fil tabela on gidici. GÃ¶ndermiÅŸ abes dÃ¼zenli. EÄŸlence ÅŸofÃ¶r buzul turuncu bayan heykel araba. Bilgisayar ondan yetmiÅŸ kÄ±vrÄ±k. Termometre kitaplÄ±k biliyor gezi gemi bir yeÅŸil kullan.</p>        ', 'Mahmut', 'turkish, turkey', '2015-07-30 15:10:12'),
(7, 1, 'Cam gemi basÄ±lmÄ±ÅŸ', '    	<p> Baba izle bundan meslek efsane balo kÄ±rmÄ±zÄ± yabancÄ± dur merdiven kalem geniÅŸ. KÃ¼re dar ahÅŸap. Dosya cadde gÃ¼zel ahbap kahve. Mat efsane akÄ±cÄ± dosya. KÄ±lÄ±bÄ±k pazartesi tatlÄ± deÄŸirmen bilim balya.</p>\r\n<p> Bulut heykel burun olmaz sÃ¶ylÃ¼yor harika ananas ondÃ¶rt zÄ±mba. Banyo maymun yakÄ±ÅŸÄ±klÄ± adele. Daima o afet garanti birey diÅŸÃ§i bilgisayar sÃ¼rÃ¼cÃ¼ soy izle. Adalet bÃ¼nye seksen eldiven saÃ§ma dÃ¼n anlatÄ±yor onbir yÃ¼rÃ¼ o yÃ¼zden fatura.</p>\r\n<p>\r\n	 Tanker daÄŸ fil. Boya kalktÄ± turuncu dÃ¼ÅŸÃ¼n dÃ¼kkan bakir deri ebedi iÅŸyeri rahatsÄ±z abajur ÅŸerit. SalÄ± abide acÄ±ktÄ±m bin plastik bacak dizgin eÄŸlence gezi. KitaplÄ±k sekiz anayol giÅŸe. Ã‡ay yÃ¼z Ä±ÅŸÄ±k saray dÃ¶ner dilekÃ§e acÄ±msÄ± acÄ±klÄ± koyu dolap.</p>\r\n<p> Cam gemi basÄ±lmÄ±ÅŸ bulut. Ananas bilim askÄ± dÃ¼z yÃ¼z perÅŸembe acÄ±msÄ± ayna. NasÄ±l milyar bÃ¶yle mor baÅŸvuru gidilmez ondan eldiven bodrum anlamÄ±yor ilaÃ§ yaptÄ±. On apartman kar iki o han kÄ±rk. Acemi ahbap farklÄ± baÄŸlama araba kapak berber yetmiÅŸ.\r\n</p>\r\n<p>\r\n	 Git bundan kamÃ§Ä± ne ot bardak sene dÃ¼n sol sÄ±nÄ±r. YÃ¼ksek birleÅŸmiÅŸ aÃ§Ä±klama dikiz portakal dÃ¶rt. Taraftar edebiyat yaÄŸmur araba bayat abakÃ¼s baba. TatlÄ± Ã§elik tÃ¼rkÃ§e cihaz ÅŸiÅŸe erkek kahverengi milyar pist. Etraf dertsiz tabela dinle. PerÅŸembe geri cilt. Katlan eczane tatsÄ±z motorsiklet dur azami.\r\n</p>\r\n    ', 'KittenCode', 'tÃ¼rkÃ§e,turkish,turkey', '2015-07-30 15:25:41');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
