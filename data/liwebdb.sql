-- phpMyAdmin SQL Dump
-- version 4.5.0.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Feb 22, 2016 at 12:44 PM
-- Server version: 10.0.17-MariaDB
-- PHP Version: 5.6.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `liwebdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Mr Wordpress', '', 'https://wordpress.org/', '', '2016-02-18 08:49:15', '2016-02-18 08:49:15', 'Chào, đây là một bình luận.\nĐể xóa một bình luận, chỉ cần đăng nhập và xem các bình luận của bài viết. Tại đó bạn sẽ có thể lựa chọn biên tập lại hoặc xóa bình luận.', 0, '1', '', '', 0, 0),
(2, 1077, 'Chris Ames', 'yo@chrisam.es', 'http://chrisam.es/', '24.126.245.62', '2013-03-15 18:16:59', '2013-03-15 23:16:59', 'Ello! Pretend you''re reading this comment with an English accent.', 0, '1', '', '', 0, 0),
(3, 149, 'Chris Ames', 'yo@chrisam.es', 'http://chrisam.es', '59.167.157.3', '2013-01-04 10:15:32', '2013-01-04 16:15:32', 'There are a few checklist items that should be in each comment.\n\n<ul>\n<li>The commenter''s <strong>gravatar</strong>. Optional, but a best practice. Use get_comment_author_email.</li>\n<li>The commenter''s <strong>name</strong>. Use <a href="http://codex.wordpress.org/Function_Reference/comment_author" title="Comment Author" rel="nofollow">comment_author</a>.</li>\n<li>The commenter''s <strong>URL</strong>. Usually applied as a link to the commenter''s name. Use <a href="http://codex.wordpress.org/Function_Reference/comment_author_url" title="Comment Author URL" rel="nofollow">comment_author_url</a></li>\n<li>The <strong>date / time</strong> the comment was made. Use <a href="http://codex.wordpress.org/Function_Reference/get_comment_date" title="Get Comment Date" rel="nofollow">get_comment_date</a>.</li>\n<li>A <strong>permalink</strong> to the comment. Usually applied as a link to the date / time of the comment. Use <a href="http://codex.wordpress.org/Function_Reference/get_comment_link" title="Get Comment Link" rel="nofollow">get_comment_link</a></li>\n<li>Indication of a <strong>comment left by the post author</strong>. Style the <code>.bypostauthor</code> class.</li>\n<li>The <strong>comment text</strong>. Use <a href="http://codex.wordpress.org/Function_Reference/comment_text" title="Comment Text" rel="nofollow">comment_text</a>.</li>\n<li>An <strong>edit</strong> comment link. Use <a href="http://codex.wordpress.org/Function_Reference/edit_comment_link" title="Edit Comment Link" rel="nofollow">edit_comment_link</a>.</li>\n<li>A comment <strong>reply</strong> link. Used for threaded comments. Use <a href="http://codex.wordpress.org/Function_Reference/comment_reply_link" title="Comment Reply Link" rel="nofollow">comment_reply_link</a>.</li>\n</ul>', 0, '1', '', '', 0, 0),
(4, 149, 'Tom McFarlin', 'tom@tommcfarlin.com', 'http://tommcfarlin.com', '59.167.157.3', '2012-09-03 10:18:04', '2012-09-03 15:18:04', '<h2>Headings</h2>\n\n<h1>Header one</h1>\n\n<h2>Header two</h2>\n\n<h3>Header three</h3>\n\n<h4>Header four</h4>\n\n<h5>Header five</h5>\n\n<h6>Header six</h6>\n\n<h2>Blockquotes</h2>\n\nSingle line blockquote:\n\n<blockquote>Stay hungry. Stay foolish.</blockquote>\n\nMulti line blockquote with a cite reference:\n\n<blockquote>People think focus means saying yes to the thing you''ve got to focus on. But that''s not what it means at all. It means saying no to the hundred other good ideas that there are. You have to pick carefully. I''m actually as proud of the things we haven''t done as the things I have done. Innovation is saying no to 1,000 things. <cite>Steve Jobs - Apple Worldwide Developers'' Conference, 1997</cite></blockquote>\n\n<h2>Tables</h2>\n\n<table>\n    <tbody>\n        <tr>\n            <th>Employee</th>\n            <th class="views">Salary</th>\n            <th></th>\n        </tr>\n        <tr class="odd">\n            <td><a href="http://john.do/" rel="nofollow">John Saddington</a></td>\n            <td>$1</td>\n            <td>Because that''s all Steve Job'' needed for a salary.</td>\n        </tr>\n        <tr class="even">\n            <td><a href="http://tommcfarlin.com/" rel="nofollow">Tom McFarlin</a></td>\n            <td>$100K</td>\n            <td>For all the blogging he does.</td>\n        </tr>\n        <tr class="odd">\n            <td><a href="http://jarederickson.com/" rel="nofollow">Jared Erickson</a></td>\n            <td>$100M</td>\n            <td>Pictures are worth a thousand words, right? So Tom x 1,000.</td>\n        </tr>\n        <tr class="even">\n            <td><a href="http://chrisam.es/" rel="nofollow">Chris Ames</a></td>\n            <td>$100B</td>\n            <td>With hair like that?! Enough said...</td>\n        </tr>\n    </tbody>\n</table>\n\n<h2>Definition Lists</h2>\n\n<dl>\n    <dt>Definition List Title</dt>\n    <dd>Definition list division.</dd>\n    <dt>Startup</dt>\n    <dd>A startup company or startup is a company or temporary organization designed to search for a repeatable and scalable business model.</dd>\n    <dt>#dowork</dt>\n    <dd>Coined by Rob Dyrdek and his personal body guard Christopher "Big Black" Boykins, "Do Work" works as a self motivator, to motivating your friends.</dd>\n    <dt>Do It Live</dt>\n    <dd>I''ll let Bill O''Reilly will <a href="https://www.youtube.com/watch?v=O_HyZ5aW76c" title="We''ll Do It Live" rel="nofollow">explain</a> this one.</dd>\n</dl>\n\n<h2>Unordered Lists (Nested)</h2>\n\n<ul>\n    <li>List item one\n        <ul>\n            <li>List item one\n                <ul>\n                    <li>List item one</li>\n                    <li>List item two</li>\n                    <li>List item three</li>\n                    <li>List item four</li>\n            	</ul>\n            </li>\n            <li>List item two</li>\n            <li>List item three</li>\n            <li>List item four</li>\n        </ul>\n    </li>\n	<li>List item two</li>\n	<li>List item three</li>\n	<li>List item four</li>\n</ul>\n\n<h2>Ordered List (Nested)</h2>\n\n<ol>\n    <li>List item one\n        <ol>\n            <li>List item one\n                <ol>\n                    <li>List item one</li>\n                    <li>List item two</li>\n                    <li>List item three</li>\n                    <li>List item four</li>\n                </ol>\n            </li>\n            <li>List item two</li>\n            <li>List item three</li>\n            <li>List item four</li>\n        </ol>\n    </li>\n    <li>List item two</li>\n    <li>List item three</li>\n    <li>List item four</li>\n</ol>\n\n<h2>HTML Tags</h2>\n\nThese supported tags come from the WordPress.com code <a href="http://en.support.wordpress.com/code/" title="Code" rel="nofollow">FAQ</a>.\n\n<strong>Address Tag</strong>\n\n<address>\n1 Infinite Loop\nCupertino, CA 95014\nUnited States\n</address>\n\n<strong>Anchor Tag (aka. Link)</strong>\n\nThis is an example of a <a href="http://apple.com" title="Apple" rel="nofollow">link</a>.\n\n<strong>Abbreviation Tag</strong>\n\nThe abbreviation <abbr title="Seriously">srsly</abbr> stands for "seriously".\n\n<strong>Acronym Tag</strong>\n\nThe acronym <acronym title="For The Win">ftw</acronym> stands for "for the win".\n\n<strong>Big Tag</strong>\n\nThese tests are a <big>big</big> deal, but this tag is no longer supported in HTML5.\n\n<strong>Cite Tag</strong>\n\n"Code is poetry." --<cite>Automattic</cite>\n\n<strong>Code Tag</strong>\n\nYou will learn later on in these tests that <code>word-wrap: break-word;</code> will be your best friend.\n\n<strong>Delete Tag</strong>\n\nThis tag will let you <del>strikeout text</del>, but this tag is no longer supported in HTML5 (use the <code>&lt;strike&gt;</code> instead).\n\n<strong>Emphasize Tag</strong>\n\nThe emphasize tag should <em>italicize</em> text.\n\n<strong>Insert Tag</strong>\n\nThis tag should denote <ins>inserted</ins> text.\n\n<strong>Keyboard Tag</strong>\n\nThis scarsly known tag emulates <kbd>keyboard text</kbd>, which is usually styled like the <code>&lt;code&gt;</code> tag.\n\n<strong>Preformatted Tag</strong>\n\nThis tag styles large blocks of code.\n\n<pre>\n.post-title {\n	margin: 0 0 5px;\n	font-weight: bold;\n	font-size: 38px;\n	line-height: 1.2;\n}\n</pre>\n\n<strong>Quote Tag</strong>\n\n<q>Developers, developers, developers...</q> --Steve Ballmer\n\n<strong>Strong Tag</strong>\n\nThis tag shows <strong>bold<strong> text.\n\n<strong>Subscript Tag</strong>\n\nGetting our science styling on with H<sub>2</sub>O, which should push the "2" down.\n\n<strong>Superscript Tag</strong>\n\nStill sticking with science and Albert Einstein''s E = MC<sup>2</sup>, which should lift the "2" up.\n\n<strong>Teletype Tag</strong>\n\nThis rarely used tag emulates <tt>teletype text</tt>, which is usually styled like the <code>&lt;code&gt;</code> tag.\n\n<strong>Variable Tag</strong>\n\nThis allows you to denote <var>variables</var>.', 0, '1', '', '', 0, 0),
(5, 149, 'Anonymous User', 'fake@email.com', '', '67.3.69.40', '2013-03-11 23:45:54', '2013-03-12 04:45:54', 'This user it trying to be anonymous.\n\n<ul>\n    <li>They used a fake email, so there should be no <a href="http://gravatar.com/" title="Gravatar" rel="nofollow">Gravatar</a> associated with it.</li>\n    <li>They did not speify a website, so there should be no link to it in the comment.</li>\n</ul>', 0, '1', '', '', 0, 0),
(6, 149, 'Jason bradley', 'jason.bradley@me.com', 'http://everchangingmedia.com/', '204.54.106.1', '2013-03-12 13:17:35', '2013-03-12 18:17:35', 'Comments? I love comments!', 0, '1', '', '', 0, 0),
(7, 149, 'Matt Mullenweg', 'm@mullenweg.com', 'http://ma.tt/', '24.126.245.62', '2013-03-14 07:53:26', '2013-03-14 12:53:26', 'These tests are amazing!', 0, '1', '', '', 0, 0),
(8, 149, 'Michael Novotny', 'manovotny@gmail.com', '', '24.126.245.62', '2013-03-14 07:56:46', '2013-03-14 12:56:46', 'Author Comment.', 0, '1', '', '', 0, 1),
(9, 149, 'Jared Erickson', 'jared@lessmade.com', 'http://jarederickson.com/', '24.126.245.62', '2013-03-14 07:57:01', '2013-03-14 12:57:01', 'Comment Depth 01', 0, '1', '', '', 0, 0),
(10, 149, 'Chris Ames', 'yo@chrisam.es', 'http://chrisam.es/', '24.126.245.62', '2013-03-14 08:01:21', '2013-03-14 13:01:21', 'Comment Depth 02', 0, '1', '', '', 9, 0),
(11, 149, 'John Saddington', 'me@john.do', 'http://john.do/', '24.126.245.62', '2013-03-14 08:02:06', '2013-03-14 13:02:06', 'Comment Depth 03', 0, '1', '', '', 10, 0),
(12, 149, 'Tom McFarlin', 'tom@tommcfarlin.com', 'http://tommcfarlin.com/', '24.126.245.62', '2013-03-14 08:03:22', '2013-03-14 13:03:22', 'Comment Depth 04', 0, '1', '', '', 11, 0),
(13, 149, 'Michael Novotny', 'manovotny@gmail.com', 'http://manovotny.com/', '24.126.245.62', '2013-03-14 08:10:29', '2013-03-14 13:10:29', 'Comment Depth 05\n\nAlso an author comment.', 0, '1', '', '', 12, 1),
(14, 149, 'Jason Bradley', 'jason.bradley@me.com', 'http://everchangingmedia.com/', '24.126.245.62', '2013-03-14 08:12:16', '2013-03-14 13:12:16', 'Comment Depth 06', 0, '1', '', '', 13, 0),
(15, 149, 'Jared Erickson', 'jared@lessmade.com', 'http://jarederickson.com/', '24.126.245.62', '2013-03-14 08:12:58', '2013-03-14 13:12:58', 'Comment Depth 07', 0, '1', '', '', 14, 0),
(16, 149, 'Chris Ames', 'yo@chrisam.es', 'http://chrisam.es/', '24.126.245.62', '2013-03-14 08:13:42', '2013-03-14 13:13:42', 'Comment Depth 08', 0, '1', '', '', 15, 0),
(17, 149, 'John Saddington', 'me@john.do', 'http://john.do/', '24.126.245.62', '2013-03-14 08:14:13', '2013-03-14 13:14:13', 'Comment Depth 09', 0, '1', '', '', 16, 0),
(18, 149, 'Michael Novotny', 'manovotny@gmail.com', 'http://manovotny.com/', '24.126.245.62', '2013-03-14 08:14:47', '2013-03-14 13:14:47', 'Comment Depth 10\n\nAlso an author comment.', 0, '1', '', '', 17, 1),
(19, 149, 'John Saddington', 'me@john.do', 'http://john.do/', '24.126.245.62', '2013-03-14 09:29:30', '2013-03-14 14:29:30', 'Video comment.\n\n<iframe width="640" height="360" src="http://www.youtube.com/embed/9bZkp7q19f0" frameborder="0" allowfullscreen></iframe>', 0, '1', '', '', 0, 0),
(20, 149, 'Eryn Erickson', 'eryn@lessmade.com', 'http://soworthloving.com/', '24.126.245.62', '2013-03-14 09:56:43', '2013-03-14 14:56:43', 'Image comment.\n\n<img src="http://wptest.io/demo/wp-content/uploads/2013/03/soworthloving-wallpaper.jpg" alt="I Am Worth Loving Wallpaper" />', 0, '1', '', '', 0, 0),
(21, 149, 'WP Daily', 'hello@wpdaily.com', 'http://wpdaily.co/', '24.126.245.62', '2013-03-14 11:23:24', '2013-03-14 16:23:24', 'We are totally going to blog about these tests!', 0, '1', '', '', 0, 0),
(22, 149, '8BIT', 'sales@8bit.io', 'http://8bit.io/', '24.126.245.62', '2013-03-14 11:27:54', '2013-03-14 16:27:54', 'We use these tests all the time! Killer stuff!', 0, '1', '', '', 0, 0),
(23, 149, 'Michael Novotny', 'manovotny@gmail.com', 'http://manovotny.com/', '24.126.245.62', '2013-03-14 11:30:33', '2013-03-14 16:30:33', 'Thanks for all the comments, everyone!', 0, '1', '', '', 0, 1),
(24, 151, 'Ping 1 &laquo; What&#8217;s a tellyworth?', '', 'http://tellyworth.wordpress.com/2007/11/21/ping-1/', '72.232.101.12', '2007-11-21 11:31:12', '2007-11-21 01:31:12', '[...] Trackback test. [...]', 0, '1', '', 'pingback', 0, 0),
(25, 151, 'Ping 2 with a much longer title than the previous ping, which was called Ping 1 &laquo; What&#8217;s a tellyworth?', '', 'http://tellyworth.wordpress.com/2007/11/21/ping-2-with-a-much-longer-title-than-the-previous-ping-which-was-called-ping-1/', '72.232.101.12', '2007-11-21 11:35:47', '2007-11-21 01:35:47', '[...] Another trackback test.  Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Donec hendrerit gravida nisi. Praesent libero odio, tincidunt nec, fringilla et, mollis ut, ipsum. Proin a lacus quis nisi pulvinar bibendum. Donec massa justo, dapibus at, imperdiet vestibulum, dapibus in, leo. Donec pretium tellus in dui. Phasellus tristique aliquet justo. Donec sodales. Nulla urna mi, molestie ac, malesuada sit amet, sagittis id, lacus. Mauris auctor leo ac justo. Proin convallis. Nulla eleifend dictum mi. Donec at lectus. Integer augue sapien, ornare vitae, rhoncus quis, rhoncus sed, sapien. Nunc mattis diam sodales diam.Etiam porttitor, ante sed varius semper, ante arcu rutrum tortor, at luctus nunc urna id nibh. Fusce sodales. Integer sed ligula. Donec posuere, nibh aliquet auctor congue, augue est porttitor odio, imperdiet facilisis tortor urna vel mauris. Pellentesque pretium, lorem non pellentesque varius, elit diam ultrices mi, sed posuere sapien lectus sed mi. Donec vestibulum urna. Donec gravida elit et enim. Ut dignissim neque ut erat. Morbi tincidunt nunc vitae lorem. Morbi rhoncus mi. Praesent facilisis tincidunt enim. Ut pulvinar. Suspendisse potenti. Vivamus turpis odio, porta at, malesuada in, iaculis eget, odio. Aenean faucibus, urna quis congue dignissim, orci tellus ornare leo, eget viverra ante ipsum sit amet magna. Suspendisse mattis nunc at justo. Nullam malesuada lobortis lorem. Morbi ultricies. Nam risus erat, sagittis ut, tristique rhoncus, luctus id, ante. Maecenas ac dui. [...]', 0, '1', '', 'pingback', 0, 0),
(26, 151, 'Ping 4 &laquo; What&#8217;s a tellyworth?', '', 'http://tellyworth.wordpress.com/2007/11/21/ping-4/', '72.232.101.12', '2007-11-21 11:39:25', '2007-11-21 01:39:25', '[...] Another short one. [...]', 0, '1', '', 'pingback', 0, 0),
(27, 151, 'Ping 3 &laquo; What&#8217;s a tellyworth?', '', 'http://tellyworth.wordpress.com/2007/11/21/ping-3/', '72.232.101.12', '2007-11-21 11:38:22', '2007-11-21 01:38:22', '[...] Just a short one. [...]', 0, '1', '', 'pingback', 0, 0),
(28, 151, 'Tom McFarlin', 'tom@tommcfarlin.com', 'http://tommcfarlin.com', '146.214.103.251', '2010-06-11 15:27:04', '2010-06-11 20:27:04', 'This is a comment amongst pingbacks and trackbacks.', 0, '1', '', '', 0, 0),
(29, 131, 'Tom McFarlin', 'tom@tommcfarlin.com', 'http://tommcfarlin.com/', '24.126.245.62', '2013-03-14 11:56:08', '2013-03-14 16:56:08', 'This comment should not be visible until the password is entered.', 0, '1', '', '', 0, 0),
(30, 134, 'Chris Ames', 'yo@chrisam.es', 'http://chrisam.es', '24.126.245.62', '2013-03-14 12:35:07', '2013-03-14 17:35:07', 'Having no content in the post should have no adverse effects on the layout or functionality.', 0, '1', '', '', 0, 0),
(31, 877, 'Jared Erickson', 'jared@lessmade.com', 'http://jarederickson.com/', '24.126.245.62', '2013-03-14 13:07:19', '2013-03-14 18:07:19', 'Non-breaking text is my favorite!\n\nSuper/Duper/Long/NonBreaking/Path/Name/To/A/File/That/Is/Way/Deep/Down/In/Some/Mysterious/Remote/Desolate/Part/Of/The/Operating/System/To/A/File/That/Just/So/Happens/To/Be/Strangely/Named/Supercalifragilisticexpialidocious.txt', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost:8080/liweb', 'yes'),
(2, 'home', 'http://localhost:8080/liweb', 'yes'),
(3, 'blogname', 'Thiết kế website chuyên nghiệp', 'yes'),
(4, 'blogdescription', 'Một trang web mới sử dụng WordPress', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'phuxuan167@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'j F, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'j F, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'hack_file', '0', 'yes'),
(30, 'blog_charset', 'UTF-8', 'yes'),
(31, 'moderation_keys', '', 'no'),
(32, 'active_plugins', 'a:2:{i:0;s:23:"revslider/revslider.php";i:1;s:41:"wordpress-importer/wordpress-importer.php";}', 'yes'),
(33, 'category_base', '', 'yes'),
(34, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(35, 'comment_max_links', '2', 'yes'),
(36, 'gmt_offset', '0', 'yes'),
(37, 'default_email_category', '1', 'yes'),
(38, 'recently_edited', '', 'no'),
(39, 'template', 'liweb', 'yes'),
(40, 'stylesheet', 'liweb', 'yes'),
(41, 'comment_whitelist', '1', 'yes'),
(42, 'blacklist_keys', '', 'no'),
(43, 'comment_registration', '0', 'yes'),
(44, 'html_type', 'text/html', 'yes'),
(45, 'use_trackback', '0', 'yes'),
(46, 'default_role', 'subscriber', 'yes'),
(47, 'db_version', '35700', 'yes'),
(48, 'uploads_use_yearmonth_folders', '1', 'yes'),
(49, 'upload_path', '', 'yes'),
(50, 'blog_public', '1', 'yes'),
(51, 'default_link_category', '2', 'yes'),
(52, 'show_on_front', 'page', 'yes'),
(53, 'tag_base', '', 'yes'),
(54, 'show_avatars', '1', 'yes'),
(55, 'avatar_rating', 'G', 'yes'),
(56, 'upload_url_path', '', 'yes'),
(57, 'thumbnail_size_w', '150', 'yes'),
(58, 'thumbnail_size_h', '150', 'yes'),
(59, 'thumbnail_crop', '1', 'yes'),
(60, 'medium_size_w', '300', 'yes'),
(61, 'medium_size_h', '300', 'yes'),
(62, 'avatar_default', 'mystery', 'yes'),
(63, 'large_size_w', '1024', 'yes'),
(64, 'large_size_h', '1024', 'yes'),
(65, 'image_default_link_type', 'none', 'yes'),
(66, 'image_default_size', '', 'yes'),
(67, 'image_default_align', '', 'yes'),
(68, 'close_comments_for_old_posts', '0', 'yes'),
(69, 'close_comments_days_old', '14', 'yes'),
(70, 'thread_comments', '1', 'yes'),
(71, 'thread_comments_depth', '5', 'yes'),
(72, 'page_comments', '0', 'yes'),
(73, 'comments_per_page', '50', 'yes'),
(74, 'default_comments_page', 'newest', 'yes'),
(75, 'comment_order', 'asc', 'yes'),
(76, 'sticky_posts', 'a:1:{i:0;i:1241;}', 'yes'),
(77, 'widget_categories', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(78, 'widget_text', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(79, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(80, 'uninstall_plugins', 'a:0:{}', 'no'),
(81, 'timezone_string', '', 'yes'),
(82, 'page_for_posts', '0', 'yes'),
(83, 'page_on_front', '0', 'yes'),
(84, 'default_post_format', '0', 'yes'),
(85, 'link_manager_enabled', '0', 'yes'),
(86, 'finished_splitting_shared_terms', '1', 'yes'),
(87, 'site_icon', '0', 'yes'),
(88, 'medium_large_size_w', '768', 'yes'),
(89, 'medium_large_size_h', '0', 'yes'),
(90, 'initial_db_version', '35700', 'yes'),
(91, 'wp_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:61:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
(92, 'WPLANG', '', 'yes'),
(93, 'widget_search', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(94, 'widget_recent-posts', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(95, 'widget_recent-comments', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(96, 'widget_archives', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(97, 'widget_meta', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(98, 'sidebars_widgets', 'a:9:{s:19:"wp_inactive_widgets";a:0:{}s:7:"primary";a:0:{}s:8:"home-top";a:0:{}s:11:"home-bottom";a:0:{}s:8:"footer-1";a:0:{}s:8:"footer-2";a:0:{}s:8:"footer-3";a:0:{}s:8:"footer-4";a:0:{}s:13:"array_version";i:3;}', 'yes'),
(100, 'widget_pages', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(101, 'widget_calendar', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(102, 'widget_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(103, 'widget_nav_menu', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(104, 'cron', 'a:4:{i:1455914956;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1455956743;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1455958164;a:1:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes'),
(118, '_site_transient_timeout_browser_4cd34c4347d6f93bc5451d53d28a42c0', '1456390166', 'yes'),
(119, '_site_transient_browser_4cd34c4347d6f93bc5451d53d28a42c0', 'a:9:{s:8:"platform";s:7:"Windows";s:4:"name";s:6:"Chrome";s:7:"version";s:13:"48.0.2564.103";s:10:"update_url";s:28:"http://www.google.com/chrome";s:7:"img_src";s:49:"http://s.wordpress.org/images/browsers/chrome.png";s:11:"img_src_ssl";s:48:"https://wordpress.org/images/browsers/chrome.png";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'yes'),
(120, 'can_compress_scripts', '1', 'yes'),
(135, '_transient_timeout_plugin_slugs', '1455937620', 'no'),
(136, '_transient_plugin_slugs', 'a:4:{i:0;s:19:"akismet/akismet.php";i:1;s:9:"hello.php";i:2;s:23:"revslider/revslider.php";i:3;s:41:"wordpress-importer/wordpress-importer.php";}', 'no'),
(137, '_transient_timeout_dash_a5a61dcab273495c31cd79aafebbdc74', '1455828573', 'no'),
(138, '_transient_dash_a5a61dcab273495c31cd79aafebbdc74', '<div class="rss-widget"><ul><li><a class=''rsswidget'' href=''https://wordpress.org/news/2016/02/wordpress-4-4-2-security-and-maintenance-release/''>WordPress 4.4.2 Security and Maintenance Release</a> <span class="rss-date">2 Tháng Hai, 2016</span><div class="rssSummary">WordPress 4.4.2 is now available. This is a security release for all previous versions and we strongly encourage you to update your sites immediately. WordPress versions 4.4.1 and earlier are affected by two security issues: a possible SSRF for certain local URIs, reported by Ronni Skansing; and an open redirection attack, reported by Shailesh Suthar. Thank you [&hellip;]</div></li></ul></div><div class="rss-widget"><ul><li><a class=''rsswidget'' href=''http://wptavern.com/wp-pusher-2-1-0-offers-tighter-integration-with-github-and-bitbucket''>WPTavern: WP Pusher 2.1.0 Offers Tighter Integration with GitHub and Bitbucket</a></li><li><a class=''rsswidget'' href=''http://wptavern.com/tgm-plugin-activation-team-releases-custom-generator''>WPTavern: TGM Plugin Activation Team Releases Custom Generator</a></li><li><a class=''rsswidget'' href=''http://wptavern.com/github-responds-to-letter-from-open-source-project-maintainers''>WPTavern: GitHub Responds to Letter from Open Source Project Maintainers</a></li></ul></div><div class="rss-widget"><ul><li class=''dashboard-news-plugin''><span>Gói Bổ Xung Tính Năng Phổ Biến:</span> <a href=''https://wordpress.org/plugins/siteorigin-panels/'' class=''dashboard-news-plugin-link''>Page Builder by SiteOrigin</a>&nbsp;<span>(<a href=''plugin-install.php?tab=plugin-information&amp;plugin=siteorigin-panels&amp;_wpnonce=c105f067f2&amp;TB_iframe=true&amp;width=600&amp;height=800'' class=''thickbox'' title=''Page Builder by SiteOrigin''>Cài đặt</a>)</span></li></ul></div>', 'no'),
(140, 'auto_core_update_notified', 'a:4:{s:4:"type";s:7:"success";s:5:"email";s:20:"phuxuan167@gmail.com";s:7:"version";s:5:"4.4.2";s:9:"timestamp";i:1455785375;}', 'yes'),
(143, '_transient_twentysixteen_categories', '1', 'yes'),
(145, 'theme_mods_twentysixteen', 'a:2:{s:18:"nav_menu_locations";a:3:{s:7:"primary";i:0;s:9:"secondary";i:80;s:10:"subsidiary";i:0;}s:16:"sidebars_widgets";a:2:{s:4:"time";i:1455787159;s:4:"data";a:2:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}}}}', 'yes'),
(146, 'current_theme', 'GoMedia', 'yes'),
(147, 'theme_mods_gomedia', 'a:3:{i:0;b:0;s:18:"nav_menu_locations";a:3:{s:7:"primary";i:0;s:9:"secondary";i:80;s:10:"subsidiary";i:0;}s:16:"sidebars_widgets";a:2:{s:4:"time";i:1455787131;s:4:"data";a:8:{s:19:"wp_inactive_widgets";a:0:{}s:7:"primary";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:8:"home-top";N;s:11:"home-bottom";N;s:8:"footer-1";N;s:8:"footer-2";N;s:8:"footer-3";N;s:8:"footer-4";N;}}}', 'yes'),
(148, 'theme_switched', '', 'yes'),
(149, 'widget_gomedia-ads', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(150, 'widget_gomedia-feedburner', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(151, 'widget_gomedia-video', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(152, 'widget_gomedia-social', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(153, 'widget_gomedia-recent', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(154, 'widget_gomedia-tabs', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(156, 'optionsframework', 'a:1:{s:2:"id";s:7:"gomedia";}', 'yes'),
(157, '_site_transient_timeout_available_translations', '1455796252', 'yes'),
(158, '_site_transient_available_translations', 'a:77:{s:3:"ary";a:8:{s:8:"language";s:3:"ary";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2015-12-12 10:15:45";s:12:"english_name";s:15:"Moroccan Arabic";s:11:"native_name";s:31:"العربية المغربية";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.4.2/ary.zip";s:3:"iso";a:2:{i:1;s:2:"ar";i:3;s:3:"ary";}s:7:"strings";a:1:{s:8:"continue";s:16:"المتابعة";}}s:2:"ar";a:8:{s:8:"language";s:2:"ar";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2016-02-07 13:09:53";s:12:"english_name";s:6:"Arabic";s:11:"native_name";s:14:"العربية";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.4.2/ar.zip";s:3:"iso";a:2:{i:1;s:2:"ar";i:2;s:3:"ara";}s:7:"strings";a:1:{s:8:"continue";s:16:"المتابعة";}}s:2:"az";a:8:{s:8:"language";s:2:"az";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2015-12-07 20:53:51";s:12:"english_name";s:11:"Azerbaijani";s:11:"native_name";s:16:"Azərbaycan dili";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.4.2/az.zip";s:3:"iso";a:2:{i:1;s:2:"az";i:2;s:3:"aze";}s:7:"strings";a:1:{s:8:"continue";s:5:"Davam";}}s:3:"azb";a:8:{s:8:"language";s:3:"azb";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2015-12-11 22:42:10";s:12:"english_name";s:17:"South Azerbaijani";s:11:"native_name";s:29:"گؤنئی آذربایجان";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.4.2/azb.zip";s:3:"iso";a:2:{i:1;s:2:"az";i:3;s:3:"azb";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:5:"bg_BG";a:8:{s:8:"language";s:5:"bg_BG";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2015-12-08 08:50:29";s:12:"english_name";s:9:"Bulgarian";s:11:"native_name";s:18:"Български";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.4.2/bg_BG.zip";s:3:"iso";a:2:{i:1;s:2:"bg";i:2;s:3:"bul";}s:7:"strings";a:1:{s:8:"continue";s:22:"Продължение";}}s:5:"bn_BD";a:8:{s:8:"language";s:5:"bn_BD";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2016-02-08 13:17:04";s:12:"english_name";s:7:"Bengali";s:11:"native_name";s:15:"বাংলা";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.4.2/bn_BD.zip";s:3:"iso";a:1:{i:1;s:2:"bn";}s:7:"strings";a:1:{s:8:"continue";s:23:"এগিয়ে চল.";}}s:5:"bs_BA";a:8:{s:8:"language";s:5:"bs_BA";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2016-02-04 09:40:25";s:12:"english_name";s:7:"Bosnian";s:11:"native_name";s:8:"Bosanski";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.4.2/bs_BA.zip";s:3:"iso";a:2:{i:1;s:2:"bs";i:2;s:3:"bos";}s:7:"strings";a:1:{s:8:"continue";s:7:"Nastavi";}}s:2:"ca";a:8:{s:8:"language";s:2:"ca";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2016-01-16 13:48:03";s:12:"english_name";s:7:"Catalan";s:11:"native_name";s:7:"Català";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.4.2/ca.zip";s:3:"iso";a:2:{i:1;s:2:"ca";i:2;s:3:"cat";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continua";}}s:3:"ceb";a:8:{s:8:"language";s:3:"ceb";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2016-02-16 15:34:57";s:12:"english_name";s:7:"Cebuano";s:11:"native_name";s:7:"Cebuano";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.4.2/ceb.zip";s:3:"iso";a:2:{i:2;s:3:"ceb";i:3;s:3:"ceb";}s:7:"strings";a:1:{s:8:"continue";s:7:"Padayun";}}s:2:"cy";a:8:{s:8:"language";s:2:"cy";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2016-01-26 16:01:40";s:12:"english_name";s:5:"Welsh";s:11:"native_name";s:7:"Cymraeg";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.4.2/cy.zip";s:3:"iso";a:2:{i:1;s:2:"cy";i:2;s:3:"cym";}s:7:"strings";a:1:{s:8:"continue";s:6:"Parhau";}}s:5:"da_DK";a:8:{s:8:"language";s:5:"da_DK";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2015-12-08 22:48:20";s:12:"english_name";s:6:"Danish";s:11:"native_name";s:5:"Dansk";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.4.2/da_DK.zip";s:3:"iso";a:2:{i:1;s:2:"da";i:2;s:3:"dan";}s:7:"strings";a:1:{s:8:"continue";s:12:"Forts&#230;t";}}s:5:"de_CH";a:8:{s:8:"language";s:5:"de_CH";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2015-12-08 14:19:21";s:12:"english_name";s:20:"German (Switzerland)";s:11:"native_name";s:17:"Deutsch (Schweiz)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.4.2/de_CH.zip";s:3:"iso";a:1:{i:1;s:2:"de";}s:7:"strings";a:1:{s:8:"continue";s:10:"Fortfahren";}}s:12:"de_DE_formal";a:8:{s:8:"language";s:12:"de_DE_formal";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2016-01-21 14:06:26";s:12:"english_name";s:15:"German (Formal)";s:11:"native_name";s:13:"Deutsch (Sie)";s:7:"package";s:71:"https://downloads.wordpress.org/translation/core/4.4.2/de_DE_formal.zip";s:3:"iso";a:1:{i:1;s:2:"de";}s:7:"strings";a:1:{s:8:"continue";s:10:"Fortfahren";}}s:5:"de_DE";a:8:{s:8:"language";s:5:"de_DE";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2016-01-26 10:48:10";s:12:"english_name";s:6:"German";s:11:"native_name";s:7:"Deutsch";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.4.2/de_DE.zip";s:3:"iso";a:1:{i:1;s:2:"de";}s:7:"strings";a:1:{s:8:"continue";s:10:"Fortfahren";}}s:2:"el";a:8:{s:8:"language";s:2:"el";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2016-02-10 21:36:12";s:12:"english_name";s:5:"Greek";s:11:"native_name";s:16:"Ελληνικά";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.4.2/el.zip";s:3:"iso";a:2:{i:1;s:2:"el";i:2;s:3:"ell";}s:7:"strings";a:1:{s:8:"continue";s:16:"Συνέχεια";}}s:5:"en_NZ";a:8:{s:8:"language";s:5:"en_NZ";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2015-12-08 13:34:17";s:12:"english_name";s:21:"English (New Zealand)";s:11:"native_name";s:21:"English (New Zealand)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.4.2/en_NZ.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:5:"en_CA";a:8:{s:8:"language";s:5:"en_CA";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2015-12-06 23:10:59";s:12:"english_name";s:16:"English (Canada)";s:11:"native_name";s:16:"English (Canada)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.4.2/en_CA.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:5:"en_ZA";a:8:{s:8:"language";s:5:"en_ZA";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2015-12-15 11:52:35";s:12:"english_name";s:22:"English (South Africa)";s:11:"native_name";s:22:"English (South Africa)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.4.2/en_ZA.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:5:"en_AU";a:8:{s:8:"language";s:5:"en_AU";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2015-12-07 04:39:48";s:12:"english_name";s:19:"English (Australia)";s:11:"native_name";s:19:"English (Australia)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.4.2/en_AU.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:5:"en_GB";a:8:{s:8:"language";s:5:"en_GB";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2016-01-14 21:14:29";s:12:"english_name";s:12:"English (UK)";s:11:"native_name";s:12:"English (UK)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.4.2/en_GB.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:2:"eo";a:8:{s:8:"language";s:2:"eo";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2016-01-25 13:07:29";s:12:"english_name";s:9:"Esperanto";s:11:"native_name";s:9:"Esperanto";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.4.2/eo.zip";s:3:"iso";a:2:{i:1;s:2:"eo";i:2;s:3:"epo";}s:7:"strings";a:1:{s:8:"continue";s:8:"Daŭrigi";}}s:5:"es_CL";a:8:{s:8:"language";s:5:"es_CL";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2016-01-28 19:55:54";s:12:"english_name";s:15:"Spanish (Chile)";s:11:"native_name";s:17:"Español de Chile";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.4.2/es_CL.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_MX";a:8:{s:8:"language";s:5:"es_MX";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2015-12-07 17:35:10";s:12:"english_name";s:16:"Spanish (Mexico)";s:11:"native_name";s:19:"Español de México";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.4.2/es_MX.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_VE";a:8:{s:8:"language";s:5:"es_VE";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2016-01-13 06:14:13";s:12:"english_name";s:19:"Spanish (Venezuela)";s:11:"native_name";s:21:"Español de Venezuela";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.4.2/es_VE.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_ES";a:8:{s:8:"language";s:5:"es_ES";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2016-02-13 12:28:49";s:12:"english_name";s:15:"Spanish (Spain)";s:11:"native_name";s:8:"Español";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.4.2/es_ES.zip";s:3:"iso";a:1:{i:1;s:2:"es";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_GT";a:8:{s:8:"language";s:5:"es_GT";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2016-02-09 18:08:52";s:12:"english_name";s:19:"Spanish (Guatemala)";s:11:"native_name";s:21:"Español de Guatemala";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.4.2/es_GT.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_CO";a:8:{s:8:"language";s:5:"es_CO";s:7:"version";s:6:"4.3-RC";s:7:"updated";s:19:"2015-08-04 06:10:33";s:12:"english_name";s:18:"Spanish (Colombia)";s:11:"native_name";s:20:"Español de Colombia";s:7:"package";s:65:"https://downloads.wordpress.org/translation/core/4.3-RC/es_CO.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_PE";a:8:{s:8:"language";s:5:"es_PE";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2016-01-24 15:17:36";s:12:"english_name";s:14:"Spanish (Peru)";s:11:"native_name";s:17:"Español de Perú";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.4.2/es_PE.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_AR";a:8:{s:8:"language";s:5:"es_AR";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2015-12-23 00:46:01";s:12:"english_name";s:19:"Spanish (Argentina)";s:11:"native_name";s:21:"Español de Argentina";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.4.2/es_AR.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:2:"et";a:8:{s:8:"language";s:2:"et";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2016-01-24 20:58:31";s:12:"english_name";s:8:"Estonian";s:11:"native_name";s:5:"Eesti";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.4.2/et.zip";s:3:"iso";a:2:{i:1;s:2:"et";i:2;s:3:"est";}s:7:"strings";a:1:{s:8:"continue";s:6:"Jätka";}}s:2:"eu";a:8:{s:8:"language";s:2:"eu";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2015-12-07 21:19:15";s:12:"english_name";s:6:"Basque";s:11:"native_name";s:7:"Euskara";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.4.2/eu.zip";s:3:"iso";a:2:{i:1;s:2:"eu";i:2;s:3:"eus";}s:7:"strings";a:1:{s:8:"continue";s:8:"Jarraitu";}}s:5:"fa_IR";a:8:{s:8:"language";s:5:"fa_IR";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2016-01-31 19:24:20";s:12:"english_name";s:7:"Persian";s:11:"native_name";s:10:"فارسی";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.4.2/fa_IR.zip";s:3:"iso";a:2:{i:1;s:2:"fa";i:2;s:3:"fas";}s:7:"strings";a:1:{s:8:"continue";s:10:"ادامه";}}s:2:"fi";a:8:{s:8:"language";s:2:"fi";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2015-12-23 06:49:15";s:12:"english_name";s:7:"Finnish";s:11:"native_name";s:5:"Suomi";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.4.2/fi.zip";s:3:"iso";a:2:{i:1;s:2:"fi";i:2;s:3:"fin";}s:7:"strings";a:1:{s:8:"continue";s:5:"Jatka";}}s:5:"fr_BE";a:8:{s:8:"language";s:5:"fr_BE";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2015-12-08 13:47:35";s:12:"english_name";s:16:"French (Belgium)";s:11:"native_name";s:21:"Français de Belgique";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.4.2/fr_BE.zip";s:3:"iso";a:2:{i:1;s:2:"fr";i:2;s:3:"fra";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuer";}}s:5:"fr_FR";a:8:{s:8:"language";s:5:"fr_FR";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2016-02-11 10:20:56";s:12:"english_name";s:15:"French (France)";s:11:"native_name";s:9:"Français";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.4.2/fr_FR.zip";s:3:"iso";a:1:{i:1;s:2:"fr";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuer";}}s:5:"fr_CA";a:8:{s:8:"language";s:5:"fr_CA";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2015-12-09 02:16:19";s:12:"english_name";s:15:"French (Canada)";s:11:"native_name";s:19:"Français du Canada";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.4.2/fr_CA.zip";s:3:"iso";a:2:{i:1;s:2:"fr";i:2;s:3:"fra";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuer";}}s:2:"gd";a:8:{s:8:"language";s:2:"gd";s:7:"version";s:5:"4.3.3";s:7:"updated";s:19:"2015-09-24 15:25:30";s:12:"english_name";s:15:"Scottish Gaelic";s:11:"native_name";s:9:"Gàidhlig";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.3.3/gd.zip";s:3:"iso";a:3:{i:1;s:2:"gd";i:2;s:3:"gla";i:3;s:3:"gla";}s:7:"strings";a:1:{s:8:"continue";s:15:"Lean air adhart";}}s:5:"gl_ES";a:8:{s:8:"language";s:5:"gl_ES";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2016-01-13 16:48:03";s:12:"english_name";s:8:"Galician";s:11:"native_name";s:6:"Galego";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.4.2/gl_ES.zip";s:3:"iso";a:2:{i:1;s:2:"gl";i:2;s:3:"glg";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:3:"haz";a:8:{s:8:"language";s:3:"haz";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2015-12-05 00:59:09";s:12:"english_name";s:8:"Hazaragi";s:11:"native_name";s:15:"هزاره گی";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.4.2/haz.zip";s:3:"iso";a:1:{i:3;s:3:"haz";}s:7:"strings";a:1:{s:8:"continue";s:10:"ادامه";}}s:5:"he_IL";a:8:{s:8:"language";s:5:"he_IL";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2016-02-09 12:32:43";s:12:"english_name";s:6:"Hebrew";s:11:"native_name";s:16:"עִבְרִית";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.4.2/he_IL.zip";s:3:"iso";a:1:{i:1;s:2:"he";}s:7:"strings";a:1:{s:8:"continue";s:12:"להמשיך";}}s:5:"hi_IN";a:8:{s:8:"language";s:5:"hi_IN";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2016-02-06 14:16:56";s:12:"english_name";s:5:"Hindi";s:11:"native_name";s:18:"हिन्दी";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.4.2/hi_IN.zip";s:3:"iso";a:2:{i:1;s:2:"hi";i:2;s:3:"hin";}s:7:"strings";a:1:{s:8:"continue";s:12:"जारी";}}s:2:"hr";a:8:{s:8:"language";s:2:"hr";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2016-01-26 11:21:04";s:12:"english_name";s:8:"Croatian";s:11:"native_name";s:8:"Hrvatski";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.4.2/hr.zip";s:3:"iso";a:2:{i:1;s:2:"hr";i:2;s:3:"hrv";}s:7:"strings";a:1:{s:8:"continue";s:7:"Nastavi";}}s:5:"hu_HU";a:8:{s:8:"language";s:5:"hu_HU";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2016-02-03 14:37:42";s:12:"english_name";s:9:"Hungarian";s:11:"native_name";s:6:"Magyar";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.4.2/hu_HU.zip";s:3:"iso";a:2:{i:1;s:2:"hu";i:2;s:3:"hun";}s:7:"strings";a:1:{s:8:"continue";s:7:"Tovább";}}s:2:"hy";a:8:{s:8:"language";s:2:"hy";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2016-02-04 07:13:54";s:12:"english_name";s:8:"Armenian";s:11:"native_name";s:14:"Հայերեն";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.4.2/hy.zip";s:3:"iso";a:2:{i:1;s:2:"hy";i:2;s:3:"hye";}s:7:"strings";a:1:{s:8:"continue";s:20:"Շարունակել";}}s:5:"id_ID";a:8:{s:8:"language";s:5:"id_ID";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2015-12-21 16:17:50";s:12:"english_name";s:10:"Indonesian";s:11:"native_name";s:16:"Bahasa Indonesia";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.4.2/id_ID.zip";s:3:"iso";a:2:{i:1;s:2:"id";i:2;s:3:"ind";}s:7:"strings";a:1:{s:8:"continue";s:9:"Lanjutkan";}}s:5:"is_IS";a:8:{s:8:"language";s:5:"is_IS";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2015-12-08 00:20:24";s:12:"english_name";s:9:"Icelandic";s:11:"native_name";s:9:"Íslenska";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.4.2/is_IS.zip";s:3:"iso";a:2:{i:1;s:2:"is";i:2;s:3:"isl";}s:7:"strings";a:1:{s:8:"continue";s:6:"Áfram";}}s:5:"it_IT";a:8:{s:8:"language";s:5:"it_IT";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2016-01-30 18:58:39";s:12:"english_name";s:7:"Italian";s:11:"native_name";s:8:"Italiano";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.4.2/it_IT.zip";s:3:"iso";a:2:{i:1;s:2:"it";i:2;s:3:"ita";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continua";}}s:2:"ja";a:8:{s:8:"language";s:2:"ja";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2016-01-15 13:41:43";s:12:"english_name";s:8:"Japanese";s:11:"native_name";s:9:"日本語";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.4.2/ja.zip";s:3:"iso";a:1:{i:1;s:2:"ja";}s:7:"strings";a:1:{s:8:"continue";s:9:"続ける";}}s:5:"ka_GE";a:8:{s:8:"language";s:5:"ka_GE";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2016-02-08 07:31:53";s:12:"english_name";s:8:"Georgian";s:11:"native_name";s:21:"ქართული";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.4.2/ka_GE.zip";s:3:"iso";a:2:{i:1;s:2:"ka";i:2;s:3:"kat";}s:7:"strings";a:1:{s:8:"continue";s:30:"გაგრძელება";}}s:5:"ko_KR";a:8:{s:8:"language";s:5:"ko_KR";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2015-12-09 07:35:25";s:12:"english_name";s:6:"Korean";s:11:"native_name";s:9:"한국어";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.4.2/ko_KR.zip";s:3:"iso";a:2:{i:1;s:2:"ko";i:2;s:3:"kor";}s:7:"strings";a:1:{s:8:"continue";s:6:"계속";}}s:5:"lt_LT";a:8:{s:8:"language";s:5:"lt_LT";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2015-12-08 20:07:24";s:12:"english_name";s:10:"Lithuanian";s:11:"native_name";s:15:"Lietuvių kalba";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.4.2/lt_LT.zip";s:3:"iso";a:2:{i:1;s:2:"lt";i:2;s:3:"lit";}s:7:"strings";a:1:{s:8:"continue";s:6:"Tęsti";}}s:5:"ms_MY";a:8:{s:8:"language";s:5:"ms_MY";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2016-01-28 05:41:39";s:12:"english_name";s:5:"Malay";s:11:"native_name";s:13:"Bahasa Melayu";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.4.2/ms_MY.zip";s:3:"iso";a:2:{i:1;s:2:"ms";i:2;s:3:"msa";}s:7:"strings";a:1:{s:8:"continue";s:8:"Teruskan";}}s:5:"my_MM";a:8:{s:8:"language";s:5:"my_MM";s:7:"version";s:6:"4.1.10";s:7:"updated";s:19:"2015-03-26 15:57:42";s:12:"english_name";s:17:"Myanmar (Burmese)";s:11:"native_name";s:15:"ဗမာစာ";s:7:"package";s:65:"https://downloads.wordpress.org/translation/core/4.1.10/my_MM.zip";s:3:"iso";a:2:{i:1;s:2:"my";i:2;s:3:"mya";}s:7:"strings";a:1:{s:8:"continue";s:54:"ဆက်လက်လုပ်ေဆာင်ပါ။";}}s:5:"nb_NO";a:8:{s:8:"language";s:5:"nb_NO";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2015-12-07 10:01:09";s:12:"english_name";s:19:"Norwegian (Bokmål)";s:11:"native_name";s:13:"Norsk bokmål";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.4.2/nb_NO.zip";s:3:"iso";a:2:{i:1;s:2:"nb";i:2;s:3:"nob";}s:7:"strings";a:1:{s:8:"continue";s:8:"Fortsett";}}s:12:"nl_NL_formal";a:8:{s:8:"language";s:12:"nl_NL_formal";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2016-01-20 13:35:50";s:12:"english_name";s:14:"Dutch (Formal)";s:11:"native_name";s:20:"Nederlands (Formeel)";s:7:"package";s:71:"https://downloads.wordpress.org/translation/core/4.4.2/nl_NL_formal.zip";s:3:"iso";a:2:{i:1;s:2:"nl";i:2;s:3:"nld";}s:7:"strings";a:1:{s:8:"continue";s:8:"Doorgaan";}}s:5:"nl_NL";a:8:{s:8:"language";s:5:"nl_NL";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2016-02-09 15:18:32";s:12:"english_name";s:5:"Dutch";s:11:"native_name";s:10:"Nederlands";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.4.2/nl_NL.zip";s:3:"iso";a:2:{i:1;s:2:"nl";i:2;s:3:"nld";}s:7:"strings";a:1:{s:8:"continue";s:8:"Doorgaan";}}s:5:"nn_NO";a:8:{s:8:"language";s:5:"nn_NO";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2015-12-14 12:19:44";s:12:"english_name";s:19:"Norwegian (Nynorsk)";s:11:"native_name";s:13:"Norsk nynorsk";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.4.2/nn_NO.zip";s:3:"iso";a:2:{i:1;s:2:"nn";i:2;s:3:"nno";}s:7:"strings";a:1:{s:8:"continue";s:9:"Hald fram";}}s:3:"oci";a:8:{s:8:"language";s:3:"oci";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2016-02-08 16:21:37";s:12:"english_name";s:7:"Occitan";s:11:"native_name";s:7:"Occitan";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.4.2/oci.zip";s:3:"iso";a:2:{i:1;s:2:"oc";i:2;s:3:"oci";}s:7:"strings";a:1:{s:8:"continue";s:9:"Contunhar";}}s:5:"pl_PL";a:8:{s:8:"language";s:5:"pl_PL";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2016-01-09 13:30:40";s:12:"english_name";s:6:"Polish";s:11:"native_name";s:6:"Polski";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.4.2/pl_PL.zip";s:3:"iso";a:2:{i:1;s:2:"pl";i:2;s:3:"pol";}s:7:"strings";a:1:{s:8:"continue";s:9:"Kontynuuj";}}s:2:"ps";a:8:{s:8:"language";s:2:"ps";s:7:"version";s:6:"4.1.10";s:7:"updated";s:19:"2015-03-29 22:19:48";s:12:"english_name";s:6:"Pashto";s:11:"native_name";s:8:"پښتو";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.1.10/ps.zip";s:3:"iso";a:2:{i:1;s:2:"ps";i:2;s:3:"pus";}s:7:"strings";a:1:{s:8:"continue";s:8:"دوام";}}s:5:"pt_PT";a:8:{s:8:"language";s:5:"pt_PT";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2016-01-20 15:27:05";s:12:"english_name";s:21:"Portuguese (Portugal)";s:11:"native_name";s:10:"Português";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.4.2/pt_PT.zip";s:3:"iso";a:1:{i:1;s:2:"pt";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"pt_BR";a:8:{s:8:"language";s:5:"pt_BR";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2015-12-10 18:05:56";s:12:"english_name";s:19:"Portuguese (Brazil)";s:11:"native_name";s:20:"Português do Brasil";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.4.2/pt_BR.zip";s:3:"iso";a:2:{i:1;s:2:"pt";i:2;s:3:"por";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"ro_RO";a:8:{s:8:"language";s:5:"ro_RO";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2016-01-29 12:45:24";s:12:"english_name";s:8:"Romanian";s:11:"native_name";s:8:"Română";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.4.2/ro_RO.zip";s:3:"iso";a:2:{i:1;s:2:"ro";i:2;s:3:"ron";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuă";}}s:5:"ru_RU";a:8:{s:8:"language";s:5:"ru_RU";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2016-01-02 00:04:31";s:12:"english_name";s:7:"Russian";s:11:"native_name";s:14:"Русский";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.4.2/ru_RU.zip";s:3:"iso";a:2:{i:1;s:2:"ru";i:2;s:3:"rus";}s:7:"strings";a:1:{s:8:"continue";s:20:"Продолжить";}}s:5:"sk_SK";a:8:{s:8:"language";s:5:"sk_SK";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2015-12-30 10:37:54";s:12:"english_name";s:6:"Slovak";s:11:"native_name";s:11:"Slovenčina";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.4.2/sk_SK.zip";s:3:"iso";a:2:{i:1;s:2:"sk";i:2;s:3:"slk";}s:7:"strings";a:1:{s:8:"continue";s:12:"Pokračovať";}}s:5:"sl_SI";a:8:{s:8:"language";s:5:"sl_SI";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2015-11-26 00:00:18";s:12:"english_name";s:9:"Slovenian";s:11:"native_name";s:13:"Slovenščina";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.4.2/sl_SI.zip";s:3:"iso";a:2:{i:1;s:2:"sl";i:2;s:3:"slv";}s:7:"strings";a:1:{s:8:"continue";s:10:"Nadaljujte";}}s:2:"sq";a:8:{s:8:"language";s:2:"sq";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2015-12-07 09:13:24";s:12:"english_name";s:8:"Albanian";s:11:"native_name";s:5:"Shqip";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.4.2/sq.zip";s:3:"iso";a:2:{i:1;s:2:"sq";i:2;s:3:"sqi";}s:7:"strings";a:1:{s:8:"continue";s:6:"Vazhdo";}}s:5:"sr_RS";a:8:{s:8:"language";s:5:"sr_RS";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2015-12-09 09:09:51";s:12:"english_name";s:7:"Serbian";s:11:"native_name";s:23:"Српски језик";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.4.2/sr_RS.zip";s:3:"iso";a:2:{i:1;s:2:"sr";i:2;s:3:"srp";}s:7:"strings";a:1:{s:8:"continue";s:14:"Настави";}}s:5:"sv_SE";a:8:{s:8:"language";s:5:"sv_SE";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2015-12-08 23:28:56";s:12:"english_name";s:7:"Swedish";s:11:"native_name";s:7:"Svenska";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.4.2/sv_SE.zip";s:3:"iso";a:2:{i:1;s:2:"sv";i:2;s:3:"swe";}s:7:"strings";a:1:{s:8:"continue";s:9:"Fortsätt";}}s:2:"th";a:8:{s:8:"language";s:2:"th";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2015-12-08 03:22:55";s:12:"english_name";s:4:"Thai";s:11:"native_name";s:9:"ไทย";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.4.2/th.zip";s:3:"iso";a:2:{i:1;s:2:"th";i:2;s:3:"tha";}s:7:"strings";a:1:{s:8:"continue";s:15:"ต่อไป";}}s:2:"tl";a:8:{s:8:"language";s:2:"tl";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2015-11-27 15:51:36";s:12:"english_name";s:7:"Tagalog";s:11:"native_name";s:7:"Tagalog";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.4.2/tl.zip";s:3:"iso";a:2:{i:1;s:2:"tl";i:2;s:3:"tgl";}s:7:"strings";a:1:{s:8:"continue";s:10:"Magpatuloy";}}s:5:"tr_TR";a:8:{s:8:"language";s:5:"tr_TR";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2015-12-17 23:12:27";s:12:"english_name";s:7:"Turkish";s:11:"native_name";s:8:"Türkçe";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.4.2/tr_TR.zip";s:3:"iso";a:2:{i:1;s:2:"tr";i:2;s:3:"tur";}s:7:"strings";a:1:{s:8:"continue";s:5:"Devam";}}s:5:"ug_CN";a:8:{s:8:"language";s:5:"ug_CN";s:7:"version";s:6:"4.1.10";s:7:"updated";s:19:"2015-03-26 16:45:38";s:12:"english_name";s:6:"Uighur";s:11:"native_name";s:9:"Uyƣurqə";s:7:"package";s:65:"https://downloads.wordpress.org/translation/core/4.1.10/ug_CN.zip";s:3:"iso";a:2:{i:1;s:2:"ug";i:2;s:3:"uig";}s:7:"strings";a:1:{s:8:"continue";s:26:"داۋاملاشتۇرۇش";}}s:2:"uk";a:8:{s:8:"language";s:2:"uk";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2016-01-03 22:04:41";s:12:"english_name";s:9:"Ukrainian";s:11:"native_name";s:20:"Українська";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.4.2/uk.zip";s:3:"iso";a:2:{i:1;s:2:"uk";i:2;s:3:"ukr";}s:7:"strings";a:1:{s:8:"continue";s:20:"Продовжити";}}s:2:"vi";a:8:{s:8:"language";s:2:"vi";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2015-12-09 01:01:25";s:12:"english_name";s:10:"Vietnamese";s:11:"native_name";s:14:"Tiếng Việt";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.4.2/vi.zip";s:3:"iso";a:2:{i:1;s:2:"vi";i:2;s:3:"vie";}s:7:"strings";a:1:{s:8:"continue";s:12:"Tiếp tục";}}s:5:"zh_TW";a:8:{s:8:"language";s:5:"zh_TW";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2015-12-11 18:51:41";s:12:"english_name";s:16:"Chinese (Taiwan)";s:11:"native_name";s:12:"繁體中文";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.4.2/zh_TW.zip";s:3:"iso";a:2:{i:1;s:2:"zh";i:2;s:3:"zho";}s:7:"strings";a:1:{s:8:"continue";s:6:"繼續";}}s:5:"zh_CN";a:8:{s:8:"language";s:5:"zh_CN";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2015-12-12 22:55:08";s:12:"english_name";s:15:"Chinese (China)";s:11:"native_name";s:12:"简体中文";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.4.2/zh_CN.zip";s:3:"iso";a:2:{i:1;s:2:"zh";i:2;s:3:"zho";}s:7:"strings";a:1:{s:8:"continue";s:6:"继续";}}}', 'yes'),
(161, '_site_transient_update_core', 'O:8:"stdClass":4:{s:7:"updates";a:1:{i:0;O:8:"stdClass":10:{s:8:"response";s:6:"latest";s:8:"download";s:59:"https://downloads.wordpress.org/release/wordpress-4.4.2.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:59:"https://downloads.wordpress.org/release/wordpress-4.4.2.zip";s:10:"no_content";s:70:"https://downloads.wordpress.org/release/wordpress-4.4.2-no-content.zip";s:11:"new_bundled";s:71:"https://downloads.wordpress.org/release/wordpress-4.4.2-new-bundled.zip";s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:5:"4.4.2";s:7:"version";s:5:"4.4.2";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.4";s:15:"partial_version";s:0:"";}}s:12:"last_checked";i:1455871763;s:15:"version_checked";s:5:"4.4.2";s:12:"translations";a:0:{}}', 'yes'),
(164, '_site_transient_timeout_popular_importers_en_US', '1455958276', 'yes'),
(165, '_site_transient_popular_importers_en_US', 'a:2:{s:9:"importers";a:8:{s:7:"blogger";a:4:{s:4:"name";s:7:"Blogger";s:11:"description";s:86:"Install the Blogger importer to import posts, comments, and users from a Blogger blog.";s:11:"plugin-slug";s:16:"blogger-importer";s:11:"importer-id";s:7:"blogger";}s:9:"wpcat2tag";a:4:{s:4:"name";s:29:"Categories and Tags Converter";s:11:"description";s:109:"Install the category/tag converter to convert existing categories to tags or tags to categories, selectively.";s:11:"plugin-slug";s:18:"wpcat2tag-importer";s:11:"importer-id";s:9:"wpcat2tag";}s:11:"livejournal";a:4:{s:4:"name";s:11:"LiveJournal";s:11:"description";s:82:"Install the LiveJournal importer to import posts from LiveJournal using their API.";s:11:"plugin-slug";s:20:"livejournal-importer";s:11:"importer-id";s:11:"livejournal";}s:11:"movabletype";a:4:{s:4:"name";s:24:"Movable Type and TypePad";s:11:"description";s:99:"Install the Movable Type importer to import posts and comments from a Movable Type or TypePad blog.";s:11:"plugin-slug";s:20:"movabletype-importer";s:11:"importer-id";s:2:"mt";}s:4:"opml";a:4:{s:4:"name";s:8:"Blogroll";s:11:"description";s:61:"Install the blogroll importer to import links in OPML format.";s:11:"plugin-slug";s:13:"opml-importer";s:11:"importer-id";s:4:"opml";}s:3:"rss";a:4:{s:4:"name";s:3:"RSS";s:11:"description";s:58:"Install the RSS importer to import posts from an RSS feed.";s:11:"plugin-slug";s:12:"rss-importer";s:11:"importer-id";s:3:"rss";}s:6:"tumblr";a:4:{s:4:"name";s:6:"Tumblr";s:11:"description";s:84:"Install the Tumblr importer to import posts &amp; media from Tumblr using their API.";s:11:"plugin-slug";s:15:"tumblr-importer";s:11:"importer-id";s:6:"tumblr";}s:9:"wordpress";a:4:{s:4:"name";s:9:"WordPress";s:11:"description";s:130:"Install the WordPress importer to import posts, pages, comments, custom fields, categories, and tags from a WordPress export file.";s:11:"plugin-slug";s:18:"wordpress-importer";s:11:"importer-id";s:9:"wordpress";}}s:10:"translated";b:0;}', 'yes'),
(168, 'recently_activated', 'a:0:{}', 'yes'),
(313, 'category_children', 'a:0:{}', 'yes'),
(314, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:0:{}}', 'yes'),
(322, 'theme_mods_liweb', 'a:2:{i:0;b:0;s:18:"nav_menu_locations";a:3:{s:9:"secondary";i:80;s:7:"primary";i:82;s:10:"subsidiary";i:0;}}', 'yes'),
(327, '_transient_timeout_dash_88ae138922fe95674369b1cb3d215a2b', '1455894134', 'no'),
(328, '_transient_dash_88ae138922fe95674369b1cb3d215a2b', '<div class="rss-widget"><p><strong>RSS Error</strong>: WP HTTP Error: Could not resolve host: wordpress.org</p></div><div class="rss-widget"><p><strong>RSS Error</strong>: WP HTTP Error: Could not resolve host: planet.wordpress.org</p></div><div class="rss-widget"><ul></ul></div>', 'no'),
(331, 'revslider_checktables', '1', 'yes'),
(332, 'revslider-static-css', '.tp-caption a {\ncolor:#ff7302;\ntext-shadow:none;\n-webkit-transition:all 0.2s ease-out;\n-moz-transition:all 0.2s ease-out;\n-o-transition:all 0.2s ease-out;\n-ms-transition:all 0.2s ease-out;\n}\n\n.tp-caption a:hover {\ncolor:#ffa902;\n}', 'yes'),
(333, 'revslider-update-check-short', '1455851220', 'yes'),
(334, 'widget_rev-slider-widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(339, 'rewrite_rules', 'a:77:{s:11:"^wp-json/?$";s:22:"index.php?rest_route=/";s:14:"^wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:47:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:42:"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:58:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:68:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:88:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:83:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:83:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:64:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:53:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$";s:91:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$";s:85:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1";s:77:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:72:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:65:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]";s:72:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]";s:61:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]";s:47:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:57:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:77:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:53:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]";s:51:"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]";s:38:"([0-9]{4})/comment-page-([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&cpage=$matches[2]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:".?.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"(.?.+?)/embed/?$";s:41:"index.php?pagename=$matches[1]&embed=true";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:24:"(.?.+?)(?:/([0-9]+))?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";}', 'yes'),
(350, '_site_transient_timeout_theme_roots', '1455871866', 'yes'),
(351, '_site_transient_theme_roots', 'a:4:{s:5:"liweb";s:7:"/themes";s:13:"twentyfifteen";s:7:"/themes";s:14:"twentyfourteen";s:7:"/themes";s:13:"twentysixteen";s:7:"/themes";}', 'yes'),
(362, '_transient_is_multi_author', '0', 'yes'),
(366, '_site_transient_update_themes', 'O:8:"stdClass":4:{s:12:"last_checked";i:1455871769;s:7:"checked";a:4:{s:5:"liweb";s:5:"1.0.3";s:13:"twentyfifteen";s:3:"1.4";s:14:"twentyfourteen";s:3:"1.6";s:13:"twentysixteen";s:3:"1.0";}s:8:"response";a:1:{s:13:"twentysixteen";a:4:{s:5:"theme";s:13:"twentysixteen";s:11:"new_version";s:3:"1.1";s:3:"url";s:43:"https://wordpress.org/themes/twentysixteen/";s:7:"package";s:59:"https://downloads.wordpress.org/theme/twentysixteen.1.1.zip";}}s:12:"translations";a:0:{}}', 'yes'),
(367, '_site_transient_update_plugins', 'O:8:"stdClass":4:{s:12:"last_checked";i:1455871767;s:8:"response";a:1:{s:19:"akismet/akismet.php";O:8:"stdClass":6:{s:2:"id";s:2:"15";s:4:"slug";s:7:"akismet";s:6:"plugin";s:19:"akismet/akismet.php";s:11:"new_version";s:5:"3.1.7";s:3:"url";s:38:"https://wordpress.org/plugins/akismet/";s:7:"package";s:56:"https://downloads.wordpress.org/plugin/akismet.3.1.7.zip";}}s:12:"translations";a:0:{}s:9:"no_update";a:2:{s:9:"hello.php";O:8:"stdClass":6:{s:2:"id";s:4:"3564";s:4:"slug";s:11:"hello-dolly";s:6:"plugin";s:9:"hello.php";s:11:"new_version";s:3:"1.6";s:3:"url";s:42:"https://wordpress.org/plugins/hello-dolly/";s:7:"package";s:58:"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip";}s:41:"wordpress-importer/wordpress-importer.php";O:8:"stdClass":6:{s:2:"id";s:5:"14975";s:4:"slug";s:18:"wordpress-importer";s:6:"plugin";s:41:"wordpress-importer/wordpress-importer.php";s:11:"new_version";s:5:"0.6.1";s:3:"url";s:49:"https://wordpress.org/plugins/wordpress-importer/";s:7:"package";s:67:"https://downloads.wordpress.org/plugin/wordpress-importer.0.6.1.zip";}}}', 'yes'),
(369, '_transient_gomedia_categories', '1', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(4, 611, '_wp_attached_file', '2011/01/canola2.jpg'),
(5, 611, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:640;s:6:"height";i:480;s:4:"file";s:19:"2011/01/canola2.jpg";s:5:"sizes";a:8:{s:9:"thumbnail";a:4:{s:4:"file";s:19:"canola2-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:19:"canola2-300x225.jpg";s:5:"width";i:300;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";}s:18:"gomedia-post-thumb";a:4:{s:4:"file";s:19:"canola2-210x158.jpg";s:5:"width";i:210;s:6:"height";i:158;s:9:"mime-type";s:10:"image/jpeg";}s:22:"gomedia-carousel-thumb";a:4:{s:4:"file";s:19:"canola2-285x195.jpg";s:5:"width";i:285;s:6:"height";i:195;s:9:"mime-type";s:10:"image/jpeg";}s:21:"gomedia-related-thumb";a:4:{s:4:"file";s:19:"canola2-176x133.jpg";s:5:"width";i:176;s:6:"height";i:133;s:9:"mime-type";s:10:"image/jpeg";}s:20:"gomedia-widget-thumb";a:4:{s:4:"file";s:17:"canola2-60x60.jpg";s:5:"width";i:60;s:6:"height";i:60;s:9:"mime-type";s:10:"image/jpeg";}s:16:"gomedia-featured";a:4:{s:4:"file";s:19:"canola2-640x338.jpg";s:5:"width";i:640;s:6:"height";i:338;s:9:"mime-type";s:10:"image/jpeg";}s:22:"gomedia-featured-small";a:4:{s:4:"file";s:18:"canola2-145x90.jpg";s:5:"width";i:145;s:6:"height";i:90;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:3:"5.6";s:6:"credit";s:0:"";s:6:"camera";s:18:"Canon PowerShot G2";s:7:"caption";s:0:"";s:17:"created_timestamp";s:10:"1094915268";s:9:"copyright";s:0:"";s:12:"focal_length";s:7:"16.8125";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:9:"0.0015625";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(6, 611, '_wp_attachment_image_alt', 'canola'),
(7, 613, '_wp_attached_file', '2011/01/dsc20050315_145007_132.jpg'),
(8, 613, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:640;s:6:"height";i:480;s:4:"file";s:34:"2011/01/dsc20050315_145007_132.jpg";s:5:"sizes";a:8:{s:9:"thumbnail";a:4:{s:4:"file";s:34:"dsc20050315_145007_132-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:34:"dsc20050315_145007_132-300x225.jpg";s:5:"width";i:300;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";}s:18:"gomedia-post-thumb";a:4:{s:4:"file";s:34:"dsc20050315_145007_132-210x158.jpg";s:5:"width";i:210;s:6:"height";i:158;s:9:"mime-type";s:10:"image/jpeg";}s:22:"gomedia-carousel-thumb";a:4:{s:4:"file";s:34:"dsc20050315_145007_132-285x195.jpg";s:5:"width";i:285;s:6:"height";i:195;s:9:"mime-type";s:10:"image/jpeg";}s:21:"gomedia-related-thumb";a:4:{s:4:"file";s:34:"dsc20050315_145007_132-176x133.jpg";s:5:"width";i:176;s:6:"height";i:133;s:9:"mime-type";s:10:"image/jpeg";}s:20:"gomedia-widget-thumb";a:4:{s:4:"file";s:32:"dsc20050315_145007_132-60x60.jpg";s:5:"width";i:60;s:6:"height";i:60;s:9:"mime-type";s:10:"image/jpeg";}s:16:"gomedia-featured";a:4:{s:4:"file";s:34:"dsc20050315_145007_132-640x338.jpg";s:5:"width";i:640;s:6:"height";i:338;s:9:"mime-type";s:10:"image/jpeg";}s:22:"gomedia-featured-small";a:4:{s:4:"file";s:33:"dsc20050315_145007_132-145x90.jpg";s:5:"width";i:145;s:6:"height";i:90;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:3:"2.2";s:6:"credit";s:0:"";s:6:"camera";s:9:"CYBERSHOT";s:7:"caption";s:0:"";s:17:"created_timestamp";s:10:"1110898207";s:9:"copyright";s:0:"";s:12:"focal_length";s:3:"9.7";s:3:"iso";s:3:"100";s:13:"shutter_speed";s:5:"0.008";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(9, 613, '_wp_attachment_image_alt', 'dsc20050315_145007_132'),
(10, 616, '_wp_attached_file', '2011/01/dsc20050727_091048_222.jpg'),
(11, 616, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:640;s:6:"height";i:480;s:4:"file";s:34:"2011/01/dsc20050727_091048_222.jpg";s:5:"sizes";a:8:{s:9:"thumbnail";a:4:{s:4:"file";s:34:"dsc20050727_091048_222-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:34:"dsc20050727_091048_222-300x225.jpg";s:5:"width";i:300;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";}s:18:"gomedia-post-thumb";a:4:{s:4:"file";s:34:"dsc20050727_091048_222-210x158.jpg";s:5:"width";i:210;s:6:"height";i:158;s:9:"mime-type";s:10:"image/jpeg";}s:22:"gomedia-carousel-thumb";a:4:{s:4:"file";s:34:"dsc20050727_091048_222-285x195.jpg";s:5:"width";i:285;s:6:"height";i:195;s:9:"mime-type";s:10:"image/jpeg";}s:21:"gomedia-related-thumb";a:4:{s:4:"file";s:34:"dsc20050727_091048_222-176x133.jpg";s:5:"width";i:176;s:6:"height";i:133;s:9:"mime-type";s:10:"image/jpeg";}s:20:"gomedia-widget-thumb";a:4:{s:4:"file";s:32:"dsc20050727_091048_222-60x60.jpg";s:5:"width";i:60;s:6:"height";i:60;s:9:"mime-type";s:10:"image/jpeg";}s:16:"gomedia-featured";a:4:{s:4:"file";s:34:"dsc20050727_091048_222-640x338.jpg";s:5:"width";i:640;s:6:"height";i:338;s:9:"mime-type";s:10:"image/jpeg";}s:22:"gomedia-featured-small";a:4:{s:4:"file";s:33:"dsc20050727_091048_222-145x90.jpg";s:5:"width";i:145;s:6:"height";i:90;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"4";s:6:"credit";s:0:"";s:6:"camera";s:9:"CYBERSHOT";s:7:"caption";s:0:"";s:17:"created_timestamp";s:10:"1122455448";s:9:"copyright";s:0:"";s:12:"focal_length";s:3:"9.7";s:3:"iso";s:3:"100";s:13:"shutter_speed";s:5:"0.004";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(12, 616, '_wp_attachment_image_alt', 'dsc20050727_091048_222'),
(13, 617, '_wp_attached_file', '2011/01/dsc20050813_115856_52.jpg'),
(14, 617, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:640;s:6:"height";i:480;s:4:"file";s:33:"2011/01/dsc20050813_115856_52.jpg";s:5:"sizes";a:8:{s:9:"thumbnail";a:4:{s:4:"file";s:33:"dsc20050813_115856_52-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:33:"dsc20050813_115856_52-300x225.jpg";s:5:"width";i:300;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";}s:18:"gomedia-post-thumb";a:4:{s:4:"file";s:33:"dsc20050813_115856_52-210x158.jpg";s:5:"width";i:210;s:6:"height";i:158;s:9:"mime-type";s:10:"image/jpeg";}s:22:"gomedia-carousel-thumb";a:4:{s:4:"file";s:33:"dsc20050813_115856_52-285x195.jpg";s:5:"width";i:285;s:6:"height";i:195;s:9:"mime-type";s:10:"image/jpeg";}s:21:"gomedia-related-thumb";a:4:{s:4:"file";s:33:"dsc20050813_115856_52-176x133.jpg";s:5:"width";i:176;s:6:"height";i:133;s:9:"mime-type";s:10:"image/jpeg";}s:20:"gomedia-widget-thumb";a:4:{s:4:"file";s:31:"dsc20050813_115856_52-60x60.jpg";s:5:"width";i:60;s:6:"height";i:60;s:9:"mime-type";s:10:"image/jpeg";}s:16:"gomedia-featured";a:4:{s:4:"file";s:33:"dsc20050813_115856_52-640x338.jpg";s:5:"width";i:640;s:6:"height";i:338;s:9:"mime-type";s:10:"image/jpeg";}s:22:"gomedia-featured-small";a:4:{s:4:"file";s:32:"dsc20050813_115856_52-145x90.jpg";s:5:"width";i:145;s:6:"height";i:90;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:3:"3.2";s:6:"credit";s:0:"";s:6:"camera";s:9:"CYBERSHOT";s:7:"caption";s:0:"";s:17:"created_timestamp";s:10:"1123934337";s:9:"copyright";s:0:"";s:12:"focal_length";s:3:"9.7";s:3:"iso";s:3:"100";s:13:"shutter_speed";s:5:"0.008";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(15, 617, '_wp_attachment_image_alt', 'dsc20050813_115856_52'),
(16, 618, '_wp_attached_file', '2011/01/dsc20050831_165238_332.jpg'),
(17, 618, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:640;s:6:"height";i:480;s:4:"file";s:34:"2011/01/dsc20050831_165238_332.jpg";s:5:"sizes";a:8:{s:9:"thumbnail";a:4:{s:4:"file";s:34:"dsc20050831_165238_332-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:34:"dsc20050831_165238_332-300x225.jpg";s:5:"width";i:300;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";}s:18:"gomedia-post-thumb";a:4:{s:4:"file";s:34:"dsc20050831_165238_332-210x158.jpg";s:5:"width";i:210;s:6:"height";i:158;s:9:"mime-type";s:10:"image/jpeg";}s:22:"gomedia-carousel-thumb";a:4:{s:4:"file";s:34:"dsc20050831_165238_332-285x195.jpg";s:5:"width";i:285;s:6:"height";i:195;s:9:"mime-type";s:10:"image/jpeg";}s:21:"gomedia-related-thumb";a:4:{s:4:"file";s:34:"dsc20050831_165238_332-176x133.jpg";s:5:"width";i:176;s:6:"height";i:133;s:9:"mime-type";s:10:"image/jpeg";}s:20:"gomedia-widget-thumb";a:4:{s:4:"file";s:32:"dsc20050831_165238_332-60x60.jpg";s:5:"width";i:60;s:6:"height";i:60;s:9:"mime-type";s:10:"image/jpeg";}s:16:"gomedia-featured";a:4:{s:4:"file";s:34:"dsc20050831_165238_332-640x338.jpg";s:5:"width";i:640;s:6:"height";i:338;s:9:"mime-type";s:10:"image/jpeg";}s:22:"gomedia-featured-small";a:4:{s:4:"file";s:33:"dsc20050831_165238_332-145x90.jpg";s:5:"width";i:145;s:6:"height";i:90;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"2";s:6:"credit";s:0:"";s:6:"camera";s:9:"CYBERSHOT";s:7:"caption";s:0:"";s:17:"created_timestamp";s:10:"1125507159";s:9:"copyright";s:0:"";s:12:"focal_length";s:3:"9.7";s:3:"iso";s:3:"100";s:13:"shutter_speed";s:17:"0.016666666666667";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(18, 618, '_wp_attachment_image_alt', 'dsc20050831_165238_332'),
(19, 619, '_wp_attached_file', '2011/01/dsc20050901_105100_212.jpg'),
(20, 619, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:640;s:6:"height";i:480;s:4:"file";s:34:"2011/01/dsc20050901_105100_212.jpg";s:5:"sizes";a:8:{s:9:"thumbnail";a:4:{s:4:"file";s:34:"dsc20050901_105100_212-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:34:"dsc20050901_105100_212-300x225.jpg";s:5:"width";i:300;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";}s:18:"gomedia-post-thumb";a:4:{s:4:"file";s:34:"dsc20050901_105100_212-210x158.jpg";s:5:"width";i:210;s:6:"height";i:158;s:9:"mime-type";s:10:"image/jpeg";}s:22:"gomedia-carousel-thumb";a:4:{s:4:"file";s:34:"dsc20050901_105100_212-285x195.jpg";s:5:"width";i:285;s:6:"height";i:195;s:9:"mime-type";s:10:"image/jpeg";}s:21:"gomedia-related-thumb";a:4:{s:4:"file";s:34:"dsc20050901_105100_212-176x133.jpg";s:5:"width";i:176;s:6:"height";i:133;s:9:"mime-type";s:10:"image/jpeg";}s:20:"gomedia-widget-thumb";a:4:{s:4:"file";s:32:"dsc20050901_105100_212-60x60.jpg";s:5:"width";i:60;s:6:"height";i:60;s:9:"mime-type";s:10:"image/jpeg";}s:16:"gomedia-featured";a:4:{s:4:"file";s:34:"dsc20050901_105100_212-640x338.jpg";s:5:"width";i:640;s:6:"height";i:338;s:9:"mime-type";s:10:"image/jpeg";}s:22:"gomedia-featured-small";a:4:{s:4:"file";s:33:"dsc20050901_105100_212-145x90.jpg";s:5:"width";i:145;s:6:"height";i:90;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"4";s:6:"credit";s:0:"";s:6:"camera";s:9:"CYBERSHOT";s:7:"caption";s:0:"";s:17:"created_timestamp";s:10:"1125571860";s:9:"copyright";s:0:"";s:12:"focal_length";s:2:"10";s:3:"iso";s:3:"100";s:13:"shutter_speed";s:6:"0.0025";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(21, 619, '_wp_attachment_image_alt', 'Seed pods on stem, Woodvale'),
(22, 754, '_wp_attached_file', '2011/07/100_5478.jpg'),
(23, 754, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1600;s:6:"height";i:1200;s:4:"file";s:20:"2011/07/100_5478.jpg";s:5:"sizes";a:10:{s:9:"thumbnail";a:4:{s:4:"file";s:20:"100_5478-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:20:"100_5478-300x225.jpg";s:5:"width";i:300;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:20:"100_5478-768x576.jpg";s:5:"width";i:768;s:6:"height";i:576;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:21:"100_5478-1024x768.jpg";s:5:"width";i:1024;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:18:"gomedia-post-thumb";a:4:{s:4:"file";s:20:"100_5478-210x158.jpg";s:5:"width";i:210;s:6:"height";i:158;s:9:"mime-type";s:10:"image/jpeg";}s:22:"gomedia-carousel-thumb";a:4:{s:4:"file";s:20:"100_5478-285x195.jpg";s:5:"width";i:285;s:6:"height";i:195;s:9:"mime-type";s:10:"image/jpeg";}s:21:"gomedia-related-thumb";a:4:{s:4:"file";s:20:"100_5478-176x133.jpg";s:5:"width";i:176;s:6:"height";i:133;s:9:"mime-type";s:10:"image/jpeg";}s:20:"gomedia-widget-thumb";a:4:{s:4:"file";s:18:"100_5478-60x60.jpg";s:5:"width";i:60;s:6:"height";i:60;s:9:"mime-type";s:10:"image/jpeg";}s:16:"gomedia-featured";a:4:{s:4:"file";s:20:"100_5478-720x338.jpg";s:5:"width";i:720;s:6:"height";i:338;s:9:"mime-type";s:10:"image/jpeg";}s:22:"gomedia-featured-small";a:4:{s:4:"file";s:19:"100_5478-145x90.jpg";s:5:"width";i:145;s:6:"height";i:90;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:3:"6.3";s:6:"credit";s:0:"";s:6:"camera";s:32:"KODAK DX7590 ZOOM DIGITAL CAMERA";s:7:"caption";s:0:"";s:17:"created_timestamp";s:10:"1145694068";s:9:"copyright";s:0:"";s:12:"focal_length";s:4:"17.5";s:3:"iso";s:2:"80";s:13:"shutter_speed";s:5:"0.002";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(24, 754, '_wp_attachment_image_alt', 'Bell on Wharf'),
(25, 755, '_wp_attached_file', '2011/07/100_5540.jpg'),
(26, 755, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1600;s:6:"height";i:1200;s:4:"file";s:20:"2011/07/100_5540.jpg";s:5:"sizes";a:10:{s:9:"thumbnail";a:4:{s:4:"file";s:20:"100_5540-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:20:"100_5540-300x225.jpg";s:5:"width";i:300;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:20:"100_5540-768x576.jpg";s:5:"width";i:768;s:6:"height";i:576;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:21:"100_5540-1024x768.jpg";s:5:"width";i:1024;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:18:"gomedia-post-thumb";a:4:{s:4:"file";s:20:"100_5540-210x158.jpg";s:5:"width";i:210;s:6:"height";i:158;s:9:"mime-type";s:10:"image/jpeg";}s:22:"gomedia-carousel-thumb";a:4:{s:4:"file";s:20:"100_5540-285x195.jpg";s:5:"width";i:285;s:6:"height";i:195;s:9:"mime-type";s:10:"image/jpeg";}s:21:"gomedia-related-thumb";a:4:{s:4:"file";s:20:"100_5540-176x133.jpg";s:5:"width";i:176;s:6:"height";i:133;s:9:"mime-type";s:10:"image/jpeg";}s:20:"gomedia-widget-thumb";a:4:{s:4:"file";s:18:"100_5540-60x60.jpg";s:5:"width";i:60;s:6:"height";i:60;s:9:"mime-type";s:10:"image/jpeg";}s:16:"gomedia-featured";a:4:{s:4:"file";s:20:"100_5540-720x338.jpg";s:5:"width";i:720;s:6:"height";i:338;s:9:"mime-type";s:10:"image/jpeg";}s:22:"gomedia-featured-small";a:4:{s:4:"file";s:19:"100_5540-145x90.jpg";s:5:"width";i:145;s:6:"height";i:90;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"4";s:6:"credit";s:0:"";s:6:"camera";s:32:"KODAK DX7590 ZOOM DIGITAL CAMERA";s:7:"caption";s:0:"";s:17:"created_timestamp";s:10:"1145697622";s:9:"copyright";s:0:"";s:12:"focal_length";s:3:"6.3";s:3:"iso";s:2:"80";s:13:"shutter_speed";s:7:"0.00125";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(27, 755, '_wp_attachment_image_alt', 'Golden Gate Bridge'),
(28, 756, '_wp_attached_file', '2011/07/cep00032.jpg'),
(29, 756, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1500;s:6:"height";i:1200;s:4:"file";s:20:"2011/07/cep00032.jpg";s:5:"sizes";a:10:{s:9:"thumbnail";a:4:{s:4:"file";s:20:"cep00032-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:20:"cep00032-300x240.jpg";s:5:"width";i:300;s:6:"height";i:240;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:20:"cep00032-768x614.jpg";s:5:"width";i:768;s:6:"height";i:614;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:21:"cep00032-1024x819.jpg";s:5:"width";i:1024;s:6:"height";i:819;s:9:"mime-type";s:10:"image/jpeg";}s:18:"gomedia-post-thumb";a:4:{s:4:"file";s:20:"cep00032-210x158.jpg";s:5:"width";i:210;s:6:"height";i:158;s:9:"mime-type";s:10:"image/jpeg";}s:22:"gomedia-carousel-thumb";a:4:{s:4:"file";s:20:"cep00032-285x195.jpg";s:5:"width";i:285;s:6:"height";i:195;s:9:"mime-type";s:10:"image/jpeg";}s:21:"gomedia-related-thumb";a:4:{s:4:"file";s:20:"cep00032-176x133.jpg";s:5:"width";i:176;s:6:"height";i:133;s:9:"mime-type";s:10:"image/jpeg";}s:20:"gomedia-widget-thumb";a:4:{s:4:"file";s:18:"cep00032-60x60.jpg";s:5:"width";i:60;s:6:"height";i:60;s:9:"mime-type";s:10:"image/jpeg";}s:16:"gomedia-featured";a:4:{s:4:"file";s:20:"cep00032-720x338.jpg";s:5:"width";i:720;s:6:"height";i:338;s:9:"mime-type";s:10:"image/jpeg";}s:22:"gomedia-featured-small";a:4:{s:4:"file";s:19:"cep00032-145x90.jpg";s:5:"width";i:145;s:6:"height";i:90;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"4";s:6:"credit";s:0:"";s:6:"camera";s:13:"Canon ELURA90";s:7:"caption";s:0:"";s:17:"created_timestamp";s:10:"1130775264";s:9:"copyright";s:0:"";s:12:"focal_length";s:4:"4.15";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:8:"0.002091";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(30, 756, '_wp_attachment_image_alt', 'Sunburst Over River'),
(31, 757, '_wp_attached_file', '2011/07/dcp_2082.jpg'),
(32, 757, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1600;s:6:"height";i:1066;s:4:"file";s:20:"2011/07/dcp_2082.jpg";s:5:"sizes";a:10:{s:9:"thumbnail";a:4:{s:4:"file";s:20:"dcp_2082-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:20:"dcp_2082-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:20:"dcp_2082-768x512.jpg";s:5:"width";i:768;s:6:"height";i:512;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:21:"dcp_2082-1024x682.jpg";s:5:"width";i:1024;s:6:"height";i:682;s:9:"mime-type";s:10:"image/jpeg";}s:18:"gomedia-post-thumb";a:4:{s:4:"file";s:20:"dcp_2082-210x158.jpg";s:5:"width";i:210;s:6:"height";i:158;s:9:"mime-type";s:10:"image/jpeg";}s:22:"gomedia-carousel-thumb";a:4:{s:4:"file";s:20:"dcp_2082-285x195.jpg";s:5:"width";i:285;s:6:"height";i:195;s:9:"mime-type";s:10:"image/jpeg";}s:21:"gomedia-related-thumb";a:4:{s:4:"file";s:20:"dcp_2082-176x133.jpg";s:5:"width";i:176;s:6:"height";i:133;s:9:"mime-type";s:10:"image/jpeg";}s:20:"gomedia-widget-thumb";a:4:{s:4:"file";s:18:"dcp_2082-60x60.jpg";s:5:"width";i:60;s:6:"height";i:60;s:9:"mime-type";s:10:"image/jpeg";}s:16:"gomedia-featured";a:4:{s:4:"file";s:20:"dcp_2082-720x338.jpg";s:5:"width";i:720;s:6:"height";i:338;s:9:"mime-type";s:10:"image/jpeg";}s:22:"gomedia-featured-small";a:4:{s:4:"file";s:19:"dcp_2082-145x90.jpg";s:5:"width";i:145;s:6:"height";i:90;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:3:"5.6";s:6:"credit";s:0:"";s:6:"camera";s:32:"KODAK DX4900 ZOOM DIGITAL CAMERA";s:7:"caption";s:0:"";s:17:"created_timestamp";s:10:"1054666444";s:9:"copyright";s:0:"";s:12:"focal_length";s:3:"7.3";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:5:"0.002";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(33, 757, '_wp_attachment_image_alt', 'Boardwalk'),
(34, 758, '_wp_attached_file', '2011/07/dsc03149.jpg'),
(35, 758, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1280;s:6:"height";i:960;s:4:"file";s:20:"2011/07/dsc03149.jpg";s:5:"sizes";a:10:{s:9:"thumbnail";a:4:{s:4:"file";s:20:"dsc03149-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:20:"dsc03149-300x225.jpg";s:5:"width";i:300;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:20:"dsc03149-768x576.jpg";s:5:"width";i:768;s:6:"height";i:576;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:21:"dsc03149-1024x768.jpg";s:5:"width";i:1024;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:18:"gomedia-post-thumb";a:4:{s:4:"file";s:20:"dsc03149-210x158.jpg";s:5:"width";i:210;s:6:"height";i:158;s:9:"mime-type";s:10:"image/jpeg";}s:22:"gomedia-carousel-thumb";a:4:{s:4:"file";s:20:"dsc03149-285x195.jpg";s:5:"width";i:285;s:6:"height";i:195;s:9:"mime-type";s:10:"image/jpeg";}s:21:"gomedia-related-thumb";a:4:{s:4:"file";s:20:"dsc03149-176x133.jpg";s:5:"width";i:176;s:6:"height";i:133;s:9:"mime-type";s:10:"image/jpeg";}s:20:"gomedia-widget-thumb";a:4:{s:4:"file";s:18:"dsc03149-60x60.jpg";s:5:"width";i:60;s:6:"height";i:60;s:9:"mime-type";s:10:"image/jpeg";}s:16:"gomedia-featured";a:4:{s:4:"file";s:20:"dsc03149-720x338.jpg";s:5:"width";i:720;s:6:"height";i:338;s:9:"mime-type";s:10:"image/jpeg";}s:22:"gomedia-featured-small";a:4:{s:4:"file";s:19:"dsc03149-145x90.jpg";s:5:"width";i:145;s:6:"height";i:90;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"4";s:6:"credit";s:0:"";s:6:"camera";s:9:"CYBERSHOT";s:7:"caption";s:0:"";s:17:"created_timestamp";s:10:"1034618291";s:9:"copyright";s:0:"";s:12:"focal_length";s:3:"9.7";s:3:"iso";s:3:"100";s:13:"shutter_speed";s:5:"0.004";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(36, 758, '_wp_attachment_image_alt', 'Yachtsody in Blue'),
(37, 759, '_wp_attached_file', '2011/07/dsc04563.jpg'),
(38, 759, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1600;s:6:"height";i:1200;s:4:"file";s:20:"2011/07/dsc04563.jpg";s:5:"sizes";a:10:{s:9:"thumbnail";a:4:{s:4:"file";s:20:"dsc04563-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:20:"dsc04563-300x225.jpg";s:5:"width";i:300;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:20:"dsc04563-768x576.jpg";s:5:"width";i:768;s:6:"height";i:576;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:21:"dsc04563-1024x768.jpg";s:5:"width";i:1024;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:18:"gomedia-post-thumb";a:4:{s:4:"file";s:20:"dsc04563-210x158.jpg";s:5:"width";i:210;s:6:"height";i:158;s:9:"mime-type";s:10:"image/jpeg";}s:22:"gomedia-carousel-thumb";a:4:{s:4:"file";s:20:"dsc04563-285x195.jpg";s:5:"width";i:285;s:6:"height";i:195;s:9:"mime-type";s:10:"image/jpeg";}s:21:"gomedia-related-thumb";a:4:{s:4:"file";s:20:"dsc04563-176x133.jpg";s:5:"width";i:176;s:6:"height";i:133;s:9:"mime-type";s:10:"image/jpeg";}s:20:"gomedia-widget-thumb";a:4:{s:4:"file";s:18:"dsc04563-60x60.jpg";s:5:"width";i:60;s:6:"height";i:60;s:9:"mime-type";s:10:"image/jpeg";}s:16:"gomedia-featured";a:4:{s:4:"file";s:20:"dsc04563-720x338.jpg";s:5:"width";i:720;s:6:"height";i:338;s:9:"mime-type";s:10:"image/jpeg";}s:22:"gomedia-featured-small";a:4:{s:4:"file";s:19:"dsc04563-145x90.jpg";s:5:"width";i:145;s:6:"height";i:90;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"4";s:6:"credit";s:0:"";s:6:"camera";s:9:"CYBERSHOT";s:7:"caption";s:0:"";s:17:"created_timestamp";s:10:"1040567677";s:9:"copyright";s:0:"";s:12:"focal_length";s:4:"48.5";s:3:"iso";s:3:"100";s:13:"shutter_speed";s:5:"0.002";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(39, 759, '_wp_attachment_image_alt', 'Rain Ripples'),
(40, 760, '_wp_attached_file', '2011/07/dsc09114.jpg'),
(41, 760, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1600;s:6:"height";i:1200;s:4:"file";s:20:"2011/07/dsc09114.jpg";s:5:"sizes";a:10:{s:9:"thumbnail";a:4:{s:4:"file";s:20:"dsc09114-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:20:"dsc09114-300x225.jpg";s:5:"width";i:300;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:20:"dsc09114-768x576.jpg";s:5:"width";i:768;s:6:"height";i:576;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:21:"dsc09114-1024x768.jpg";s:5:"width";i:1024;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:18:"gomedia-post-thumb";a:4:{s:4:"file";s:20:"dsc09114-210x158.jpg";s:5:"width";i:210;s:6:"height";i:158;s:9:"mime-type";s:10:"image/jpeg";}s:22:"gomedia-carousel-thumb";a:4:{s:4:"file";s:20:"dsc09114-285x195.jpg";s:5:"width";i:285;s:6:"height";i:195;s:9:"mime-type";s:10:"image/jpeg";}s:21:"gomedia-related-thumb";a:4:{s:4:"file";s:20:"dsc09114-176x133.jpg";s:5:"width";i:176;s:6:"height";i:133;s:9:"mime-type";s:10:"image/jpeg";}s:20:"gomedia-widget-thumb";a:4:{s:4:"file";s:18:"dsc09114-60x60.jpg";s:5:"width";i:60;s:6:"height";i:60;s:9:"mime-type";s:10:"image/jpeg";}s:16:"gomedia-featured";a:4:{s:4:"file";s:20:"dsc09114-720x338.jpg";s:5:"width";i:720;s:6:"height";i:338;s:9:"mime-type";s:10:"image/jpeg";}s:22:"gomedia-featured-small";a:4:{s:4:"file";s:19:"dsc09114-145x90.jpg";s:5:"width";i:145;s:6:"height";i:90;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:3:"5.6";s:6:"credit";s:0:"";s:6:"camera";s:9:"CYBERSHOT";s:7:"caption";s:0:"";s:17:"created_timestamp";s:10:"1067174771";s:9:"copyright";s:0:"";s:12:"focal_length";s:4:"11.8";s:3:"iso";s:3:"100";s:13:"shutter_speed";s:5:"0.002";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(42, 760, '_wp_attachment_image_alt', 'Sydney Harbor Bridge'),
(43, 761, '_wp_attached_file', '2011/07/dsc20050102_192118_51.jpg'),
(44, 761, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1600;s:6:"height";i:1200;s:4:"file";s:33:"2011/07/dsc20050102_192118_51.jpg";s:5:"sizes";a:10:{s:9:"thumbnail";a:4:{s:4:"file";s:33:"dsc20050102_192118_51-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:33:"dsc20050102_192118_51-300x225.jpg";s:5:"width";i:300;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:33:"dsc20050102_192118_51-768x576.jpg";s:5:"width";i:768;s:6:"height";i:576;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:34:"dsc20050102_192118_51-1024x768.jpg";s:5:"width";i:1024;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:18:"gomedia-post-thumb";a:4:{s:4:"file";s:33:"dsc20050102_192118_51-210x158.jpg";s:5:"width";i:210;s:6:"height";i:158;s:9:"mime-type";s:10:"image/jpeg";}s:22:"gomedia-carousel-thumb";a:4:{s:4:"file";s:33:"dsc20050102_192118_51-285x195.jpg";s:5:"width";i:285;s:6:"height";i:195;s:9:"mime-type";s:10:"image/jpeg";}s:21:"gomedia-related-thumb";a:4:{s:4:"file";s:33:"dsc20050102_192118_51-176x133.jpg";s:5:"width";i:176;s:6:"height";i:133;s:9:"mime-type";s:10:"image/jpeg";}s:20:"gomedia-widget-thumb";a:4:{s:4:"file";s:31:"dsc20050102_192118_51-60x60.jpg";s:5:"width";i:60;s:6:"height";i:60;s:9:"mime-type";s:10:"image/jpeg";}s:16:"gomedia-featured";a:4:{s:4:"file";s:33:"dsc20050102_192118_51-720x338.jpg";s:5:"width";i:720;s:6:"height";i:338;s:9:"mime-type";s:10:"image/jpeg";}s:22:"gomedia-featured-small";a:4:{s:4:"file";s:32:"dsc20050102_192118_51-145x90.jpg";s:5:"width";i:145;s:6:"height";i:90;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"4";s:6:"credit";s:0:"";s:6:"camera";s:9:"CYBERSHOT";s:7:"caption";s:0:"";s:17:"created_timestamp";s:10:"1104693678";s:9:"copyright";s:0:"";s:12:"focal_length";s:4:"33.3";s:3:"iso";s:3:"100";s:13:"shutter_speed";s:7:"0.00625";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(45, 761, '_wp_attachment_image_alt', 'Wind Farm'),
(46, 762, '_wp_attached_file', '2011/07/dsc20051220_160808_102.jpg'),
(47, 762, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1600;s:6:"height";i:1066;s:4:"file";s:34:"2011/07/dsc20051220_160808_102.jpg";s:5:"sizes";a:10:{s:9:"thumbnail";a:4:{s:4:"file";s:34:"dsc20051220_160808_102-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:34:"dsc20051220_160808_102-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:34:"dsc20051220_160808_102-768x512.jpg";s:5:"width";i:768;s:6:"height";i:512;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:35:"dsc20051220_160808_102-1024x682.jpg";s:5:"width";i:1024;s:6:"height";i:682;s:9:"mime-type";s:10:"image/jpeg";}s:18:"gomedia-post-thumb";a:4:{s:4:"file";s:34:"dsc20051220_160808_102-210x158.jpg";s:5:"width";i:210;s:6:"height";i:158;s:9:"mime-type";s:10:"image/jpeg";}s:22:"gomedia-carousel-thumb";a:4:{s:4:"file";s:34:"dsc20051220_160808_102-285x195.jpg";s:5:"width";i:285;s:6:"height";i:195;s:9:"mime-type";s:10:"image/jpeg";}s:21:"gomedia-related-thumb";a:4:{s:4:"file";s:34:"dsc20051220_160808_102-176x133.jpg";s:5:"width";i:176;s:6:"height";i:133;s:9:"mime-type";s:10:"image/jpeg";}s:20:"gomedia-widget-thumb";a:4:{s:4:"file";s:32:"dsc20051220_160808_102-60x60.jpg";s:5:"width";i:60;s:6:"height";i:60;s:9:"mime-type";s:10:"image/jpeg";}s:16:"gomedia-featured";a:4:{s:4:"file";s:34:"dsc20051220_160808_102-720x338.jpg";s:5:"width";i:720;s:6:"height";i:338;s:9:"mime-type";s:10:"image/jpeg";}s:22:"gomedia-featured-small";a:4:{s:4:"file";s:33:"dsc20051220_160808_102-145x90.jpg";s:5:"width";i:145;s:6:"height";i:90;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:3:"2.5";s:6:"credit";s:0:"";s:6:"camera";s:13:"Canon EOS 10D";s:7:"caption";s:0:"";s:17:"created_timestamp";s:10:"1135094888";s:9:"copyright";s:0:"";s:12:"focal_length";s:2:"50";s:3:"iso";s:3:"400";s:13:"shutter_speed";s:17:"0.016666666666667";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(48, 762, '_wp_attachment_image_alt', 'Antique Farm Machinery'),
(49, 763, '_wp_attached_file', '2011/07/dsc02085.jpg'),
(50, 763, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1600;s:6:"height";i:1200;s:4:"file";s:20:"2011/07/dsc02085.jpg";s:5:"sizes";a:10:{s:9:"thumbnail";a:4:{s:4:"file";s:20:"dsc02085-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:20:"dsc02085-300x225.jpg";s:5:"width";i:300;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:20:"dsc02085-768x576.jpg";s:5:"width";i:768;s:6:"height";i:576;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:21:"dsc02085-1024x768.jpg";s:5:"width";i:1024;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:18:"gomedia-post-thumb";a:4:{s:4:"file";s:20:"dsc02085-210x158.jpg";s:5:"width";i:210;s:6:"height";i:158;s:9:"mime-type";s:10:"image/jpeg";}s:22:"gomedia-carousel-thumb";a:4:{s:4:"file";s:20:"dsc02085-285x195.jpg";s:5:"width";i:285;s:6:"height";i:195;s:9:"mime-type";s:10:"image/jpeg";}s:21:"gomedia-related-thumb";a:4:{s:4:"file";s:20:"dsc02085-176x133.jpg";s:5:"width";i:176;s:6:"height";i:133;s:9:"mime-type";s:10:"image/jpeg";}s:20:"gomedia-widget-thumb";a:4:{s:4:"file";s:18:"dsc02085-60x60.jpg";s:5:"width";i:60;s:6:"height";i:60;s:9:"mime-type";s:10:"image/jpeg";}s:16:"gomedia-featured";a:4:{s:4:"file";s:20:"dsc02085-720x338.jpg";s:5:"width";i:720;s:6:"height";i:338;s:9:"mime-type";s:10:"image/jpeg";}s:22:"gomedia-featured-small";a:4:{s:4:"file";s:19:"dsc02085-145x90.jpg";s:5:"width";i:145;s:6:"height";i:90;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:3:"2.9";s:6:"credit";s:0:"";s:6:"camera";s:8:"DSC-S930";s:7:"caption";s:0:"";s:17:"created_timestamp";s:10:"1288861799";s:9:"copyright";s:0:"";s:12:"focal_length";s:3:"6.4";s:3:"iso";s:3:"100";s:13:"shutter_speed";s:5:"0.008";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(51, 763, '_wp_attachment_image_alt', 'Orange Iris'),
(52, 764, '_wp_attached_file', '2011/07/dsc20051220_173257_119.jpg'),
(53, 764, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1600;s:6:"height";i:1066;s:4:"file";s:34:"2011/07/dsc20051220_173257_119.jpg";s:5:"sizes";a:10:{s:9:"thumbnail";a:4:{s:4:"file";s:34:"dsc20051220_173257_119-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:34:"dsc20051220_173257_119-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:34:"dsc20051220_173257_119-768x512.jpg";s:5:"width";i:768;s:6:"height";i:512;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:35:"dsc20051220_173257_119-1024x682.jpg";s:5:"width";i:1024;s:6:"height";i:682;s:9:"mime-type";s:10:"image/jpeg";}s:18:"gomedia-post-thumb";a:4:{s:4:"file";s:34:"dsc20051220_173257_119-210x158.jpg";s:5:"width";i:210;s:6:"height";i:158;s:9:"mime-type";s:10:"image/jpeg";}s:22:"gomedia-carousel-thumb";a:4:{s:4:"file";s:34:"dsc20051220_173257_119-285x195.jpg";s:5:"width";i:285;s:6:"height";i:195;s:9:"mime-type";s:10:"image/jpeg";}s:21:"gomedia-related-thumb";a:4:{s:4:"file";s:34:"dsc20051220_173257_119-176x133.jpg";s:5:"width";i:176;s:6:"height";i:133;s:9:"mime-type";s:10:"image/jpeg";}s:20:"gomedia-widget-thumb";a:4:{s:4:"file";s:32:"dsc20051220_173257_119-60x60.jpg";s:5:"width";i:60;s:6:"height";i:60;s:9:"mime-type";s:10:"image/jpeg";}s:16:"gomedia-featured";a:4:{s:4:"file";s:34:"dsc20051220_173257_119-720x338.jpg";s:5:"width";i:720;s:6:"height";i:338;s:9:"mime-type";s:10:"image/jpeg";}s:22:"gomedia-featured-small";a:4:{s:4:"file";s:33:"dsc20051220_173257_119-145x90.jpg";s:5:"width";i:145;s:6:"height";i:90;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:3:"6.7";s:6:"credit";s:0:"";s:6:"camera";s:13:"Canon EOS 10D";s:7:"caption";s:0:"";s:17:"created_timestamp";s:10:"1135099977";s:9:"copyright";s:0:"";s:12:"focal_length";s:2:"50";s:3:"iso";s:3:"400";s:13:"shutter_speed";s:18:"0.0013333333333333";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(54, 764, '_wp_attachment_image_alt', 'Rusty Rail'),
(55, 765, '_wp_attached_file', '2011/07/dscn3316.jpg'),
(56, 765, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1600;s:6:"height";i:1200;s:4:"file";s:20:"2011/07/dscn3316.jpg";s:5:"sizes";a:10:{s:9:"thumbnail";a:4:{s:4:"file";s:20:"dscn3316-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:20:"dscn3316-300x225.jpg";s:5:"width";i:300;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:20:"dscn3316-768x576.jpg";s:5:"width";i:768;s:6:"height";i:576;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:21:"dscn3316-1024x768.jpg";s:5:"width";i:1024;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:18:"gomedia-post-thumb";a:4:{s:4:"file";s:20:"dscn3316-210x158.jpg";s:5:"width";i:210;s:6:"height";i:158;s:9:"mime-type";s:10:"image/jpeg";}s:22:"gomedia-carousel-thumb";a:4:{s:4:"file";s:20:"dscn3316-285x195.jpg";s:5:"width";i:285;s:6:"height";i:195;s:9:"mime-type";s:10:"image/jpeg";}s:21:"gomedia-related-thumb";a:4:{s:4:"file";s:20:"dscn3316-176x133.jpg";s:5:"width";i:176;s:6:"height";i:133;s:9:"mime-type";s:10:"image/jpeg";}s:20:"gomedia-widget-thumb";a:4:{s:4:"file";s:18:"dscn3316-60x60.jpg";s:5:"width";i:60;s:6:"height";i:60;s:9:"mime-type";s:10:"image/jpeg";}s:16:"gomedia-featured";a:4:{s:4:"file";s:20:"dscn3316-720x338.jpg";s:5:"width";i:720;s:6:"height";i:338;s:9:"mime-type";s:10:"image/jpeg";}s:22:"gomedia-featured-small";a:4:{s:4:"file";s:19:"dscn3316-145x90.jpg";s:5:"width";i:145;s:6:"height";i:90;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:3:"7.6";s:6:"credit";s:0:"";s:6:"camera";s:5:"E4300";s:7:"caption";s:0:"";s:17:"created_timestamp";s:10:"1170775967";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"8";s:3:"iso";s:3:"100";s:13:"shutter_speed";s:18:"0.0045454545454545";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(57, 765, '_wp_attachment_image_alt', 'Sea and Rocks'),
(58, 766, '_wp_attached_file', '2011/07/michelle_049.jpg'),
(59, 766, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1600;s:6:"height";i:1200;s:4:"file";s:24:"2011/07/michelle_049.jpg";s:5:"sizes";a:10:{s:9:"thumbnail";a:4:{s:4:"file";s:24:"michelle_049-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:24:"michelle_049-300x225.jpg";s:5:"width";i:300;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:24:"michelle_049-768x576.jpg";s:5:"width";i:768;s:6:"height";i:576;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:25:"michelle_049-1024x768.jpg";s:5:"width";i:1024;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:18:"gomedia-post-thumb";a:4:{s:4:"file";s:24:"michelle_049-210x158.jpg";s:5:"width";i:210;s:6:"height";i:158;s:9:"mime-type";s:10:"image/jpeg";}s:22:"gomedia-carousel-thumb";a:4:{s:4:"file";s:24:"michelle_049-285x195.jpg";s:5:"width";i:285;s:6:"height";i:195;s:9:"mime-type";s:10:"image/jpeg";}s:21:"gomedia-related-thumb";a:4:{s:4:"file";s:24:"michelle_049-176x133.jpg";s:5:"width";i:176;s:6:"height";i:133;s:9:"mime-type";s:10:"image/jpeg";}s:20:"gomedia-widget-thumb";a:4:{s:4:"file";s:22:"michelle_049-60x60.jpg";s:5:"width";i:60;s:6:"height";i:60;s:9:"mime-type";s:10:"image/jpeg";}s:16:"gomedia-featured";a:4:{s:4:"file";s:24:"michelle_049-720x338.jpg";s:5:"width";i:720;s:6:"height";i:338;s:9:"mime-type";s:10:"image/jpeg";}s:22:"gomedia-featured-small";a:4:{s:4:"file";s:23:"michelle_049-145x90.jpg";s:5:"width";i:145;s:6:"height";i:90;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:3:"7.1";s:6:"credit";s:0:"";s:6:"camera";s:18:"Canon PowerShot G3";s:7:"caption";s:0:"";s:17:"created_timestamp";s:10:"1096133874";s:9:"copyright";s:0:"";s:12:"focal_length";s:7:"15.8125";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:7:"0.00625";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(60, 766, '_wp_attachment_image_alt', 'Big Sur'),
(61, 767, '_wp_attached_file', '2011/07/windmill.jpg'),
(62, 767, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1600;s:6:"height";i:1200;s:4:"file";s:20:"2011/07/windmill.jpg";s:5:"sizes";a:10:{s:9:"thumbnail";a:4:{s:4:"file";s:20:"windmill-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:20:"windmill-300x225.jpg";s:5:"width";i:300;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:20:"windmill-768x576.jpg";s:5:"width";i:768;s:6:"height";i:576;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:21:"windmill-1024x768.jpg";s:5:"width";i:1024;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:18:"gomedia-post-thumb";a:4:{s:4:"file";s:20:"windmill-210x158.jpg";s:5:"width";i:210;s:6:"height";i:158;s:9:"mime-type";s:10:"image/jpeg";}s:22:"gomedia-carousel-thumb";a:4:{s:4:"file";s:20:"windmill-285x195.jpg";s:5:"width";i:285;s:6:"height";i:195;s:9:"mime-type";s:10:"image/jpeg";}s:21:"gomedia-related-thumb";a:4:{s:4:"file";s:20:"windmill-176x133.jpg";s:5:"width";i:176;s:6:"height";i:133;s:9:"mime-type";s:10:"image/jpeg";}s:20:"gomedia-widget-thumb";a:4:{s:4:"file";s:18:"windmill-60x60.jpg";s:5:"width";i:60;s:6:"height";i:60;s:9:"mime-type";s:10:"image/jpeg";}s:16:"gomedia-featured";a:4:{s:4:"file";s:20:"windmill-720x338.jpg";s:5:"width";i:720;s:6:"height";i:338;s:9:"mime-type";s:10:"image/jpeg";}s:22:"gomedia-featured-small";a:4:{s:4:"file";s:19:"windmill-145x90.jpg";s:5:"width";i:145;s:6:"height";i:90;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:3:"5.6";s:6:"credit";s:0:"";s:6:"camera";s:8:"DiMAGE 7";s:7:"caption";s:7:"DCF 1.0";s:17:"created_timestamp";s:10:"1125077631";s:9:"copyright";s:0:"";s:12:"focal_length";s:11:"50.69140625";s:3:"iso";s:3:"100";s:13:"shutter_speed";s:18:"0.0055555555555556";s:5:"title";s:7:"DCF 1.0";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(63, 767, '_wp_attachment_image_alt', 'Windmill'),
(64, 768, '_wp_attached_file', '2011/07/img_0513-1.jpg'),
(65, 768, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:800;s:6:"height";i:533;s:4:"file";s:22:"2011/07/img_0513-1.jpg";s:5:"sizes";a:9:{s:9:"thumbnail";a:4:{s:4:"file";s:22:"img_0513-1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:22:"img_0513-1-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:22:"img_0513-1-768x512.jpg";s:5:"width";i:768;s:6:"height";i:512;s:9:"mime-type";s:10:"image/jpeg";}s:18:"gomedia-post-thumb";a:4:{s:4:"file";s:22:"img_0513-1-210x158.jpg";s:5:"width";i:210;s:6:"height";i:158;s:9:"mime-type";s:10:"image/jpeg";}s:22:"gomedia-carousel-thumb";a:4:{s:4:"file";s:22:"img_0513-1-285x195.jpg";s:5:"width";i:285;s:6:"height";i:195;s:9:"mime-type";s:10:"image/jpeg";}s:21:"gomedia-related-thumb";a:4:{s:4:"file";s:22:"img_0513-1-176x133.jpg";s:5:"width";i:176;s:6:"height";i:133;s:9:"mime-type";s:10:"image/jpeg";}s:20:"gomedia-widget-thumb";a:4:{s:4:"file";s:20:"img_0513-1-60x60.jpg";s:5:"width";i:60;s:6:"height";i:60;s:9:"mime-type";s:10:"image/jpeg";}s:16:"gomedia-featured";a:4:{s:4:"file";s:22:"img_0513-1-720x338.jpg";s:5:"width";i:720;s:6:"height";i:338;s:9:"mime-type";s:10:"image/jpeg";}s:22:"gomedia-featured-small";a:4:{s:4:"file";s:21:"img_0513-1-145x90.jpg";s:5:"width";i:145;s:6:"height";i:90;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:3:"5.6";s:6:"credit";s:10:"Picasa 2.0";s:6:"camera";s:12:"Canon EOS 5D";s:7:"caption";s:32:"Alas! I have found my Shangri-La";s:17:"created_timestamp";s:10:"1158217614";s:9:"copyright";s:0:"";s:12:"focal_length";s:3:"105";s:3:"iso";s:3:"400";s:13:"shutter_speed";s:5:"0.005";s:5:"title";s:32:"Alas! I have found my Shangri-La";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(66, 768, '_wp_attachment_image_alt', 'Huatulco Coastline'),
(67, 769, '_wp_attached_file', '2011/07/img_0747.jpg'),
(68, 769, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1600;s:6:"height";i:1066;s:4:"file";s:20:"2011/07/img_0747.jpg";s:5:"sizes";a:10:{s:9:"thumbnail";a:4:{s:4:"file";s:20:"img_0747-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:20:"img_0747-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:20:"img_0747-768x512.jpg";s:5:"width";i:768;s:6:"height";i:512;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:21:"img_0747-1024x682.jpg";s:5:"width";i:1024;s:6:"height";i:682;s:9:"mime-type";s:10:"image/jpeg";}s:18:"gomedia-post-thumb";a:4:{s:4:"file";s:20:"img_0747-210x158.jpg";s:5:"width";i:210;s:6:"height";i:158;s:9:"mime-type";s:10:"image/jpeg";}s:22:"gomedia-carousel-thumb";a:4:{s:4:"file";s:20:"img_0747-285x195.jpg";s:5:"width";i:285;s:6:"height";i:195;s:9:"mime-type";s:10:"image/jpeg";}s:21:"gomedia-related-thumb";a:4:{s:4:"file";s:20:"img_0747-176x133.jpg";s:5:"width";i:176;s:6:"height";i:133;s:9:"mime-type";s:10:"image/jpeg";}s:20:"gomedia-widget-thumb";a:4:{s:4:"file";s:18:"img_0747-60x60.jpg";s:5:"width";i:60;s:6:"height";i:60;s:9:"mime-type";s:10:"image/jpeg";}s:16:"gomedia-featured";a:4:{s:4:"file";s:20:"img_0747-720x338.jpg";s:5:"width";i:720;s:6:"height";i:338;s:9:"mime-type";s:10:"image/jpeg";}s:22:"gomedia-featured-small";a:4:{s:4:"file";s:19:"img_0747-145x90.jpg";s:5:"width";i:145;s:6:"height";i:90;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:2:"11";s:6:"credit";s:0:"";s:6:"camera";s:19:"Canon EOS REBEL T2i";s:7:"caption";s:0:"";s:17:"created_timestamp";s:10:"1271654325";s:9:"copyright";s:0:"";s:12:"focal_length";s:2:"18";s:3:"iso";s:3:"800";s:13:"shutter_speed";s:7:"0.00125";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(69, 769, '_wp_attachment_image_alt', 'Brazil Beach'),
(70, 770, '_wp_attached_file', '2011/07/img_0767.jpg'),
(71, 770, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:800;s:6:"height";i:533;s:4:"file";s:20:"2011/07/img_0767.jpg";s:5:"sizes";a:9:{s:9:"thumbnail";a:4:{s:4:"file";s:20:"img_0767-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:20:"img_0767-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:20:"img_0767-768x512.jpg";s:5:"width";i:768;s:6:"height";i:512;s:9:"mime-type";s:10:"image/jpeg";}s:18:"gomedia-post-thumb";a:4:{s:4:"file";s:20:"img_0767-210x158.jpg";s:5:"width";i:210;s:6:"height";i:158;s:9:"mime-type";s:10:"image/jpeg";}s:22:"gomedia-carousel-thumb";a:4:{s:4:"file";s:20:"img_0767-285x195.jpg";s:5:"width";i:285;s:6:"height";i:195;s:9:"mime-type";s:10:"image/jpeg";}s:21:"gomedia-related-thumb";a:4:{s:4:"file";s:20:"img_0767-176x133.jpg";s:5:"width";i:176;s:6:"height";i:133;s:9:"mime-type";s:10:"image/jpeg";}s:20:"gomedia-widget-thumb";a:4:{s:4:"file";s:18:"img_0767-60x60.jpg";s:5:"width";i:60;s:6:"height";i:60;s:9:"mime-type";s:10:"image/jpeg";}s:16:"gomedia-featured";a:4:{s:4:"file";s:20:"img_0767-720x338.jpg";s:5:"width";i:720;s:6:"height";i:338;s:9:"mime-type";s:10:"image/jpeg";}s:22:"gomedia-featured-small";a:4:{s:4:"file";s:19:"img_0767-145x90.jpg";s:5:"width";i:145;s:6:"height";i:90;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:2:"10";s:6:"credit";s:10:"Picasa 2.6";s:6:"camera";s:12:"Canon EOS 5D";s:7:"caption";s:0:"";s:17:"created_timestamp";s:10:"1158320386";s:9:"copyright";s:0:"";s:12:"focal_length";s:3:"105";s:3:"iso";s:3:"400";s:13:"shutter_speed";s:5:"0.002";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(72, 770, '_wp_attachment_image_alt', 'Huatulco Coastline'),
(73, 771, '_wp_attached_file', '2011/07/img_8399.jpg'),
(74, 771, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1600;s:6:"height";i:1066;s:4:"file";s:20:"2011/07/img_8399.jpg";s:5:"sizes";a:10:{s:9:"thumbnail";a:4:{s:4:"file";s:20:"img_8399-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:20:"img_8399-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:20:"img_8399-768x512.jpg";s:5:"width";i:768;s:6:"height";i:512;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:21:"img_8399-1024x682.jpg";s:5:"width";i:1024;s:6:"height";i:682;s:9:"mime-type";s:10:"image/jpeg";}s:18:"gomedia-post-thumb";a:4:{s:4:"file";s:20:"img_8399-210x158.jpg";s:5:"width";i:210;s:6:"height";i:158;s:9:"mime-type";s:10:"image/jpeg";}s:22:"gomedia-carousel-thumb";a:4:{s:4:"file";s:20:"img_8399-285x195.jpg";s:5:"width";i:285;s:6:"height";i:195;s:9:"mime-type";s:10:"image/jpeg";}s:21:"gomedia-related-thumb";a:4:{s:4:"file";s:20:"img_8399-176x133.jpg";s:5:"width";i:176;s:6:"height";i:133;s:9:"mime-type";s:10:"image/jpeg";}s:20:"gomedia-widget-thumb";a:4:{s:4:"file";s:18:"img_8399-60x60.jpg";s:5:"width";i:60;s:6:"height";i:60;s:9:"mime-type";s:10:"image/jpeg";}s:16:"gomedia-featured";a:4:{s:4:"file";s:20:"img_8399-720x338.jpg";s:5:"width";i:720;s:6:"height";i:338;s:9:"mime-type";s:10:"image/jpeg";}s:22:"gomedia-featured-small";a:4:{s:4:"file";s:19:"img_8399-145x90.jpg";s:5:"width";i:145;s:6:"height";i:90;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:3:"4.5";s:6:"credit";s:0:"";s:6:"camera";s:26:"Canon EOS DIGITAL REBEL XT";s:7:"caption";s:0:"";s:17:"created_timestamp";s:10:"1192368714";s:9:"copyright";s:0:"";s:12:"focal_length";s:2:"75";s:3:"iso";s:3:"100";s:13:"shutter_speed";s:5:"0.004";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(75, 771, '_wp_attachment_image_alt', 'Boat Barco Texture'),
(76, 807, '_wp_attached_file', '2012/06/dsc20040724_152504_532.jpg'),
(77, 807, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:640;s:6:"height";i:480;s:4:"file";s:34:"2012/06/dsc20040724_152504_532.jpg";s:5:"sizes";a:8:{s:9:"thumbnail";a:4:{s:4:"file";s:34:"dsc20040724_152504_532-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:34:"dsc20040724_152504_532-300x225.jpg";s:5:"width";i:300;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";}s:18:"gomedia-post-thumb";a:4:{s:4:"file";s:34:"dsc20040724_152504_532-210x158.jpg";s:5:"width";i:210;s:6:"height";i:158;s:9:"mime-type";s:10:"image/jpeg";}s:22:"gomedia-carousel-thumb";a:4:{s:4:"file";s:34:"dsc20040724_152504_532-285x195.jpg";s:5:"width";i:285;s:6:"height";i:195;s:9:"mime-type";s:10:"image/jpeg";}s:21:"gomedia-related-thumb";a:4:{s:4:"file";s:34:"dsc20040724_152504_532-176x133.jpg";s:5:"width";i:176;s:6:"height";i:133;s:9:"mime-type";s:10:"image/jpeg";}s:20:"gomedia-widget-thumb";a:4:{s:4:"file";s:32:"dsc20040724_152504_532-60x60.jpg";s:5:"width";i:60;s:6:"height";i:60;s:9:"mime-type";s:10:"image/jpeg";}s:16:"gomedia-featured";a:4:{s:4:"file";s:34:"dsc20040724_152504_532-640x338.jpg";s:5:"width";i:640;s:6:"height";i:338;s:9:"mime-type";s:10:"image/jpeg";}s:22:"gomedia-featured-small";a:4:{s:4:"file";s:33:"dsc20040724_152504_532-145x90.jpg";s:5:"width";i:145;s:6:"height";i:90;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"2";s:6:"credit";s:0:"";s:6:"camera";s:9:"CYBERSHOT";s:7:"caption";s:0:"";s:17:"created_timestamp";s:10:"1090682704";s:9:"copyright";s:0:"";s:12:"focal_length";s:3:"9.7";s:3:"iso";s:3:"100";s:13:"shutter_speed";s:4:"0.02";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(78, 811, '_wp_attached_file', '2012/06/dsc20050604_133440_34211.jpg');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(79, 811, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:640;s:6:"height";i:480;s:4:"file";s:36:"2012/06/dsc20050604_133440_34211.jpg";s:5:"sizes";a:8:{s:9:"thumbnail";a:4:{s:4:"file";s:36:"dsc20050604_133440_34211-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:36:"dsc20050604_133440_34211-300x225.jpg";s:5:"width";i:300;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";}s:18:"gomedia-post-thumb";a:4:{s:4:"file";s:36:"dsc20050604_133440_34211-210x158.jpg";s:5:"width";i:210;s:6:"height";i:158;s:9:"mime-type";s:10:"image/jpeg";}s:22:"gomedia-carousel-thumb";a:4:{s:4:"file";s:36:"dsc20050604_133440_34211-285x195.jpg";s:5:"width";i:285;s:6:"height";i:195;s:9:"mime-type";s:10:"image/jpeg";}s:21:"gomedia-related-thumb";a:4:{s:4:"file";s:36:"dsc20050604_133440_34211-176x133.jpg";s:5:"width";i:176;s:6:"height";i:133;s:9:"mime-type";s:10:"image/jpeg";}s:20:"gomedia-widget-thumb";a:4:{s:4:"file";s:34:"dsc20050604_133440_34211-60x60.jpg";s:5:"width";i:60;s:6:"height";i:60;s:9:"mime-type";s:10:"image/jpeg";}s:16:"gomedia-featured";a:4:{s:4:"file";s:36:"dsc20050604_133440_34211-640x338.jpg";s:5:"width";i:640;s:6:"height";i:338;s:9:"mime-type";s:10:"image/jpeg";}s:22:"gomedia-featured-small";a:4:{s:4:"file";s:35:"dsc20050604_133440_34211-145x90.jpg";s:5:"width";i:145;s:6:"height";i:90;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"2";s:6:"credit";s:0:"";s:6:"camera";s:9:"CYBERSHOT";s:7:"caption";s:0:"";s:17:"created_timestamp";s:10:"1117892080";s:9:"copyright";s:0:"";s:12:"focal_length";s:3:"9.7";s:3:"iso";s:3:"100";s:13:"shutter_speed";s:6:"0.0125";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(80, 827, '_wp_attached_file', '2012/07/manhattansummer.jpg'),
(81, 827, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:640;s:6:"height";i:480;s:4:"file";s:27:"2012/07/manhattansummer.jpg";s:5:"sizes";a:8:{s:9:"thumbnail";a:4:{s:4:"file";s:27:"manhattansummer-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:27:"manhattansummer-300x225.jpg";s:5:"width";i:300;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";}s:18:"gomedia-post-thumb";a:4:{s:4:"file";s:27:"manhattansummer-210x158.jpg";s:5:"width";i:210;s:6:"height";i:158;s:9:"mime-type";s:10:"image/jpeg";}s:22:"gomedia-carousel-thumb";a:4:{s:4:"file";s:27:"manhattansummer-285x195.jpg";s:5:"width";i:285;s:6:"height";i:195;s:9:"mime-type";s:10:"image/jpeg";}s:21:"gomedia-related-thumb";a:4:{s:4:"file";s:27:"manhattansummer-176x133.jpg";s:5:"width";i:176;s:6:"height";i:133;s:9:"mime-type";s:10:"image/jpeg";}s:20:"gomedia-widget-thumb";a:4:{s:4:"file";s:25:"manhattansummer-60x60.jpg";s:5:"width";i:60;s:6:"height";i:60;s:9:"mime-type";s:10:"image/jpeg";}s:16:"gomedia-featured";a:4:{s:4:"file";s:27:"manhattansummer-640x338.jpg";s:5:"width";i:640;s:6:"height";i:338;s:9:"mime-type";s:10:"image/jpeg";}s:22:"gomedia-featured-small";a:4:{s:4:"file";s:26:"manhattansummer-145x90.jpg";s:5:"width";i:145;s:6:"height";i:90;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:3:"2.8";s:6:"credit";s:0:"";s:6:"camera";s:11:"C990Z,D490Z";s:7:"caption";s:22:"OLYMPUS DIGITAL CAMERA";s:17:"created_timestamp";s:10:"1089358496";s:9:"copyright";s:0:"";s:12:"focal_length";s:3:"5.6";s:3:"iso";s:3:"200";s:13:"shutter_speed";s:17:"0.076923076923077";s:5:"title";s:22:"OLYMPUS DIGITAL CAMERA";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(82, 842, '_wp_attached_file', '2013/03/soworthloving-wallpaper.jpg'),
(83, 842, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1920;s:6:"height";i:1200;s:4:"file";s:35:"2013/03/soworthloving-wallpaper.jpg";s:5:"sizes";a:10:{s:9:"thumbnail";a:4:{s:4:"file";s:35:"soworthloving-wallpaper-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:35:"soworthloving-wallpaper-300x188.jpg";s:5:"width";i:300;s:6:"height";i:188;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:35:"soworthloving-wallpaper-768x480.jpg";s:5:"width";i:768;s:6:"height";i:480;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:36:"soworthloving-wallpaper-1024x640.jpg";s:5:"width";i:1024;s:6:"height";i:640;s:9:"mime-type";s:10:"image/jpeg";}s:18:"gomedia-post-thumb";a:4:{s:4:"file";s:35:"soworthloving-wallpaper-210x158.jpg";s:5:"width";i:210;s:6:"height";i:158;s:9:"mime-type";s:10:"image/jpeg";}s:22:"gomedia-carousel-thumb";a:4:{s:4:"file";s:35:"soworthloving-wallpaper-285x195.jpg";s:5:"width";i:285;s:6:"height";i:195;s:9:"mime-type";s:10:"image/jpeg";}s:21:"gomedia-related-thumb";a:4:{s:4:"file";s:35:"soworthloving-wallpaper-176x133.jpg";s:5:"width";i:176;s:6:"height";i:133;s:9:"mime-type";s:10:"image/jpeg";}s:20:"gomedia-widget-thumb";a:4:{s:4:"file";s:33:"soworthloving-wallpaper-60x60.jpg";s:5:"width";i:60;s:6:"height";i:60;s:9:"mime-type";s:10:"image/jpeg";}s:16:"gomedia-featured";a:4:{s:4:"file";s:35:"soworthloving-wallpaper-720x338.jpg";s:5:"width";i:720;s:6:"height";i:338;s:9:"mime-type";s:10:"image/jpeg";}s:22:"gomedia-featured-small";a:4:{s:4:"file";s:34:"soworthloving-wallpaper-145x90.jpg";s:5:"width";i:145;s:6:"height";i:90;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(84, 842, '_wp_attachment_image_alt', 'I Am Worth Loving Wallpaper'),
(85, 842, '_edit_last', '1'),
(86, 904, '_wp_attached_file', '2013/03/image-alignment-150x150.jpg'),
(87, 904, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:150;s:6:"height";i:150;s:4:"file";s:35:"2013/03/image-alignment-150x150.jpg";s:5:"sizes";a:3:{s:21:"gomedia-related-thumb";a:4:{s:4:"file";s:35:"image-alignment-150x150-150x133.jpg";s:5:"width";i:150;s:6:"height";i:133;s:9:"mime-type";s:10:"image/jpeg";}s:20:"gomedia-widget-thumb";a:4:{s:4:"file";s:33:"image-alignment-150x150-60x60.jpg";s:5:"width";i:60;s:6:"height";i:60;s:9:"mime-type";s:10:"image/jpeg";}s:22:"gomedia-featured-small";a:4:{s:4:"file";s:34:"image-alignment-150x150-145x90.jpg";s:5:"width";i:145;s:6:"height";i:90;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(88, 904, '_wp_attachment_image_alt', 'Image Alignment 150x150'),
(89, 905, '_wp_attached_file', '2013/03/image-alignment-300x200.jpg'),
(90, 905, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:300;s:6:"height";i:200;s:4:"file";s:35:"2013/03/image-alignment-300x200.jpg";s:5:"sizes";a:7:{s:9:"thumbnail";a:4:{s:4:"file";s:35:"image-alignment-300x200-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:35:"image-alignment-300x200-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:18:"gomedia-post-thumb";a:4:{s:4:"file";s:35:"image-alignment-300x200-210x158.jpg";s:5:"width";i:210;s:6:"height";i:158;s:9:"mime-type";s:10:"image/jpeg";}s:22:"gomedia-carousel-thumb";a:4:{s:4:"file";s:35:"image-alignment-300x200-285x195.jpg";s:5:"width";i:285;s:6:"height";i:195;s:9:"mime-type";s:10:"image/jpeg";}s:21:"gomedia-related-thumb";a:4:{s:4:"file";s:35:"image-alignment-300x200-176x133.jpg";s:5:"width";i:176;s:6:"height";i:133;s:9:"mime-type";s:10:"image/jpeg";}s:20:"gomedia-widget-thumb";a:4:{s:4:"file";s:33:"image-alignment-300x200-60x60.jpg";s:5:"width";i:60;s:6:"height";i:60;s:9:"mime-type";s:10:"image/jpeg";}s:22:"gomedia-featured-small";a:4:{s:4:"file";s:34:"image-alignment-300x200-145x90.jpg";s:5:"width";i:145;s:6:"height";i:90;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(91, 905, '_wp_attachment_image_alt', 'Image Alignment 300x200'),
(92, 906, '_wp_attached_file', '2013/03/image-alignment-580x300.jpg'),
(93, 906, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:580;s:6:"height";i:300;s:4:"file";s:35:"2013/03/image-alignment-580x300.jpg";s:5:"sizes";a:7:{s:9:"thumbnail";a:4:{s:4:"file";s:35:"image-alignment-580x300-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:35:"image-alignment-580x300-300x155.jpg";s:5:"width";i:300;s:6:"height";i:155;s:9:"mime-type";s:10:"image/jpeg";}s:18:"gomedia-post-thumb";a:4:{s:4:"file";s:35:"image-alignment-580x300-210x158.jpg";s:5:"width";i:210;s:6:"height";i:158;s:9:"mime-type";s:10:"image/jpeg";}s:22:"gomedia-carousel-thumb";a:4:{s:4:"file";s:35:"image-alignment-580x300-285x195.jpg";s:5:"width";i:285;s:6:"height";i:195;s:9:"mime-type";s:10:"image/jpeg";}s:21:"gomedia-related-thumb";a:4:{s:4:"file";s:35:"image-alignment-580x300-176x133.jpg";s:5:"width";i:176;s:6:"height";i:133;s:9:"mime-type";s:10:"image/jpeg";}s:20:"gomedia-widget-thumb";a:4:{s:4:"file";s:33:"image-alignment-580x300-60x60.jpg";s:5:"width";i:60;s:6:"height";i:60;s:9:"mime-type";s:10:"image/jpeg";}s:22:"gomedia-featured-small";a:4:{s:4:"file";s:34:"image-alignment-580x300-145x90.jpg";s:5:"width";i:145;s:6:"height";i:90;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(94, 906, '_wp_attachment_image_alt', 'Image Alignment 580x300'),
(95, 907, '_wp_attached_file', '2013/03/image-alignment-1200x4002.jpg'),
(96, 907, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1200;s:6:"height";i:400;s:4:"file";s:37:"2013/03/image-alignment-1200x4002.jpg";s:5:"sizes";a:10:{s:9:"thumbnail";a:4:{s:4:"file";s:37:"image-alignment-1200x4002-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:37:"image-alignment-1200x4002-300x100.jpg";s:5:"width";i:300;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:37:"image-alignment-1200x4002-768x256.jpg";s:5:"width";i:768;s:6:"height";i:256;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:38:"image-alignment-1200x4002-1024x341.jpg";s:5:"width";i:1024;s:6:"height";i:341;s:9:"mime-type";s:10:"image/jpeg";}s:18:"gomedia-post-thumb";a:4:{s:4:"file";s:37:"image-alignment-1200x4002-210x158.jpg";s:5:"width";i:210;s:6:"height";i:158;s:9:"mime-type";s:10:"image/jpeg";}s:22:"gomedia-carousel-thumb";a:4:{s:4:"file";s:37:"image-alignment-1200x4002-285x195.jpg";s:5:"width";i:285;s:6:"height";i:195;s:9:"mime-type";s:10:"image/jpeg";}s:21:"gomedia-related-thumb";a:4:{s:4:"file";s:37:"image-alignment-1200x4002-176x133.jpg";s:5:"width";i:176;s:6:"height";i:133;s:9:"mime-type";s:10:"image/jpeg";}s:20:"gomedia-widget-thumb";a:4:{s:4:"file";s:35:"image-alignment-1200x4002-60x60.jpg";s:5:"width";i:60;s:6:"height";i:60;s:9:"mime-type";s:10:"image/jpeg";}s:16:"gomedia-featured";a:4:{s:4:"file";s:37:"image-alignment-1200x4002-720x338.jpg";s:5:"width";i:720;s:6:"height";i:338;s:9:"mime-type";s:10:"image/jpeg";}s:22:"gomedia-featured-small";a:4:{s:4:"file";s:36:"image-alignment-1200x4002-145x90.jpg";s:5:"width";i:145;s:6:"height";i:90;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(97, 907, '_wp_attachment_image_alt', 'Image Alignment 1200x4002'),
(98, 963, '_wp_attached_file', '2012/12/triforce-wallpaper.jpg'),
(99, 963, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1131;s:6:"height";i:707;s:4:"file";s:30:"2012/12/triforce-wallpaper.jpg";s:5:"sizes";a:10:{s:9:"thumbnail";a:4:{s:4:"file";s:30:"triforce-wallpaper-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:30:"triforce-wallpaper-300x188.jpg";s:5:"width";i:300;s:6:"height";i:188;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:30:"triforce-wallpaper-768x480.jpg";s:5:"width";i:768;s:6:"height";i:480;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:31:"triforce-wallpaper-1024x640.jpg";s:5:"width";i:1024;s:6:"height";i:640;s:9:"mime-type";s:10:"image/jpeg";}s:18:"gomedia-post-thumb";a:4:{s:4:"file";s:30:"triforce-wallpaper-210x158.jpg";s:5:"width";i:210;s:6:"height";i:158;s:9:"mime-type";s:10:"image/jpeg";}s:22:"gomedia-carousel-thumb";a:4:{s:4:"file";s:30:"triforce-wallpaper-285x195.jpg";s:5:"width";i:285;s:6:"height";i:195;s:9:"mime-type";s:10:"image/jpeg";}s:21:"gomedia-related-thumb";a:4:{s:4:"file";s:30:"triforce-wallpaper-176x133.jpg";s:5:"width";i:176;s:6:"height";i:133;s:9:"mime-type";s:10:"image/jpeg";}s:20:"gomedia-widget-thumb";a:4:{s:4:"file";s:28:"triforce-wallpaper-60x60.jpg";s:5:"width";i:60;s:6:"height";i:60;s:9:"mime-type";s:10:"image/jpeg";}s:16:"gomedia-featured";a:4:{s:4:"file";s:30:"triforce-wallpaper-720x338.jpg";s:5:"width";i:720;s:6:"height";i:338;s:9:"mime-type";s:10:"image/jpeg";}s:22:"gomedia-featured-small";a:4:{s:4:"file";s:29:"triforce-wallpaper-145x90.jpg";s:5:"width";i:145;s:6:"height";i:90;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(100, 963, '_wp_attachment_image_alt', 'Triforce Wallpaper'),
(101, 967, '_wp_attached_file', '2012/12/unicorn-wallpaper.jpg'),
(102, 967, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1600;s:6:"height";i:1200;s:4:"file";s:29:"2012/12/unicorn-wallpaper.jpg";s:5:"sizes";a:10:{s:9:"thumbnail";a:4:{s:4:"file";s:29:"unicorn-wallpaper-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:29:"unicorn-wallpaper-300x225.jpg";s:5:"width";i:300;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:29:"unicorn-wallpaper-768x576.jpg";s:5:"width";i:768;s:6:"height";i:576;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:30:"unicorn-wallpaper-1024x768.jpg";s:5:"width";i:1024;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:18:"gomedia-post-thumb";a:4:{s:4:"file";s:29:"unicorn-wallpaper-210x158.jpg";s:5:"width";i:210;s:6:"height";i:158;s:9:"mime-type";s:10:"image/jpeg";}s:22:"gomedia-carousel-thumb";a:4:{s:4:"file";s:29:"unicorn-wallpaper-285x195.jpg";s:5:"width";i:285;s:6:"height";i:195;s:9:"mime-type";s:10:"image/jpeg";}s:21:"gomedia-related-thumb";a:4:{s:4:"file";s:29:"unicorn-wallpaper-176x133.jpg";s:5:"width";i:176;s:6:"height";i:133;s:9:"mime-type";s:10:"image/jpeg";}s:20:"gomedia-widget-thumb";a:4:{s:4:"file";s:27:"unicorn-wallpaper-60x60.jpg";s:5:"width";i:60;s:6:"height";i:60;s:9:"mime-type";s:10:"image/jpeg";}s:16:"gomedia-featured";a:4:{s:4:"file";s:29:"unicorn-wallpaper-720x338.jpg";s:5:"width";i:720;s:6:"height";i:338;s:9:"mime-type";s:10:"image/jpeg";}s:22:"gomedia-featured-small";a:4:{s:4:"file";s:28:"unicorn-wallpaper-145x90.jpg";s:5:"width";i:145;s:6:"height";i:90;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(103, 967, '_wp_attachment_image_alt', 'Unicorn Wallpaper'),
(104, 976, '_wp_attached_file', '2013/03/Eddy-Need-Remix.mp3'),
(105, 977, '_wp_attached_file', '2016/02/Eddy-Need-Remix-mp3-image.jpg'),
(106, 977, '_cover_hash', 'c64cd26a9d9500018888b373146cac8d'),
(107, 977, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:555;s:6:"height";i:550;s:4:"file";s:37:"2016/02/Eddy-Need-Remix-mp3-image.jpg";s:5:"sizes";a:8:{s:9:"thumbnail";a:4:{s:4:"file";s:37:"Eddy-Need-Remix-mp3-image-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:37:"Eddy-Need-Remix-mp3-image-300x297.jpg";s:5:"width";i:300;s:6:"height";i:297;s:9:"mime-type";s:10:"image/jpeg";}s:18:"gomedia-post-thumb";a:4:{s:4:"file";s:37:"Eddy-Need-Remix-mp3-image-210x158.jpg";s:5:"width";i:210;s:6:"height";i:158;s:9:"mime-type";s:10:"image/jpeg";}s:22:"gomedia-carousel-thumb";a:4:{s:4:"file";s:37:"Eddy-Need-Remix-mp3-image-285x195.jpg";s:5:"width";i:285;s:6:"height";i:195;s:9:"mime-type";s:10:"image/jpeg";}s:21:"gomedia-related-thumb";a:4:{s:4:"file";s:37:"Eddy-Need-Remix-mp3-image-176x133.jpg";s:5:"width";i:176;s:6:"height";i:133;s:9:"mime-type";s:10:"image/jpeg";}s:20:"gomedia-widget-thumb";a:4:{s:4:"file";s:35:"Eddy-Need-Remix-mp3-image-60x60.jpg";s:5:"width";i:60;s:6:"height";i:60;s:9:"mime-type";s:10:"image/jpeg";}s:16:"gomedia-featured";a:4:{s:4:"file";s:37:"Eddy-Need-Remix-mp3-image-555x338.jpg";s:5:"width";i:555;s:6:"height";i:338;s:9:"mime-type";s:10:"image/jpeg";}s:22:"gomedia-featured-small";a:4:{s:4:"file";s:36:"Eddy-Need-Remix-mp3-image-145x90.jpg";s:5:"width";i:145;s:6:"height";i:90;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(108, 976, '_thumbnail_id', '977'),
(109, 976, '_wp_attachment_metadata', 'a:23:{s:10:"dataformat";s:3:"mp3";s:8:"channels";i:2;s:11:"sample_rate";i:44100;s:7:"bitrate";i:320000;s:11:"channelmode";s:12:"joint stereo";s:12:"bitrate_mode";s:3:"cbr";s:8:"lossless";b:0;s:15:"encoder_options";s:6:"CBR320";s:17:"compression_ratio";d:0.226757369614512482858259545537293888628482818603515625;s:10:"fileformat";s:3:"mp3";s:8:"filesize";i:11039151;s:9:"mime_type";s:10:"audio/mpeg";s:6:"length";i:274;s:16:"length_formatted";s:4:"4:34";s:16:"encoder_settings";s:15:"Logic Pro 9.0.2";s:7:"comment";s:91:" 0000163A 000016B9 00012140 000124C0 0002E434 000028D0 00009437 00009503 00022F49 00022F49\0";s:5:"title";s:13:"NEED (remix) ";s:6:"artist";s:4:"Eddy";s:4:"band";s:31:"Eddy, Trey Roth, Jared Erickson";s:5:"album";s:5:"Remix";s:4:"year";s:4:"2011";s:5:"genre";s:5:"Dance";s:5:"image";a:1:{s:4:"mime";s:10:"image/jpeg";}}'),
(110, 1022, '_wp_attached_file', '2013/03/featured-image-horizontal.jpg'),
(111, 1022, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:580;s:6:"height";i:300;s:4:"file";s:37:"2013/03/featured-image-horizontal.jpg";s:5:"sizes";a:7:{s:9:"thumbnail";a:4:{s:4:"file";s:37:"featured-image-horizontal-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:37:"featured-image-horizontal-300x155.jpg";s:5:"width";i:300;s:6:"height";i:155;s:9:"mime-type";s:10:"image/jpeg";}s:18:"gomedia-post-thumb";a:4:{s:4:"file";s:37:"featured-image-horizontal-210x158.jpg";s:5:"width";i:210;s:6:"height";i:158;s:9:"mime-type";s:10:"image/jpeg";}s:22:"gomedia-carousel-thumb";a:4:{s:4:"file";s:37:"featured-image-horizontal-285x195.jpg";s:5:"width";i:285;s:6:"height";i:195;s:9:"mime-type";s:10:"image/jpeg";}s:21:"gomedia-related-thumb";a:4:{s:4:"file";s:37:"featured-image-horizontal-176x133.jpg";s:5:"width";i:176;s:6:"height";i:133;s:9:"mime-type";s:10:"image/jpeg";}s:20:"gomedia-widget-thumb";a:4:{s:4:"file";s:35:"featured-image-horizontal-60x60.jpg";s:5:"width";i:60;s:6:"height";i:60;s:9:"mime-type";s:10:"image/jpeg";}s:22:"gomedia-featured-small";a:4:{s:4:"file";s:36:"featured-image-horizontal-145x90.jpg";s:5:"width";i:145;s:6:"height";i:90;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(112, 1022, '_wp_attachment_image_alt', 'Horizontal Featured Image'),
(113, 1024, '_wp_attached_file', '2013/03/featured-image-vertical.jpg'),
(114, 1024, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:300;s:6:"height";i:580;s:4:"file";s:35:"2013/03/featured-image-vertical.jpg";s:5:"sizes";a:8:{s:9:"thumbnail";a:4:{s:4:"file";s:35:"featured-image-vertical-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:35:"featured-image-vertical-155x300.jpg";s:5:"width";i:155;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:18:"gomedia-post-thumb";a:4:{s:4:"file";s:35:"featured-image-vertical-210x158.jpg";s:5:"width";i:210;s:6:"height";i:158;s:9:"mime-type";s:10:"image/jpeg";}s:22:"gomedia-carousel-thumb";a:4:{s:4:"file";s:35:"featured-image-vertical-285x195.jpg";s:5:"width";i:285;s:6:"height";i:195;s:9:"mime-type";s:10:"image/jpeg";}s:21:"gomedia-related-thumb";a:4:{s:4:"file";s:35:"featured-image-vertical-176x133.jpg";s:5:"width";i:176;s:6:"height";i:133;s:9:"mime-type";s:10:"image/jpeg";}s:20:"gomedia-widget-thumb";a:4:{s:4:"file";s:33:"featured-image-vertical-60x60.jpg";s:5:"width";i:60;s:6:"height";i:60;s:9:"mime-type";s:10:"image/jpeg";}s:16:"gomedia-featured";a:4:{s:4:"file";s:35:"featured-image-vertical-300x338.jpg";s:5:"width";i:300;s:6:"height";i:338;s:9:"mime-type";s:10:"image/jpeg";}s:22:"gomedia-featured-small";a:4:{s:4:"file";s:34:"featured-image-vertical-145x90.jpg";s:5:"width";i:145;s:6:"height";i:90;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(115, 1024, '_wp_attachment_image_alt', 'Vertical Featured Image'),
(116, 1038, '_wp_attached_file', '2013/03/fight-club.jpg'),
(117, 1038, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1200;s:6:"height";i:1766;s:4:"file";s:22:"2013/03/fight-club.jpg";s:5:"sizes";a:10:{s:9:"thumbnail";a:4:{s:4:"file";s:22:"fight-club-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:22:"fight-club-204x300.jpg";s:5:"width";i:204;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:23:"fight-club-768x1130.jpg";s:5:"width";i:768;s:6:"height";i:1130;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:23:"fight-club-696x1024.jpg";s:5:"width";i:696;s:6:"height";i:1024;s:9:"mime-type";s:10:"image/jpeg";}s:18:"gomedia-post-thumb";a:4:{s:4:"file";s:22:"fight-club-210x158.jpg";s:5:"width";i:210;s:6:"height";i:158;s:9:"mime-type";s:10:"image/jpeg";}s:22:"gomedia-carousel-thumb";a:4:{s:4:"file";s:22:"fight-club-285x195.jpg";s:5:"width";i:285;s:6:"height";i:195;s:9:"mime-type";s:10:"image/jpeg";}s:21:"gomedia-related-thumb";a:4:{s:4:"file";s:22:"fight-club-176x133.jpg";s:5:"width";i:176;s:6:"height";i:133;s:9:"mime-type";s:10:"image/jpeg";}s:20:"gomedia-widget-thumb";a:4:{s:4:"file";s:20:"fight-club-60x60.jpg";s:5:"width";i:60;s:6:"height";i:60;s:9:"mime-type";s:10:"image/jpeg";}s:16:"gomedia-featured";a:4:{s:4:"file";s:22:"fight-club-720x338.jpg";s:5:"width";i:720;s:6:"height";i:338;s:9:"mime-type";s:10:"image/jpeg";}s:22:"gomedia-featured-small";a:4:{s:4:"file";s:21:"fight-club-145x90.jpg";s:5:"width";i:145;s:6:"height";i:90;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(118, 1038, '_wp_attachment_image_alt', 'Fight Club'),
(119, 1039, '_wp_attached_file', '2013/03/ironman-2.jpg'),
(120, 1039, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:800;s:6:"height";i:1180;s:4:"file";s:21:"2013/03/ironman-2.jpg";s:5:"sizes";a:10:{s:9:"thumbnail";a:4:{s:4:"file";s:21:"ironman-2-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:21:"ironman-2-203x300.jpg";s:5:"width";i:203;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:22:"ironman-2-768x1133.jpg";s:5:"width";i:768;s:6:"height";i:1133;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:22:"ironman-2-694x1024.jpg";s:5:"width";i:694;s:6:"height";i:1024;s:9:"mime-type";s:10:"image/jpeg";}s:18:"gomedia-post-thumb";a:4:{s:4:"file";s:21:"ironman-2-210x158.jpg";s:5:"width";i:210;s:6:"height";i:158;s:9:"mime-type";s:10:"image/jpeg";}s:22:"gomedia-carousel-thumb";a:4:{s:4:"file";s:21:"ironman-2-285x195.jpg";s:5:"width";i:285;s:6:"height";i:195;s:9:"mime-type";s:10:"image/jpeg";}s:21:"gomedia-related-thumb";a:4:{s:4:"file";s:21:"ironman-2-176x133.jpg";s:5:"width";i:176;s:6:"height";i:133;s:9:"mime-type";s:10:"image/jpeg";}s:20:"gomedia-widget-thumb";a:4:{s:4:"file";s:19:"ironman-2-60x60.jpg";s:5:"width";i:60;s:6:"height";i:60;s:9:"mime-type";s:10:"image/jpeg";}s:16:"gomedia-featured";a:4:{s:4:"file";s:21:"ironman-2-720x338.jpg";s:5:"width";i:720;s:6:"height";i:338;s:9:"mime-type";s:10:"image/jpeg";}s:22:"gomedia-featured-small";a:4:{s:4:"file";s:20:"ironman-2-145x90.jpg";s:5:"width";i:145;s:6:"height";i:90;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(121, 1039, '_wp_attachment_image_alt', 'Iron Man 2'),
(122, 1040, '_wp_attached_file', '2013/03/man-of-steel.jpg'),
(123, 1040, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:940;s:6:"height";i:1394;s:4:"file";s:24:"2013/03/man-of-steel.jpg";s:5:"sizes";a:10:{s:9:"thumbnail";a:4:{s:4:"file";s:24:"man-of-steel-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:24:"man-of-steel-202x300.jpg";s:5:"width";i:202;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:25:"man-of-steel-768x1139.jpg";s:5:"width";i:768;s:6:"height";i:1139;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:25:"man-of-steel-691x1024.jpg";s:5:"width";i:691;s:6:"height";i:1024;s:9:"mime-type";s:10:"image/jpeg";}s:18:"gomedia-post-thumb";a:4:{s:4:"file";s:24:"man-of-steel-210x158.jpg";s:5:"width";i:210;s:6:"height";i:158;s:9:"mime-type";s:10:"image/jpeg";}s:22:"gomedia-carousel-thumb";a:4:{s:4:"file";s:24:"man-of-steel-285x195.jpg";s:5:"width";i:285;s:6:"height";i:195;s:9:"mime-type";s:10:"image/jpeg";}s:21:"gomedia-related-thumb";a:4:{s:4:"file";s:24:"man-of-steel-176x133.jpg";s:5:"width";i:176;s:6:"height";i:133;s:9:"mime-type";s:10:"image/jpeg";}s:20:"gomedia-widget-thumb";a:4:{s:4:"file";s:22:"man-of-steel-60x60.jpg";s:5:"width";i:60;s:6:"height";i:60;s:9:"mime-type";s:10:"image/jpeg";}s:16:"gomedia-featured";a:4:{s:4:"file";s:24:"man-of-steel-720x338.jpg";s:5:"width";i:720;s:6:"height";i:338;s:9:"mime-type";s:10:"image/jpeg";}s:22:"gomedia-featured-small";a:4:{s:4:"file";s:23:"man-of-steel-145x90.jpg";s:5:"width";i:145;s:6:"height";i:90;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(124, 1040, '_wp_attachment_image_alt', 'Man Of Steel'),
(125, 1041, '_wp_attached_file', '2013/03/spider-man.jpg'),
(126, 1041, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1012;s:6:"height";i:1500;s:4:"file";s:22:"2013/03/spider-man.jpg";s:5:"sizes";a:10:{s:9:"thumbnail";a:4:{s:4:"file";s:22:"spider-man-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:22:"spider-man-202x300.jpg";s:5:"width";i:202;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:23:"spider-man-768x1138.jpg";s:5:"width";i:768;s:6:"height";i:1138;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:23:"spider-man-691x1024.jpg";s:5:"width";i:691;s:6:"height";i:1024;s:9:"mime-type";s:10:"image/jpeg";}s:18:"gomedia-post-thumb";a:4:{s:4:"file";s:22:"spider-man-210x158.jpg";s:5:"width";i:210;s:6:"height";i:158;s:9:"mime-type";s:10:"image/jpeg";}s:22:"gomedia-carousel-thumb";a:4:{s:4:"file";s:22:"spider-man-285x195.jpg";s:5:"width";i:285;s:6:"height";i:195;s:9:"mime-type";s:10:"image/jpeg";}s:21:"gomedia-related-thumb";a:4:{s:4:"file";s:22:"spider-man-176x133.jpg";s:5:"width";i:176;s:6:"height";i:133;s:9:"mime-type";s:10:"image/jpeg";}s:20:"gomedia-widget-thumb";a:4:{s:4:"file";s:20:"spider-man-60x60.jpg";s:5:"width";i:60;s:6:"height";i:60;s:9:"mime-type";s:10:"image/jpeg";}s:16:"gomedia-featured";a:4:{s:4:"file";s:22:"spider-man-720x338.jpg";s:5:"width";i:720;s:6:"height";i:338;s:9:"mime-type";s:10:"image/jpeg";}s:22:"gomedia-featured-small";a:4:{s:4:"file";s:21:"spider-man-145x90.jpg";s:5:"width";i:145;s:6:"height";i:90;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(127, 1041, '_wp_attachment_image_alt', 'The Amazing Spider Man'),
(128, 1042, '_wp_attached_file', '2013/03/the-dark-knight-rises.jpg'),
(129, 1042, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:620;s:6:"height";i:935;s:4:"file";s:33:"2013/03/the-dark-knight-rises.jpg";s:5:"sizes";a:8:{s:9:"thumbnail";a:4:{s:4:"file";s:33:"the-dark-knight-rises-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:33:"the-dark-knight-rises-199x300.jpg";s:5:"width";i:199;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:18:"gomedia-post-thumb";a:4:{s:4:"file";s:33:"the-dark-knight-rises-210x158.jpg";s:5:"width";i:210;s:6:"height";i:158;s:9:"mime-type";s:10:"image/jpeg";}s:22:"gomedia-carousel-thumb";a:4:{s:4:"file";s:33:"the-dark-knight-rises-285x195.jpg";s:5:"width";i:285;s:6:"height";i:195;s:9:"mime-type";s:10:"image/jpeg";}s:21:"gomedia-related-thumb";a:4:{s:4:"file";s:33:"the-dark-knight-rises-176x133.jpg";s:5:"width";i:176;s:6:"height";i:133;s:9:"mime-type";s:10:"image/jpeg";}s:20:"gomedia-widget-thumb";a:4:{s:4:"file";s:31:"the-dark-knight-rises-60x60.jpg";s:5:"width";i:60;s:6:"height";i:60;s:9:"mime-type";s:10:"image/jpeg";}s:16:"gomedia-featured";a:4:{s:4:"file";s:33:"the-dark-knight-rises-620x338.jpg";s:5:"width";i:620;s:6:"height";i:338;s:9:"mime-type";s:10:"image/jpeg";}s:22:"gomedia-featured-small";a:4:{s:4:"file";s:32:"the-dark-knight-rises-145x90.jpg";s:5:"width";i:145;s:6:"height";i:90;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(130, 1042, '_wp_attachment_image_alt', 'The Dark Knight Rises'),
(131, 1071, '_wp_attached_file', '2013/03/static-pages.png'),
(132, 1071, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1390;s:6:"height";i:1022;s:4:"file";s:24:"2013/03/static-pages.png";s:5:"sizes";a:10:{s:9:"thumbnail";a:4:{s:4:"file";s:24:"static-pages-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:24:"static-pages-300x221.png";s:5:"width";i:300;s:6:"height";i:221;s:9:"mime-type";s:9:"image/png";}s:12:"medium_large";a:4:{s:4:"file";s:24:"static-pages-768x565.png";s:5:"width";i:768;s:6:"height";i:565;s:9:"mime-type";s:9:"image/png";}s:5:"large";a:4:{s:4:"file";s:25:"static-pages-1024x753.png";s:5:"width";i:1024;s:6:"height";i:753;s:9:"mime-type";s:9:"image/png";}s:18:"gomedia-post-thumb";a:4:{s:4:"file";s:24:"static-pages-210x158.png";s:5:"width";i:210;s:6:"height";i:158;s:9:"mime-type";s:9:"image/png";}s:22:"gomedia-carousel-thumb";a:4:{s:4:"file";s:24:"static-pages-285x195.png";s:5:"width";i:285;s:6:"height";i:195;s:9:"mime-type";s:9:"image/png";}s:21:"gomedia-related-thumb";a:4:{s:4:"file";s:24:"static-pages-176x133.png";s:5:"width";i:176;s:6:"height";i:133;s:9:"mime-type";s:9:"image/png";}s:20:"gomedia-widget-thumb";a:4:{s:4:"file";s:22:"static-pages-60x60.png";s:5:"width";i:60;s:6:"height";i:60;s:9:"mime-type";s:9:"image/png";}s:16:"gomedia-featured";a:4:{s:4:"file";s:24:"static-pages-720x338.png";s:5:"width";i:720;s:6:"height";i:338;s:9:"mime-type";s:9:"image/png";}s:22:"gomedia-featured-small";a:4:{s:4:"file";s:23:"static-pages-145x90.png";s:5:"width";i:145;s:6:"height";i:90;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(133, 1071, '_wp_attachment_image_alt', 'Static Pages'),
(134, 1072, '_menu_item_type', 'custom'),
(135, 1072, '_menu_item_menu_item_parent', '0'),
(136, 1072, '_menu_item_object_id', '1072'),
(137, 1072, '_menu_item_object', 'custom'),
(138, 1072, '_menu_item_target', ''),
(139, 1072, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(140, 1072, '_menu_item_xfn', ''),
(141, 1072, '_menu_item_url', 'http://wptest.io/demo/'),
(142, 1261, '_wp_attached_file', '2013/03/captain-america.jpg'),
(143, 1261, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:900;s:6:"height";i:1363;s:4:"file";s:27:"2013/03/captain-america.jpg";s:5:"sizes";a:10:{s:9:"thumbnail";a:4:{s:4:"file";s:27:"captain-america-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:27:"captain-america-198x300.jpg";s:5:"width";i:198;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:28:"captain-america-768x1163.jpg";s:5:"width";i:768;s:6:"height";i:1163;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:28:"captain-america-676x1024.jpg";s:5:"width";i:676;s:6:"height";i:1024;s:9:"mime-type";s:10:"image/jpeg";}s:18:"gomedia-post-thumb";a:4:{s:4:"file";s:27:"captain-america-210x158.jpg";s:5:"width";i:210;s:6:"height";i:158;s:9:"mime-type";s:10:"image/jpeg";}s:22:"gomedia-carousel-thumb";a:4:{s:4:"file";s:27:"captain-america-285x195.jpg";s:5:"width";i:285;s:6:"height";i:195;s:9:"mime-type";s:10:"image/jpeg";}s:21:"gomedia-related-thumb";a:4:{s:4:"file";s:27:"captain-america-176x133.jpg";s:5:"width";i:176;s:6:"height";i:133;s:9:"mime-type";s:10:"image/jpeg";}s:20:"gomedia-widget-thumb";a:4:{s:4:"file";s:25:"captain-america-60x60.jpg";s:5:"width";i:60;s:6:"height";i:60;s:9:"mime-type";s:10:"image/jpeg";}s:16:"gomedia-featured";a:4:{s:4:"file";s:27:"captain-america-720x338.jpg";s:5:"width";i:720;s:6:"height";i:338;s:9:"mime-type";s:10:"image/jpeg";}s:22:"gomedia-featured-small";a:4:{s:4:"file";s:26:"captain-america-145x90.jpg";s:5:"width";i:145;s:6:"height";i:90;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(144, 1261, '_wp_attachment_image_alt', 'Captain America'),
(473, 1303, '_menu_item_type', 'custom'),
(474, 1303, '_menu_item_menu_item_parent', '0'),
(475, 1303, '_menu_item_object_id', '1303'),
(476, 1303, '_menu_item_object', 'custom'),
(477, 1303, '_menu_item_target', ''),
(478, 1303, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(479, 1303, '_menu_item_xfn', ''),
(480, 1303, '_menu_item_url', '#'),
(481, 1304, '_menu_item_type', 'custom'),
(482, 1304, '_menu_item_menu_item_parent', '0'),
(483, 1304, '_menu_item_object_id', '1304'),
(484, 1304, '_menu_item_object', 'custom'),
(485, 1304, '_menu_item_target', ''),
(486, 1304, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(487, 1304, '_menu_item_xfn', ''),
(488, 1304, '_menu_item_url', '#'),
(625, 1322, '_menu_item_type', 'custom'),
(626, 1322, '_menu_item_menu_item_parent', '0'),
(627, 1322, '_menu_item_object_id', '1322'),
(628, 1322, '_menu_item_object', 'custom'),
(629, 1322, '_menu_item_target', ''),
(630, 1322, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(631, 1322, '_menu_item_xfn', ''),
(632, 1322, '_menu_item_url', '#'),
(633, 1323, '_menu_item_type', 'custom'),
(634, 1323, '_menu_item_menu_item_parent', '1322'),
(635, 1323, '_menu_item_object_id', '1323'),
(636, 1323, '_menu_item_object', 'custom'),
(637, 1323, '_menu_item_target', ''),
(638, 1323, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(639, 1323, '_menu_item_xfn', ''),
(640, 1323, '_menu_item_url', '#'),
(641, 1324, '_menu_item_type', 'custom'),
(642, 1324, '_menu_item_menu_item_parent', '1323'),
(643, 1324, '_menu_item_object_id', '1324'),
(644, 1324, '_menu_item_object', 'custom'),
(645, 1324, '_menu_item_target', ''),
(646, 1324, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(647, 1324, '_menu_item_xfn', ''),
(648, 1324, '_menu_item_url', '#'),
(649, 1325, '_menu_item_type', 'custom'),
(650, 1325, '_menu_item_menu_item_parent', '1324'),
(651, 1325, '_menu_item_object_id', '1325'),
(652, 1325, '_menu_item_object', 'custom'),
(653, 1325, '_menu_item_target', ''),
(654, 1325, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(655, 1325, '_menu_item_xfn', ''),
(656, 1325, '_menu_item_url', '#'),
(657, 1326, '_menu_item_type', 'custom'),
(658, 1326, '_menu_item_menu_item_parent', '1325'),
(659, 1326, '_menu_item_object_id', '1326'),
(660, 1326, '_menu_item_object', 'custom'),
(661, 1326, '_menu_item_target', ''),
(662, 1326, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(663, 1326, '_menu_item_xfn', ''),
(664, 1326, '_menu_item_url', '#'),
(665, 1327, '_menu_item_type', 'custom'),
(666, 1327, '_menu_item_menu_item_parent', '1326'),
(667, 1327, '_menu_item_object_id', '1327'),
(668, 1327, '_menu_item_object', 'custom'),
(669, 1327, '_menu_item_target', ''),
(670, 1327, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(671, 1327, '_menu_item_xfn', ''),
(672, 1327, '_menu_item_url', '#'),
(673, 1328, '_menu_item_type', 'custom'),
(674, 1328, '_menu_item_menu_item_parent', '1327'),
(675, 1328, '_menu_item_object_id', '1328'),
(676, 1328, '_menu_item_object', 'custom'),
(677, 1328, '_menu_item_target', ''),
(678, 1328, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(679, 1328, '_menu_item_xfn', ''),
(680, 1328, '_menu_item_url', '#'),
(681, 1329, '_menu_item_type', 'custom'),
(682, 1329, '_menu_item_menu_item_parent', '1328'),
(683, 1329, '_menu_item_object_id', '1329'),
(684, 1329, '_menu_item_object', 'custom'),
(685, 1329, '_menu_item_target', ''),
(686, 1329, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(687, 1329, '_menu_item_xfn', ''),
(688, 1329, '_menu_item_url', '#'),
(689, 1330, '_menu_item_type', 'custom'),
(690, 1330, '_menu_item_menu_item_parent', '1329'),
(691, 1330, '_menu_item_object_id', '1330'),
(692, 1330, '_menu_item_object', 'custom'),
(693, 1330, '_menu_item_target', ''),
(694, 1330, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(695, 1330, '_menu_item_xfn', ''),
(696, 1330, '_menu_item_url', '#'),
(697, 1331, '_menu_item_type', 'custom'),
(698, 1331, '_menu_item_menu_item_parent', '1330'),
(699, 1331, '_menu_item_object_id', '1331'),
(700, 1331, '_menu_item_object', 'custom'),
(701, 1331, '_menu_item_target', ''),
(702, 1331, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(703, 1331, '_menu_item_xfn', ''),
(704, 1331, '_menu_item_url', '#'),
(705, 1332, '_menu_item_type', 'custom'),
(706, 1332, '_menu_item_menu_item_parent', '1331'),
(707, 1332, '_menu_item_object_id', '1332'),
(708, 1332, '_menu_item_object', 'custom'),
(709, 1332, '_menu_item_target', ''),
(710, 1332, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(711, 1332, '_menu_item_xfn', ''),
(712, 1332, '_menu_item_url', '#'),
(713, 1333, '_menu_item_type', 'custom'),
(714, 1333, '_menu_item_menu_item_parent', '0'),
(715, 1333, '_menu_item_object_id', '1333'),
(716, 1333, '_menu_item_object', 'custom'),
(717, 1333, '_menu_item_target', ''),
(718, 1333, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(719, 1333, '_menu_item_xfn', ''),
(720, 1333, '_menu_item_url', '#'),
(721, 1062, '_edit_last', '1'),
(722, 1062, 'standard_seo_post_meta_description', ''),
(723, 1062, '_wp_page_template', 'default'),
(724, 1064, '_edit_last', '1'),
(725, 1064, '_wp_page_template', 'default'),
(726, 1066, '_edit_last', '1'),
(727, 1066, '_wp_page_template', 'default'),
(728, 1075, '_edit_last', '1'),
(729, 1075, '_wp_page_template', 'default'),
(730, 1077, '_edit_last', '1'),
(731, 1077, '_wp_page_template', 'default'),
(732, 1080, '_edit_last', '1'),
(733, 1080, '_wp_page_template', 'default'),
(734, 1083, '_edit_last', '1'),
(735, 1083, '_wp_page_template', 'default'),
(736, 1083, 'standard_seo_post_meta_description', ''),
(737, 1086, '_edit_last', '1'),
(738, 1086, '_wp_page_template', 'default'),
(739, 1086, 'standard_seo_post_meta_description', ''),
(740, 1088, '_edit_last', '1'),
(741, 1088, '_wp_page_template', 'default'),
(742, 1090, '_edit_last', '1'),
(743, 1090, '_wp_page_template', 'default'),
(744, 1092, '_edit_last', '1'),
(745, 1092, '_wp_page_template', 'default'),
(746, 1094, '_edit_last', '1'),
(747, 1094, '_wp_page_template', 'default'),
(748, 1096, '_edit_last', '1'),
(749, 1096, '_wp_page_template', 'default'),
(750, 1098, '_edit_last', '1'),
(751, 1098, '_wp_page_template', 'default'),
(752, 1334, '_menu_item_type', 'custom'),
(753, 1334, '_menu_item_menu_item_parent', '1333'),
(754, 1334, '_menu_item_object_id', '1334'),
(755, 1334, '_menu_item_object', 'custom'),
(756, 1334, '_menu_item_target', ''),
(757, 1334, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(758, 1334, '_menu_item_xfn', ''),
(759, 1334, '_menu_item_url', '#'),
(760, 1335, '_menu_item_type', 'custom'),
(761, 1335, '_menu_item_menu_item_parent', '1333'),
(762, 1335, '_menu_item_object_id', '1335'),
(763, 1335, '_menu_item_object', 'custom'),
(764, 1335, '_menu_item_target', ''),
(765, 1335, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(766, 1335, '_menu_item_xfn', ''),
(767, 1335, '_menu_item_url', '#'),
(768, 1336, '_menu_item_type', 'custom'),
(769, 1336, '_menu_item_menu_item_parent', '1333'),
(770, 1336, '_menu_item_object_id', '1336'),
(771, 1336, '_menu_item_object', 'custom'),
(772, 1336, '_menu_item_target', ''),
(773, 1336, '_menu_item_classes', 'a:1:{i:0;s:21:"custom-menu-css-class";}'),
(774, 1336, '_menu_item_xfn', ''),
(775, 1336, '_menu_item_url', '#'),
(776, 1337, '_menu_item_type', 'custom'),
(777, 1337, '_menu_item_menu_item_parent', '1333'),
(778, 1337, '_menu_item_object_id', '1337'),
(779, 1337, '_menu_item_object', 'custom'),
(780, 1337, '_menu_item_target', '_blank'),
(781, 1337, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(782, 1337, '_menu_item_xfn', ''),
(783, 1337, '_menu_item_url', 'http://apple.com'),
(800, 149, '_edit_last', '1'),
(801, 149, '_wp_old_slug', 'comment-test'),
(802, 151, '_edit_last', '1'),
(803, 151, '_wp_old_slug', 'many-trackbacks'),
(804, 152, '_wp_old_slug', 'no-comments'),
(805, 152, '_edit_last', '1'),
(806, 167, '_edit_last', '1'),
(807, 168, '_edit_last', '1'),
(808, 418, '_edit_last', '1'),
(809, 555, '_thumbnail_id', '611'),
(810, 555, '_edit_last', '1'),
(811, 555, '_wp_old_slug', 'post-format-test-gallery'),
(812, 559, '_edit_last', '1'),
(813, 559, '_wp_old_slug', 'post-format-test-aside'),
(814, 562, '_edit_last', '1'),
(815, 562, '_wp_old_slug', 'post-format-test-chat'),
(816, 565, '_edit_last', '1'),
(817, 565, '_wp_old_slug', 'post-format-test-link'),
(818, 568, '_wp_old_slug', 'post-format-test-image'),
(819, 568, '_edit_last', '1'),
(820, 568, '_wp_old_slug', 'post-format-test-image-linked'),
(821, 575, '_edit_last', '1'),
(822, 575, '_wp_old_slug', 'post-format-test-quote'),
(823, 579, '_edit_last', '1'),
(824, 579, '_wp_old_slug', 'post-format-test-status'),
(825, 582, '_edit_last', '1'),
(826, 582, '_wp_old_slug', 'post-format-test-video'),
(827, 582, '_oembed_7338f2ed6983f1e8f5ec2aef019d9c39', '<iframe width="610" height="343" src="http://www.youtube.com/embed/nwe-H6l4beM?feature=oembed" frameborder="0" allowfullscreen></iframe>'),
(828, 587, '_edit_last', '1'),
(829, 587, '_wp_old_slug', 'post-format-test-audio'),
(830, 587, 'enclosure', 'http://localhost:8080/liweb/wp-content/uploads/2013/03/Eddy-Need-Remix.mp3\n11039151\naudio/mpeg\n'),
(831, 674, '_edit_last', '1'),
(832, 674, '_wp_old_slug', 'post-format-test-image-attached'),
(833, 922, '_edit_last', '1'),
(834, 922, 'standard_seo_post_level_layout', ''),
(835, 922, 'standard_link_url_field', ''),
(836, 922, 'standard_seo_post_meta_description', ''),
(837, 946, '_edit_last', '1'),
(838, 1005, '_edit_last', '1'),
(839, 1005, 'standard_seo_post_level_layout', ''),
(840, 1005, 'standard_link_url_field', ''),
(841, 1005, 'standard_seo_post_meta_description', ''),
(842, 1102, '_edit_last', '1'),
(843, 1102, '_wp_page_template', 'default'),
(844, 131, '_edit_last', '1'),
(845, 131, '_wp_old_slug', 'test-with-secret-password'),
(846, 133, '_wp_old_slug', '14'),
(847, 133, '_edit_last', '1'),
(848, 134, '_edit_last', '1'),
(849, 134, '_wp_old_slug', 'this-post-has-no-body'),
(850, 188, '_edit_last', '1'),
(851, 188, '_wp_old_slug', 'layout-test'),
(852, 861, '_edit_last', '1'),
(853, 867, '_edit_last', '1'),
(854, 877, '_edit_last', '1'),
(855, 877, '_wp_old_slug', 'non-breaking-tex'),
(856, 895, '_edit_last', '1'),
(857, 903, '_edit_last', '1'),
(858, 903, 'standard_seo_post_level_layout', ''),
(859, 903, 'standard_link_url_field', ''),
(860, 903, 'standard_seo_post_meta_description', ''),
(861, 919, '_edit_last', '1'),
(862, 919, 'standard_seo_post_level_layout', ''),
(863, 919, 'standard_link_url_field', ''),
(864, 919, 'standard_seo_post_meta_description', ''),
(865, 993, '_edit_last', '1'),
(866, 996, '_edit_last', '1'),
(867, 1000, '_edit_last', '1'),
(868, 1011, '_edit_last', '1'),
(869, 1011, '_wp_old_slug', 'featured-image'),
(870, 1011, '_thumbnail_id', '1022'),
(871, 1011, 'standard_seo_post_level_layout', ''),
(872, 1011, 'standard_link_url_field', ''),
(873, 1011, 'standard_seo_post_meta_description', ''),
(874, 1016, '_edit_last', '1'),
(875, 1016, '_thumbnail_id', '1024'),
(876, 1016, 'standard_seo_post_level_layout', ''),
(877, 1016, 'standard_link_url_field', ''),
(878, 1016, 'standard_seo_post_meta_description', ''),
(879, 1027, '_edit_last', '1'),
(880, 1027, 'standard_seo_post_level_layout', ''),
(881, 1027, 'standard_link_url_field', ''),
(882, 1027, 'standard_seo_post_meta_description', ''),
(883, 1027, '_oembed_551fbbcf3ec765ea83fa636f36fee1d5', '<blockquote class="twitter-tweet" width="550"><p>Doing what you “know” locks you in a prison of the past. Uncertainty is the path to an innovative future.</p>&mdash; Carl Smith (@carlsmith) <a href="https://twitter.com/carlsmith/status/258214236126322689">October 16, 2012</a></blockquote><script async src="//platform.twitter.com/widgets.js" charset="utf-8"></script>'),
(884, 1031, '_edit_last', '1'),
(885, 1031, 'standard_seo_post_level_layout', ''),
(886, 1031, 'standard_link_url_field', ''),
(887, 1031, 'standard_seo_post_meta_description', ''),
(888, 1241, '_edit_last', '1'),
(889, 1241, 'standard_seo_post_level_layout', ''),
(890, 1241, 'standard_link_url_field', ''),
(891, 1241, 'standard_seo_post_meta_description', ''),
(892, 1340, '_menu_item_type', 'post_type'),
(893, 1340, '_menu_item_menu_item_parent', '0'),
(894, 1340, '_menu_item_object_id', '1086'),
(895, 1340, '_menu_item_object', 'page'),
(896, 1340, '_menu_item_target', ''),
(897, 1340, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(898, 1340, '_menu_item_xfn', ''),
(899, 1340, '_menu_item_url', ''),
(900, 1341, '_menu_item_type', 'post_type'),
(901, 1341, '_menu_item_menu_item_parent', '0'),
(902, 1341, '_menu_item_object_id', '1062'),
(903, 1341, '_menu_item_object', 'page'),
(904, 1341, '_menu_item_target', ''),
(905, 1341, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(906, 1341, '_menu_item_xfn', ''),
(907, 1341, '_menu_item_url', ''),
(908, 1342, '_menu_item_type', 'post_type'),
(909, 1342, '_menu_item_menu_item_parent', '0'),
(910, 1342, '_menu_item_object_id', '1066'),
(911, 1342, '_menu_item_object', 'page'),
(912, 1342, '_menu_item_target', ''),
(913, 1342, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(914, 1342, '_menu_item_xfn', ''),
(915, 1342, '_menu_item_url', ''),
(916, 1343, '_menu_item_type', 'post_type'),
(917, 1343, '_menu_item_menu_item_parent', '0'),
(918, 1343, '_menu_item_object_id', '1064'),
(919, 1343, '_menu_item_object', 'page'),
(920, 1343, '_menu_item_target', ''),
(921, 1343, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(922, 1343, '_menu_item_xfn', ''),
(923, 1343, '_menu_item_url', ''),
(924, 1344, '_menu_item_type', 'post_type'),
(925, 1344, '_menu_item_menu_item_parent', '0'),
(926, 1344, '_menu_item_object_id', '1077'),
(927, 1344, '_menu_item_object', 'page'),
(928, 1344, '_menu_item_target', ''),
(929, 1344, '_menu_item_classes', 'a:1:{i:0;s:0:"";}');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(930, 1344, '_menu_item_xfn', ''),
(931, 1344, '_menu_item_url', ''),
(932, 1345, '_menu_item_type', 'post_type'),
(933, 1345, '_menu_item_menu_item_parent', '0'),
(934, 1345, '_menu_item_object_id', '1075'),
(935, 1345, '_menu_item_object', 'page'),
(936, 1345, '_menu_item_target', ''),
(937, 1345, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(938, 1345, '_menu_item_xfn', ''),
(939, 1345, '_menu_item_url', ''),
(940, 1346, '_menu_item_type', 'post_type'),
(941, 1346, '_menu_item_menu_item_parent', '0'),
(942, 1346, '_menu_item_object_id', '1080'),
(943, 1346, '_menu_item_object', 'page'),
(944, 1346, '_menu_item_target', ''),
(945, 1346, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(946, 1346, '_menu_item_xfn', ''),
(947, 1346, '_menu_item_url', ''),
(948, 1347, '_menu_item_type', 'post_type'),
(949, 1347, '_menu_item_menu_item_parent', '0'),
(950, 1347, '_menu_item_object_id', '1083'),
(951, 1347, '_menu_item_object', 'page'),
(952, 1347, '_menu_item_target', ''),
(953, 1347, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(954, 1347, '_menu_item_xfn', ''),
(955, 1347, '_menu_item_url', ''),
(956, 1348, '_menu_item_type', 'post_type'),
(957, 1348, '_menu_item_menu_item_parent', '0'),
(958, 1348, '_menu_item_object_id', '1088'),
(959, 1348, '_menu_item_object', 'page'),
(960, 1348, '_menu_item_target', ''),
(961, 1348, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(962, 1348, '_menu_item_xfn', ''),
(963, 1348, '_menu_item_url', ''),
(964, 1349, '_menu_item_type', 'post_type'),
(965, 1349, '_menu_item_menu_item_parent', '0'),
(966, 1349, '_menu_item_object_id', '1090'),
(967, 1349, '_menu_item_object', 'page'),
(968, 1349, '_menu_item_target', ''),
(969, 1349, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(970, 1349, '_menu_item_xfn', ''),
(971, 1349, '_menu_item_url', ''),
(972, 1350, '_menu_item_type', 'post_type'),
(973, 1350, '_menu_item_menu_item_parent', '0'),
(974, 1350, '_menu_item_object_id', '1092'),
(975, 1350, '_menu_item_object', 'page'),
(976, 1350, '_menu_item_target', ''),
(977, 1350, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(978, 1350, '_menu_item_xfn', ''),
(979, 1350, '_menu_item_url', ''),
(980, 1351, '_menu_item_type', 'post_type'),
(981, 1351, '_menu_item_menu_item_parent', '0'),
(982, 1351, '_menu_item_object_id', '1094'),
(983, 1351, '_menu_item_object', 'page'),
(984, 1351, '_menu_item_target', ''),
(985, 1351, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(986, 1351, '_menu_item_xfn', ''),
(987, 1351, '_menu_item_url', ''),
(988, 1352, '_menu_item_type', 'post_type'),
(989, 1352, '_menu_item_menu_item_parent', '0'),
(990, 1352, '_menu_item_object_id', '1102'),
(991, 1352, '_menu_item_object', 'page'),
(992, 1352, '_menu_item_target', ''),
(993, 1352, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(994, 1352, '_menu_item_xfn', ''),
(995, 1352, '_menu_item_url', ''),
(996, 1353, '_menu_item_type', 'post_type'),
(997, 1353, '_menu_item_menu_item_parent', '0'),
(998, 1353, '_menu_item_object_id', '1096'),
(999, 1353, '_menu_item_object', 'page'),
(1000, 1353, '_menu_item_target', ''),
(1001, 1353, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(1002, 1353, '_menu_item_xfn', ''),
(1003, 1353, '_menu_item_url', ''),
(1004, 1354, '_menu_item_type', 'post_type'),
(1005, 1354, '_menu_item_menu_item_parent', '0'),
(1006, 1354, '_menu_item_object_id', '1098'),
(1007, 1354, '_menu_item_object', 'page'),
(1008, 1354, '_menu_item_target', ''),
(1009, 1354, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(1010, 1354, '_menu_item_xfn', ''),
(1011, 1354, '_menu_item_url', ''),
(1012, 1355, '_menu_item_type', 'post_type'),
(1013, 1355, '_menu_item_menu_item_parent', '0'),
(1014, 1355, '_menu_item_object_id', '1086'),
(1015, 1355, '_menu_item_object', 'page'),
(1016, 1355, '_menu_item_target', ''),
(1017, 1355, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(1018, 1355, '_menu_item_xfn', ''),
(1019, 1355, '_menu_item_url', ''),
(1020, 1356, '_menu_item_type', 'post_type'),
(1021, 1356, '_menu_item_menu_item_parent', '1303'),
(1022, 1356, '_menu_item_object_id', '1062'),
(1023, 1356, '_menu_item_object', 'page'),
(1024, 1356, '_menu_item_target', ''),
(1025, 1356, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(1026, 1356, '_menu_item_xfn', ''),
(1027, 1356, '_menu_item_url', ''),
(1028, 1357, '_menu_item_type', 'post_type'),
(1029, 1357, '_menu_item_menu_item_parent', '1303'),
(1030, 1357, '_menu_item_object_id', '1066'),
(1031, 1357, '_menu_item_object', 'page'),
(1032, 1357, '_menu_item_target', ''),
(1033, 1357, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(1034, 1357, '_menu_item_xfn', ''),
(1035, 1357, '_menu_item_url', ''),
(1036, 1358, '_menu_item_type', 'post_type'),
(1037, 1358, '_menu_item_menu_item_parent', '1303'),
(1038, 1358, '_menu_item_object_id', '1064'),
(1039, 1358, '_menu_item_object', 'page'),
(1040, 1358, '_menu_item_target', ''),
(1041, 1358, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(1042, 1358, '_menu_item_xfn', ''),
(1043, 1358, '_menu_item_url', ''),
(1044, 1359, '_menu_item_type', 'post_type'),
(1045, 1359, '_menu_item_menu_item_parent', '1303'),
(1046, 1359, '_menu_item_object_id', '1077'),
(1047, 1359, '_menu_item_object', 'page'),
(1048, 1359, '_menu_item_target', ''),
(1049, 1359, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(1050, 1359, '_menu_item_xfn', ''),
(1051, 1359, '_menu_item_url', ''),
(1052, 1360, '_menu_item_type', 'post_type'),
(1053, 1360, '_menu_item_menu_item_parent', '1303'),
(1054, 1360, '_menu_item_object_id', '1075'),
(1055, 1360, '_menu_item_object', 'page'),
(1056, 1360, '_menu_item_target', ''),
(1057, 1360, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(1058, 1360, '_menu_item_xfn', ''),
(1059, 1360, '_menu_item_url', ''),
(1060, 1361, '_menu_item_type', 'post_type'),
(1061, 1361, '_menu_item_menu_item_parent', '1303'),
(1062, 1361, '_menu_item_object_id', '1080'),
(1063, 1361, '_menu_item_object', 'page'),
(1064, 1361, '_menu_item_target', ''),
(1065, 1361, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(1066, 1361, '_menu_item_xfn', ''),
(1067, 1361, '_menu_item_url', ''),
(1068, 1362, '_menu_item_type', 'post_type'),
(1069, 1362, '_menu_item_menu_item_parent', '1303'),
(1070, 1362, '_menu_item_object_id', '1083'),
(1071, 1362, '_menu_item_object', 'page'),
(1072, 1362, '_menu_item_target', ''),
(1073, 1362, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(1074, 1362, '_menu_item_xfn', ''),
(1075, 1362, '_menu_item_url', ''),
(1085, 1364, '_menu_item_type', 'taxonomy'),
(1086, 1364, '_menu_item_menu_item_parent', '0'),
(1087, 1364, '_menu_item_object_id', '78'),
(1088, 1364, '_menu_item_object', 'category'),
(1089, 1364, '_menu_item_target', ''),
(1090, 1364, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(1091, 1364, '_menu_item_xfn', ''),
(1092, 1364, '_menu_item_url', ''),
(1103, 1366, '_menu_item_type', 'taxonomy'),
(1104, 1366, '_menu_item_menu_item_parent', '0'),
(1105, 1366, '_menu_item_object_id', '79'),
(1106, 1366, '_menu_item_object', 'category'),
(1107, 1366, '_menu_item_target', ''),
(1108, 1366, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(1109, 1366, '_menu_item_xfn', ''),
(1110, 1366, '_menu_item_url', ''),
(1112, 1367, '_menu_item_type', 'taxonomy'),
(1113, 1367, '_menu_item_menu_item_parent', '1369'),
(1114, 1367, '_menu_item_object_id', '77'),
(1115, 1367, '_menu_item_object', 'category'),
(1116, 1367, '_menu_item_target', ''),
(1117, 1367, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(1118, 1367, '_menu_item_xfn', ''),
(1119, 1367, '_menu_item_url', ''),
(1130, 1369, '_menu_item_type', 'taxonomy'),
(1131, 1369, '_menu_item_menu_item_parent', '0'),
(1132, 1369, '_menu_item_object_id', '76'),
(1133, 1369, '_menu_item_object', 'category'),
(1134, 1369, '_menu_item_target', ''),
(1135, 1369, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(1136, 1369, '_menu_item_xfn', ''),
(1137, 1369, '_menu_item_url', ''),
(1148, 1027, '_oembed_cde3787ea0dca957728bc8476a53a74f', '<blockquote class="twitter-tweet" data-width="550"><p lang="en" dir="ltr">Doing what you “know” locks you in a prison of the past. Uncertainty is the path to an innovative future.</p>&mdash; Carl Smith (@carlsmith) <a href="https://twitter.com/carlsmith/status/258214236126322689">October 16, 2012</a></blockquote><script async src="//platform.twitter.com/widgets.js" charset="utf-8"></script>'),
(1149, 1027, '_oembed_time_cde3787ea0dca957728bc8476a53a74f', '1455785996'),
(1150, 1027, '_oembed_005d75bd2538842909615a20da084ae1', '<blockquote class="twitter-tweet" data-width="550"><p lang="en" dir="ltr">Doing what you “know” locks you in a prison of the past. Uncertainty is the path to an innovative future.</p>&mdash; Carl Smith (@carlsmith) <a href="https://twitter.com/carlsmith/status/258214236126322689">October 16, 2012</a></blockquote><script async src="//platform.twitter.com/widgets.js" charset="utf-8"></script>'),
(1151, 1027, '_oembed_time_005d75bd2538842909615a20da084ae1', '1455787139'),
(1154, 1372, '_wp_attached_file', '2016/02/new-slider-image.jpg'),
(1155, 1372, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1308;s:6:"height";i:430;s:4:"file";s:28:"2016/02/new-slider-image.jpg";s:5:"sizes";a:10:{s:9:"thumbnail";a:4:{s:4:"file";s:28:"new-slider-image-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:27:"new-slider-image-300x99.jpg";s:5:"width";i:300;s:6:"height";i:99;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:28:"new-slider-image-768x252.jpg";s:5:"width";i:768;s:6:"height";i:252;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:29:"new-slider-image-1024x337.jpg";s:5:"width";i:1024;s:6:"height";i:337;s:9:"mime-type";s:10:"image/jpeg";}s:18:"gomedia-post-thumb";a:4:{s:4:"file";s:28:"new-slider-image-210x158.jpg";s:5:"width";i:210;s:6:"height";i:158;s:9:"mime-type";s:10:"image/jpeg";}s:22:"gomedia-carousel-thumb";a:4:{s:4:"file";s:28:"new-slider-image-285x195.jpg";s:5:"width";i:285;s:6:"height";i:195;s:9:"mime-type";s:10:"image/jpeg";}s:21:"gomedia-related-thumb";a:4:{s:4:"file";s:28:"new-slider-image-176x133.jpg";s:5:"width";i:176;s:6:"height";i:133;s:9:"mime-type";s:10:"image/jpeg";}s:20:"gomedia-widget-thumb";a:4:{s:4:"file";s:26:"new-slider-image-60x60.jpg";s:5:"width";i:60;s:6:"height";i:60;s:9:"mime-type";s:10:"image/jpeg";}s:16:"gomedia-featured";a:4:{s:4:"file";s:28:"new-slider-image-720x338.jpg";s:5:"width";i:720;s:6:"height";i:338;s:9:"mime-type";s:10:"image/jpeg";}s:22:"gomedia-featured-small";a:4:{s:4:"file";s:27:"new-slider-image-145x90.jpg";s:5:"width";i:145;s:6:"height";i:90;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1156, 1373, '_wp_attached_file', '2016/02/seo.jpg'),
(1157, 1373, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1600;s:6:"height";i:522;s:4:"file";s:15:"2016/02/seo.jpg";s:5:"sizes";a:10:{s:9:"thumbnail";a:4:{s:4:"file";s:15:"seo-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:14:"seo-300x98.jpg";s:5:"width";i:300;s:6:"height";i:98;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:15:"seo-768x251.jpg";s:5:"width";i:768;s:6:"height";i:251;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:16:"seo-1024x334.jpg";s:5:"width";i:1024;s:6:"height";i:334;s:9:"mime-type";s:10:"image/jpeg";}s:18:"gomedia-post-thumb";a:4:{s:4:"file";s:15:"seo-210x158.jpg";s:5:"width";i:210;s:6:"height";i:158;s:9:"mime-type";s:10:"image/jpeg";}s:22:"gomedia-carousel-thumb";a:4:{s:4:"file";s:15:"seo-285x195.jpg";s:5:"width";i:285;s:6:"height";i:195;s:9:"mime-type";s:10:"image/jpeg";}s:21:"gomedia-related-thumb";a:4:{s:4:"file";s:15:"seo-176x133.jpg";s:5:"width";i:176;s:6:"height";i:133;s:9:"mime-type";s:10:"image/jpeg";}s:20:"gomedia-widget-thumb";a:4:{s:4:"file";s:13:"seo-60x60.jpg";s:5:"width";i:60;s:6:"height";i:60;s:9:"mime-type";s:10:"image/jpeg";}s:16:"gomedia-featured";a:4:{s:4:"file";s:15:"seo-720x338.jpg";s:5:"width";i:720;s:6:"height";i:338;s:9:"mime-type";s:10:"image/jpeg";}s:22:"gomedia-featured-small";a:4:{s:4:"file";s:14:"seo-145x90.jpg";s:5:"width";i:145;s:6:"height";i:90;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(1158, 1374, '_wp_attached_file', '2016/02/slider-business-intelligence-freight.png'),
(1159, 1374, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:920;s:6:"height";i:400;s:4:"file";s:48:"2016/02/slider-business-intelligence-freight.png";s:5:"sizes";a:9:{s:9:"thumbnail";a:4:{s:4:"file";s:48:"slider-business-intelligence-freight-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:48:"slider-business-intelligence-freight-300x130.png";s:5:"width";i:300;s:6:"height";i:130;s:9:"mime-type";s:9:"image/png";}s:12:"medium_large";a:4:{s:4:"file";s:48:"slider-business-intelligence-freight-768x334.png";s:5:"width";i:768;s:6:"height";i:334;s:9:"mime-type";s:9:"image/png";}s:18:"gomedia-post-thumb";a:4:{s:4:"file";s:48:"slider-business-intelligence-freight-210x158.png";s:5:"width";i:210;s:6:"height";i:158;s:9:"mime-type";s:9:"image/png";}s:22:"gomedia-carousel-thumb";a:4:{s:4:"file";s:48:"slider-business-intelligence-freight-285x195.png";s:5:"width";i:285;s:6:"height";i:195;s:9:"mime-type";s:9:"image/png";}s:21:"gomedia-related-thumb";a:4:{s:4:"file";s:48:"slider-business-intelligence-freight-176x133.png";s:5:"width";i:176;s:6:"height";i:133;s:9:"mime-type";s:9:"image/png";}s:20:"gomedia-widget-thumb";a:4:{s:4:"file";s:46:"slider-business-intelligence-freight-60x60.png";s:5:"width";i:60;s:6:"height";i:60;s:9:"mime-type";s:9:"image/png";}s:16:"gomedia-featured";a:4:{s:4:"file";s:48:"slider-business-intelligence-freight-720x338.png";s:5:"width";i:720;s:6:"height";i:338;s:9:"mime-type";s:9:"image/png";}s:22:"gomedia-featured-small";a:4:{s:4:"file";s:47:"slider-business-intelligence-freight-145x90.png";s:5:"width";i:145;s:6:"height";i:90;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1160, 1375, '_wp_attached_file', '2016/02/bg_dm.png'),
(1161, 1375, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1080;s:6:"height";i:235;s:4:"file";s:17:"2016/02/bg_dm.png";s:5:"sizes";a:10:{s:9:"thumbnail";a:4:{s:4:"file";s:17:"bg_dm-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:16:"bg_dm-300x65.png";s:5:"width";i:300;s:6:"height";i:65;s:9:"mime-type";s:9:"image/png";}s:12:"medium_large";a:4:{s:4:"file";s:17:"bg_dm-768x167.png";s:5:"width";i:768;s:6:"height";i:167;s:9:"mime-type";s:9:"image/png";}s:5:"large";a:4:{s:4:"file";s:18:"bg_dm-1024x223.png";s:5:"width";i:1024;s:6:"height";i:223;s:9:"mime-type";s:9:"image/png";}s:18:"gomedia-post-thumb";a:4:{s:4:"file";s:17:"bg_dm-210x158.png";s:5:"width";i:210;s:6:"height";i:158;s:9:"mime-type";s:9:"image/png";}s:22:"gomedia-carousel-thumb";a:4:{s:4:"file";s:17:"bg_dm-285x195.png";s:5:"width";i:285;s:6:"height";i:195;s:9:"mime-type";s:9:"image/png";}s:21:"gomedia-related-thumb";a:4:{s:4:"file";s:17:"bg_dm-176x133.png";s:5:"width";i:176;s:6:"height";i:133;s:9:"mime-type";s:9:"image/png";}s:20:"gomedia-widget-thumb";a:4:{s:4:"file";s:15:"bg_dm-60x60.png";s:5:"width";i:60;s:6:"height";i:60;s:9:"mime-type";s:9:"image/png";}s:16:"gomedia-featured";a:4:{s:4:"file";s:17:"bg_dm-720x235.png";s:5:"width";i:720;s:6:"height";i:235;s:9:"mime-type";s:9:"image/png";}s:22:"gomedia-featured-small";a:4:{s:4:"file";s:16:"bg_dm-145x90.png";s:5:"width";i:145;s:6:"height";i:90;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1162, 1376, '_wp_attached_file', '2016/02/bg_vps.jpg'),
(1163, 1376, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1920;s:6:"height";i:350;s:4:"file";s:18:"2016/02/bg_vps.jpg";s:5:"sizes";a:10:{s:9:"thumbnail";a:4:{s:4:"file";s:18:"bg_vps-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:17:"bg_vps-300x55.jpg";s:5:"width";i:300;s:6:"height";i:55;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:18:"bg_vps-768x140.jpg";s:5:"width";i:768;s:6:"height";i:140;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:19:"bg_vps-1024x187.jpg";s:5:"width";i:1024;s:6:"height";i:187;s:9:"mime-type";s:10:"image/jpeg";}s:18:"gomedia-post-thumb";a:4:{s:4:"file";s:18:"bg_vps-210x158.jpg";s:5:"width";i:210;s:6:"height";i:158;s:9:"mime-type";s:10:"image/jpeg";}s:22:"gomedia-carousel-thumb";a:4:{s:4:"file";s:18:"bg_vps-285x195.jpg";s:5:"width";i:285;s:6:"height";i:195;s:9:"mime-type";s:10:"image/jpeg";}s:21:"gomedia-related-thumb";a:4:{s:4:"file";s:18:"bg_vps-176x133.jpg";s:5:"width";i:176;s:6:"height";i:133;s:9:"mime-type";s:10:"image/jpeg";}s:20:"gomedia-widget-thumb";a:4:{s:4:"file";s:16:"bg_vps-60x60.jpg";s:5:"width";i:60;s:6:"height";i:60;s:9:"mime-type";s:10:"image/jpeg";}s:16:"gomedia-featured";a:4:{s:4:"file";s:18:"bg_vps-720x338.jpg";s:5:"width";i:720;s:6:"height";i:338;s:9:"mime-type";s:10:"image/jpeg";}s:22:"gomedia-featured-small";a:4:{s:4:"file";s:17:"bg_vps-145x90.jpg";s:5:"width";i:145;s:6:"height";i:90;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1164, 1377, '_wp_attached_file', '2016/02/iphone-6-mockup-1.jpg'),
(1165, 1377, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:730;s:6:"height";i:487;s:4:"file";s:29:"2016/02/iphone-6-mockup-1.jpg";s:5:"sizes";a:8:{s:9:"thumbnail";a:4:{s:4:"file";s:29:"iphone-6-mockup-1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:29:"iphone-6-mockup-1-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:18:"gomedia-post-thumb";a:4:{s:4:"file";s:29:"iphone-6-mockup-1-210x158.jpg";s:5:"width";i:210;s:6:"height";i:158;s:9:"mime-type";s:10:"image/jpeg";}s:22:"gomedia-carousel-thumb";a:4:{s:4:"file";s:29:"iphone-6-mockup-1-285x195.jpg";s:5:"width";i:285;s:6:"height";i:195;s:9:"mime-type";s:10:"image/jpeg";}s:21:"gomedia-related-thumb";a:4:{s:4:"file";s:29:"iphone-6-mockup-1-176x133.jpg";s:5:"width";i:176;s:6:"height";i:133;s:9:"mime-type";s:10:"image/jpeg";}s:20:"gomedia-widget-thumb";a:4:{s:4:"file";s:27:"iphone-6-mockup-1-60x60.jpg";s:5:"width";i:60;s:6:"height";i:60;s:9:"mime-type";s:10:"image/jpeg";}s:16:"gomedia-featured";a:4:{s:4:"file";s:29:"iphone-6-mockup-1-720x338.jpg";s:5:"width";i:720;s:6:"height";i:338;s:9:"mime-type";s:10:"image/jpeg";}s:22:"gomedia-featured-small";a:4:{s:4:"file";s:28:"iphone-6-mockup-1-145x90.jpg";s:5:"width";i:145;s:6:"height";i:90;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1166, 1378, '_wp_attached_file', '2016/02/Untitled-1.jpg'),
(1167, 1378, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1583;s:6:"height";i:350;s:4:"file";s:22:"2016/02/Untitled-1.jpg";s:5:"sizes";a:10:{s:9:"thumbnail";a:4:{s:4:"file";s:22:"Untitled-1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:21:"Untitled-1-300x66.jpg";s:5:"width";i:300;s:6:"height";i:66;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:22:"Untitled-1-768x170.jpg";s:5:"width";i:768;s:6:"height";i:170;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:23:"Untitled-1-1024x226.jpg";s:5:"width";i:1024;s:6:"height";i:226;s:9:"mime-type";s:10:"image/jpeg";}s:18:"gomedia-post-thumb";a:4:{s:4:"file";s:22:"Untitled-1-210x158.jpg";s:5:"width";i:210;s:6:"height";i:158;s:9:"mime-type";s:10:"image/jpeg";}s:22:"gomedia-carousel-thumb";a:4:{s:4:"file";s:22:"Untitled-1-285x195.jpg";s:5:"width";i:285;s:6:"height";i:195;s:9:"mime-type";s:10:"image/jpeg";}s:21:"gomedia-related-thumb";a:4:{s:4:"file";s:22:"Untitled-1-176x133.jpg";s:5:"width";i:176;s:6:"height";i:133;s:9:"mime-type";s:10:"image/jpeg";}s:20:"gomedia-widget-thumb";a:4:{s:4:"file";s:20:"Untitled-1-60x60.jpg";s:5:"width";i:60;s:6:"height";i:60;s:9:"mime-type";s:10:"image/jpeg";}s:16:"gomedia-featured";a:4:{s:4:"file";s:22:"Untitled-1-720x338.jpg";s:5:"width";i:720;s:6:"height";i:338;s:9:"mime-type";s:10:"image/jpeg";}s:22:"gomedia-featured-small";a:4:{s:4:"file";s:21:"Untitled-1-145x90.jpg";s:5:"width";i:145;s:6:"height";i:90;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(1168, 1379, '_menu_item_type', 'custom'),
(1169, 1379, '_menu_item_menu_item_parent', '0'),
(1170, 1379, '_menu_item_object_id', '1379'),
(1171, 1379, '_menu_item_object', 'custom'),
(1172, 1379, '_menu_item_target', ''),
(1173, 1379, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(1174, 1379, '_menu_item_xfn', ''),
(1175, 1379, '_menu_item_url', 'http://localhost:8080/liweb/'),
(1177, 1380, '_menu_item_type', 'taxonomy'),
(1178, 1380, '_menu_item_menu_item_parent', '0'),
(1179, 1380, '_menu_item_object_id', '78'),
(1180, 1380, '_menu_item_object', 'category'),
(1181, 1380, '_menu_item_target', ''),
(1182, 1380, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(1183, 1380, '_menu_item_xfn', ''),
(1184, 1380, '_menu_item_url', ''),
(1185, 1380, '_menu_item_orphaned', '1455869246'),
(1186, 1381, '_menu_item_type', 'taxonomy'),
(1187, 1381, '_menu_item_menu_item_parent', '0'),
(1188, 1381, '_menu_item_object_id', '74'),
(1189, 1381, '_menu_item_object', 'category'),
(1190, 1381, '_menu_item_target', ''),
(1191, 1381, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(1192, 1381, '_menu_item_xfn', ''),
(1193, 1381, '_menu_item_url', ''),
(1195, 1382, '_menu_item_type', 'taxonomy'),
(1196, 1382, '_menu_item_menu_item_parent', '0'),
(1197, 1382, '_menu_item_object_id', '73'),
(1198, 1382, '_menu_item_object', 'category'),
(1199, 1382, '_menu_item_target', ''),
(1200, 1382, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(1201, 1382, '_menu_item_xfn', ''),
(1202, 1382, '_menu_item_url', ''),
(1204, 1383, '_menu_item_type', 'taxonomy'),
(1205, 1383, '_menu_item_menu_item_parent', '0'),
(1206, 1383, '_menu_item_object_id', '75'),
(1207, 1383, '_menu_item_object', 'category'),
(1208, 1383, '_menu_item_target', ''),
(1209, 1383, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(1210, 1383, '_menu_item_xfn', ''),
(1211, 1383, '_menu_item_url', ''),
(1222, 1385, '_menu_item_type', 'post_type'),
(1223, 1385, '_menu_item_menu_item_parent', '0'),
(1224, 1385, '_menu_item_object_id', '1086'),
(1225, 1385, '_menu_item_object', 'page'),
(1226, 1385, '_menu_item_target', ''),
(1227, 1385, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(1228, 1385, '_menu_item_xfn', ''),
(1229, 1385, '_menu_item_url', ''),
(1231, 1386, '_menu_item_type', 'taxonomy'),
(1232, 1386, '_menu_item_menu_item_parent', '0'),
(1233, 1386, '_menu_item_object_id', '74'),
(1234, 1386, '_menu_item_object', 'category'),
(1235, 1386, '_menu_item_target', ''),
(1236, 1386, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(1237, 1386, '_menu_item_xfn', ''),
(1238, 1386, '_menu_item_url', ''),
(1240, 1387, '_menu_item_type', 'taxonomy'),
(1241, 1387, '_menu_item_menu_item_parent', '0'),
(1242, 1387, '_menu_item_object_id', '73'),
(1243, 1387, '_menu_item_object', 'category'),
(1244, 1387, '_menu_item_target', ''),
(1245, 1387, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(1246, 1387, '_menu_item_xfn', ''),
(1247, 1387, '_menu_item_url', ''),
(1249, 1388, '_menu_item_type', 'taxonomy'),
(1250, 1388, '_menu_item_menu_item_parent', '0'),
(1251, 1388, '_menu_item_object_id', '75'),
(1252, 1388, '_menu_item_object', 'category'),
(1253, 1388, '_menu_item_target', ''),
(1254, 1388, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(1255, 1388, '_menu_item_xfn', ''),
(1256, 1388, '_menu_item_url', ''),
(1258, 1389, '_edit_last', '1'),
(1259, 1389, '_edit_lock', '1455870845:1'),
(1260, 1389, 'slide_template', 'default'),
(1261, 1392, '_menu_item_type', 'post_type'),
(1262, 1392, '_menu_item_menu_item_parent', '0'),
(1263, 1392, '_menu_item_object_id', '1389'),
(1264, 1392, '_menu_item_object', 'page'),
(1265, 1392, '_menu_item_target', ''),
(1266, 1392, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(1267, 1392, '_menu_item_xfn', ''),
(1268, 1392, '_menu_item_url', ''),
(1270, 1389, '_wp_page_template', 'tintuc_blog.php'),
(1271, 1086, '_edit_lock', '1455870854:1'),
(1272, 1393, '_menu_item_type', 'post_type'),
(1273, 1393, '_menu_item_menu_item_parent', '0'),
(1274, 1393, '_menu_item_object_id', '1088'),
(1275, 1393, '_menu_item_object', 'page'),
(1276, 1393, '_menu_item_target', ''),
(1277, 1393, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(1278, 1393, '_menu_item_xfn', ''),
(1279, 1393, '_menu_item_url', ''),
(1281, 1394, '_menu_item_type', 'post_type'),
(1282, 1394, '_menu_item_menu_item_parent', '1393'),
(1283, 1394, '_menu_item_object_id', '1098'),
(1284, 1394, '_menu_item_object', 'page'),
(1285, 1394, '_menu_item_target', ''),
(1286, 1394, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(1287, 1394, '_menu_item_xfn', ''),
(1288, 1394, '_menu_item_url', ''),
(1290, 1395, '_menu_item_type', 'post_type'),
(1291, 1395, '_menu_item_menu_item_parent', '1393'),
(1292, 1395, '_menu_item_object_id', '1096'),
(1293, 1395, '_menu_item_object', 'page'),
(1294, 1395, '_menu_item_target', ''),
(1295, 1395, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(1296, 1395, '_menu_item_xfn', ''),
(1297, 1395, '_menu_item_url', ''),
(1299, 1396, '_menu_item_type', 'post_type'),
(1300, 1396, '_menu_item_menu_item_parent', '1395'),
(1301, 1396, '_menu_item_object_id', '1094'),
(1302, 1396, '_menu_item_object', 'page'),
(1303, 1396, '_menu_item_target', ''),
(1304, 1396, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(1305, 1396, '_menu_item_xfn', ''),
(1306, 1396, '_menu_item_url', '');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2016-02-18 08:49:15', '2016-02-18 08:49:15', 'Chúc mừng đến với WordPress. Đây là bài viết đầu tiên của bạn. Hãy chỉnh sửa hay xóa bài viết này, và bắt đầu viết blog!', 'Chào tất cả mọi người!', '', 'publish', 'open', 'open', '', 'chao-moi-nguoi', '', '', '2016-02-18 08:49:15', '2016-02-18 08:49:15', '', 0, 'http://localhost:8080/liweb/?p=1', 0, 'post', '', 1),
(2, 1, '2016-02-18 08:49:15', '2016-02-18 08:49:15', 'Đây là một trang tĩnh mẫu. Nó khác với một bài viết ở chỗ nó sẽ luôn ở một vị trí và sẽ được hiển thị tại thực đơn điều hướng trên trang mạng của bạn (với hầu hết các giao diện). Hầu hết mọi người bắt đầu với trang Giới Thiệu kể về họ với người đọc. Nó có thể được viết như sau:\n\n<blockquote>Xin chào! tôi là người chuyển hàng bằng xe đạp vào ban ngày, diễn viên luôn nỗ lực tiến bộ vào buổi tối, và đây là trang nhật ký trực tuyến của tôi. Tôi sống ở Los Angeles, tôi nuôi một con chó tuyệt vời tên là Jack, và tôi thích pi&#241;a coladas. (Và có thể gặp trong mưa.)</blockquote>\n\n...hoặc tương tự như:\n\n<blockquote>Công ty Đồ dùng XYZ được thành lập năm 1971, và đã cung cấp đồ dùng chất lượng cho cộng đồng từ thời điểm đó. Tại thành phố Gotham, XYZ tạo ra việc làm cho hơn 2,000 người và làm ra những đồ dùng tuyệt vời phục vụ mọi nhu cầu cho người dân Gotham.</blockquote>\n\nLà một người sử dụng WordPress mới, bạn nên truy cập <a href="http://localhost:8080/liweb/wp-admin/">bảng thống kê</a> để xóa trang tĩnh này và tạo trang tĩnh mới cho nội dung của bạn. Hãy tận hưởng!', 'Trang Mẫu', '', 'publish', 'closed', 'open', '', 'Trang mẫu', '', '', '2016-02-18 08:49:15', '2016-02-18 08:49:15', '', 0, 'http://localhost:8080/liweb/?page_id=2', 0, 'page', '', 0),
(3, 1, '2016-02-18 08:49:27', '0000-00-00 00:00:00', '', 'Lưu bản nháp tự động', '', 'auto-draft', 'open', 'open', '', '', '', '', '2016-02-18 08:49:27', '0000-00-00 00:00:00', '', 0, 'http://localhost:8080/liweb/?p=3', 0, 'post', '', 0),
(131, 1, '2013-01-04 09:38:05', '2013-01-04 15:38:05', 'This content, comments, pingbacks, and trackbacks should not be visible until the password is entered.', 'Password Protected (the password is "enter")', '', 'publish', 'open', 'open', 'enter', 'password-protected', '', '', '2013-01-04 09:38:05', '2013-01-04 15:38:05', '', 0, 'http://wpthemetestdata.wordpress.com/2007/09/04/test-with-secret-password/', 0, 'post', '', 1),
(133, 1, '2013-01-05 09:00:23', '2013-01-05 15:00:23', 'This post has no title, but it still must link to the single post view somehow.\n\nThis is typically done by placing the permalink on the post date.', '', '', 'publish', 'closed', 'closed', '', 'no-title', '', '', '2013-01-05 09:00:23', '2013-01-05 15:00:23', '', 0, 'http://wpthemetestdata.wordpress.com/2007/09/04/14/', 0, 'post', '', 0),
(134, 1, '2013-01-06 09:39:56', '2013-01-06 15:39:56', '', 'No Content', '', 'publish', 'open', 'open', '', 'no-content', '', '', '2013-01-06 09:39:56', '2013-01-06 15:39:56', '', 0, 'http://wpthemetestdata.wordpress.com/2007/09/04/this-post-has-no-body/', 0, 'post', '', 1),
(149, 1, '2013-01-03 10:11:37', '2013-01-03 16:11:37', 'This post tests comments in the following ways.\n<ul>\n	<li>Threaded comments up to 10 levels deep</li>\n	<li>Paginated comments (set <em><strong>Settings &gt; Discussion &gt; Break comments into pages</strong></em> to <em><strong>5</strong></em> top level comments per page)</li>\n	<li>Comment markup / formatting</li>\n	<li>Comment images</li>\n	<li>Comment videos</li>\n	<li>Author comments</li>\n	<li>Gravatars and default fallbacks</li>\n</ul>\n&nbsp;', 'Comments', '', 'publish', 'open', 'closed', '', 'comments', '', '', '2013-01-03 10:11:37', '2013-01-03 16:11:37', '', 0, 'http://wpthemetestdata.wordpress.com/2007/09/04/comment-test/', 0, 'post', '', 21),
(151, 1, '2013-01-01 10:17:18', '2013-01-01 16:17:18', 'This post has many pingpacks and trackbacks.\n\nThere are a few ways to list them.\n<ol>\n	<li>Above the comments</li>\n	<li>Below the comments</li>\n	<li>Included within the normal flow of comments</li>\n</ol>', 'Pingbacks And Trackbacks', '', 'publish', 'closed', 'closed', '', 'pingbacks-an-trackbacks', '', '', '2013-01-01 10:17:18', '2013-01-01 16:17:18', '', 0, 'http://wpthemetestdata.wordpress.com/2007/09/04/many-trackbacks/', 0, 'post', '', 5),
(152, 1, '2013-01-02 10:21:15', '2013-01-02 16:21:15', 'This post has its comments, pingbacks, and trackbacks disabled.\n\nThere should be no comment reply form or any pingbacks and trackbacks listed.', 'Comments Disabled', '', 'publish', 'closed', 'closed', '', 'comments-disabled', '', '', '2013-01-02 10:21:15', '2013-01-02 16:21:15', '', 0, 'http://wpthemetestdata.wordpress.com/2007/09/04/no-comments/', 0, 'post', '', 0),
(167, 1, '2012-11-01 01:00:34', '2012-11-01 06:00:34', 'This post has many tags.', 'Many Tags', '', 'publish', 'closed', 'closed', '', 'many-tags', '', '', '2012-11-01 01:00:34', '2012-11-01 06:00:34', '', 0, 'http://wpthemetestdata.wordpress.com/2007/11/24/many-tags/', 0, 'post', '', 0),
(168, 1, '2012-11-02 02:00:03', '2012-11-02 07:00:03', 'This post has many categories.', 'Many Categories', '', 'publish', 'closed', 'closed', '', 'many-categories', '', '', '2012-11-02 02:00:03', '2012-11-02 07:00:03', '', 0, 'http://wpthemetestdata.wordpress.com/2007/11/24/many-categories/', 0, 'post', '', 0),
(188, 1, '2013-01-08 10:00:20', '2013-01-08 16:00:20', 'Post Page 1\n\n<!--nextpage-->\n\nPost Page 2\n\n<!--nextpage-->\n\nPost Page 3', 'Paginated', '', 'publish', 'open', 'open', '', 'paginated', '', '', '2013-01-08 10:00:20', '2013-01-08 16:00:20', '', 0, 'http://noeltest.wordpress.com/?p=188', 0, 'post', '', 0),
(418, 1, '2050-01-01 12:00:18', '2050-01-01 18:00:18', 'This post is scheduled to be published in the future.\n\nIt should not be displayed by the theme.', 'Scheduled', '', 'publish', 'open', 'closed', '', 'scheduled', '', '', '2050-01-01 12:00:18', '2050-01-01 18:00:18', '', 0, 'http://wpthemetestdata.wordpress.com/?p=418', 0, 'post', '', 0),
(555, 1, '2012-12-10 10:00:14', '2012-12-10 16:00:14', '[gallery]\n\n<!--nextpage-->\n\nYou can use this page to test the Theme''s handling of the[gallery]\n\nshortcode, including the <code>columns</code> parameter, from 1 to 10 columns. Themes are only required to support the default setting (3 columns), so this page is entirely optional.\n<h2>One Column</h2>\n[gallery columns="1"]\n<h2>Two Columns</h2>\n[gallery columns="2"]\n<h2>Three Columns</h2>\n[gallery columns="3"]\n<h2>Four Columns</h2>\n[gallery columns="4"]\n<h2>Five Columns</h2>\n[gallery columns="5"]\n<h2>Six Columns</h2>\n[gallery columns="6"]\n<h2>Seven Columns</h2>\n[gallery columns="7"]\n<h2>Eight Columns</h2>\n[gallery columns="8"]\n<h2>Nine Columns</h2>\n[gallery columns="9"]\n<h2>Ten Columns</h2>\n[gallery columns="10"]', 'Post Format: Gallery', '', 'publish', 'open', 'open', '', 'post-format-gallery', '', '', '2012-12-10 10:00:14', '2012-12-10 16:00:14', '', 0, 'http://wpthemetestdata.wordpress.com/?p=555', 0, 'post', '', 0),
(559, 1, '2012-12-09 09:00:54', '2012-12-09 15:00:54', 'We fundamentally believe that our customers are more interested in a simple, attractive, and functional WordPress theme than they are having 12 color schemes to choose from, and a fancy slider with 8 transition effects.\n\nIf you pick out a WordPress theme like you pick out drapes, you’re doing something wrong.', 'Post Format: Aside', '', 'publish', 'open', 'open', '', 'post-format-aside', '', '', '2012-12-09 09:00:54', '2012-12-09 15:00:54', '', 0, 'http://wpthemetestdata.wordpress.com/?p=559', 0, 'post', '', 0),
(562, 1, '2012-12-08 08:00:31', '2012-12-08 14:00:31', 'John: Are we still meeting for breakfast this morning?\n\nJohn: Where is the rest of the team? I''ve been here since 3:00am.\n\nTom: Umm... We actually sleep. Go back to bed, dude.\n\nJohn: Fuuuuuuuuuuuu\n\nTom: Fine. But if I show up, I am not wearing pants.', 'Post Format: Chat', '', 'publish', 'open', 'open', '', 'post-format-chat', '', '', '2012-12-08 08:00:31', '2012-12-08 14:00:31', '', 0, 'http://wpthemetestdata.wordpress.com/?p=562', 0, 'post', '', 0),
(565, 1, '2012-12-07 07:00:53', '2012-12-07 13:00:53', '<a title="Video Game Inspired Mural [Pics, Videos]" href="http://wpdaily.co/mural/" target="_blank">8BIT''s Office - Video Game Inspired Mural</a>', 'Post Format: Link', '', 'publish', 'open', 'open', '', 'post-format-link', '', '', '2012-12-07 07:00:53', '2012-12-07 13:00:53', '', 0, 'http://wpthemetestdata.wordpress.com/?p=565', 0, 'post', '', 0),
(568, 1, '2012-12-05 05:00:39', '2012-12-05 11:00:39', '<dl class="wp-caption aligncenter" id="attachment_612" style="width: 650px;"><dt class="wp-caption-dt"></dt></dl><img class="alignnone size-full wp-image-967" alt="Unicorn Wallpaper" src="http://localhost:8080/liweb/wp-content/uploads/2012/12/unicorn-wallpaper.jpg" width="1600" height="1200" />\n\nI really love this wallpaper. It makes me think fondly of <a title="Chris Ames" href="http://chrisam.es/" target="_blank">Chris Ames</a>.', 'Post Format: Image', '', 'publish', 'open', 'open', '', 'post-format-image', '', '', '2012-12-05 05:00:39', '2012-12-05 11:00:39', '', 0, 'http://wpthemetestdata.wordpress.com/?p=568', 0, 'post', '', 0),
(575, 1, '2012-12-04 04:00:15', '2012-12-04 10:00:15', '<blockquote>I suggest a new strategy to you... Let the Wookie win.\n\n<a title="Let The Wookie Win" href="http://www.youtube.com/watch?feature=player_detailpage&amp;v=mO6M4ngKRp0#t=30s" target="_blank">C-3PO</a></blockquote>', 'Post Format: Quote', '', 'publish', 'open', 'open', '', 'post-format-quote', '', '', '2012-12-04 04:00:15', '2012-12-04 10:00:15', '', 0, 'http://wpthemetestdata.wordpress.com/?p=575', 0, 'post', '', 0),
(579, 1, '2012-12-03 03:00:24', '2012-12-03 09:00:24', 'I''ve been thinking a lot about spandex today.', 'Post Format: Status', '', 'publish', 'open', 'open', '', 'post-format-status', '', '', '2012-12-03 03:00:24', '2012-12-03 09:00:24', '', 0, 'http://wpthemetestdata.wordpress.com/?p=579', 0, 'post', '', 0),
(582, 1, '2012-12-02 02:00:58', '2012-12-02 08:00:58', 'http://www.youtube.com/watch?v=nwe-H6l4beM\n\nThe official music video of "Rise Up" from <a title="Eddy Music" href="http://eddymusic.com/" target="_blank">Eddy''s</a> <a title="Eddy - Start An Uproar! EP" href="http://bit.ly/bVmAyI" target="_blank">Start An Uproar!</a> EP.\n\nLearn more about <a title="WordPress Embeds" href="http://codex.wordpress.org/Embeds" target="_blank">WordPress Embeds</a>.', 'Post Format: Video', '', 'publish', 'open', 'open', '', 'post-format-video', '', '', '2012-12-02 02:00:58', '2012-12-02 08:00:58', '', 0, 'http://wpthemetestdata.wordpress.com/?p=582', 0, 'post', '', 0),
(587, 1, '2012-12-01 01:00:44', '2012-12-01 07:00:44', 'Link:\n\n<a href="http://localhost:8080/liweb/wp-content/uploads/2013/03/Eddy-Need-Remix.mp3">Eddy - Need (Remix)</a>\n\nShortcode:\n\n[audio http://localhost:8080/liweb/wp-content/uploads/2013/03/Eddy-Need-Remix.mp3]', 'Post Format: Audio', '', 'publish', 'open', 'open', '', 'post-format-audio', '', '', '2012-12-01 01:00:44', '2012-12-01 07:00:44', '', 0, 'http://wpthemetestdata.wordpress.com/?p=587', 0, 'post', '', 0),
(611, 1, '2011-01-10 06:17:54', '2011-01-10 13:17:54', '', 'canola2', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Donec mollis. Quisque convallis libero in sapien pharetra tincidunt. Aliquam elit ante, malesuada id, tempor eu, gravida id, odio. Maecenas suscipit, risus et eleifend imperdiet, nisi orci ullamcorper massa, et adipiscing orci velit quis magna.', 'inherit', 'open', 'closed', '', 'canola2', '', '', '2011-01-10 06:17:54', '2011-01-10 13:17:54', '', 555, 'http://localhost:8080/liweb/wp-content/uploads/2011/01/canola2.jpg', 0, 'attachment', 'image/jpeg', 0),
(613, 1, '2011-01-10 06:19:10', '2011-01-10 13:19:10', '', 'dsc20050315_145007_132', '', 'inherit', 'open', 'closed', '', 'dsc20050315_145007_132', '', '', '2011-01-10 06:19:10', '2011-01-10 13:19:10', '', 555, 'http://localhost:8080/liweb/wp-content/uploads/2011/01/dsc20050315_145007_132.jpg', 0, 'attachment', 'image/jpeg', 0),
(616, 1, '2011-01-10 06:20:37', '2011-01-10 13:20:37', '', 'dsc20050727_091048_222', '', 'inherit', 'open', 'closed', '', 'dsc20050727_091048_222', '', '', '2011-01-10 06:20:37', '2011-01-10 13:20:37', '', 555, 'http://localhost:8080/liweb/wp-content/uploads/2011/01/dsc20050727_091048_222.jpg', 0, 'attachment', 'image/jpeg', 0),
(617, 1, '2011-01-10 06:20:57', '2011-01-10 13:20:57', '', 'dsc20050813_115856_52', '', 'inherit', 'open', 'closed', '', 'dsc20050813_115856_52', '', '', '2011-01-10 06:20:57', '2011-01-10 13:20:57', '', 555, 'http://localhost:8080/liweb/wp-content/uploads/2011/01/dsc20050813_115856_52.jpg', 0, 'attachment', 'image/jpeg', 0),
(618, 1, '2011-01-10 06:21:14', '2011-01-10 13:21:14', '', 'dsc20050831_165238_332', '', 'inherit', 'open', 'closed', '', 'dsc20050831_165238_332', '', '', '2011-01-10 06:21:14', '2011-01-10 13:21:14', '', 555, 'http://localhost:8080/liweb/wp-content/uploads/2011/01/dsc20050831_165238_332.jpg', 0, 'attachment', 'image/jpeg', 0),
(619, 1, '2011-01-10 06:21:50', '2011-01-10 13:21:50', '', 'dsc20050901_105100_212', 'Seed pods on stem, Woodvale', 'inherit', 'open', 'closed', '', 'dsc20050901_105100_212', '', '', '2011-01-10 06:21:50', '2011-01-10 13:21:50', '', 555, 'http://localhost:8080/liweb/wp-content/uploads/2011/01/dsc20050901_105100_212.jpg', 0, 'attachment', 'image/jpeg', 0),
(674, 1, '2012-12-06 06:00:19', '2012-12-06 12:00:19', '[caption id="attachment_963" align="alignnone" width="1131"]<img class=" wp-image-963" title="Triforce Wallpaper" alt="Triforce Wallpaper" src="http://localhost:8080/liweb/wp-content/uploads/2012/12/triforce-wallpaper.jpg" width="1131" height="707" /> It''s dangerous to go alone! Take this.[/caption]', 'Post Format: Image (Caption)', '', 'publish', 'open', 'open', '', 'post-format-image-caption', '', '', '2012-12-06 06:00:19', '2012-12-06 12:00:19', '', 0, 'http://wpthemetestdata.wordpress.com/?p=674', 0, 'post', '', 0),
(754, 1, '2011-07-15 14:34:50', '2011-07-15 21:34:50', 'Public domain via http://www.burningwell.org/gallery2/v/Objects/100_5540.JPG.html', 'Bell on Wharf', 'Bell on wharf in San Francisco', 'inherit', 'open', 'closed', '', '100_5478', '', '', '2011-07-15 14:34:50', '2011-07-15 21:34:50', '', 555, 'http://localhost:8080/liweb/wp-content/uploads/2011/07/100_5478.jpg', 0, 'attachment', 'image/jpeg', 0),
(755, 1, '2011-07-15 14:35:55', '2011-07-15 21:35:55', 'Public domain via http://www.burningwell.org/gallery2/v/Objects/100_5478.JPG.html', 'Golden Gate Bridge', 'Golden Gate Bridge', 'inherit', 'open', 'closed', '', '100_5540', '', '', '2011-07-15 14:35:55', '2011-07-15 21:35:55', '', 555, 'http://localhost:8080/liweb/wp-content/uploads/2011/07/100_5540.jpg', 0, 'attachment', 'image/jpeg', 0),
(756, 1, '2011-07-15 14:41:24', '2011-07-15 21:41:24', 'Public domain via http://www.burningwell.org/gallery2/v/Landscapes/ocean/CEP00032.jpg.html', 'Sunburst Over River', 'Sunburst over the Clinch River, Southwest Virginia.', 'inherit', 'open', 'closed', '', 'cep00032', '', '', '2011-07-15 14:41:24', '2011-07-15 21:41:24', '', 555, 'http://localhost:8080/liweb/wp-content/uploads/2011/07/cep00032.jpg', 0, 'attachment', 'image/jpeg', 0),
(757, 1, '2011-07-15 14:41:27', '2011-07-15 21:41:27', 'Public domain via http://www.burningwell.org/gallery2/v/Landscapes/ocean/DCP_2082.jpg.html', 'Boardwalk', 'Boardwalk at Westport, WA', 'inherit', 'open', 'closed', '', 'dcp_2082', '', '', '2011-07-15 14:41:27', '2011-07-15 21:41:27', '', 555, 'http://localhost:8080/liweb/wp-content/uploads/2011/07/dcp_2082.jpg', 0, 'attachment', 'image/jpeg', 0),
(758, 1, '2011-07-15 14:41:33', '2011-07-15 21:41:33', 'Public domain via http://www.burningwell.org/gallery2/v/Landscapes/ocean/dsc03149.jpg.html', 'Yachtsody in Blue', 'Boats and reflections, Royal Perth Yacht Club', 'inherit', 'open', 'closed', '', 'dsc03149', '', '', '2011-07-15 14:41:33', '2011-07-15 21:41:33', '', 555, 'http://localhost:8080/liweb/wp-content/uploads/2011/07/dsc03149.jpg', 0, 'attachment', 'image/jpeg', 0),
(759, 1, '2011-07-15 14:41:37', '2011-07-15 21:41:37', 'Public domain via http://www.burningwell.org/gallery2/v/Landscapes/ocean/dsc04563.jpg.html', 'Rain Ripples', 'Raindrop ripples on a pond', 'inherit', 'open', 'closed', '', 'dsc04563', '', '', '2011-07-15 14:41:37', '2011-07-15 21:41:37', '', 555, 'http://localhost:8080/liweb/wp-content/uploads/2011/07/dsc04563.jpg', 0, 'attachment', 'image/jpeg', 0),
(760, 1, '2011-07-15 14:41:41', '2011-07-15 21:41:41', 'Public domain via http://www.burningwell.org/gallery2/v/Objects/dsc09114.jpg.html', 'Sydney Harbor Bridge', 'Sydney Harbor Bridge', 'inherit', 'open', 'closed', '', 'dsc09114', '', '', '2011-07-15 14:41:41', '2011-07-15 21:41:41', '', 555, 'http://localhost:8080/liweb/wp-content/uploads/2011/07/dsc09114.jpg', 0, 'attachment', 'image/jpeg', 0),
(761, 1, '2011-07-15 14:41:42', '2011-07-15 21:41:42', 'Public domain via http://www.burningwell.org/gallery2/v/Landscapes/ocean/dsc20050102_192118_51.jpg.html', 'Wind Farm', 'Albany wind-farm against the sunset, Western Australia', 'inherit', 'open', 'closed', '', 'dsc20050102_192118_51', '', '', '2011-07-15 14:41:42', '2011-07-15 21:41:42', '', 555, 'http://localhost:8080/liweb/wp-content/uploads/2011/07/dsc20050102_192118_51.jpg', 0, 'attachment', 'image/jpeg', 0),
(762, 1, '2011-07-15 14:41:45', '2011-07-15 21:41:45', 'Public domain via http://www.burningwell.org/gallery2/v/Objects/dsc20051220_160808_102.jpg.html', 'Antique Farm Machinery', 'Antique farm machinery, Mount Barker Museum, Western Australia', 'inherit', 'open', 'closed', '', 'dsc20051220_160808_102', '', '', '2011-07-15 14:41:45', '2011-07-15 21:41:45', '', 555, 'http://localhost:8080/liweb/wp-content/uploads/2011/07/dsc20051220_160808_102.jpg', 0, 'attachment', 'image/jpeg', 0),
(763, 1, '2011-07-15 14:46:27', '2011-07-15 21:46:27', 'Public domain via http://www.burningwell.org/gallery2/main.php?g2_view=dynamicalbum.UpdatesAlbum&amp;g2_itemId=25895', 'Orange Iris', 'Orange Iris', 'inherit', 'open', 'closed', '', 'dsc02085', '', '', '2011-07-15 14:46:27', '2011-07-15 21:46:27', '', 555, 'http://localhost:8080/liweb/wp-content/uploads/2011/07/dsc02085.jpg', 0, 'attachment', 'image/jpeg', 0),
(764, 1, '2011-07-15 14:47:17', '2011-07-15 21:47:17', 'Public domain via http://www.burningwell.org/gallery2/v/Objects/dsc20051220_173257_119.jpg.html', 'Rusty Rail', 'Rusty rails with fishplate, Kojonup', 'inherit', 'open', 'closed', '', 'dsc20051220_173257_119', '', '', '2011-07-15 14:47:17', '2011-07-15 21:47:17', '', 555, 'http://localhost:8080/liweb/wp-content/uploads/2011/07/dsc20051220_173257_119.jpg', 0, 'attachment', 'image/jpeg', 0),
(765, 1, '2011-07-15 14:47:20', '2011-07-15 21:47:20', 'Public domain via http://www.burningwell.org/gallery2/v/Landscapes/ocean/dscn3316.jpg.html', 'Sea and Rocks', 'Sea and rocks, Plimmerton, New Zealand', 'inherit', 'open', 'closed', '', 'dscn3316', '', '', '2011-07-15 14:47:20', '2011-07-15 21:47:20', '', 555, 'http://localhost:8080/liweb/wp-content/uploads/2011/07/dscn3316.jpg', 0, 'attachment', 'image/jpeg', 0),
(766, 1, '2011-07-15 14:47:23', '2011-07-15 21:47:23', 'Public domain via http://www.burningwell.org/gallery2/v/Landscapes/ocean/michelle_049.jpg.html', 'Big Sur', 'Beach at Big Sur, CA', 'inherit', 'open', 'closed', '', 'michelle_049', '', '', '2011-07-15 14:47:23', '2011-07-15 21:47:23', '', 555, 'http://localhost:8080/liweb/wp-content/uploads/2011/07/michelle_049.jpg', 0, 'attachment', 'image/jpeg', 0),
(767, 1, '2011-07-15 14:47:26', '2011-07-15 21:47:26', 'Public domain via http://www.burningwell.org/gallery2/v/Objects/Windmill.jpg.html', 'Windmill', 'Windmill shrouded in fog at a farm outside of Walker, Iowa', 'inherit', 'open', 'closed', '', 'dcf-1-0', '', '', '2011-07-15 14:47:26', '2011-07-15 21:47:26', '', 555, 'http://localhost:8080/liweb/wp-content/uploads/2011/07/windmill.jpg', 0, 'attachment', 'image/jpeg', 0),
(768, 1, '2011-07-15 14:49:48', '2011-07-15 21:49:48', 'Public domain via http://www.burningwell.org/gallery2/v/Landscapes/ocean/IMG_0513-1.JPG.html', 'Huatulco Coastline', 'Sunrise over the coast in Huatulco, Oaxaca, Mexico', 'inherit', 'open', 'closed', '', 'alas-i-have-found-my-shangri-la', '', '', '2011-07-15 14:49:48', '2011-07-15 21:49:48', '', 555, 'http://localhost:8080/liweb/wp-content/uploads/2011/07/img_0513-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(769, 1, '2011-07-15 14:50:37', '2011-07-15 21:50:37', 'Public domain via http://www.burningwell.org/gallery2/main.php?g2_view=dynamicalbum.UpdatesAlbum&amp;g2_itemId=25770', 'Brazil Beach', 'Jericoacoara Ceara Brasil', 'inherit', 'open', 'closed', '', 'img_0747', '', '', '2011-07-15 14:50:37', '2011-07-15 21:50:37', '', 555, 'http://localhost:8080/liweb/wp-content/uploads/2011/07/img_0747.jpg', 0, 'attachment', 'image/jpeg', 0),
(770, 1, '2011-07-15 14:51:19', '2011-07-15 21:51:19', 'Public domain via http://www.burningwell.org/gallery2/v/Landscapes/ocean/IMG_0767.JPG.html', 'Huatulco Coastline', 'Coastline in Huatulco, Oaxaca, Mexico', 'inherit', 'open', 'closed', '', 'img_0767', '', '', '2011-07-15 14:51:19', '2011-07-15 21:51:19', '', 555, 'http://localhost:8080/liweb/wp-content/uploads/2011/07/img_0767.jpg', 0, 'attachment', 'image/jpeg', 0),
(771, 1, '2011-07-15 14:51:57', '2011-07-15 21:51:57', 'Public domain via http://www.burningwell.org/gallery2/main.php?g2_view=dynamicalbum.UpdatesAlbum&amp;g2_itemId=25774', 'Boat Barco Texture', 'Boat BW PB Barco Texture Beautiful Fishing', 'inherit', 'open', 'closed', '', 'img_8399', '', '', '2011-07-15 14:51:57', '2011-07-15 21:51:57', '', 555, 'http://localhost:8080/liweb/wp-content/uploads/2011/07/img_8399.jpg', 0, 'attachment', 'image/jpeg', 0),
(807, 1, '2012-06-04 11:36:56', '2012-06-04 18:36:56', '', 'dsc20040724_152504_532', '', 'inherit', 'open', 'closed', '', 'dsc20040724_152504_532-2', '', '', '2012-06-04 11:36:56', '2012-06-04 18:36:56', '', 555, 'http://localhost:8080/liweb/wp-content/uploads/2012/06/dsc20040724_152504_532.jpg', 0, 'attachment', 'image/jpeg', 0),
(811, 1, '2012-06-04 11:58:15', '2012-06-04 18:58:15', '', 'dsc20050604_133440_3421', '', 'inherit', 'open', 'closed', '', 'dsc20050604_133440_3421', '', '', '2012-06-04 11:58:15', '2012-06-04 18:58:15', '', 555, 'http://localhost:8080/liweb/wp-content/uploads/2012/06/dsc20050604_133440_34211.jpg', 0, 'attachment', 'image/jpeg', 0),
(827, 1, '2012-07-05 11:07:34', '2012-07-05 18:07:34', '', 'OLYMPUS DIGITAL CAMERA', '', 'inherit', 'open', 'closed', '', 'olympus-digital-camera', '', '', '2012-07-05 11:07:34', '2012-07-05 18:07:34', '', 0, 'http://localhost:8080/liweb/wp-content/uploads/2012/07/manhattansummer.jpg', 0, 'attachment', 'image/jpeg', 0),
(842, 1, '2013-03-14 09:58:24', '2013-03-14 14:58:24', '', 'I Am Worth Loving Wallpaper', '', 'inherit', 'open', 'open', '', 'soworthloving-wallpaper', '', '', '2013-03-14 09:58:24', '2013-03-14 14:58:24', '', 0, 'http://localhost:8080/liweb/wp-content/uploads/2013/03/soworthloving-wallpaper.jpg', 0, 'attachment', 'image/jpeg', 0),
(861, 1, '2013-01-05 10:00:49', '2013-01-05 16:00:49', 'Verify that:\n<ul>\n	<li>The post title renders the word "with" in <em>italics</em> and the word "markup" in <strong>bold</strong>.</li>\n	<li>The post title markup should be removed from the browser window / tab.</li>\n</ul>', 'Title With Markup', '', 'publish', 'open', 'open', '', 'title-with-markup', '', '', '2013-01-05 10:00:49', '2013-01-05 16:00:49', '', 0, 'http://wptest.io/demo/?p=861', 0, 'post', '', 0),
(867, 1, '2013-01-05 11:00:20', '2013-01-05 17:00:20', 'Putting special characters in the title should have no adverse effect on the layout or functionality.\n\nSpecial characters in the post title have been known to cause issues with JavaScript when it is minified, especially in the admin when editing the post itself (ie. issues with metaboxes, media upload, etc.).', 'Title With Special Characters ~`!@#$%^&*()-_=+{}[]/;:''"?,.>', '', 'publish', 'open', 'open', '', 'title-with-special-characters', '', '', '2013-01-05 11:00:20', '2013-01-05 17:00:20', '', 0, 'http://wptest.io/demo/?p=867', 0, 'post', '', 0),
(877, 1, '2013-01-05 12:00:59', '2013-01-05 18:00:59', 'Super/Duper/Long/NonBreaking/Path/Name/To/A/File/That/Is/Way/Deep/Down/In/Some/Mysterious/Remote/Desolate/Part/Of/The/Operating/System/To/A/File/That/Just/So/Happens/To/Be/Strangely/Named/Supercalifragilisticexpialidocious.txt\n\nA few things to check for:\n<ul>\n	<li>Non-breaking text in the title, content, and comments should have no adverse effects on layout or functionality.</li>\n	<li>Check the browser window / tab title.</li>\n	<li>If you are a plugin or widget developer, check that this text does not break anything.</li>\n</ul>\nThe following CSS properties will help you support non-breaking text.\n<pre>-ms-word-wrap: break-word;\nword-wrap: break-word;</pre>', 'Super/Duper/Long/NonBreaking/Path/Name/To/A/File/That/Is/Way/Deep/Down/In/Some/Mysterious/Remote/Desolate/Part/Of/The/Operating/System/To/A/File/That/Just/So/Happens/To/Be/Strangely/Named/Supercalifragilisticexpialidocious.txt', '', 'publish', 'open', 'open', '', 'non-breaking-text', '', '', '2013-01-05 12:00:59', '2013-01-05 18:00:59', '', 0, 'http://wptest.io/demo/?p=877', 0, 'post', '', 1),
(895, 1, '2013-01-09 09:00:39', '2013-01-09 15:00:39', '<h3>Default</h3>\nThis is a paragraph. It should not have any alignment of any kind. It should just flow like you would normally expect. Nothing fancy. Just straight up text, free flowing, with love. Completely neutral and not picking a side or sitting on the fence. It just is. It just freaking is. It likes where it is. It does not feel compelled to pick a side. Leave him be. It will just be better that way. Trust me.\n<h3>Left Align</h3>\n<p style="text-align: left;">This is a paragraph. It is left aligned. Because of this, it is a bit more liberal in it''s views. It''s favorite color is green. Left align tends to be more eco-friendly, but it provides no concrete evidence that it really is. Even though it likes share the wealth evenly, it leaves the equal distribution up to justified alignment.</p>\n\n<h3>Center Align</h3>\n<p style="text-align: center;">This is a paragraph. It is center aligned. Center is, but nature, a fence sitter. A flip flopper. It has a difficult time making up its mind. It wants to pick a side. Really, it does. It has the best intentions, but it tends to complicate matters more than help. The best you can do is try to win it over and hope for the best. I hear center align does take bribes.</p>\n\n<h3>Right Align</h3>\n<p style="text-align: right;">This is a paragraph. It is right aligned. It is a bit more conservative in it''s views. It''s prefers to not be told what to do or how to do it. Right align totally owns a slew of guns and loves to head to the range for some practice. Which is cool and all. I mean, it''s a pretty good shot from at least four or five football fields away. Dead on. So boss.</p>\n\n<h3>Justify Align</h3>\n<p style="text-align: justify;">This is a paragraph. It is justify aligned. It gets really mad when people associate it with Justin Timberlake. Typically, justified is pretty straight laced. It likes everything to be in it''s place and not all cattywampus like the rest of the aligns. I am not saying that makes it better than the rest of the aligns, but it does tend to put off more of an elitist attitude.</p>', 'Text Alignment', '', 'publish', 'open', 'open', '', 'text-alignment', '', '', '2013-01-09 09:00:39', '2013-01-09 15:00:39', '', 0, 'http://wptest.io/demo/?p=895', 0, 'post', '', 0),
(903, 1, '2013-01-10 20:15:40', '2013-01-11 02:15:40', 'Welcome to image alignment! The best way to demonstrate the ebb and flow of the various image positioning options is to nestle them snuggly among an ocean of words. Grab a paddle and let''s get started.\n\nOn the topic of alignment, it should be noted that users can choose from the options of <em>None</em>, <em>Left</em>, <em>Right, </em>and <em>Center</em>. In addition, they also get the options of <em>Thumbnail</em>, <em>Medium</em>, <em>Large</em> &amp; <em>Fullsize</em>.\n<p style="text-align: center;"><img class="size-full wp-image-906 aligncenter" title="Image Alignment 580x300" alt="Image Alignment 580x300" src="http://localhost:8080/liweb/wp-content/uploads/2013/03/image-alignment-580x300.jpg" width="580" height="300" /></p>\nThe image above happens to be <em><strong>centered</strong></em>.\n\n<strong><img class="size-full wp-image-904 alignleft" title="Image Alignment 150x150" alt="Image Alignment 150x150" src="http://localhost:8080/liweb/wp-content/uploads/2013/03/image-alignment-150x150.jpg" width="150" height="150" /></strong>The rest of this paragraph is filler for the sake of seeing the text wrap around the 150x150 image, which is <em><strong>left aligned</strong></em>. <strong></strong>\n\nAs you can see the should be some space above, below, and to the right of the image. The text should not be creeping on the image. Creeping is just not right. Images need breathing room too. Let them speak like you words. Let them do their jobs without any hassle from the text. In about one more sentence here, we''ll see that the text moves from the right of the image down below the image in seamless transition. Again, letting the do it''s thang. Mission accomplished!\n\nAnd now for a <em><strong>massively large image</strong></em>. It also has <em><strong>no alignment</strong></em>.\n\n<img class="alignnone  wp-image-907" title="Image Alignment 1200x400" alt="Image Alignment 1200x400" src="http://localhost:8080/liweb/wp-content/uploads/2013/03/image-alignment-1200x4002.jpg" width="1200" height="400" />\n\nThe image above, though 1200px wide, should not overflow the content area. It should remain contained with no visible disruption to the flow of content.\n\n<img class="size-full wp-image-905 alignright" title="Image Alignment 300x200" alt="Image Alignment 300x200" src="http://localhost:8080/liweb/wp-content/uploads/2013/03/image-alignment-300x200.jpg" width="300" height="200" />\n\nAnd now we''re going to shift things to the <em><strong>right align</strong></em>. Again, there should be plenty of room above, below, and to the left of the image. Just look at him there... Hey guy! Way to rock that right side. I don''t care what the left aligned image says, you look great. Don''t let anyone else tell you differently.\n\nIn just a bit here, you should see the text start to wrap below the right aligned image and settle in nicely. There should still be plenty of room and everything should be sitting pretty. Yeah... Just like that. It never felt so good to be right.\n\nAnd just when you thought we were done, we''re going to do them all over again with captions!\n\n[caption id="attachment_906" align="aligncenter" width="580"]<img class="size-full wp-image-906  " title="Image Alignment 580x300" alt="Image Alignment 580x300" src="http://localhost:8080/liweb/wp-content/uploads/2013/03/image-alignment-580x300.jpg" width="580" height="300" /> Look at 580x300 getting some <a title="Image Settings" href="http://en.support.wordpress.com/images/image-settings/">caption</a> love.[/caption]\n\nThe image above happens to be <em><strong>centered</strong></em>. The caption also has a link in it, just to see if it does anything funky.\n\n[caption id="attachment_904" align="alignleft" width="150"]<img class="size-full wp-image-904  " title="Image Alignment 150x150" alt="Image Alignment 150x150" src="http://localhost:8080/liweb/wp-content/uploads/2013/03/image-alignment-150x150.jpg" width="150" height="150" /> Itty-bitty caption.[/caption]\n\n<strong></strong>The rest of this paragraph is filler for the sake of seeing the text wrap around the 150x150 image, which is <em><strong>left aligned</strong></em>. <strong></strong>\n\nAs you can see the should be some space above, below, and to the right of the image. The text should not be creeping on the image. Creeping is just not right. Images need breathing room too. Let them speak like you words. Let them do their jobs without any hassle from the text. In about one more sentence here, we''ll see that the text moves from the right of the image down below the image in seamless transition. Again, letting the do it''s thang. Mission accomplished!\n\nAnd now for a <em><strong>massively large image</strong></em>. It also has <em><strong>no alignment</strong></em>.\n\n[caption id="attachment_907" align="alignnone" width="1200"]<img class=" wp-image-907" title="Image Alignment 1200x400" alt="Image Alignment 1200x400" src="http://localhost:8080/liweb/wp-content/uploads/2013/03/image-alignment-1200x4002.jpg" width="1200" height="400" /> Massive image comment for your eyeballs.[/caption]\n\nThe image above, though 1200px wide, should not overflow the content area. It should remain contained with no visible disruption to the flow of content.\n\n[caption id="attachment_905" align="alignright" width="300"]<img class="size-full wp-image-905 " title="Image Alignment 300x200" alt="Image Alignment 300x200" src="http://localhost:8080/liweb/wp-content/uploads/2013/03/image-alignment-300x200.jpg" width="300" height="200" /> Feels good to be right all the time.[/caption]\n\nAnd now we''re going to shift things to the <em><strong>right align</strong></em>. Again, there should be plenty of room above, below, and to the left of the image. Just look at him there... Hey guy! Way to rock that right side. I don''t care what the left aligned image says, you look great. Don''t let anyone else tell you differently.\n\nIn just a bit here, you should see the text start to wrap below the right aligned image and settle in nicely. There should still be plenty of room and everything should be sitting pretty. Yeah... Just like that. It never felt so good to be right.\n\nAnd that''s a wrap, yo! You survived the tumultuous waters of alignment. Image alignment achievement unlocked!', 'Image Alignment', '', 'publish', 'open', 'open', '', 'image-alignment', '', '', '2013-01-10 20:15:40', '2013-01-11 02:15:40', '', 0, 'http://wptest.io/demo/?p=903', 0, 'post', '', 0),
(904, 1, '2013-03-14 19:44:49', '2013-03-15 00:44:49', '', 'Image Alignment 150x150', '', 'inherit', 'open', 'open', '', 'image-alignment-150x150', '', '', '2013-03-14 19:44:49', '2013-03-15 00:44:49', '', 903, 'http://localhost:8080/liweb/wp-content/uploads/2013/03/image-alignment-150x150.jpg', 0, 'attachment', 'image/jpeg', 0),
(905, 1, '2013-03-14 19:44:49', '2013-03-15 00:44:49', '', 'Image Alignment 300x200', '', 'inherit', 'open', 'open', '', 'image-alignment-300x200', '', '', '2013-03-14 19:44:49', '2013-03-15 00:44:49', '', 903, 'http://localhost:8080/liweb/wp-content/uploads/2013/03/image-alignment-300x200.jpg', 0, 'attachment', 'image/jpeg', 0),
(906, 1, '2013-03-14 19:44:50', '2013-03-15 00:44:50', '', 'Image Alignment 580x300', '', 'inherit', 'open', 'open', '', 'image-alignment-580x300', '', '', '2013-03-14 19:44:50', '2013-03-15 00:44:50', '', 903, 'http://localhost:8080/liweb/wp-content/uploads/2013/03/image-alignment-580x300.jpg', 0, 'attachment', 'image/jpeg', 0),
(907, 1, '2013-03-14 19:44:50', '2013-03-15 00:44:50', '', 'Image Alignment 1200x4002', '', 'inherit', 'open', 'open', '', 'image-alignment-1200x4002', '', '', '2013-03-14 19:44:50', '2013-03-15 00:44:50', '', 903, 'http://localhost:8080/liweb/wp-content/uploads/2013/03/image-alignment-1200x4002.jpg', 0, 'attachment', 'image/jpeg', 0),
(919, 1, '2013-01-11 20:22:19', '2013-01-12 02:22:19', '<h2>Headings</h2>\n<h1>Header one</h1>\n<h2>Header two</h2>\n<h3>Header three</h3>\n<h4>Header four</h4>\n<h5>Header five</h5>\n<h6>Header six</h6>\n<h2>Blockquotes</h2>\nSingle line blockquote:\n<blockquote>Stay hungry. Stay foolish.</blockquote>\nMulti line blockquote with a cite reference:\n<blockquote>People think focus means saying yes to the thing you''ve got to focus on. But that''s not what it means at all. It means saying no to the hundred other good ideas that there are. You have to pick carefully. I''m actually as proud of the things we haven''t done as the things I have done. Innovation is saying no to 1,000 things. <cite>Steve Jobs - Apple Worldwide Developers'' Conference, 1997</cite></blockquote>\n<h2>Tables</h2>\n<table>\n<tbody>\n<tr>\n<th>Employee</th>\n<th class="views">Salary</th>\n<th></th>\n</tr>\n<tr class="odd">\n<td><a href="http://john.do/">John Saddington</a></td>\n<td>$1</td>\n<td>Because that''s all Steve Job'' needed for a salary.</td>\n</tr>\n<tr class="even">\n<td><a href="http://tommcfarlin.com/">Tom McFarlin</a></td>\n<td>$100K</td>\n<td>For all the blogging he does.</td>\n</tr>\n<tr class="odd">\n<td><a href="http://jarederickson.com/">Jared Erickson</a></td>\n<td>$100M</td>\n<td>Pictures are worth a thousand words, right? So Tom x 1,000.</td>\n</tr>\n<tr class="even">\n<td><a href="http://chrisam.es/">Chris Ames</a></td>\n<td>$100B</td>\n<td>With hair like that?! Enough said...</td>\n</tr>\n</tbody>\n</table>\n<h2>Definition Lists</h2>\n<dl><dt>Definition List Title</dt><dd>Definition list division.</dd><dt>Startup</dt><dd>A startup company or startup is a company or temporary organization designed to search for a repeatable and scalable business model.</dd><dt>#dowork</dt><dd>Coined by Rob Dyrdek and his personal body guard Christopher "Big Black" Boykins, "Do Work" works as a self motivator, to motivating your friends.</dd><dt>Do It Live</dt><dd>I''ll let Bill O''Reilly will <a title="We''ll Do It Live" href="https://www.youtube.com/watch?v=O_HyZ5aW76c">explain</a> this one.</dd></dl>\n<h2>Unordered Lists (Nested)</h2>\n<ul>\n	<li>List item one\n<ul>\n	<li>List item one\n<ul>\n	<li>List item one</li>\n	<li>List item two</li>\n	<li>List item three</li>\n	<li>List item four</li>\n</ul>\n</li>\n	<li>List item two</li>\n	<li>List item three</li>\n	<li>List item four</li>\n</ul>\n</li>\n	<li>List item two</li>\n	<li>List item three</li>\n	<li>List item four</li>\n</ul>\n<h2>Ordered List (Nested)</h2>\n<ol>\n	<li>List item one\n<ol>\n	<li>List item one\n<ol>\n	<li>List item one</li>\n	<li>List item two</li>\n	<li>List item three</li>\n	<li>List item four</li>\n</ol>\n</li>\n	<li>List item two</li>\n	<li>List item three</li>\n	<li>List item four</li>\n</ol>\n</li>\n	<li>List item two</li>\n	<li>List item three</li>\n	<li>List item four</li>\n</ol>\n<h2>HTML Tags</h2>\nThese supported tags come from the WordPress.com code <a title="Code" href="http://en.support.wordpress.com/code/">FAQ</a>.\n\n<strong>Address Tag</strong>\n\n<address>1 Infinite Loop\nCupertino, CA 95014\nUnited States</address><strong>Anchor Tag (aka. Link)</strong>\n\nThis is an example of a <a title="Apple" href="http://apple.com">link</a>.\n\n<strong>Abbreviation Tag</strong>\n\nThe abbreviation <abbr title="Seriously">srsly</abbr> stands for "seriously".\n\n<strong>Acronym Tag</strong>\n\nThe acronym <acronym title="For The Win">ftw</acronym> stands for "for the win".\n\n<strong>Big Tag</strong>\n\nThese tests are a <big>big</big> deal, but this tag is no longer supported in HTML5.\n\n<strong>Cite Tag</strong>\n\n"Code is poetry." --<cite>Automattic</cite>\n\n<strong>Code Tag</strong>\n\nYou will learn later on in these tests that <code>word-wrap: break-word;</code> will be your best friend.\n\n<strong>Delete Tag</strong>\n\nThis tag will let you <del>strikeout text</del>, but this tag is no longer supported in HTML5 (use the <code>&lt;strike&gt;</code> instead).\n\n<strong>Emphasize Tag</strong>\n\nThe emphasize tag should <em>italicize</em> text.\n\n<strong>Insert Tag</strong>\n\nThis tag should denote <ins>inserted</ins> text.\n\n<strong>Keyboard Tag</strong>\n\nThis scarsly known tag emulates <kbd>keyboard text</kbd>, which is usually styled like the <code>&lt;code&gt;</code> tag.\n\n<strong>Preformatted Tag</strong>\n\nThis tag styles large blocks of code.\n<pre>.post-title {\n	margin: 0 0 5px;\n	font-weight: bold;\n	font-size: 38px;\n	line-height: 1.2;\n}</pre>\n<strong>Quote Tag</strong>\n\n<q>Developers, developers, developers...</q> --Steve Ballmer\n\n<strong>Strong Tag</strong>\n\nThis tag shows <strong>bold<strong> text.</strong></strong>\n\n<strong>Subscript Tag</strong>\n\nGetting our science styling on with H<sub>2</sub>O, which should push the "2" down.\n\n<strong>Superscript Tag</strong>\n\nStill sticking with science and Albert Einstein''s E = MC<sup>2</sup>, which should lift the "2" up.\n\n<strong>Teletype Tag</strong>\n\nThis rarely used tag emulates <tt>teletype text</tt>, which is usually styled like the <code>&lt;code&gt;</code> tag.\n\n<strong>Variable Tag</strong>\n\nThis allows you to denote <var>variables</var>.', 'Markup And Formatting', '', 'publish', 'open', 'open', '', 'markup-and-formatting', '', '', '2013-01-11 20:22:19', '2013-01-12 02:22:19', '', 0, 'http://wptest.io/demo/?p=919', 0, 'post', '', 0),
(922, 1, '2013-03-16 01:03:21', '0000-00-00 00:00:00', 'This post is drafted and not published yet.\n\nIt should not be displayed by the theme.', 'Draft', '', 'draft', 'open', 'open', '', '', '', '', '2013-03-16 01:03:21', '0000-00-00 00:00:00', '', 0, 'http://wptest.io/demo/?p=922', 0, 'post', '', 0),
(946, 1, '2012-12-11 11:00:11', '2012-12-11 17:00:11', '<strong>This is an example of a standard post format</strong>.\n\nInspiration is a spark. A flash of light. Ignition. But without the proper mixture of oxygen and fuel, inspiration both lives and dies in the same instant. My life, my experiences, my research; these things are fertile soil for the great blog posts hidden within me. I carry them always and they are present when I sit down to do my work.\n\nBut all too often, it’s a struggle. The raw material is there, but the inspiration is not. The oxygen is abundant, but the fuel is scarce. And I’m left wondering, “How?”\n\nHow do I harvest? How do I sift and pan? How do I mine the caverns within me for intellectual and emotional gems? How do I… write?\n\nOr perhaps a better question is, how do you? Yes, <em>you</em>, my kindred blog reader. Surely, <em>you</em> are similar. Surely, <em>you’ve</em> wrestled the Great Muse down to the dusty earth, and won.\n\nI know this: it starts before I sit down to type. Great posts begin with significant life challenges. With weighty problems to solve. With an urgent need or a mature discontent with the way things are today. Yes, I think all great posts begin before words are written.\n\nSo get up, reader. Walk away from your keyboard, and live.\n\nOnly then can you give life… to words.', 'Post Format: Standard', '', 'publish', 'open', 'open', '', 'post-format-standard', '', '', '2012-12-11 11:00:11', '2012-12-11 17:00:11', '', 0, 'http://wptest.io/demo/?p=946', 0, 'post', '', 0),
(963, 1, '2013-03-14 22:04:43', '2013-03-15 03:04:43', 'It''s dangerous to go alone! Take this.', 'Triforce Wallpaper', '', 'inherit', 'open', 'open', '', 'triforce-wallpaper', '', '', '2013-03-14 22:04:43', '2013-03-15 03:04:43', '', 674, 'http://localhost:8080/liweb/wp-content/uploads/2012/12/triforce-wallpaper.jpg', 0, 'attachment', 'image/jpeg', 0),
(967, 1, '2013-03-14 22:10:39', '2013-03-15 03:10:39', '', 'Unicorn Wallpaper', '', 'inherit', 'open', 'open', '', 'unicorn-wallpaper', '', '', '2013-03-14 22:10:39', '2013-03-15 03:10:39', '', 568, 'http://localhost:8080/liweb/wp-content/uploads/2012/12/unicorn-wallpaper.jpg', 0, 'attachment', 'image/jpeg', 0),
(976, 1, '2013-03-14 22:35:29', '2013-03-15 03:35:29', '', 'Eddy - Need (Remix)', '', 'inherit', 'open', 'open', '', 'eddy-need-remix', '', '', '2013-03-14 22:35:29', '2013-03-15 03:35:29', '', 0, 'http://localhost:8080/liweb/wp-content/uploads/2013/03/Eddy-Need-Remix.mp3', 0, 'attachment', 'audio/mpeg', 0),
(977, 1, '2016-02-18 08:54:16', '2016-02-18 08:54:16', '', '', '', 'inherit', 'open', 'closed', '', '977', '', '', '2016-02-18 08:54:16', '2016-02-18 08:54:16', '', 0, 'http://localhost:8080/liweb/977/', 0, 'attachment', 'image/jpeg', 0),
(993, 1, '2013-03-15 14:38:08', '2013-03-15 19:38:08', 'This is the post content.', 'Excerpt', 'This is a post excerpt.', 'publish', 'open', 'open', '', 'excerpt', '', '', '2013-03-15 14:38:08', '2013-03-15 19:38:08', '', 0, 'http://wptest.io/demo/?p=993', 0, 'post', '', 0),
(996, 1, '2013-03-15 14:41:11', '2013-03-15 19:41:11', 'This content is before the <a title="The More Tag" href="http://en.support.wordpress.com/splitting-content/more-tag/" target="_blank">more tag</a>.\n\nRight after this sentence should be a "continue reading" button of some sort.\n\n<!--more-->\n\nAnd this content is after the more tag.', 'More Tag', '', 'publish', 'open', 'open', '', 'more-tag', '', '', '2013-03-15 14:41:11', '2013-03-15 19:41:11', '', 0, 'http://wptest.io/demo/?p=996', 0, 'post', '', 0),
(1000, 1, '2013-03-15 14:48:32', '2013-03-15 19:48:32', 'Nested and mixed lists are an interesting beast. It''s a corner case to make sure that\n<ul>\n	<li>Lists within lists do not break the ordered list numbering order</li>\n	<li>Your list styles go deep enough</li>\n</ul>\n<h3>Ordered - Unordered - Ordered</h3>\n<ol>\n	<li>ordered item</li>\n	<li>ordered item\n<ul>\n	<li><strong>unordered</strong></li>\n	<li><strong>unordered</strong>\n<ol>\n	<li>ordered item</li>\n	<li>ordered item</li>\n</ol>\n</li>\n</ul>\n</li>\n	<li>ordered item</li>\n	<li>ordered item</li>\n</ol>\n<h3>Ordered - Unordered - Unordered</h3>\n<ol>\n	<li>ordered item</li>\n	<li>ordered item\n<ul>\n	<li><strong>unordered</strong></li>\n	<li><strong>unordered</strong>\n<ul>\n	<li>unordered item</li>\n	<li>unordered item</li>\n</ul>\n</li>\n</ul>\n</li>\n	<li>ordered item</li>\n	<li>ordered item</li>\n</ol>\n<h3>Unordered - Ordered - Unordered</h3>\n<ul>\n	<li>unordered item</li>\n	<li>unordered item\n<ol>\n	<li>ordered</li>\n	<li>ordered\n<ul>\n	<li>unordered item</li>\n	<li>unordered item</li>\n</ul>\n</li>\n</ol>\n</li>\n	<li>unordered item</li>\n	<li>unordered item</li>\n</ul>\n<h3>Unordered - Unordered - Ordered</h3>\n<ul>\n	<li>unordered item</li>\n	<li>unordered item\n<ul>\n	<li>unordered</li>\n	<li>unordered\n<ol>\n	<li><strong>ordered item</strong></li>\n	<li><strong>ordered item</strong></li>\n</ol>\n</li>\n</ul>\n</li>\n	<li>unordered item</li>\n	<li>unordered item</li>\n</ul>', 'Nested And Mixed Lists', '', 'publish', 'open', 'open', '', 'nested-and-mixed-lists', '', '', '2013-03-15 14:48:32', '2013-03-15 19:48:32', '', 0, 'http://wptest.io/demo/?p=1000', 0, 'post', '', 0),
(1005, 1, '2012-12-02 03:00:34', '2012-12-02 09:00:34', '[wpvideo tFnqC9XQ w=680]\n\n<a title="VideoPress Plugin for WordPress" href="http://videopress.com/" target="_blank">VideoPress</a>, especially as a video post format, usually provides some unique styling issues.\n\nYou will need to install <a title="Jetpack for WordPress" href="http://jetpack.me/" target="_blank">Jetpack</a> or <a title="Slim Jetpack" href="http://wordpress.org/extend/plugins/slimjetpack/" target="_blank">Slim Jetpack</a> plugin to turn the shortcode into a viewable video.', 'Post Format: Video (VideoPress)', '', 'publish', 'open', 'open', '', 'post-format-video-videopress', '', '', '2012-12-02 03:00:34', '2012-12-02 09:00:34', '', 0, 'http://wptest.io/demo/?p=1005', 0, 'post', '', 0),
(1011, 1, '2013-03-15 15:15:12', '2013-03-15 20:15:12', 'This post should display a <a title="Featured Images" href="http://en.support.wordpress.com/featured-images/#setting-a-featured-image" target="_blank">featured image</a>, if the theme <a title="Post Thumbnails" href="http://codex.wordpress.org/Post_Thumbnails" target="_blank">supports it</a>.\n\nNon-square images can provide some unique styling issues.\n\nThis post tests a horizontal featured image.', 'Featured Image (Horizontal)', '', 'publish', 'open', 'open', '', 'featured-image-horizontal', '', '', '2013-03-15 15:15:12', '2013-03-15 20:15:12', '', 0, 'http://wptest.io/demo/?p=1011', 0, 'post', '', 0),
(1016, 1, '2013-03-15 15:36:32', '2013-03-15 20:36:32', 'This post should display a <a title="Featured Images" href="http://en.support.wordpress.com/featured-images/#setting-a-featured-image" target="_blank">featured image</a>, if the theme <a title="Post Thumbnails" href="http://codex.wordpress.org/Post_Thumbnails" target="_blank">supports it</a>.\n\nNon-square images can provide some unique styling issues.\n\nThis post tests a vertical featured image.', 'Featured Image (Vertical)', '', 'publish', 'open', 'open', '', 'featured-image-vertical', '', '', '2013-03-15 15:36:32', '2013-03-15 20:36:32', '', 0, 'http://wptest.io/demo/?p=1016', 0, 'post', '', 0),
(1022, 1, '2013-03-15 15:40:38', '2013-03-15 20:40:38', '', 'Horizontal Featured Image', '', 'inherit', 'open', 'open', '', 'featured-image-horizontal-2', '', '', '2013-03-15 15:40:38', '2013-03-15 20:40:38', '', 1011, 'http://localhost:8080/liweb/wp-content/uploads/2013/03/featured-image-horizontal.jpg', 0, 'attachment', 'image/jpeg', 0),
(1024, 1, '2013-03-15 15:41:09', '2013-03-15 20:41:09', '', 'Vertical Featured Image', '', 'inherit', 'open', 'open', '', 'featured-image-vertical-2', '', '', '2013-03-15 15:41:09', '2013-03-15 20:41:09', '', 1016, 'http://localhost:8080/liweb/wp-content/uploads/2013/03/featured-image-vertical.jpg', 0, 'attachment', 'image/jpeg', 0),
(1027, 1, '2013-03-15 15:47:16', '2013-03-15 20:47:16', 'https://twitter.com/carlsmith/status/258214236126322689\n\nThis post tests WordPress'' <a title="Twitter Embeds" href="http://en.support.wordpress.com/twitter/twitter-embeds/" target="_blank">Twitter Embeds</a> feature.', 'Twitter Embeds', '', 'publish', 'open', 'open', '', 'twitter-embeds', '', '', '2013-03-15 15:47:16', '2013-03-15 20:47:16', '', 0, 'http://wptest.io/demo/?p=1027', 0, 'post', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1031, 1, '2013-03-15 17:23:27', '2013-03-15 22:23:27', 'This is a test for Jetpack''s Tiled Gallery.\n\nYou can install <a title="Jetpack for WordPress" href="http://jetpack.me/" target="_blank">Jetpack</a> or <a title="Slim Jetpack" href="http://wordpress.org/extend/plugins/slimjetpack/" target="_blank">Slim Jetpack</a> to test it out.\n\n[gallery type="rectangular" columns="4" ids="1261,1038,1039,1040,1041,1042" orderby="rand"]\n\nThis is some text after the Tiled Gallery just to make sure that everything spaces nicely.', 'Tiled Gallery', '', 'publish', 'open', 'open', '', 'tiled-gallery', '', '', '2013-03-15 17:23:27', '2013-03-15 22:23:27', '', 0, 'http://wptest.io/demo/?p=1031', 0, 'post', '', 0),
(1038, 1, '2013-03-15 17:27:04', '2013-03-15 22:27:04', '', 'Fight Club', '', 'inherit', 'open', 'open', '', 'fight-club', '', '', '2013-03-15 17:27:04', '2013-03-15 22:27:04', '', 1031, 'http://localhost:8080/liweb/wp-content/uploads/2013/03/fight-club.jpg', 0, 'attachment', 'image/jpeg', 0),
(1039, 1, '2013-03-15 17:27:06', '2013-03-15 22:27:06', '', 'Iron Man 2', '', 'inherit', 'open', 'open', '', 'ironman-2', '', '', '2013-03-15 17:27:06', '2013-03-15 22:27:06', '', 1031, 'http://localhost:8080/liweb/wp-content/uploads/2013/03/ironman-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(1040, 1, '2013-03-15 17:27:07', '2013-03-15 22:27:07', '', 'Man Of Steel', '', 'inherit', 'open', 'open', '', 'man-of-steel', '', '', '2013-03-15 17:27:07', '2013-03-15 22:27:07', '', 1031, 'http://localhost:8080/liweb/wp-content/uploads/2013/03/man-of-steel.jpg', 0, 'attachment', 'image/jpeg', 0),
(1041, 1, '2013-03-15 17:27:08', '2013-03-15 22:27:08', '', 'The Amazing Spider Man', '', 'inherit', 'open', 'open', '', 'spider-man', '', '', '2013-03-15 17:27:08', '2013-03-15 22:27:08', '', 1031, 'http://localhost:8080/liweb/wp-content/uploads/2013/03/spider-man.jpg', 0, 'attachment', 'image/jpeg', 0),
(1042, 1, '2013-03-15 17:27:09', '2013-03-15 22:27:09', '', 'The Dark Knight Rises', '', 'inherit', 'open', 'open', '', 'the-dark-knight-rises', '', '', '2013-03-15 17:27:09', '2013-03-15 22:27:09', '', 1031, 'http://localhost:8080/liweb/wp-content/uploads/2013/03/the-dark-knight-rises.jpg', 0, 'attachment', 'image/jpeg', 0),
(1062, 1, '2013-03-15 17:48:51', '2013-03-15 22:48:51', '<iframe src="http://astore.amazon.com/iogiea09-20" height="4000" width="100%" frameborder="0" scrolling="no"></iframe>', 'Amazon Store', '', 'publish', 'open', 'open', '', 'amazon-store', '', '', '2013-03-15 17:48:51', '2013-03-15 22:48:51', '', 0, 'http://wptest.io/demo/?page_id=1062', 0, 'page', '', 0),
(1064, 1, '2013-03-15 17:56:11', '2013-03-15 22:56:11', 'Note that you will probably want to test this page in conjunction with the <strong>Blog</strong> page.\n\nTo test this page:\n<ul>\n	<li>Navigate to <strong><em>Settings &gt; Reading</em></strong> in the WordPress admin.</li>\n	<li>Then use the settings in the screenshot below.</li>\n</ul>\n<img class="alignnone size-full wp-image-1071" alt="Static Pages" src="http://localhost:8080/liweb/wp-content/uploads/2013/03/static-pages.png" width="1390" height="1022" />\n\nA few things to check once this is done.\n<ul>\n	<li>Navigating to the root URL loads this page.</li>\n	<li>The site title should be an <code>H1</code> and the page title should be an <code>H2</code> (if displayed).</li>\n	<li>Check that the browser window / tab name is what you intend it to show.</li>\n	<li>If your theme displays breadcrumbs, they should probably not show when this page is the front page.</li>\n</ul>', 'Home', '', 'publish', 'open', 'open', '', 'home', '', '', '2013-03-15 17:56:11', '2013-03-15 22:56:11', '', 0, 'http://wptest.io/demo/?page_id=1064', 0, 'page', '', 0),
(1066, 1, '2013-03-15 17:59:55', '2013-03-15 22:59:55', 'Note that you will probably want to test this page in conjunction with the <strong>Home</strong> page.\n\nTo test this page:\n<ul>\n	<li>Navigate to <strong><em>Settings &gt; Reading</em></strong> in the WordPress admin.</li>\n	<li>Then use the settings in the screenshot below.</li>\n</ul>\n<img class="alignnone size-full wp-image-1071" alt="Static Pages" src="http://localhost:8080/liweb/wp-content/uploads/2013/03/static-pages.png" width="1390" height="1022" />\n\nA few things to check once this is done.\n<ul>\n	<li>Navigating to the Blog page does <strong>not</strong> display this page. It should display blog posts.</li>\n	<li>Check that the browser window / tab name is what you intend it to show.</li>\n	<li>If your theme displays breadcrumbs, they should probably not show when this is the posts page.</li>\n</ul>', 'Blog', '', 'publish', 'open', 'open', '', 'blog', '', '', '2013-03-15 17:59:55', '2013-03-15 22:59:55', '', 0, 'http://wptest.io/demo/?page_id=1066', 0, 'page', '', 0),
(1071, 1, '2013-03-15 18:02:10', '2013-03-15 23:02:10', '', 'Static Pages', '', 'inherit', 'open', 'open', '', 'static-pages', '', '', '2013-03-15 18:02:10', '2013-03-15 23:02:10', '', 1064, 'http://localhost:8080/liweb/wp-content/uploads/2013/03/static-pages.png', 0, 'attachment', 'image/png', 0),
(1072, 1, '2016-02-18 08:54:35', '2016-02-18 08:54:35', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2016-02-18 08:59:24', '2016-02-18 08:59:24', '', 0, 'http://localhost:8080/liweb/2016/02/18/home/', 1, 'nav_menu_item', '', 0),
(1075, 1, '2013-03-15 18:15:14', '2013-03-15 23:15:14', 'This page has its comments, pingbacks, and trackbacks disabled.\n\nThere should be no comment reply form or any pingbacks and trackbacks listed.', 'Page Comments Disabled', '', 'publish', 'closed', 'closed', '', 'page-comments-disabled', '', '', '2013-03-15 18:15:14', '2013-03-15 23:15:14', '', 0, 'http://wptest.io/demo/?page_id=1075', 0, 'page', '', 0),
(1077, 1, '2013-03-15 18:16:08', '2013-03-15 23:16:08', 'This post has its comments, pingbacks, and trackbacks enabled.\n\nIf your theme support comments on pages, then they should show up below.', 'Page Comments', '', 'publish', 'open', 'open', '', 'page-comments', '', '', '2013-03-15 18:16:08', '2013-03-15 23:16:08', '', 0, 'http://wptest.io/demo/?page_id=1077', 0, 'page', '', 1),
(1080, 1, '2013-03-15 18:19:23', '2013-03-15 23:19:23', 'Welcome to image alignment! The best way to demonstrate the ebb and flow of the various image positioning options is to nestle them snuggly among an ocean of words. Grab a paddle and let''s get started.\n\nOn the topic of alignment, it should be noted that users can choose from the options of <em>None</em>, <em>Left</em>, <em>Right, </em>and <em>Center</em>. In addition, they also get the options of <em>Thumbnail</em>, <em>Medium</em>, <em>Large</em> &amp; <em>Fullsize</em>.\n<p style="text-align: center;"><img class="size-full wp-image-906 aligncenter" title="Image Alignment 580x300" alt="Image Alignment 580x300" src="http://localhost:8080/liweb/wp-content/uploads/2013/03/image-alignment-580x300.jpg" width="580" height="300" /></p>\nThe image above happens to be <em><strong>centered</strong></em>.\n\n<strong><img class="size-full wp-image-904 alignleft" title="Image Alignment 150x150" alt="Image Alignment 150x150" src="http://localhost:8080/liweb/wp-content/uploads/2013/03/image-alignment-150x150.jpg" width="150" height="150" /></strong>The rest of this paragraph is filler for the sake of seeing the text wrap around the 150x150 image, which is <em><strong>left aligned</strong></em>. <strong></strong>\n\nAs you can see the should be some space above, below, and to the right of the image. The text should not be creeping on the image. Creeping is just not right. Images need breathing room too. Let them speak like you words. Let them do their jobs without any hassle from the text. In about one more sentence here, we''ll see that the text moves from the right of the image down below the image in seamless transition. Again, letting the do it''s thang. Mission accomplished!\n\nAnd now for a <em><strong>massively large image</strong></em>. It also has <em><strong>no alignment</strong></em>.\n\n<img class="alignnone  wp-image-907" title="Image Alignment 1200x400" alt="Image Alignment 1200x400" src="http://localhost:8080/liweb/wp-content/uploads/2013/03/image-alignment-1200x4002.jpg" width="1200" height="400" />\n\nThe image above, though 1200px wide, should not overflow the content area. It should remain contained with no visible disruption to the flow of content.\n\n<img class="size-full wp-image-905 alignright" title="Image Alignment 300x200" alt="Image Alignment 300x200" src="http://localhost:8080/liweb/wp-content/uploads/2013/03/image-alignment-300x200.jpg" width="300" height="200" />\n\nAnd now we''re going to shift things to the <em><strong>right align</strong></em>. Again, there should be plenty of room above, below, and to the left of the image. Just look at him there... Hey guy! Way to rock that right side. I don''t care what the left aligned image says, you look great. Don''t let anyone else tell you differently.\n\nIn just a bit here, you should see the text start to wrap below the right aligned image and settle in nicely. There should still be plenty of room and everything should be sitting pretty. Yeah... Just like that. It never felt so good to be right.\n\nAnd just when you thought we were done, we''re going to do them all over again with captions!\n\n[caption id="attachment_906" align="aligncenter" width="580"]<img class="size-full wp-image-906  " title="Image Alignment 580x300" alt="Image Alignment 580x300" src="http://localhost:8080/liweb/wp-content/uploads/2013/03/image-alignment-580x300.jpg" width="580" height="300" /> Look at 580x300 getting some <a title="Image Settings" href="http://en.support.wordpress.com/images/image-settings/">caption</a> love.[/caption]\n\nThe image above happens to be <em><strong>centered</strong></em>. The caption also has a link in it, just to see if it does anything funky.\n\n[caption id="attachment_904" align="alignleft" width="150"]<img class="size-full wp-image-904  " title="Image Alignment 150x150" alt="Image Alignment 150x150" src="http://localhost:8080/liweb/wp-content/uploads/2013/03/image-alignment-150x150.jpg" width="150" height="150" /> Itty-bitty caption.[/caption]\n\n<strong></strong>The rest of this paragraph is filler for the sake of seeing the text wrap around the 150x150 image, which is <em><strong>left aligned</strong></em>. <strong></strong>\n\nAs you can see the should be some space above, below, and to the right of the image. The text should not be creeping on the image. Creeping is just not right. Images need breathing room too. Let them speak like you words. Let them do their jobs without any hassle from the text. In about one more sentence here, we''ll see that the text moves from the right of the image down below the image in seamless transition. Again, letting the do it''s thang. Mission accomplished!\n\nAnd now for a <em><strong>massively large image</strong></em>. It also has <em><strong>no alignment</strong></em>.\n\n[caption id="attachment_907" align="alignnone" width="1200"]<img class=" wp-image-907" title="Image Alignment 1200x400" alt="Image Alignment 1200x400" src="http://localhost:8080/liweb/wp-content/uploads/2013/03/image-alignment-1200x4002.jpg" width="1200" height="400" /> Massive image comment for your eyeballs.[/caption]\n\nThe image above, though 1200px wide, should not overflow the content area. It should remain contained with no visible disruption to the flow of content.\n\n[caption id="attachment_905" align="alignright" width="300"]<img class="size-full wp-image-905 " title="Image Alignment 300x200" alt="Image Alignment 300x200" src="http://localhost:8080/liweb/wp-content/uploads/2013/03/image-alignment-300x200.jpg" width="300" height="200" /> Feels good to be right all the time.[/caption]\n\nAnd now we''re going to shift things to the <em><strong>right align</strong></em>. Again, there should be plenty of room above, below, and to the left of the image. Just look at him there... Hey guy! Way to rock that right side. I don''t care what the left aligned image says, you look great. Don''t let anyone else tell you differently.\n\nIn just a bit here, you should see the text start to wrap below the right aligned image and settle in nicely. There should still be plenty of room and everything should be sitting pretty. Yeah... Just like that. It never felt so good to be right.\n\nAnd that''s a wrap, yo! You survived the tumultuous waters of alignment. Image alignment achievement unlocked!', 'Page Image Alignment', '', 'publish', 'open', 'open', '', 'page-image-alignment', '', '', '2013-03-15 18:19:23', '2013-03-15 23:19:23', '', 0, 'http://wptest.io/demo/?page_id=1080', 0, 'page', '', 0),
(1083, 1, '2013-03-15 18:20:05', '2013-03-15 23:20:05', '<h2>Headings</h2>\n<h1>Header one</h1>\n<h2>Header two</h2>\n<h3>Header three</h3>\n<h4>Header four</h4>\n<h5>Header five</h5>\n<h6>Header six</h6>\n<h2>Blockquotes</h2>\nSingle line blockquote:\n<blockquote>Stay hungry. Stay foolish.</blockquote>\nMulti line blockquote with a cite reference:\n<blockquote>People think focus means saying yes to the thing you''ve got to focus on. But that''s not what it means at all. It means saying no to the hundred other good ideas that there are. You have to pick carefully. I''m actually as proud of the things we haven''t done as the things I have done. Innovation is saying no to 1,000 things. <cite>Steve Jobs - Apple Worldwide Developers'' Conference, 1997</cite></blockquote>\n<h2>Tables</h2>\n<table>\n<tbody>\n<tr>\n<th>Employee</th>\n<th class="views">Salary</th>\n<th></th>\n</tr>\n<tr class="odd">\n<td><a href="http://john.do/">John Saddington</a></td>\n<td>$1</td>\n<td>Because that''s all Steve Job'' needed for a salary.</td>\n</tr>\n<tr class="even">\n<td><a href="http://tommcfarlin.com/">Tom McFarlin</a></td>\n<td>$100K</td>\n<td>For all the blogging he does.</td>\n</tr>\n<tr class="odd">\n<td><a href="http://jarederickson.com/">Jared Erickson</a></td>\n<td>$100M</td>\n<td>Pictures are worth a thousand words, right? So Tom x 1,000.</td>\n</tr>\n<tr class="even">\n<td><a href="http://chrisam.es/">Chris Ames</a></td>\n<td>$100B</td>\n<td>With hair like that?! Enough said...</td>\n</tr>\n</tbody>\n</table>\n<h2>Definition Lists</h2>\n<dl><dt>Definition List Title</dt><dd>Definition list division.</dd><dt>Startup</dt><dd>A startup company or startup is a company or temporary organization designed to search for a repeatable and scalable business model.</dd><dt>#dowork</dt><dd>Coined by Rob Dyrdek and his personal body guard Christopher "Big Black" Boykins, "Do Work" works as a self motivator, to motivating your friends.</dd><dt>Do It Live</dt><dd>I''ll let Bill O''Reilly will <a title="We''ll Do It Live" href="https://www.youtube.com/watch?v=O_HyZ5aW76c">explain</a> this one.</dd></dl>\n<h2>Unordered Lists (Nested)</h2>\n<ul>\n	<li>List item one\n<ul>\n	<li>List item one\n<ul>\n	<li>List item one</li>\n	<li>List item two</li>\n	<li>List item three</li>\n	<li>List item four</li>\n</ul>\n</li>\n	<li>List item two</li>\n	<li>List item three</li>\n	<li>List item four</li>\n</ul>\n</li>\n	<li>List item two</li>\n	<li>List item three</li>\n	<li>List item four</li>\n</ul>\n<h2>Ordered List (Nested)</h2>\n<ol>\n	<li>List item one\n<ol>\n	<li>List item one\n<ol>\n	<li>List item one</li>\n	<li>List item two</li>\n	<li>List item three</li>\n	<li>List item four</li>\n</ol>\n</li>\n	<li>List item two</li>\n	<li>List item three</li>\n	<li>List item four</li>\n</ol>\n</li>\n	<li>List item two</li>\n	<li>List item three</li>\n	<li>List item four</li>\n</ol>\n<h2>HTML Tags</h2>\nThese supported tags come from the WordPress.com code <a title="Code" href="http://en.support.wordpress.com/code/">FAQ</a>.\n\n<strong>Address Tag</strong>\n\n<address>1 Infinite Loop\nCupertino, CA 95014\nUnited States</address><strong>Anchor Tag (aka. Link)</strong>\n\nThis is an example of a <a title="Apple" href="http://apple.com">link</a>.\n\n<strong>Abbreviation Tag</strong>\n\nThe abbreviation <abbr title="Seriously">srsly</abbr> stands for "seriously".\n\n<strong>Acronym Tag</strong>\n\nThe acronym <acronym title="For The Win">ftw</acronym> stands for "for the win".\n\n<strong>Big Tag</strong>\n\nThese tests are a <big>big</big> deal, but this tag is no longer supported in HTML5.\n\n<strong>Cite Tag</strong>\n\n"Code is poetry." --<cite>Automattic</cite>\n\n<strong>Code Tag</strong>\n\nYou will learn later on in these tests that <code>word-wrap: break-word;</code> will be your best friend.\n\n<strong>Delete Tag</strong>\n\nThis tag will let you <del>strikeout text</del>, but this tag is no longer supported in HTML5 (use the <code>&lt;strike&gt;</code> instead).\n\n<strong>Emphasize Tag</strong>\n\nThe emphasize tag should <em>italicize</em> text.\n\n<strong>Insert Tag</strong>\n\nThis tag should denote <ins>inserted</ins> text.\n\n<strong>Keyboard Tag</strong>\n\nThis scarsly known tag emulates <kbd>keyboard text</kbd>, which is usually styled like the <code>&lt;code&gt;</code> tag.\n\n<strong>Preformatted Tag</strong>\n\nThis tag styles large blocks of code.\n<pre>.post-title {\n	margin: 0 0 5px;\n	font-weight: bold;\n	font-size: 38px;\n	line-height: 1.2;\n}</pre>\n<strong>Quote Tag</strong>\n\n<q>Developers, developers, developers...</q> --Steve Ballmer\n\n<strong>Strong Tag</strong>\n\nThis tag shows <strong>bold<strong> text.</strong></strong>\n\n<strong>Subscript Tag</strong>\n\nGetting our science styling on with H<sub>2</sub>O, which should push the "2" down.\n\n<strong>Superscript Tag</strong>\n\nStill sticking with science and Albert Einstein''s E = MC<sup>2</sup>, which should lift the "2" up.\n\n<strong>Teletype Tag</strong>\n\nThis rarely used tag emulates <tt>teletype text</tt>, which is usually styled like the <code>&lt;code&gt;</code> tag.\n\n<strong>Variable Tag</strong>\n\nThis allows you to denote <var>variables</var>.', 'Page Markup And Formatting', '', 'publish', 'open', 'open', '', 'page-markup-and-formatting', '', '', '2013-03-15 18:20:05', '2013-03-15 23:20:05', '', 0, 'http://wptest.io/demo/?page_id=1083', 0, 'page', '', 0),
(1086, 1, '2013-03-15 18:21:12', '2013-03-15 23:21:12', '<a title="WP Test - The Best Tests For WordPress" href="http://wptest.io" target="_blank">WP Test</a> is a fantastically exhaustive set of test data to measure the integrity of your plugins and themes.\n\nThe foundation of these tests are derived from <a title="Theme Unit Test" href="http://codex.wordpress.org/Theme_Unit_Test" target="_blank">WordPress’ Theme Unit Test Codex</a> data. It’s paired with lessons learned from over three years of theme and plugin support, and baffling corner cases, to create a potent cocktail of simulated, quirky user content.\n\nThe word "comprehensive" was purposely left off this description. It''s not. There will always be something new squarely scenario to test. That''s where you come in. <a title="Contact" href="http://wptest.io/contact/">Let us know</a> of a test we''re not covering. We''d love to squash it.\n\nLet’s make WordPress testing easier and resilient together.', 'About', '', 'publish', 'open', 'open', '', 'about', '', '', '2013-03-15 18:21:12', '2013-03-15 23:21:12', '', 0, 'http://wptest.io/demo/?page_id=1086', 0, 'page', '', 0),
(1088, 1, '2013-03-15 18:24:09', '2013-03-15 23:24:09', 'This page the a parent page.\n\nIt contains child pages.', 'Parent Page', '', 'publish', 'open', 'open', '', 'parent-page', '', '', '2013-03-15 18:24:09', '2013-03-15 23:24:09', '', 0, 'http://wptest.io/demo/?page_id=1088', 0, 'page', '', 0),
(1090, 1, '2013-03-15 18:25:40', '2013-03-15 23:25:40', 'This is a child page.', 'Child Page 01', '', 'publish', 'open', 'open', '', 'child-page-01', '', '', '2013-03-15 18:25:40', '2013-03-15 23:25:40', '', 1088, 'http://wptest.io/demo/?page_id=1090', 0, 'page', '', 0),
(1092, 1, '2013-03-15 18:25:51', '2013-03-15 23:25:51', 'This is a child page.', 'Child Page 02', '', 'publish', 'open', 'closed', '', 'child-page-02', '', '', '2013-03-15 18:25:51', '2013-03-15 23:25:51', '', 1088, 'http://wptest.io/demo/?page_id=1092', 0, 'page', '', 0),
(1094, 1, '2013-03-15 18:26:23', '2013-03-15 23:26:23', 'This is a child page.\n\nAnd, just for fun, it also contains a child page (aka. a grandchild page).', 'Child Page 03', '', 'publish', 'open', 'closed', '', 'child-page-03', '', '', '2013-03-15 18:26:23', '2013-03-15 23:26:23', '', 1088, 'http://wptest.io/demo/?page_id=1094', 0, 'page', '', 0),
(1096, 1, '2013-03-15 18:26:40', '2013-03-15 23:26:40', 'This is a child page.', 'Child Page 04', '', 'publish', 'open', 'open', '', 'child-page-04', '', '', '2013-03-15 18:26:40', '2013-03-15 23:26:40', '', 1088, 'http://wptest.io/demo/?page_id=1096', 0, 'page', '', 0),
(1098, 1, '2013-03-15 18:27:40', '2013-03-15 23:27:40', 'This is a child page.', 'Child Page 05', '', 'publish', 'open', 'open', '', 'child-page-05', '', '', '2013-03-15 18:27:40', '2013-03-15 23:27:40', '', 1088, 'http://wptest.io/demo/?page_id=1098', 0, 'page', '', 0),
(1102, 1, '2013-03-15 18:28:48', '2013-03-15 23:28:48', 'This is a grandchild page.', 'Grandchild Page', '', 'publish', 'open', 'open', '', 'grandchild-page', '', '', '2013-03-15 18:28:48', '2013-03-15 23:28:48', '', 1094, 'http://wptest.io/demo/?page_id=1102', 0, 'page', '', 0),
(1241, 1, '2013-01-07 07:07:21', '2013-01-07 13:07:21', 'This is a sticky post.\n\nThere are a few things to verify:\n<ul>\n	<li>The sticky post should be distinctly recognizable in some way in comparison to normal posts. You can style the <code>.sticky</code> class if you are using the <a title="WordPress Codex post_class() Function" href="http://codex.wordpress.org/Function_Reference/post_class" target="_blank">post_class()</a> function to generate your post classes, which is a best practice.</li>\n	<li>They should show at the very top of the blog index page, even though they could be several posts back chronologically.</li>\n	<li>They should still show up again in their chronologically correct postion in time, but without the sticky indicator.</li>\n	<li>If you have a plugin or widget that lists popular posts or comments, make sure that this sticky post is not always at the top of those lists unless it really is popular.</li>\n</ul>', 'Sticky', '', 'publish', 'open', 'open', '', 'sticky', '', '', '2013-01-07 07:07:21', '2013-01-07 13:07:21', '', 0, 'http://wptest.io/demo/?p=1241', 0, 'post', '', 0),
(1261, 1, '2014-09-08 21:14:12', '2014-09-09 02:14:12', '', 'Captain America', '', 'inherit', 'open', 'open', '', 'captain-america', '', '', '2014-09-08 21:14:12', '2014-09-09 02:14:12', '', 1031, 'http://localhost:8080/liweb/wp-content/uploads/2013/03/captain-america.jpg', 0, 'attachment', 'image/jpeg', 0),
(1303, 1, '2016-02-18 08:54:53', '2016-02-18 08:54:53', '', 'Pages', '', 'publish', 'closed', 'closed', '', 'pages', '', '', '2016-02-18 08:54:53', '2016-02-18 08:54:53', '', 0, 'http://localhost:8080/liweb/2016/02/18/pages/', 2, 'nav_menu_item', '', 0),
(1304, 1, '2016-02-18 08:54:53', '2016-02-18 08:54:53', '', 'Categories', '', 'publish', 'closed', 'closed', '', 'categories', '', '', '2016-02-18 08:54:53', '2016-02-18 08:54:53', '', 0, 'http://localhost:8080/liweb/2016/02/18/categories/', 10, 'nav_menu_item', '', 0),
(1322, 1, '2016-02-18 08:55:00', '2016-02-18 08:55:00', '', 'Depth', '', 'publish', 'closed', 'closed', '', 'depth', '', '', '2016-02-18 08:55:00', '2016-02-18 08:55:00', '', 0, 'http://localhost:8080/liweb/2016/02/18/depth/', 29, 'nav_menu_item', '', 0),
(1323, 1, '2016-02-18 08:55:01', '2016-02-18 08:55:01', '', 'Level 01', '', 'publish', 'closed', 'closed', '', 'level-01', '', '', '2016-02-18 08:55:01', '2016-02-18 08:55:01', '', 0, 'http://localhost:8080/liweb/2016/02/18/level-01/', 30, 'nav_menu_item', '', 0),
(1324, 1, '2016-02-18 08:55:01', '2016-02-18 08:55:01', '', 'Level 02', '', 'publish', 'closed', 'closed', '', 'level-02', '', '', '2016-02-18 08:55:01', '2016-02-18 08:55:01', '', 0, 'http://localhost:8080/liweb/2016/02/18/level-02/', 31, 'nav_menu_item', '', 0),
(1325, 1, '2016-02-18 08:55:01', '2016-02-18 08:55:01', '', 'Level 03', '', 'publish', 'closed', 'closed', '', 'level-03', '', '', '2016-02-18 08:55:01', '2016-02-18 08:55:01', '', 0, 'http://localhost:8080/liweb/2016/02/18/level-03/', 32, 'nav_menu_item', '', 0),
(1326, 1, '2016-02-18 08:55:01', '2016-02-18 08:55:01', '', 'Level 04', '', 'publish', 'closed', 'closed', '', 'level-04', '', '', '2016-02-18 08:55:01', '2016-02-18 08:55:01', '', 0, 'http://localhost:8080/liweb/2016/02/18/level-04/', 33, 'nav_menu_item', '', 0),
(1327, 1, '2016-02-18 08:55:02', '2016-02-18 08:55:02', '', 'Level 05', '', 'publish', 'closed', 'closed', '', 'level-05', '', '', '2016-02-18 08:55:02', '2016-02-18 08:55:02', '', 0, 'http://localhost:8080/liweb/2016/02/18/level-05/', 34, 'nav_menu_item', '', 0),
(1328, 1, '2016-02-18 08:55:02', '2016-02-18 08:55:02', '', 'Level 06', '', 'publish', 'closed', 'closed', '', 'level-06', '', '', '2016-02-18 08:55:02', '2016-02-18 08:55:02', '', 0, 'http://localhost:8080/liweb/2016/02/18/level-06/', 35, 'nav_menu_item', '', 0),
(1329, 1, '2016-02-18 08:55:02', '2016-02-18 08:55:02', '', 'Level 07', '', 'publish', 'closed', 'closed', '', 'level-07', '', '', '2016-02-18 08:55:02', '2016-02-18 08:55:02', '', 0, 'http://localhost:8080/liweb/2016/02/18/level-07/', 36, 'nav_menu_item', '', 0),
(1330, 1, '2016-02-18 08:55:03', '2016-02-18 08:55:03', '', 'Level 08', '', 'publish', 'closed', 'closed', '', 'level-08', '', '', '2016-02-18 08:55:03', '2016-02-18 08:55:03', '', 0, 'http://localhost:8080/liweb/2016/02/18/level-08/', 37, 'nav_menu_item', '', 0),
(1331, 1, '2016-02-18 08:55:03', '2016-02-18 08:55:03', '', 'Level 09', '', 'publish', 'closed', 'closed', '', 'level-09', '', '', '2016-02-18 08:55:03', '2016-02-18 08:55:03', '', 0, 'http://localhost:8080/liweb/2016/02/18/level-09/', 38, 'nav_menu_item', '', 0),
(1332, 1, '2016-02-18 08:55:04', '2016-02-18 08:55:04', '', 'Level 10', '', 'publish', 'closed', 'closed', '', 'level-10', '', '', '2016-02-18 08:55:04', '2016-02-18 08:55:04', '', 0, 'http://localhost:8080/liweb/2016/02/18/level-10/', 39, 'nav_menu_item', '', 0),
(1333, 1, '2016-02-18 08:55:04', '2016-02-18 08:55:04', '', 'Advanced', '', 'publish', 'closed', 'closed', '', 'advanced', '', '', '2016-02-18 08:55:04', '2016-02-18 08:55:04', '', 0, 'http://localhost:8080/liweb/2016/02/18/advanced/', 40, 'nav_menu_item', '', 0),
(1334, 1, '2016-02-18 08:55:07', '2016-02-18 08:55:07', 'Custom Menu Description', 'Menu Description', '', 'publish', 'closed', 'closed', '', 'menu-description', '', '', '2016-02-18 08:55:07', '2016-02-18 08:55:07', '', 0, 'http://localhost:8080/liweb/2016/02/18/menu-description/', 43, 'nav_menu_item', '', 0),
(1335, 1, '2016-02-18 08:55:07', '2016-02-18 08:55:07', '', 'Menu Title Attribute', 'Custom Title Attribute', 'publish', 'closed', 'closed', '', 'menu-title-attribute', '', '', '2016-02-18 08:55:07', '2016-02-18 08:55:07', '', 0, 'http://localhost:8080/liweb/2016/02/18/menu-title-attribute/', 41, 'nav_menu_item', '', 0),
(1336, 1, '2016-02-18 08:55:08', '2016-02-18 08:55:08', '', 'Menu CSS Class', '', 'publish', 'closed', 'closed', '', 'menu-css-class', '', '', '2016-02-18 08:55:08', '2016-02-18 08:55:08', '', 0, 'http://localhost:8080/liweb/2016/02/18/menu-css-class/', 42, 'nav_menu_item', '', 0),
(1337, 1, '2016-02-18 08:55:08', '2016-02-18 08:55:08', '', 'New Window / Tab', '', 'publish', 'closed', 'closed', '', 'new-window-tab', '', '', '2016-02-18 08:55:08', '2016-02-18 08:55:08', '', 0, 'http://localhost:8080/liweb/2016/02/18/new-window-tab/', 44, 'nav_menu_item', '', 0),
(1340, 1, '2016-02-18 08:55:21', '2016-02-18 08:55:21', ' ', '', '', 'publish', 'closed', 'closed', '', '1340', '', '', '2016-02-18 08:59:24', '2016-02-18 08:59:24', '', 0, 'http://localhost:8080/liweb/2016/02/18/1340/', 2, 'nav_menu_item', '', 0),
(1341, 1, '2016-02-18 08:55:21', '2016-02-18 08:55:21', ' ', '', '', 'publish', 'closed', 'closed', '', '1341', '', '', '2016-02-18 08:59:24', '2016-02-18 08:59:24', '', 0, 'http://localhost:8080/liweb/2016/02/18/1341/', 3, 'nav_menu_item', '', 0),
(1342, 1, '2016-02-18 08:55:22', '2016-02-18 08:55:22', ' ', '', '', 'publish', 'closed', 'closed', '', '1342', '', '', '2016-02-18 08:59:24', '2016-02-18 08:59:24', '', 0, 'http://localhost:8080/liweb/2016/02/18/1342/', 4, 'nav_menu_item', '', 0),
(1343, 1, '2016-02-18 08:55:23', '2016-02-18 08:55:23', ' ', '', '', 'publish', 'closed', 'closed', '', '1343', '', '', '2016-02-18 08:59:24', '2016-02-18 08:59:24', '', 0, 'http://localhost:8080/liweb/2016/02/18/1343/', 5, 'nav_menu_item', '', 0),
(1344, 1, '2016-02-18 08:55:24', '2016-02-18 08:55:24', ' ', '', '', 'publish', 'closed', 'closed', '', '1344', '', '', '2016-02-18 08:59:24', '2016-02-18 08:59:24', '', 0, 'http://localhost:8080/liweb/2016/02/18/1344/', 6, 'nav_menu_item', '', 0),
(1345, 1, '2016-02-18 08:55:24', '2016-02-18 08:55:24', ' ', '', '', 'publish', 'closed', 'closed', '', '1345', '', '', '2016-02-18 08:59:24', '2016-02-18 08:59:24', '', 0, 'http://localhost:8080/liweb/2016/02/18/1345/', 7, 'nav_menu_item', '', 0),
(1346, 1, '2016-02-18 08:55:24', '2016-02-18 08:55:24', ' ', '', '', 'publish', 'closed', 'closed', '', '1346', '', '', '2016-02-18 08:59:24', '2016-02-18 08:59:24', '', 0, 'http://localhost:8080/liweb/2016/02/18/1346/', 8, 'nav_menu_item', '', 0),
(1347, 1, '2016-02-18 08:55:24', '2016-02-18 08:55:24', ' ', '', '', 'publish', 'closed', 'closed', '', '1347', '', '', '2016-02-18 08:59:24', '2016-02-18 08:59:24', '', 0, 'http://localhost:8080/liweb/2016/02/18/1347/', 9, 'nav_menu_item', '', 0),
(1348, 1, '2016-02-18 08:55:25', '2016-02-18 08:55:25', ' ', '', '', 'publish', 'closed', 'closed', '', '1348', '', '', '2016-02-18 08:59:24', '2016-02-18 08:59:24', '', 0, 'http://localhost:8080/liweb/2016/02/18/1348/', 10, 'nav_menu_item', '', 0),
(1349, 1, '2016-02-18 08:55:25', '2016-02-18 08:55:25', ' ', '', '', 'publish', 'closed', 'closed', '', '1349', '', '', '2016-02-18 08:59:24', '2016-02-18 08:59:24', '', 1088, 'http://localhost:8080/liweb/2016/02/18/1349/', 11, 'nav_menu_item', '', 0),
(1350, 1, '2016-02-18 08:55:25', '2016-02-18 08:55:25', ' ', '', '', 'publish', 'closed', 'closed', '', '1350', '', '', '2016-02-18 08:59:24', '2016-02-18 08:59:24', '', 1088, 'http://localhost:8080/liweb/2016/02/18/1350/', 12, 'nav_menu_item', '', 0),
(1351, 1, '2016-02-18 08:55:25', '2016-02-18 08:55:25', ' ', '', '', 'publish', 'closed', 'closed', '', '1351', '', '', '2016-02-18 08:59:24', '2016-02-18 08:59:24', '', 1088, 'http://localhost:8080/liweb/2016/02/18/1351/', 13, 'nav_menu_item', '', 0),
(1352, 1, '2016-02-18 08:55:25', '2016-02-18 08:55:25', ' ', '', '', 'publish', 'closed', 'closed', '', '1352', '', '', '2016-02-18 08:59:24', '2016-02-18 08:59:24', '', 1094, 'http://localhost:8080/liweb/2016/02/18/1352/', 14, 'nav_menu_item', '', 0),
(1353, 1, '2016-02-18 08:55:26', '2016-02-18 08:55:26', ' ', '', '', 'publish', 'closed', 'closed', '', '1353', '', '', '2016-02-18 08:59:24', '2016-02-18 08:59:24', '', 1088, 'http://localhost:8080/liweb/2016/02/18/1353/', 15, 'nav_menu_item', '', 0),
(1354, 1, '2016-02-18 08:55:26', '2016-02-18 08:55:26', ' ', '', '', 'publish', 'closed', 'closed', '', '1354', '', '', '2016-02-18 08:59:24', '2016-02-18 08:59:24', '', 1088, 'http://localhost:8080/liweb/2016/02/18/1354/', 16, 'nav_menu_item', '', 0),
(1355, 1, '2016-02-18 08:55:26', '2016-02-18 08:55:26', ' ', '', '', 'publish', 'closed', 'closed', '', '1355', '', '', '2016-02-18 08:55:26', '2016-02-18 08:55:26', '', 0, 'http://localhost:8080/liweb/2016/02/18/1355/', 1, 'nav_menu_item', '', 0),
(1356, 1, '2016-02-18 08:55:26', '2016-02-18 08:55:26', ' ', '', '', 'publish', 'closed', 'closed', '', '1356', '', '', '2016-02-18 08:55:26', '2016-02-18 08:55:26', '', 0, 'http://localhost:8080/liweb/2016/02/18/1356/', 3, 'nav_menu_item', '', 0),
(1357, 1, '2016-02-18 08:55:26', '2016-02-18 08:55:26', ' ', '', '', 'publish', 'closed', 'closed', '', '1357', '', '', '2016-02-18 08:55:26', '2016-02-18 08:55:26', '', 0, 'http://localhost:8080/liweb/2016/02/18/1357/', 4, 'nav_menu_item', '', 0),
(1358, 1, '2016-02-18 08:55:27', '2016-02-18 08:55:27', ' ', '', '', 'publish', 'closed', 'closed', '', '1358', '', '', '2016-02-18 08:55:27', '2016-02-18 08:55:27', '', 0, 'http://localhost:8080/liweb/2016/02/18/1358/', 5, 'nav_menu_item', '', 0),
(1359, 1, '2016-02-18 08:55:27', '2016-02-18 08:55:27', ' ', '', '', 'publish', 'closed', 'closed', '', '1359', '', '', '2016-02-18 08:55:27', '2016-02-18 08:55:27', '', 0, 'http://localhost:8080/liweb/2016/02/18/1359/', 6, 'nav_menu_item', '', 0),
(1360, 1, '2016-02-18 08:55:27', '2016-02-18 08:55:27', ' ', '', '', 'publish', 'closed', 'closed', '', '1360', '', '', '2016-02-18 08:55:27', '2016-02-18 08:55:27', '', 0, 'http://localhost:8080/liweb/2016/02/18/1360/', 7, 'nav_menu_item', '', 0),
(1361, 1, '2016-02-18 08:55:27', '2016-02-18 08:55:27', ' ', '', '', 'publish', 'closed', 'closed', '', '1361', '', '', '2016-02-18 08:55:27', '2016-02-18 08:55:27', '', 0, 'http://localhost:8080/liweb/2016/02/18/1361/', 8, 'nav_menu_item', '', 0),
(1362, 1, '2016-02-18 08:55:27', '2016-02-18 08:55:27', ' ', '', '', 'publish', 'closed', 'closed', '', '1362', '', '', '2016-02-18 08:55:27', '2016-02-18 08:55:27', '', 0, 'http://localhost:8080/liweb/2016/02/18/1362/', 9, 'nav_menu_item', '', 0),
(1364, 1, '2016-02-18 08:59:53', '2016-02-18 08:59:53', ' ', '', '', 'publish', 'closed', 'closed', '', '1364', '', '', '2016-02-19 08:48:54', '2016-02-19 08:48:54', '', 0, 'http://localhost:8080/liweb/?p=1364', 4, 'nav_menu_item', '', 0),
(1366, 1, '2016-02-18 08:59:53', '2016-02-18 08:59:53', ' ', '', '', 'publish', 'closed', 'closed', '', '1366', '', '', '2016-02-19 08:48:54', '2016-02-19 08:48:54', '', 0, 'http://localhost:8080/liweb/?p=1366', 5, 'nav_menu_item', '', 0),
(1367, 1, '2016-02-18 08:59:54', '2016-02-18 08:59:54', ' ', '', '', 'publish', 'closed', 'closed', '', '1367', '', '', '2016-02-19 08:48:54', '2016-02-19 08:48:54', '', 0, 'http://localhost:8080/liweb/?p=1367', 3, 'nav_menu_item', '', 0),
(1369, 1, '2016-02-18 08:59:54', '2016-02-18 08:59:54', ' ', '', '', 'publish', 'closed', 'closed', '', '1369', '', '', '2016-02-19 08:48:54', '2016-02-19 08:48:54', '', 0, 'http://localhost:8080/liweb/?p=1369', 2, 'nav_menu_item', '', 0),
(1372, 1, '2016-02-19 03:09:32', '2016-02-19 03:09:32', '', 'new-slider-image', '', 'inherit', 'open', 'closed', '', 'new-slider-image', '', '', '2016-02-19 03:09:32', '2016-02-19 03:09:32', '', 0, 'http://localhost:8080/liweb/wp-content/uploads/2016/02/new-slider-image.jpg', 0, 'attachment', 'image/jpeg', 0),
(1373, 1, '2016-02-19 03:09:33', '2016-02-19 03:09:33', '', 'seo', '', 'inherit', 'open', 'closed', '', 'seo', '', '', '2016-02-19 03:09:33', '2016-02-19 03:09:33', '', 0, 'http://localhost:8080/liweb/wp-content/uploads/2016/02/seo.jpg', 0, 'attachment', 'image/jpeg', 0),
(1374, 1, '2016-02-19 03:09:33', '2016-02-19 03:09:33', '', 'slider-business-intelligence-freight', '', 'inherit', 'open', 'closed', '', 'slider-business-intelligence-freight', '', '', '2016-02-19 03:09:33', '2016-02-19 03:09:33', '', 0, 'http://localhost:8080/liweb/wp-content/uploads/2016/02/slider-business-intelligence-freight.png', 0, 'attachment', 'image/png', 0),
(1375, 1, '2016-02-19 03:34:30', '2016-02-19 03:34:30', '', 'bg_dm', '', 'inherit', 'open', 'closed', '', 'bg_dm', '', '', '2016-02-19 03:34:30', '2016-02-19 03:34:30', '', 0, 'http://localhost:8080/liweb/wp-content/uploads/2016/02/bg_dm.png', 0, 'attachment', 'image/png', 0),
(1376, 1, '2016-02-19 04:07:40', '2016-02-19 04:07:40', '', 'bg_vps', '', 'inherit', 'open', 'closed', '', 'bg_vps', '', '', '2016-02-19 04:07:40', '2016-02-19 04:07:40', '', 0, 'http://localhost:8080/liweb/wp-content/uploads/2016/02/bg_vps.jpg', 0, 'attachment', 'image/jpeg', 0),
(1377, 1, '2016-02-19 04:22:28', '2016-02-19 04:22:28', '', 'iphone-6-mockup-1', '', 'inherit', 'open', 'closed', '', 'iphone-6-mockup-1', '', '', '2016-02-19 04:22:28', '2016-02-19 04:22:28', '', 0, 'http://localhost:8080/liweb/wp-content/uploads/2016/02/iphone-6-mockup-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(1378, 1, '2016-02-19 04:50:02', '2016-02-19 04:50:02', '', 'Untitled-1', '', 'inherit', 'open', 'closed', '', 'untitled-1', '', '', '2016-02-19 04:50:02', '2016-02-19 04:50:02', '', 0, 'http://localhost:8080/liweb/wp-content/uploads/2016/02/Untitled-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(1379, 1, '2016-02-19 07:19:02', '2016-02-19 07:19:02', '', 'HOME', '', 'publish', 'closed', 'closed', '', 'home-2', '', '', '2016-02-19 08:48:53', '2016-02-19 08:48:53', '', 0, 'http://localhost:8080/liweb/?p=1379', 1, 'nav_menu_item', '', 0),
(1380, 1, '2016-02-19 08:07:26', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2016-02-19 08:07:26', '0000-00-00 00:00:00', '', 0, 'http://localhost:8080/liweb/?p=1380', 1, 'nav_menu_item', '', 0),
(1381, 1, '2016-02-19 08:07:44', '2016-02-19 08:07:44', ' ', '', '', 'publish', 'closed', 'closed', '', '1381', '', '', '2016-02-19 08:07:44', '2016-02-19 08:07:44', '', 0, 'http://localhost:8080/liweb/?p=1381', 1, 'nav_menu_item', '', 0),
(1382, 1, '2016-02-19 08:07:45', '2016-02-19 08:07:45', ' ', '', '', 'publish', 'closed', 'closed', '', '1382', '', '', '2016-02-19 08:07:45', '2016-02-19 08:07:45', '', 0, 'http://localhost:8080/liweb/?p=1382', 2, 'nav_menu_item', '', 0),
(1383, 1, '2016-02-19 08:07:45', '2016-02-19 08:07:45', ' ', '', '', 'publish', 'closed', 'closed', '', '1383', '', '', '2016-02-19 08:07:45', '2016-02-19 08:07:45', '', 0, 'http://localhost:8080/liweb/?p=1383', 3, 'nav_menu_item', '', 0),
(1385, 1, '2016-02-19 08:14:37', '2016-02-19 08:14:37', ' ', '', '', 'publish', 'closed', 'closed', '', '1385', '', '', '2016-02-19 08:42:24', '2016-02-19 08:42:24', '', 0, 'http://localhost:8080/liweb/?p=1385', 1, 'nav_menu_item', '', 0),
(1386, 1, '2016-02-19 08:14:37', '2016-02-19 08:14:37', ' ', '', '', 'publish', 'closed', 'closed', '', '1386', '', '', '2016-02-19 08:42:24', '2016-02-19 08:42:24', '', 0, 'http://localhost:8080/liweb/?p=1386', 2, 'nav_menu_item', '', 0),
(1387, 1, '2016-02-19 08:14:37', '2016-02-19 08:14:37', ' ', '', '', 'publish', 'closed', 'closed', '', '1387', '', '', '2016-02-19 08:42:24', '2016-02-19 08:42:24', '', 0, 'http://localhost:8080/liweb/?p=1387', 3, 'nav_menu_item', '', 0),
(1388, 1, '2016-02-19 08:14:37', '2016-02-19 08:14:37', ' ', '', '', 'publish', 'closed', 'closed', '', '1388', '', '', '2016-02-19 08:42:24', '2016-02-19 08:42:24', '', 0, 'http://localhost:8080/liweb/?p=1388', 4, 'nav_menu_item', '', 0),
(1389, 1, '2016-02-19 08:27:16', '2016-02-19 08:27:16', 'aaaa', 'Điểm tin - Thiết kế website - Tin công nghệ - Tin kinh tế - xã hội', '', 'publish', 'closed', 'closed', '', 'diem-tin-thiet-ke-website-tin-cong-nghe-tin-kinh-te-xa-hoi', '', '', '2016-02-19 08:35:53', '2016-02-19 08:35:53', '', 0, 'http://localhost:8080/liweb/?page_id=1389', 0, 'page', '', 0),
(1390, 1, '2016-02-19 08:27:16', '2016-02-19 08:27:16', '', 'Điểm tin - Thiết kế website - Tin công nghệ - Tin kinh tế - xã hội', '', 'inherit', 'closed', 'closed', '', '1389-revision-v1', '', '', '2016-02-19 08:27:16', '2016-02-19 08:27:16', '', 1389, 'http://localhost:8080/liweb/2016/02/19/1389-revision-v1/', 0, 'revision', '', 0),
(1391, 1, '2016-02-19 08:28:07', '2016-02-19 08:28:07', 'aaaa', 'Điểm tin - Thiết kế website - Tin công nghệ - Tin kinh tế - xã hội', '', 'inherit', 'closed', 'closed', '', '1389-revision-v1', '', '', '2016-02-19 08:28:07', '2016-02-19 08:28:07', '', 1389, 'http://localhost:8080/liweb/2016/02/19/1389-revision-v1/', 0, 'revision', '', 0),
(1392, 1, '2016-02-19 08:28:52', '2016-02-19 08:28:52', '', 'Tin tức - cuộc sống', '', 'publish', 'closed', 'closed', '', 'tin-tuc-cuoc-song', '', '', '2016-02-19 08:42:24', '2016-02-19 08:42:24', '', 0, 'http://localhost:8080/liweb/?p=1392', 5, 'nav_menu_item', '', 0),
(1393, 1, '2016-02-19 08:48:33', '2016-02-19 08:48:33', ' ', '', '', 'publish', 'closed', 'closed', '', '1393', '', '', '2016-02-19 08:48:54', '2016-02-19 08:48:54', '', 0, 'http://localhost:8080/liweb/?p=1393', 6, 'nav_menu_item', '', 0),
(1394, 1, '2016-02-19 08:48:54', '2016-02-19 08:48:54', ' ', '', '', 'publish', 'closed', 'closed', '', '1394', '', '', '2016-02-19 08:48:54', '2016-02-19 08:48:54', '', 1088, 'http://localhost:8080/liweb/?p=1394', 7, 'nav_menu_item', '', 0),
(1395, 1, '2016-02-19 08:48:54', '2016-02-19 08:48:54', ' ', '', '', 'publish', 'closed', 'closed', '', '1395', '', '', '2016-02-19 08:48:54', '2016-02-19 08:48:54', '', 1088, 'http://localhost:8080/liweb/?p=1395', 8, 'nav_menu_item', '', 0),
(1396, 1, '2016-02-19 08:48:54', '2016-02-19 08:48:54', ' ', '', '', 'publish', 'closed', 'closed', '', '1396', '', '', '2016-02-19 08:48:54', '2016-02-19 08:48:54', '', 1088, 'http://localhost:8080/liweb/?p=1396', 9, 'nav_menu_item', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_revslider_css`
--

CREATE TABLE `wp_revslider_css` (
  `id` int(9) NOT NULL,
  `handle` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci,
  `hover` text COLLATE utf8mb4_unicode_ci,
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_revslider_css`
--

INSERT INTO `wp_revslider_css` (`id`, `handle`, `settings`, `hover`, `params`) VALUES
(1, '.tp-caption.medium_grey', NULL, NULL, '{"position":"absolute","color":"#fff","text-shadow":"0px 2px 5px rgba(0, 0, 0, 0.5)","font-weight":"700","font-size":"20px","line-height":"20px","font-family":"Arial","padding":"2px 4px","margin":"0px","border-width":"0px","border-style":"none","background-color":"#888","white-space":"nowrap"}'),
(2, '.tp-caption.small_text', NULL, NULL, '{"position":"absolute","color":"#fff","text-shadow":"0px 2px 5px rgba(0, 0, 0, 0.5)","font-weight":"700","font-size":"14px","line-height":"20px","font-family":"Arial","margin":"0px","border-width":"0px","border-style":"none","white-space":"nowrap"}'),
(3, '.tp-caption.medium_text', NULL, NULL, '{"position":"absolute","color":"#fff","text-shadow":"0px 2px 5px rgba(0, 0, 0, 0.5)","font-weight":"700","font-size":"20px","line-height":"20px","font-family":"Arial","margin":"0px","border-width":"0px","border-style":"none","white-space":"nowrap"}'),
(4, '.tp-caption.large_text', NULL, NULL, '{"position":"absolute","color":"#fff","text-shadow":"0px 2px 5px rgba(0, 0, 0, 0.5)","font-weight":"700","font-size":"40px","line-height":"40px","font-family":"Arial","margin":"0px","border-width":"0px","border-style":"none","white-space":"nowrap"}'),
(5, '.tp-caption.very_large_text', NULL, NULL, '{"position":"absolute","color":"#fff","text-shadow":"0px 2px 5px rgba(0, 0, 0, 0.5)","font-weight":"700","font-size":"60px","line-height":"60px","font-family":"Arial","margin":"0px","border-width":"0px","border-style":"none","white-space":"nowrap","letter-spacing":"-2px"}'),
(6, '.tp-caption.very_big_white', NULL, NULL, '{"position":"absolute","color":"#fff","text-shadow":"none","font-weight":"800","font-size":"60px","line-height":"60px","font-family":"Arial","margin":"0px","border-width":"0px","border-style":"none","white-space":"nowrap","padding":"0px 4px","padding-top":"1px","background-color":"#000"}'),
(7, '.tp-caption.very_big_black', NULL, NULL, '{"position":"absolute","color":"#000","text-shadow":"none","font-weight":"700","font-size":"60px","line-height":"60px","font-family":"Arial","margin":"0px","border-width":"0px","border-style":"none","white-space":"nowrap","padding":"0px 4px","padding-top":"1px","background-color":"#fff"}'),
(8, '.tp-caption.modern_medium_fat', NULL, NULL, '{"position":"absolute","color":"#000","text-shadow":"none","font-weight":"800","font-size":"24px","line-height":"20px","font-family":"\\"Open Sans\\", sans-serif","margin":"0px","border-width":"0px","border-style":"none","white-space":"nowrap"}'),
(9, '.tp-caption.modern_medium_fat_white', NULL, NULL, '{"position":"absolute","color":"#fff","text-shadow":"none","font-weight":"800","font-size":"24px","line-height":"20px","font-family":"\\"Open Sans\\", sans-serif","margin":"0px","border-width":"0px","border-style":"none","white-space":"nowrap"}'),
(10, '.tp-caption.modern_medium_light', NULL, NULL, '{"position":"absolute","color":"#000","text-shadow":"none","font-weight":"300","font-size":"24px","line-height":"20px","font-family":"\\"Open Sans\\", sans-serif","margin":"0px","border-width":"0px","border-style":"none","white-space":"nowrap"}'),
(11, '.tp-caption.modern_big_bluebg', NULL, NULL, '{"position":"absolute","color":"#fff","text-shadow":"none","font-weight":"800","font-size":"30px","line-height":"36px","font-family":"\\"Open Sans\\", sans-serif","padding":"3px 10px","margin":"0px","border-width":"0px","border-style":"none","background-color":"#4e5b6c","letter-spacing":"0"}'),
(12, '.tp-caption.modern_big_redbg', NULL, NULL, '{"position":"absolute","color":"#fff","text-shadow":"none","font-weight":"300","font-size":"30px","line-height":"36px","font-family":"\\"Open Sans\\", sans-serif","padding":"3px 10px","padding-top":"1px","margin":"0px","border-width":"0px","border-style":"none","background-color":"#de543e","letter-spacing":"0"}'),
(13, '.tp-caption.modern_small_text_dark', NULL, NULL, '{"position":"absolute","color":"#555","text-shadow":"none","font-size":"14px","line-height":"22px","font-family":"Arial","margin":"0px","border-width":"0px","border-style":"none","white-space":"nowrap"}'),
(14, '.tp-caption.boxshadow', NULL, NULL, '{"-moz-box-shadow":"0px 0px 20px rgba(0, 0, 0, 0.5)","-webkit-box-shadow":"0px 0px 20px rgba(0, 0, 0, 0.5)","box-shadow":"0px 0px 20px rgba(0, 0, 0, 0.5)"}'),
(15, '.tp-caption.black', NULL, NULL, '{"color":"#000","text-shadow":"none"}'),
(16, '.tp-caption.noshadow', NULL, NULL, '{"text-shadow":"none"}'),
(17, '.tp-caption.thinheadline_dark', NULL, NULL, '{"position":"absolute","color":"rgba(0,0,0,0.85)","text-shadow":"none","font-weight":"300","font-size":"30px","line-height":"30px","font-family":"\\"Open Sans\\"","background-color":"transparent"}'),
(18, '.tp-caption.thintext_dark', NULL, NULL, '{"position":"absolute","color":"rgba(0,0,0,0.85)","text-shadow":"none","font-weight":"300","font-size":"16px","line-height":"26px","font-family":"\\"Open Sans\\"","background-color":"transparent"}'),
(19, '.tp-caption.largeblackbg', NULL, NULL, '{"position":"absolute","color":"#fff","text-shadow":"none","font-weight":"300","font-size":"50px","line-height":"70px","font-family":"\\"Open Sans\\"","background-color":"#000","padding":"0px 20px","-webkit-border-radius":"0px","-moz-border-radius":"0px","border-radius":"0px"}'),
(20, '.tp-caption.largepinkbg', NULL, NULL, '{"position":"absolute","color":"#fff","text-shadow":"none","font-weight":"300","font-size":"50px","line-height":"70px","font-family":"\\"Open Sans\\"","background-color":"#db4360","padding":"0px 20px","-webkit-border-radius":"0px","-moz-border-radius":"0px","border-radius":"0px"}'),
(21, '.tp-caption.largewhitebg', NULL, NULL, '{"position":"absolute","color":"#000","text-shadow":"none","font-weight":"300","font-size":"50px","line-height":"70px","font-family":"\\"Open Sans\\"","background-color":"#fff","padding":"0px 20px","-webkit-border-radius":"0px","-moz-border-radius":"0px","border-radius":"0px"}'),
(22, '.tp-caption.largegreenbg', NULL, NULL, '{"position":"absolute","color":"#fff","text-shadow":"none","font-weight":"300","font-size":"50px","line-height":"70px","font-family":"\\"Open Sans\\"","background-color":"#67ae73","padding":"0px 20px","-webkit-border-radius":"0px","-moz-border-radius":"0px","border-radius":"0px"}'),
(23, '.tp-caption.excerpt', NULL, NULL, '{"font-size":"36px","line-height":"36px","font-weight":"700","font-family":"Arial","color":"#ffffff","text-decoration":"none","background-color":"rgba(0, 0, 0, 1)","text-shadow":"none","margin":"0px","letter-spacing":"-1.5px","padding":"1px 4px 0px 4px","width":"150px","white-space":"normal !important","height":"auto","border-width":"0px","border-color":"rgb(255, 255, 255)","border-style":"none"}'),
(24, '.tp-caption.large_bold_grey', NULL, NULL, '{"font-size":"60px","line-height":"60px","font-weight":"800","font-family":"\\"Open Sans\\"","color":"rgb(102, 102, 102)","text-decoration":"none","background-color":"transparent","text-shadow":"none","margin":"0px","padding":"1px 4px 0px","border-width":"0px","border-color":"rgb(255, 214, 88)","border-style":"none"}'),
(25, '.tp-caption.medium_thin_grey', NULL, NULL, '{"font-size":"34px","line-height":"30px","font-weight":"300","font-family":"\\"Open Sans\\"","color":"rgb(102, 102, 102)","text-decoration":"none","background-color":"transparent","padding":"1px 4px 0px","text-shadow":"none","margin":"0px","border-width":"0px","border-color":"rgb(255, 214, 88)","border-style":"none"}'),
(26, '.tp-caption.small_thin_grey', NULL, NULL, '{"font-size":"18px","line-height":"26px","font-weight":"300","font-family":"\\"Open Sans\\"","color":"rgb(117, 117, 117)","text-decoration":"none","background-color":"transparent","padding":"1px 4px 0px","text-shadow":"none","margin":"0px","border-width":"0px","border-color":"rgb(255, 214, 88)","border-style":"none"}'),
(27, '.tp-caption.lightgrey_divider', NULL, NULL, '{"text-decoration":"none","background-color":"rgba(235, 235, 235, 1)","width":"370px","height":"3px","background-position":"initial initial","background-repeat":"initial initial","border-width":"0px","border-color":"rgb(34, 34, 34)","border-style":"none"}'),
(28, '.tp-caption.large_bold_darkblue', NULL, NULL, '{"font-size":"58px","line-height":"60px","font-weight":"800","font-family":"\\"Open Sans\\"","color":"rgb(52, 73, 94)","text-decoration":"none","background-color":"transparent","border-width":"0px","border-color":"rgb(255, 214, 88)","border-style":"none"}'),
(29, '.tp-caption.medium_bg_darkblue', NULL, NULL, '{"font-size":"20px","line-height":"20px","font-weight":"800","font-family":"\\"Open Sans\\"","color":"rgb(255, 255, 255)","text-decoration":"none","background-color":"rgb(52, 73, 94)","padding":"10px","border-width":"0px","border-color":"rgb(255, 214, 88)","border-style":"none"}'),
(30, '.tp-caption.medium_bold_red', NULL, NULL, '{"font-size":"24px","line-height":"30px","font-weight":"800","font-family":"\\"Open Sans\\"","color":"rgb(227, 58, 12)","text-decoration":"none","background-color":"transparent","padding":"0px","border-width":"0px","border-color":"rgb(255, 214, 88)","border-style":"none"}'),
(31, '.tp-caption.medium_light_red', NULL, NULL, '{"font-size":"21px","line-height":"26px","font-weight":"300","font-family":"\\"Open Sans\\"","color":"rgb(227, 58, 12)","text-decoration":"none","background-color":"transparent","padding":"0px","border-width":"0px","border-color":"rgb(255, 214, 88)","border-style":"none"}'),
(32, '.tp-caption.medium_bg_red', NULL, NULL, '{"font-size":"20px","line-height":"20px","font-weight":"800","font-family":"\\"Open Sans\\"","color":"rgb(255, 255, 255)","text-decoration":"none","background-color":"rgb(227, 58, 12)","padding":"10px","border-width":"0px","border-color":"rgb(255, 214, 88)","border-style":"none"}'),
(33, '.tp-caption.medium_bold_orange', NULL, NULL, '{"font-size":"24px","line-height":"30px","font-weight":"800","font-family":"\\"Open Sans\\"","color":"rgb(243, 156, 18)","text-decoration":"none","background-color":"transparent","border-width":"0px","border-color":"rgb(255, 214, 88)","border-style":"none"}'),
(34, '.tp-caption.medium_bg_orange', NULL, NULL, '{"font-size":"20px","line-height":"20px","font-weight":"800","font-family":"\\"Open Sans\\"","color":"rgb(255, 255, 255)","text-decoration":"none","background-color":"rgb(243, 156, 18)","padding":"10px","border-width":"0px","border-color":"rgb(255, 214, 88)","border-style":"none"}'),
(35, '.tp-caption.grassfloor', NULL, NULL, '{"text-decoration":"none","background-color":"rgba(160, 179, 151, 1)","width":"4000px","height":"150px","border-width":"0px","border-color":"rgb(34, 34, 34)","border-style":"none"}'),
(36, '.tp-caption.large_bold_white', NULL, NULL, '{"font-size":"58px","line-height":"60px","font-weight":"800","font-family":"\\"Open Sans\\"","color":"rgb(255, 255, 255)","text-decoration":"none","background-color":"transparent","border-width":"0px","border-color":"rgb(255, 214, 88)","border-style":"none"}'),
(37, '.tp-caption.medium_light_white', NULL, NULL, '{"font-size":"30px","line-height":"36px","font-weight":"300","font-family":"\\"Open Sans\\"","color":"rgb(255, 255, 255)","text-decoration":"none","background-color":"transparent","padding":"0px","border-width":"0px","border-color":"rgb(255, 214, 88)","border-style":"none"}'),
(38, '.tp-caption.mediumlarge_light_white', NULL, NULL, '{"font-size":"34px","line-height":"40px","font-weight":"300","font-family":"\\"Open Sans\\"","color":"rgb(255, 255, 255)","text-decoration":"none","background-color":"transparent","padding":"0px","border-width":"0px","border-color":"rgb(255, 214, 88)","border-style":"none"}'),
(39, '.tp-caption.mediumlarge_light_white_center', NULL, NULL, '{"font-size":"34px","line-height":"40px","font-weight":"300","font-family":"\\"Open Sans\\"","color":"#ffffff","text-decoration":"none","background-color":"transparent","padding":"0px 0px 0px 0px","text-align":"center","border-width":"0px","border-color":"rgb(255, 214, 88)","border-style":"none"}'),
(40, '.tp-caption.medium_bg_asbestos', NULL, NULL, '{"font-size":"20px","line-height":"20px","font-weight":"800","font-family":"\\"Open Sans\\"","color":"rgb(255, 255, 255)","text-decoration":"none","background-color":"rgb(127, 140, 141)","padding":"10px","border-width":"0px","border-color":"rgb(255, 214, 88)","border-style":"none"}'),
(41, '.tp-caption.medium_light_black', NULL, NULL, '{"font-size":"30px","line-height":"36px","font-weight":"300","font-family":"\\"Open Sans\\"","color":"rgb(0, 0, 0)","text-decoration":"none","background-color":"transparent","padding":"0px","border-width":"0px","border-color":"rgb(255, 214, 88)","border-style":"none"}'),
(42, '.tp-caption.large_bold_black', NULL, NULL, '{"font-size":"58px","line-height":"60px","font-weight":"800","font-family":"\\"Open Sans\\"","color":"rgb(0, 0, 0)","text-decoration":"none","background-color":"transparent","border-width":"0px","border-color":"rgb(255, 214, 88)","border-style":"none"}'),
(43, '.tp-caption.mediumlarge_light_darkblue', NULL, NULL, '{"font-size":"34px","line-height":"40px","font-weight":"300","font-family":"\\"Open Sans\\"","color":"rgb(52, 73, 94)","text-decoration":"none","background-color":"transparent","padding":"0px","border-width":"0px","border-color":"rgb(255, 214, 88)","border-style":"none"}'),
(44, '.tp-caption.small_light_white', NULL, NULL, '{"font-size":"17px","line-height":"28px","font-weight":"300","font-family":"\\"Open Sans\\"","color":"rgb(255, 255, 255)","text-decoration":"none","background-color":"transparent","padding":"0px","border-width":"0px","border-color":"rgb(255, 214, 88)","border-style":"none"}'),
(45, '.tp-caption.roundedimage', NULL, NULL, '{"border-width":"0px","border-color":"rgb(34, 34, 34)","border-style":"none"}'),
(46, '.tp-caption.large_bg_black', NULL, NULL, '{"font-size":"40px","line-height":"40px","font-weight":"800","font-family":"\\"Open Sans\\"","color":"rgb(255, 255, 255)","text-decoration":"none","background-color":"rgb(0, 0, 0)","padding":"10px 20px 15px","border-width":"0px","border-color":"rgb(255, 214, 88)","border-style":"none"}'),
(47, '.tp-caption.mediumwhitebg', NULL, NULL, '{"font-size":"30px","line-height":"30px","font-weight":"300","font-family":"\\"Open Sans\\"","color":"rgb(0, 0, 0)","text-decoration":"none","background-color":"rgb(255, 255, 255)","padding":"5px 15px 10px","text-shadow":"none","border-width":"0px","border-color":"rgb(0, 0, 0)","border-style":"none"}'),
(48, '.tp-caption.liwebtext', '{"hover":"false"}', '{"font-size":"25px","line-height":"76px","font-weight":"800","font-family":"\\"Open Sans\\"","color":"#34495e","text-decoration":"none","background-color":"transparent","border-width":"0px","border-color":"rgb(255, 214, 88)","border-style":"none"}', '{"font-size":"25px","line-height":"48px","font-weight":"800","font-family":"\\"Open Sans\\"","color":"rgb(52, 73, 94)","text-decoration":"none","background-color":"transparent","border-width":"0px","border-color":"rgb(255, 214, 88)","border-style":"none"}'),
(49, '.tp-caption.liwebtext2', '{"hover":"false"}', '{"font-size":"25px","line-height":"76px","font-weight":"800","font-family":"\\"Open Sans\\"","color":"#34495e","text-decoration":"none","background-color":"transparent","border-width":"0px","border-color":"rgb(255, 214, 88)","border-style":"none"}', '{"font-size":"25px","line-height":"30px","font-weight":"800","font-family":"\\"Open Sans\\"","color":"rgb(52, 73, 94)","text-decoration":"none","background-color":"transparent","border-width":"0px","border-color":"rgb(255, 214, 88)","border-style":"none"}'),
(50, '.tp-caption.silder-hosting', '{"hover":"false"}', '""', '{"text-decoration":"none","text-shadow":"none","background-color":"transparent","border-width":"0px","border-color":"rgb(0, 0, 0)","border-style":"none"}'),
(51, '.tp-caption.silder-hosting2', '{"hover":"false"}', '{"font-size":"26px","line-height":"21px","font-weight":"600","color":"rgb(255, 255, 255)","text-decoration":"none","text-shadow":"none","background-color":"transparent","border-width":"0px","border-color":"rgb(0, 0, 0)","border-style":"none"}', '{"font-size":"26px","text-decoration":"none","text-shadow":"none","background-color":"transparent","border-width":"0px","border-color":"rgb(0, 0, 0)","border-style":"none"}'),
(52, '.tp-caption.silder-hosting3', '{"hover":"false"}', '{"font-size":"26px","line-height":"21px","font-weight":"600","color":"rgb(255, 255, 255)","text-decoration":"none","text-shadow":"none","background-color":"transparent","border-width":"0px","border-color":"rgb(0, 0, 0)","border-style":"none"}', '{"font-size":"26px","color":"rgb(255, 255, 255)","text-decoration":"none","text-shadow":"none","background-color":"transparent","border-width":"0px","border-color":"rgb(255, 255, 255)","border-style":"none"}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_revslider_layer_animations`
--

CREATE TABLE `wp_revslider_layer_animations` (
  `id` int(9) NOT NULL,
  `handle` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_revslider_settings`
--

CREATE TABLE `wp_revslider_settings` (
  `id` int(9) NOT NULL,
  `general` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_revslider_settings`
--

INSERT INTO `wp_revslider_settings` (`id`, `general`, `params`) VALUES
(1, 'a:0:{}', '');

-- --------------------------------------------------------

--
-- Table structure for table `wp_revslider_sliders`
--

CREATE TABLE `wp_revslider_sliders` (
  `id` int(9) NOT NULL,
  `title` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` tinytext COLLATE utf8mb4_unicode_ci,
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_revslider_sliders`
--

INSERT INTO `wp_revslider_sliders` (`id`, `title`, `alias`, `params`) VALUES
(1, 'Domain', 'ten-mien-dep', '{"title":"Domain","alias":"ten-mien-dep","shortcode":"[rev_slider ten-mien-dep]","source_type":"gallery","post_types":"post","post_category":"category_1","post_sortby":"ID","posts_sort_direction":"DESC","max_slider_posts":"30","excerpt_limit":"55","slider_template_id":"","posts_list":"","slider_type":"fullwidth","fullscreen_offset_container":"","fullscreen_offset_size":"","fullscreen_min_height":"","full_screen_align_force":"off","auto_height":"off","force_full_width":"off","min_height":"0","width":"950","height":"350","responsitive_w1":"940","responsitive_sw1":"770","responsitive_w2":"780","responsitive_sw2":"500","responsitive_w3":"510","responsitive_sw3":"310","responsitive_w4":"0","responsitive_sw4":"0","responsitive_w5":"0","responsitive_sw5":"0","responsitive_w6":"0","responsitive_sw6":"0","delay":"9000","shuffle":"off","lazy_load":"off","use_wpml":"off","enable_static_layers":"off","next_slide_on_window_focus":"off","start_js_after_delay":0,"stop_slider":"off","stop_after_loops":0,"stop_at_slide":2,"show_timerbar":"top","loop_slide":"loop","position":"center","margin_top":-15,"margin_bottom":0,"margin_left":0,"margin_right":0,"shadow_type":"0","padding":0,"background_color":"#32C5D2","background_dotted_overlay":"none","show_background_image":"false","background_image":"","bg_fit":"cover","bg_repeat":"no-repeat","bg_position":"center top","stop_on_hover":"on","keyboard_navigation":"off","navigation_style":"round","navigaion_type":"bullet","navigation_arrows":"solo","navigaion_always_on":"false","hide_thumbs":200,"navigaion_align_hor":"center","navigaion_align_vert":"bottom","navigaion_offset_hor":"0","navigaion_offset_vert":20,"leftarrow_align_hor":"left","leftarrow_align_vert":"center","leftarrow_offset_hor":20,"leftarrow_offset_vert":0,"rightarrow_align_hor":"right","rightarrow_align_vert":"center","rightarrow_offset_hor":20,"rightarrow_offset_vert":0,"thumb_width":100,"thumb_height":50,"thumb_amount":5,"use_spinner":"0","spinner_color":"#FFFFFF","use_parallax":"off","disable_parallax_mobile":"off","parallax_type":"mouse","parallax_bg_freeze":"off","parallax_level_1":"5","parallax_level_2":"10","parallax_level_3":"15","parallax_level_4":"20","parallax_level_5":"25","parallax_level_6":"30","parallax_level_7":"35","parallax_level_8":"40","parallax_level_9":"45","parallax_level_10":"50","touchenabled":"on","swipe_velocity":75,"swipe_min_touches":1,"drag_block_vertical":"false","disable_on_mobile":"off","disable_kenburns_on_mobile":"off","hide_slider_under":0,"hide_defined_layers_under":0,"hide_all_layers_under":0,"hide_arrows_on_mobile":"off","hide_bullets_on_mobile":"off","hide_thumbs_on_mobile":"off","hide_thumbs_under_resolution":0,"hide_thumbs_delay_mobile":1500,"start_with_slide":"1","first_transition_active":"false","first_transition_type":"fade","first_transition_duration":300,"first_transition_slot_amount":7,"simplify_ie8_ios4":"off","show_alternative_type":"off","show_alternate_image":"","reset_transitions":"","reset_transition_duration":0,"0":"Execute settings on all slides","jquery_noconflict":"on","js_to_body":"false","output_type":"none","custom_css":"","custom_javascript":"","template":"false"}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_revslider_slides`
--

CREATE TABLE `wp_revslider_slides` (
  `id` int(9) NOT NULL,
  `slider_id` int(9) NOT NULL,
  `slide_order` int(11) NOT NULL,
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `layers` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_revslider_slides`
--

INSERT INTO `wp_revslider_slides` (`id`, `slider_id`, `slide_order`, `params`, `layers`) VALUES
(1, 1, 2, '{"background_type":"image","image":"http:\\/\\/localhost:8080\\/liweb\\/wp-content\\/uploads\\/2016\\/02\\/bg_dm.png","image_id":"1375","title":"Slide","state":"published","date_from":"","date_to":"","slide_transition":"random","0":"Remove","slot_amount":7,"transition_rotation":0,"transition_duration":300,"delay":"","save_performance":"off","enable_link":"false","link_type":"regular","link":"","link_open_in":"new","slide_link":"nothing","link_pos":"front","slide_thumb":"","class_attr":"","id_attr":"","attr_attr":"","data_attr":"","slide_bg_color":"#E7E7E7","slide_bg_external":"","bg_fit":"cover","bg_fit_x":"100","bg_fit_y":"100","bg_repeat":"no-repeat","bg_position":"center top","bg_position_x":"0","bg_position_y":"0","bg_end_position_x":"0","bg_end_position_y":"0","bg_end_position":"center top","kenburn_effect":"off","kb_start_fit":"100","kb_end_fit":"100","kb_duration":"9000","kb_easing":"Linear.easeNone","0":"Remove"}', '[{"text":"<center>\\n<h1 style=\\"color:#ffffff !important;\\">\\u0110\\u0103ng k\\u00fd t\\u00ean mi\\u1ec1n<\\/h1>\\n<h2>H\\u00e3y b\\u1ea3o v\\u1ec7 th\\u01b0\\u01a1ng hi\\u1ec7u c\\u1ee7a b\\u1ea1n tr\\u00ean internet<\\/h2>\\n<\\/center>\\n<BR><CENTER><a href=''#''\\nstyle=\\"\\n\\nbackground-color: #218d96 !important;\\npadding:10px;\\ncolor: white;\\nfont-size:15px !important;\\n\\"\\n>XEM B\\u1ea2NG GI\\u00c1<\\/a><\\/CENTER","type":"text","left":-13,"top":-8,"loop_animation":"none","loop_easing":"Power3.easeInOut","loop_speed":"2","loop_startdeg":"-20","loop_enddeg":"20","loop_xorigin":"50","loop_yorigin":"50","loop_xstart":"0","loop_xend":"0","loop_ystart":"0","loop_yend":"0","loop_zoomstart":"1","loop_zoomend":"1","loop_angle":"0","loop_radius":"10","animation":"tp-fade","easing":"Power3.easeInOut","split":"none","endsplit":"none","splitdelay":"10","endsplitdelay":"10","2d_origin_x":"50","2d_origin_y":"50","parallax_level":"-","whitespace":"nowrap","static_start":"1","static_end":"2","speed":300,"align_hor":"center","align_vert":"middle","hiddenunder":false,"resizeme":true,"link":"","link_open_in":"same","link_slide":"nothing","scrollunder_offset":"","style":"liwebtext2","time":500,"endtime":"8700","endspeed":300,"endanimation":"auto","endeasing":"nothing","corner_left":"nothing","corner_right":"nothing","width":759,"height":126,"serial":0,"endTimeFinal":8700,"endSpeedFinal":300,"realEndTime":9000,"timeLast":8700,"endWithSlide":true,"max_height":"auto","max_width":"auto","2d_rotation":"","alt":"","scaleX":"","scaleY":"","scaleProportional":false,"attrID":"","attrClasses":"","attrTitle":"","attrRel":"","link_id":"","link_class":"","link_title":"","link_rel":""}]'),
(3, 1, 3, '{"background_type":"image","image":"http:\\/\\/localhost:8080\\/liweb\\/wp-content\\/uploads\\/2016\\/02\\/bg_vps.jpg","image_id":"1376","title":"Slide","state":"published","date_from":"","date_to":"","slide_transition":"random","0":"Remove","slot_amount":7,"transition_rotation":0,"transition_duration":300,"delay":"","save_performance":"off","enable_link":"false","link_type":"regular","link":"","link_open_in":"same","slide_link":"nothing","link_pos":"front","slide_thumb":"","class_attr":"","id_attr":"","attr_attr":"","data_attr":"","slide_bg_color":"#E7E7E7","slide_bg_external":"","bg_fit":"cover","bg_fit_x":"100","bg_fit_y":"100","bg_repeat":"no-repeat","bg_position":"center top","bg_position_x":"0","bg_position_y":"0","bg_end_position_x":"0","bg_end_position_y":"0","bg_end_position":"center top","kenburn_effect":"off","kb_start_fit":"100","kb_end_fit":"100","kb_duration":"9000","kb_easing":"Linear.easeNone","0":"Remove"}', '[{"text":"<center style=\\"color:#ffffff !important;\\">\\n<h1>HOSTING CH\\u1ea4T L\\u01af\\u1ee2NG <\\/h1>\\n<h2>B\\u0103ng th\\u00f4ng kh\\u00f4ng gi\\u1edbi h\\u1ea1n - t\\u1ed1c \\u0111\\u1ed9 nhanh - \\u1ed5 c\\u1ee9ng SSD<\\/h2>\\n<h4>\\u0110\\u1ea1i l\\u00fd ch\\u00ednh th\\u1ee9c c\\u1ee7a Tenten - Omega Nh\\u1eadt B\\u1ea3n<\\/h4>\\n<\\/center>\\n<BR><CENTER><a href=''#''\\nstyle=\\"\\n\\nbackground-color: #218d96 !important;\\npadding:10px;\\ncolor: white;\\nfont-size:15px !important;\\n\\"\\n>XEM B\\u1ea2NG GI\\u00c1<\\/a><\\/CENTER","type":"text","left":0,"top":0,"loop_animation":"none","loop_easing":"Power3.easeInOut","loop_speed":"2","loop_startdeg":"-20","loop_enddeg":"20","loop_xorigin":"50","loop_yorigin":"50","loop_xstart":"0","loop_xend":"0","loop_ystart":"0","loop_yend":"0","loop_zoomstart":"1","loop_zoomend":"1","loop_angle":"0","loop_radius":"10","animation":"tp-fade","easing":"Power3.easeInOut","split":"none","endsplit":"none","splitdelay":"10","endsplitdelay":"10","2d_origin_x":"50","2d_origin_y":"50","parallax_level":"-","whitespace":"nowrap","static_start":"1","static_end":"2","speed":300,"align_hor":"center","align_vert":"middle","hiddenunder":false,"resizeme":true,"link":"","link_open_in":"same","link_slide":"nothing","scrollunder_offset":"","style":"liwebtext2","time":500,"endtime":"8700","endspeed":300,"endanimation":"auto","endeasing":"nothing","corner_left":"nothing","corner_right":"nothing","width":-1,"height":-1,"serial":"0","endTimeFinal":8700,"endSpeedFinal":300,"realEndTime":9000,"timeLast":8500,"endWithSlide":true,"max_height":"auto","max_width":"auto","2d_rotation":"","alt":"","scaleX":"","scaleY":"","scaleProportional":false,"attrID":"","attrClasses":"","attrTitle":"","attrRel":"","link_id":"","link_class":"","link_title":"","link_rel":""}]'),
(4, 1, 4, '{"background_type":"image","title":"Slide","state":"published","date_from":"","date_to":"","slide_transition":"random","0":"Remove","slot_amount":7,"transition_rotation":0,"transition_duration":300,"delay":"","save_performance":"off","enable_link":"false","link_type":"regular","link":"","link_open_in":"same","slide_link":"nothing","link_pos":"front","slide_thumb":"","class_attr":"","id_attr":"","attr_attr":"","data_attr":"","image_id":"1378","slide_bg_color":"#E7E7E7","slide_bg_external":"","bg_fit":"cover","bg_fit_x":"100","bg_fit_y":"100","bg_repeat":"no-repeat","bg_position":"center top","bg_position_x":"0","bg_position_y":"0","bg_end_position_x":"0","bg_end_position_y":"0","bg_end_position":"center top","kenburn_effect":"off","kb_start_fit":"100","kb_end_fit":"100","kb_duration":"9000","kb_easing":"Linear.easeNone","image":"http:\\/\\/localhost:8080\\/liweb\\/wp-content\\/uploads\\/2016\\/02\\/Untitled-1.jpg"}', '[]');

-- --------------------------------------------------------

--
-- Table structure for table `wp_revslider_static_slides`
--

CREATE TABLE `wp_revslider_static_slides` (
  `id` int(9) NOT NULL,
  `slider_id` int(9) NOT NULL,
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `layers` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Chưa được phân loại', 'khong-phan-loai', 0),
(44, '8BIT', '8bit', 0),
(45, 'Articles', 'articles', 0),
(46, 'dowork', 'dowork', 0),
(47, 'Fail', 'fail', 0),
(48, 'FTW', 'ftw', 0),
(49, 'Fun', 'fun', 0),
(50, 'Love', 'love', 0),
(51, 'Mothership', 'mothership', 0),
(52, 'Must Read', 'mustread', 0),
(53, 'Nailed It', 'nailedit', 0),
(54, 'Pictures', 'pictures', 0),
(55, 'Success', 'success', 0),
(56, 'Swagger', 'swagger', 0),
(57, 'Tags', 'tags', 0),
(58, 'Unseen', 'unseen', 0),
(59, 'WordPress', 'wordpress', 0),
(60, 'Long Menu', 'long-menu', 0),
(61, 'Testing Menu', 'testing-menu', 0),
(62, 'Empty Menu', 'empty-menu', 0),
(63, 'Gallery', 'post-format-gallery', 0),
(64, 'Aside', 'post-format-aside', 0),
(65, 'Chat', 'post-format-chat', 0),
(66, 'Link', 'post-format-link', 0),
(67, 'Image', 'post-format-image', 0),
(68, 'Quote', 'post-format-quote', 0),
(69, 'Status', 'post-format-status', 0),
(70, 'Video', 'post-format-video', 0),
(71, 'Audio', 'post-format-audio', 0),
(73, 'TÊN MIỀN', 'ten-mien', 0),
(74, 'HOSTING', 'hosting', 0),
(75, 'VPS - SERVER', 'vps-server', 0),
(76, 'THIẾT KẾ QUẢNG CÁO', 'thiet-ke-quang-cao', 0),
(77, 'QUẢN TRỊ WEBSITE', 'quan-tri-website', 0),
(78, 'CỘNG TÁC VIÊN', 'cong-tac-vien', 0),
(79, 'LIÊN HỆ', 'lien-he', 0),
(80, 'Main-menu', 'main-menu', 0),
(81, 'Top-menu', 'top-menu', 0),
(82, 'Top-header-menu', 'top-header-menu', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(131, 1, 0),
(133, 1, 0),
(134, 1, 0),
(149, 1, 0),
(151, 1, 0),
(152, 1, 0),
(167, 1, 0),
(167, 44, 0),
(167, 45, 0),
(167, 46, 0),
(167, 47, 0),
(167, 48, 0),
(167, 49, 0),
(167, 50, 0),
(167, 51, 0),
(167, 52, 0),
(167, 53, 0),
(167, 54, 0),
(167, 55, 0),
(167, 56, 0),
(167, 57, 0),
(167, 58, 0),
(167, 59, 0),
(168, 1, 0),
(188, 1, 0),
(418, 1, 0),
(555, 1, 0),
(555, 63, 0),
(559, 1, 0),
(559, 64, 0),
(562, 1, 0),
(562, 65, 0),
(565, 1, 0),
(565, 66, 0),
(568, 1, 0),
(568, 67, 0),
(575, 1, 0),
(575, 68, 0),
(579, 1, 0),
(579, 69, 0),
(582, 1, 0),
(582, 70, 0),
(587, 1, 0),
(587, 71, 0),
(674, 1, 0),
(674, 67, 0),
(861, 1, 0),
(867, 1, 0),
(877, 1, 0),
(895, 1, 0),
(903, 1, 0),
(919, 1, 0),
(922, 1, 0),
(946, 1, 0),
(993, 1, 0),
(996, 1, 0),
(1000, 1, 0),
(1005, 1, 0),
(1005, 70, 0),
(1011, 1, 0),
(1016, 1, 0),
(1027, 1, 0),
(1031, 1, 0),
(1072, 60, 0),
(1241, 1, 0),
(1303, 61, 0),
(1304, 61, 0),
(1322, 61, 0),
(1323, 61, 0),
(1324, 61, 0),
(1325, 61, 0),
(1326, 61, 0),
(1327, 61, 0),
(1328, 61, 0),
(1329, 61, 0),
(1330, 61, 0),
(1331, 61, 0),
(1332, 61, 0),
(1333, 61, 0),
(1334, 61, 0),
(1335, 61, 0),
(1336, 61, 0),
(1337, 61, 0),
(1340, 60, 0),
(1341, 60, 0),
(1342, 60, 0),
(1343, 60, 0),
(1344, 60, 0),
(1345, 60, 0),
(1346, 60, 0),
(1347, 60, 0),
(1348, 60, 0),
(1349, 60, 0),
(1350, 60, 0),
(1351, 60, 0),
(1352, 60, 0),
(1353, 60, 0),
(1354, 60, 0),
(1355, 61, 0),
(1356, 61, 0),
(1357, 61, 0),
(1358, 61, 0),
(1359, 61, 0),
(1360, 61, 0),
(1361, 61, 0),
(1362, 61, 0),
(1364, 80, 0),
(1366, 80, 0),
(1367, 80, 0),
(1369, 80, 0),
(1379, 80, 0),
(1381, 81, 0),
(1382, 81, 0),
(1383, 81, 0),
(1385, 82, 0),
(1386, 82, 0),
(1387, 82, 0),
(1388, 82, 0),
(1392, 82, 0),
(1393, 80, 0),
(1394, 80, 0),
(1395, 80, 0),
(1396, 80, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 37),
(44, 44, 'post_tag', 'Tags posts about 8BIT.', 0, 1),
(45, 45, 'post_tag', 'Tags posts about Articles.', 0, 1),
(46, 46, 'post_tag', 'Tags posts about #dowork.', 0, 1),
(47, 47, 'post_tag', 'Tags posts about fail.', 0, 1),
(48, 48, 'post_tag', '', 0, 1),
(49, 49, 'post_tag', 'Tags posts about fun.', 0, 1),
(50, 50, 'post_tag', 'Tags posts about love.', 0, 1),
(51, 51, 'post_tag', 'Tags posts about motherships.', 0, 1),
(52, 52, 'post_tag', 'Tags posts about articles you must read.', 0, 1),
(53, 53, 'post_tag', 'Tags posts about that nailed it.', 0, 1),
(54, 54, 'post_tag', '', 0, 1),
(55, 55, 'post_tag', 'Tags posts about success.', 0, 1),
(56, 56, 'post_tag', 'Tags posts about swagger.', 0, 1),
(57, 57, 'post_tag', 'Tags posts about tags. #inception', 0, 1),
(58, 58, 'post_tag', 'Tags posts about things that cannot be unseen.', 0, 1),
(59, 59, 'post_tag', 'Tags posts about WordPress.', 0, 1),
(60, 60, 'nav_menu', '', 0, 16),
(61, 61, 'nav_menu', '', 0, 26),
(62, 62, 'nav_menu', '', 0, 0),
(63, 63, 'post_format', '', 0, 1),
(64, 64, 'post_format', '', 0, 1),
(65, 65, 'post_format', '', 0, 1),
(66, 66, 'post_format', '', 0, 1),
(67, 67, 'post_format', '', 0, 2),
(68, 68, 'post_format', '', 0, 1),
(69, 69, 'post_format', '', 0, 1),
(70, 70, 'post_format', '', 0, 2),
(71, 71, 'post_format', '', 0, 1),
(73, 73, 'category', '', 0, 0),
(74, 74, 'category', '', 0, 0),
(75, 75, 'category', '', 0, 0),
(76, 76, 'category', '', 0, 0),
(77, 77, 'category', '', 0, 0),
(78, 78, 'category', '', 0, 0),
(79, 79, 'category', '', 0, 0),
(80, 80, 'nav_menu', '', 0, 9),
(81, 81, 'nav_menu', '', 0, 3),
(82, 82, 'nav_menu', '', 0, 5);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'comment_shortcuts', 'false'),
(7, 1, 'admin_color', 'fresh'),
(8, 1, 'use_ssl', '0'),
(9, 1, 'show_admin_bar_front', 'true'),
(10, 1, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(11, 1, 'wp_user_level', '10'),
(12, 1, 'dismissed_wp_pointers', ''),
(13, 1, 'show_welcome_panel', '1'),
(14, 1, 'session_tokens', 'a:2:{s:64:"593bb5ce0a9ec19266c6fd6476d095348cfd5511070dce6f7fee53ff54db26cd";a:4:{s:10:"expiration";i:1455958163;s:2:"ip";s:3:"::1";s:2:"ua";s:110:"Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.103 Safari/537.36";s:5:"login";i:1455785363;}s:64:"4f2c7583da451ee167d70fafef4c98d13007840e0db4a21d8835f865dfdef036";a:4:{s:10:"expiration";i:1456023711;s:2:"ip";s:3:"::1";s:2:"ua";s:110:"Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.109 Safari/537.36";s:5:"login";i:1455850911;}}'),
(15, 1, 'wp_dashboard_quick_press_last_post_id', '3'),
(16, 1, 'nav_menu_recently_edited', '80'),
(17, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";i:4;s:15:"title-attribute";}'),
(18, 1, 'metaboxhidden_nav-menus', 'a:2:{i:0;s:12:"add-post_tag";i:1;s:15:"add-post_format";}'),
(19, 1, 'wp_user-settings', 'libraryContent=browse&editor=tinymce'),
(20, 1, 'wp_user-settings-time', '1455870482');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$BNt/yvbe9b4nBib5YILcrm4RAlcyB.1', 'admin', 'phuxuan167@gmail.com', '', '2016-02-18 08:49:14', '', 0, 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Indexes for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `wp_revslider_css`
--
ALTER TABLE `wp_revslider_css`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_revslider_layer_animations`
--
ALTER TABLE `wp_revslider_layer_animations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_revslider_settings`
--
ALTER TABLE `wp_revslider_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_revslider_sliders`
--
ALTER TABLE `wp_revslider_sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_revslider_slides`
--
ALTER TABLE `wp_revslider_slides`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_revslider_static_slides`
--
ALTER TABLE `wp_revslider_static_slides`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=371;
--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1308;
--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1397;
--
-- AUTO_INCREMENT for table `wp_revslider_css`
--
ALTER TABLE `wp_revslider_css`
  MODIFY `id` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;
--
-- AUTO_INCREMENT for table `wp_revslider_layer_animations`
--
ALTER TABLE `wp_revslider_layer_animations`
  MODIFY `id` int(9) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_revslider_settings`
--
ALTER TABLE `wp_revslider_settings`
  MODIFY `id` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `wp_revslider_sliders`
--
ALTER TABLE `wp_revslider_sliders`
  MODIFY `id` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `wp_revslider_slides`
--
ALTER TABLE `wp_revslider_slides`
  MODIFY `id` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `wp_revslider_static_slides`
--
ALTER TABLE `wp_revslider_static_slides`
  MODIFY `id` int(9) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;
--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;
--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
