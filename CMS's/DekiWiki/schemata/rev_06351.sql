--
-- Table structure for table `archive`
--
CREATE TABLE `archive` (
  `ar_id` int(4) unsigned NOT NULL auto_increment,
  `ar_namespace` tinyint(2) unsigned NOT NULL default '0',
  `ar_title` varchar(255) NOT NULL default '',
  `ar_text` mediumtext NOT NULL,
  `ar_comment` tinyblob NOT NULL,
  `ar_user` int(5) unsigned NOT NULL default '0',
  `ar_user_text` varchar(255) NOT NULL default '',
  `ar_timestamp` varchar(14) NOT NULL default '',
  `ar_minor_edit` tinyint(1) NOT NULL default '0',
  `ar_last_page_id` int(8) unsigned NOT NULL default '0',
  `ar_old_id` int(8) unsigned NOT NULL default '0',
  `ar_flags` tinyblob NOT NULL,
  PRIMARY KEY  (`ar_id`),
  KEY `name_title_timestamp` (`ar_namespace`,`ar_title`,`ar_timestamp`),
  KEY `ar_last_page_id` (`ar_last_page_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE utf8_general_ci;

--
-- Dumping data for table `archive`
--

--
-- Table structure for table `attachments`
--

CREATE TABLE `attachments` (
  `at_id` int(8) unsigned NOT NULL auto_increment,
  `at_from` int(8) unsigned NOT NULL default '0',
  `at_filename` varchar(128) NOT NULL default '',
  `at_timestamp` varchar(14) NOT NULL default '',
  `at_filesize` int(8) unsigned NOT NULL default '0',
  `at_filetype` varchar(32) NOT NULL default '',
  `at_extension` varchar(32) NOT NULL default '',
  `at_user` int(5) unsigned NOT NULL default '0',
  `at_user_text` varchar(255) NOT NULL default '',
  `at_name` varchar(128) NOT NULL default '',
  `at_desc` text NOT NULL,
  `at_removed` varchar(14) default NULL,
  `at_removed_by_text` varchar(255) default NULL,
  `at_image_width` int(4) unsigned default NULL,
  `at_image_height` int(4) unsigned default NULL,
  PRIMARY KEY  (`at_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE utf8_general_ci;

--
-- Table structure for table `brokenlinks`
--

CREATE TABLE `brokenlinks` (
  `bl_from` int(8) unsigned NOT NULL default '0',
  `bl_to` varchar(255) NOT NULL default '',
  UNIQUE KEY `bl_from` (`bl_from`,`bl_to`),
  KEY `bl_to` (`bl_to`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE utf8_general_ci;


--
-- Table structure for table `comments`
--
CREATE TABLE `comments` (                                           
	`cmnt_id` int(8) unsigned NOT NULL auto_increment,                
	`cmnt_page_id` int(8) unsigned NOT NULL,                          
	`cmnt_number` int(2) unsigned NOT NULL,                           
	`cmnt_poster_user_id` int(4) unsigned NOT NULL,                   
	`cmnt_create_date` timestamp NOT NULL default CURRENT_TIMESTAMP,  
	`cmnt_last_edit` timestamp NULL default NULL,                     
	`cmnt_last_edit_user_id` int(4) unsigned default NULL,            
	`cmnt_content` text NOT NULL,                                     
	`cmnt_content_mimetype` varchar(25) NOT NULL,                     
	`cmnt_title` varchar(50) default NULL,                            
	`cmnt_deleter_user_id` int(8) unsigned default NULL,              
	`cmnt_delete_date` timestamp NULL default NULL,                   
PRIMARY KEY  (`cmnt_id`),                                         
UNIQUE KEY `pageid_number` (`cmnt_page_id`,`cmnt_number`)         
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE utf8_general_ci;

--
-- Table structure for table `config`
--
CREATE TABLE `config` (                                             
          `config_id` int unsigned NOT NULL auto_increment,             
          `config_key` varchar(255) NOT NULL,                               
          `config_value` text NOT NULL,                                                      
          PRIMARY KEY  (`config_id`),                                       
          KEY `config_key` (`config_key`)                                   
        ) ENGINE=MyISAM DEFAULT CHARSET=utf8;
        
-- Default values for config table for the wiki instance
insert into `config` (`config_key`, `config_value`) values('storage/s3/prefix', "");
insert into `config` (`config_key`, `config_value`) values('storage/s3/bucket', "");
insert into `config` (`config_key`, `config_value`) values('storage/s3/privatekey', "");
insert into `config` (`config_key`, `config_value`) values('storage/s3/publickey', "");
insert into `config` (`config_key`, `config_value`) values('storage/type', 'fs');
insert into `config` (`config_key`, `config_value`) values('storage/fs/path','/var/www/deki-hayes/attachments');
insert into `config` (`config_key`, `config_value`) values('storage/s3/timeout', '');
insert into `config` (`config_key`, `config_value`) values('files/max-file-size','268435456');
insert into `config` (`config_key`, `config_value`) values('files/blocked-extensions','exe, vbs, scr, reg, bat, com');
insert into `config` (`config_key`, `config_value`) values('files/imagemagick-extensions','bmp, jpg, jpeg, png, gif, tiff');
insert into `config` (`config_key`, `config_value`) values('files/imagemagick-max-size','2000000');
insert into `config` (`config_key`, `config_value`) values('ui/banned-words',"");
insert into `config` (`config_key`, `config_value`) values('ui/sitename','DekiWiki (Hayes)');
insert into `config` (`config_key`, `config_value`) values('ui/language','en-us');
insert into `config` (`config_key`, `config_value`) values('admin/smtp-server','localhost');
insert into `config` (`config_key`, `config_value`) values('ui/analytics-key','UA-68075-16');

--
-- Table structure for table `group_grants`
--
CREATE TABLE `group_grants` (
  `group_grant_id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `page_id` INT(10) UNSIGNED NOT NULL,
  `group_id` INT(10) UNSIGNED NOT NULL,
  `role_id` INT(4) UNSIGNED NOT NULL,
  `creator_user_id` int(10) unsigned not null,
  `expire_date` datetime default NULL,
  `last_edit` timestamp,
  PRIMARY KEY  (`group_grant_id`),
  UNIQUE(`page_id`, `group_id`)
) ENGINE = MYISAM DEFAULT CHARSET=utf8 COLLATE utf8_general_ci;

--
-- Table structure for table `groups`
--

CREATE TABLE `groups` (
  `group_id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `group_name` VARCHAR(255)  NOT NULL,
  `group_role_id` INT(4) UNSIGNED NOT NULL,
  `group_service_id` int(4) unsigned not null,
  `group_creator_user_id` int(10) unsigned not null,
  `group_last_edit` timestamp,
  PRIMARY KEY  (`group_id`),
  UNIQUE KEY `group_name` (`group_name`, `group_service_id`)
) ENGINE = MYISAM DEFAULT CHARSET=utf8 COLLATE utf8_general_ci;

--
-- Table structure for table `links`
--

CREATE TABLE `links` (
  `l_from` int(8) unsigned NOT NULL default '0',
  `l_to` int(8) unsigned NOT NULL default '0',
  UNIQUE KEY `l_from` (`l_from`,`l_to`),
  KEY `l_to` (`l_to`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE utf8_general_ci;

--
-- Table structure for table `linkscc`
--

CREATE TABLE `linkscc` (
  `lcc_pageid` int(10) unsigned NOT NULL default '0',
  `lcc_cacheobj` mediumblob NOT NULL,
  UNIQUE KEY `lcc_pageid` (`lcc_pageid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE utf8_general_ci;

--
-- Table structure for table `logging`
--

CREATE TABLE `logging` (
  `log_type` varchar(10) NOT NULL default '',
  `log_action` varchar(10) NOT NULL default '',
  `log_timestamp` varchar(14) NOT NULL default '19700101000000',
  `log_user` int(10) unsigned NOT NULL default '0',
  `log_namespace` tinyint(3) unsigned NOT NULL default '0',
  `log_title` varchar(255) NOT NULL default '',
  `log_comment` varchar(255) NOT NULL default '',
  `log_params` blob NOT NULL,
  KEY `type_time` (`log_type`,`log_timestamp`),
  KEY `user_time` (`log_user`,`log_timestamp`),
  KEY `page_time` (`log_namespace`,`log_title`,`log_timestamp`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE utf8_general_ci;

--
-- Table structure for table `objectcache`
--

CREATE TABLE `objectcache` (
  `keyname` varchar(255) NOT NULL default '',
  `value` mediumblob,
  `exptime` datetime default NULL,
  UNIQUE KEY `keyname` (`keyname`),
  KEY `exptime` (`exptime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE utf8_general_ci;

--
-- Table structure for table `old`
--

CREATE TABLE `old` (
  `old_id` int(8) unsigned NOT NULL auto_increment,
  `old_namespace` tinyint(2) unsigned NOT NULL default '0',
  `old_title` varchar(255) NOT NULL default '',
  `old_text` mediumtext NOT NULL,
  `old_comment` tinyblob NOT NULL,
  `old_user` int(5) unsigned NOT NULL default '0',
  `old_user_text` varchar(255) NOT NULL default '',
  `old_timestamp` varchar(14) NOT NULL default '',
  `old_minor_edit` tinyint(1) NOT NULL default '0',
  `old_flags` tinyblob NOT NULL,
  `old_content_type` varchar(255) NOT NULL default 'application/x.deki-text',
  `inverse_timestamp` varchar(14) NOT NULL default '',
  PRIMARY KEY  (`old_id`),
  KEY `old_timestamp` (`old_timestamp`),
  KEY `name_title_timestamp` (`old_namespace`,`old_title`,`inverse_timestamp`),
  KEY `user_timestamp` (`old_user`,`inverse_timestamp`),
  KEY `usertext_timestamp` (`old_user_text`,`inverse_timestamp`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE utf8_general_ci;

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `page_id` int(8) unsigned NOT NULL auto_increment,
  `page_namespace` tinyint(2) unsigned default 0 not null,
  `page_title` varchar(255) NOT NULL,
  `page_text` mediumtext NOT NULL,
  `page_comment` blob NOT NULL,
  `page_user_id` int(10) unsigned not null default 0,
  `page_timestamp` varchar(14) NOT NULL,
  `page_counter` bigint(20) unsigned not null default 0,
  `page_is_redirect` tinyint(1) unsigned not null default 0,
  `page_minor_edit` tinyint(1) unsigned not null default 0,
  `page_is_new` tinyint(1) unsigned not null default 0,
  `page_random` double unsigned not null default 0,
  `page_touched` varchar(14) NOT NULL,
  `page_inverse_timestamp` varchar(14) NOT NULL,
  `page_usecache` tinyint(1) unsigned not null default 1,
  `page_toc` blob NOT NULL,
  `page_tip` text NOT NULL,
  `page_parent` int(8) not null default 0,
  `page_restriction_id` int(4) unsigned NOT NULL,
  `page_content_type` varchar(255) NOT NULL default 'application/x.deki-text',
  PRIMARY KEY  (`page_id`),
  UNIQUE KEY `name_title` (`page_namespace`,`page_title`),
  KEY `page_title` (`page_title`(20)),
  KEY `page_timestamp` (`page_timestamp`),
  KEY `page_random` (`page_random`),
  KEY `name_title_timestamp` (`page_namespace`,`page_title`,`page_inverse_timestamp`),
  KEY `user_timestamp` (`page_user_id`,`page_inverse_timestamp`),
  KEY `usertext_timestamp` (`page_inverse_timestamp`),
  KEY `namespace_redirect_timestamp` (`page_namespace`,`page_is_redirect`,`page_timestamp`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE utf8_general_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`page_namespace`, `page_title`, `page_tip`, `page_parent`, `page_restriction_id`, `page_content_type`) VALUES
	(101, 'Userlogin', 'Special page', 0, 0, 'text/plain'),
	(101, 'Userlogout', 'Special page', 0, 0, 'text/plain'),
	(101, 'Preferences', 'Special page', 0, 0, 'text/plain'),
	(101, 'Watchedpages', 'Special page', 0, 0, 'text/plain'),
	(101, 'Recentchanges', 'Special page', 0, 0, 'text/plain'),
	(101, 'Listusers', 'Special page', 0, 0, 'text/plain'),
	(101, 'ListTemplates', 'Special page', 0, 0, 'text/plain'),
	(101, 'ListRss', 'Special page', 0, 0, 'text/plain'),
	(101, 'Search', 'Special page', 0, 0, 'text/plain'),
	(101, 'Sitemap', 'Special page', 0, 0, 'text/plain'),
	(101, 'Contributions', 'Special page', 0, 0, 'text/plain'),
	(101, 'Undelete', 'Special page', 0, 0, 'text/plain'),
	(101, 'Popularpages', 'Special page', 0, 0, 'text/plain'),
	(101, 'Watchlist', 'Special page', 0, 0, 'text/plain'),
	(101, 'About', 'Special page', 0, 0, 'text/plain'),
	(101, 'Statistics', 'Special page', 0, 0, 'text/plain'),
	(101, 'Tags', 'Special page', 0, 0, 'text/plain'),
	(101, 'Events', 'Special page', 0, 0, 'text/plain');

INSERT INTO `pages` (`page_namespace`, `page_title`, `page_tip`, `page_parent`, `page_restriction_id`, `page_content_type`) VALUES(103, '', 'Admin page', 0, 0, 'text/plain');
SELECT LAST_INSERT_ID() INTO @ADMIN_PAGE_ID;
INSERT INTO `pages` (`page_namespace`, `page_title`, `page_tip`, `page_parent`, `page_restriction_id`, `page_content_type`) VALUES
	(103, 'ServiceManagement', 'Admin page', @ADMIN_PAGE_ID, 0, 'text/plain'),
	(103, 'GroupManagement', 'Admin page', @ADMIN_PAGE_ID, 0, 'text/plain'),
	(103, 'UserManagement', 'Admin page', @ADMIN_PAGE_ID, 0, 'text/plain'),
	(103, 'RecycleBin', 'Admin page', @ADMIN_PAGE_ID, 0, 'text/plain'),
	(103, 'UnusedRedirects', 'Admin page', @ADMIN_PAGE_ID, 0, 'text/plain'),
	(103, 'SiteSettings', 'Admin page', @ADMIN_PAGE_ID, 0, 'text/plain'),
	(103, 'DoubleRedirects', 'Admin page', @ADMIN_PAGE_ID, 0, 'text/plain'),
	(103, 'Visual', 'Admin page', @ADMIN_PAGE_ID, 0, 'text/plain');
	
INSERT INTO `pages` (`page_namespace`, `page_title`, `page_tip`, `page_parent`, `page_restriction_id`, `page_content_type`) VALUES(10, '', 'Template page', 0, 0, 'text/plain');
--
-- Table structure for table `querycache`
--

CREATE TABLE `querycache` (
  `qc_type` char(32) NOT NULL default '',
  `qc_value` int(5) unsigned NOT NULL default '0',
  `qc_namespace` tinyint(2) unsigned NOT NULL default '0',
  `qc_title` char(255) NOT NULL default '',
  KEY `qc_type` (`qc_type`,`qc_value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE utf8_general_ci;

--
-- Table structure for table `recentchanges`
--

CREATE TABLE `recentchanges` (
  `rc_id` int(8) NOT NULL auto_increment,
  `rc_timestamp` varchar(14) NOT NULL default '',
  `rc_cur_time` varchar(14) NOT NULL default '',
  `rc_user` int(10) unsigned NOT NULL default '0',
  `rc_user_text` varchar(255) NOT NULL default '',
  `rc_namespace` tinyint(3) NOT NULL default '0',
  `rc_title` varchar(255) NOT NULL default '',
  `rc_comment` varchar(255) NOT NULL default '',
  `rc_minor` tinyint(3) unsigned NOT NULL default '0',
  `rc_bot` tinyint(3) unsigned NOT NULL default '0',
  `rc_new` tinyint(3) unsigned NOT NULL default '0',
  `rc_cur_id` int(10) unsigned NOT NULL default '0',
  `rc_this_oldid` int(10) unsigned NOT NULL default '0',
  `rc_last_oldid` int(10) unsigned NOT NULL default '0',
  `rc_type` tinyint(3) unsigned NOT NULL default '0',
  `rc_moved_to_ns` tinyint(3) unsigned NOT NULL default '0',
  `rc_moved_to_title` varchar(255) NOT NULL default '',
  `rc_patrolled` tinyint(3) unsigned NOT NULL default '0',
  `rc_ip` varchar(15) NOT NULL default '',
  PRIMARY KEY  (`rc_id`),
  KEY `rc_timestamp` (`rc_timestamp`),
  KEY `rc_namespace_title` (`rc_namespace`,`rc_title`),
  KEY `rc_cur_id` (`rc_cur_id`),
  KEY `new_name_timestamp` (`rc_new`,`rc_namespace`,`rc_timestamp`),
  KEY `rc_ip` (`rc_ip`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE utf8_general_ci;

--
-- Table structure for table `restrictions`
--

CREATE TABLE `restrictions` (
  `restriction_id` INT(4) UNSIGNED NOT NULL AUTO_INCREMENT,
  `restriction_name` VARCHAR(255)  NOT NULL,
  `restriction_perm_flags` MEDIUMINT UNSIGNED NOT NULL,
  `restriction_creator_user_id` int(10) unsigned not null,
  `restriction_last_edit` timestamp, 
  PRIMARY KEY  (`restriction_id`)
) ENGINE = MYISAM DEFAULT CHARSET=utf8 COLLATE utf8_general_ci;

--
-- Dumping data for table `restrictions`
--

INSERT INTO `restrictions` (`restriction_name`, `restriction_perm_flags`, `restriction_creator_user_id`) VALUES
('Public', '2047', '1'),
('Semi-Public', '15', '1'),
('Private', '3', '1');

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `role_id` INT(4) UNSIGNED NOT NULL AUTO_INCREMENT,
  `role_name` VARCHAR(255)  NOT NULL,
  `role_perm_flags` BIGINT(8) UNSIGNED NOT NULL,
  `role_hidden` tinyint(1) unsigned not null default 0,
  `role_creator_user_id` int(10) unsigned not null,
  `role_last_edit` timestamp,
  PRIMARY KEY  (`role_id`)
) ENGINE = MYISAM DEFAULT CHARSET=utf8 COLLATE utf8_general_ci;

--
-- Dumping data for table `roles`
--

insert into `roles` (`role_name`, `role_perm_flags`, `role_hidden`, `role_creator_user_id`) values
('None', '0', '1', '1'),
('Guest', '1', '1', '1' );
insert into `roles` (`role_name`, `role_perm_flags`, `role_creator_user_id`) values
('Viewer', '15', '1' ),
('Contributor', '1343', '1' ),
('Admin', '9223372036854779903', '1' );

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `service_id` INT(4) UNSIGNED NOT NULL AUTO_INCREMENT,
  `service_type` varchar(255) not null,
  `service_sid` varchar(255),
  `service_uri` varchar(255),
  `service_description` mediumtext,
  `service_local` TINYINT(1) UNSIGNED NOT NULL DEFAULT 1,
  `service_enabled` tinyint(1) unsigned not null default 1,
  `service_last_status` text NULL,
  `service_last_edit` timestamp NOT NULL,
  PRIMARY KEY  (`service_id`)
) ENGINE = MYISAM DEFAULT CHARSET=utf8 COLLATE utf8_general_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`service_type`, `service_sid`, `service_description`, `service_enabled`) VALUES 
	('auth', 'http://services.mindtouch.com/deki/draft/2006/11/dekiwiki', 'Local', 1),
	('ext', 'http://services.mindtouch.com/deki/draft/2007/06/feed', 'Atom/RSS Feeds', 1),
 	('ext', 'http://services.mindtouch.com/deki/draft/2007/06/digg', 'Digg', 1),
 	('ext', 'http://services.mindtouch.com/deki/draft/2007/06/flickr', 'Flickr', 1),
 	('ext', 'http://services.mindtouch.com/deki/draft/2007/06/gabbly', 'Gabbly', 1),
 	('ext', 'http://services.mindtouch.com/deki/draft/2007/06/media', 'Multimedia', 1),
 	('ext', 'http://services.mindtouch.com/deki/draft/2007/06/widgetbox', 'WidgetBox', 1),
	('ext', 'http://services.mindtouch.com/deki/draft/2007/07/windows.live', 'Windows Live', 1),
 	('ext', 'http://services.mindtouch.com/deki/draft/2007/06/syntax', 'Syntax Highlighter', 1);


--
-- Table structure for table `service_config`
--

CREATE TABLE `service_config` (
    config_id INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    service_id INT(4) UNSIGNED NOT NULL, 
    config_name CHAR(255) NOT NULL,
    config_value TEXT,
    PRIMARY KEY (config_id)
) ENGINE = MYISAM DEFAULT CHARSET=utf8 COLLATE utf8_general_ci;

--
-- Table structure for table `service_prefs`
--

CREATE TABLE `service_prefs` (
    pref_id INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    service_id INT(4) UNSIGNED NOT NULL, 
    pref_name CHAR(255) NOT NULL,
    pref_value TEXT,
    PRIMARY KEY (pref_id)
) ENGINE = MYISAM DEFAULT CHARSET=utf8 COLLATE utf8_general_ci;


--
-- Table structure for table `site_stats`
--

CREATE TABLE `site_stats` (
  `ss_row_id` int(8) unsigned NOT NULL default '0',
  `ss_total_views` bigint(20) unsigned default '0',
  `ss_total_edits` bigint(20) unsigned default '0',
  `ss_good_articles` bigint(20) unsigned default '0',
  `ss_total_pages` bigint(20) default '-1',
  `ss_users` bigint(20) default '-1',
  `ss_admins` int(10) default '-1',
  UNIQUE KEY `ss_row_id` (`ss_row_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE utf8_general_ci;

--
-- Table structure for table `tag_map`
--

CREATE TABLE `tag_map` (
`tagmap_id` INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY ,
`tagmap_page_id` INT UNSIGNED NOT NULL ,
`tagmap_tag_id` INT(4) UNSIGNED NOT NULL ,
INDEX ( `tagmap_page_id` , `tagmap_tag_id` )
) ENGINE = MYISAM DEFAULT CHARSET=utf8 COLLATE utf8_general_ci;

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `tag_id` INT(4) unsigned NOT NULL AUTO_INCREMENT PRIMARY KEY ,
  `tag_name` varchar(255) NOT NULL default '',
  `tag_type` tinyint(2) unsigned NOT NULL default '0',
  INDEX (`tag_name`, `tag_type`)
) ENGINE = MYISAM DEFAULT CHARSET=utf8 COLLATE utf8_general_ci;


--
-- Table structure for table `user_grants`
--

CREATE TABLE `user_grants` (
  `user_grant_id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `page_id` INT(10) UNSIGNED NOT NULL,
  `user_id` INT(10) UNSIGNED NOT NULL,
  `role_id` INT(4) UNSIGNED NOT NULL,
  `creator_user_id` int(10) unsigned not null,
  `expire_date` datetime default NULL,
  `last_edit` timestamp,
  PRIMARY KEY  (`user_grant_id`),
  UNIQUE(`page_id`, `user_id`)
) ENGINE = MYISAM DEFAULT CHARSET=utf8 COLLATE utf8_general_ci;

--
-- Table structure for table `user_groups`
--

CREATE TABLE `user_groups` (
  `user_id` INT(10) NOT NULL,
  `group_id` INT(10) NOT NULL,
  `last_edit` timestamp,
  UNIQUE(`user_id`, `group_id`)
) ENGINE = MYISAM DEFAULT CHARSET=utf8 COLLATE utf8_general_ci;

--
-- Table structure for table `user_registrations`
--
CREATE TABLE `user_registrations` (
  `register_id` int(10) unsigned NOT NULL auto_increment,
  `register_username` varchar(255) NOT NULL default '',
  `register_email` varchar(255) NOT NULL default '',
  `register_active` tinyint(1) NOT NULL default '1',
  `register_role_id` int(4) unsigned not null,
  `register_service_id` int(4) unsigned NOT NULL,
  `register_created` varchar(14) NOT NULL default '',
  `register_expired` varchar(14) NOT NULL default '',
  `register_nonce` varchar(32) NOT NULL default '',
  PRIMARY KEY  (`register_id`),
  KEY `register_username` (`register_username`),
  KEY `register_nonce` (`register_nonce`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE utf8_general_ci;

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(10) unsigned NOT NULL auto_increment,
  `user_name` varchar(255) NOT NULL,
  `user_real_name` varchar(255) default NULL,
  `user_password` tinyblob NOT NULL,
  `user_newpassword` tinyblob NOT NULL,
  `user_email` varchar(255) default NULL,
  `user_options` blob NOT NULL,
  `user_touched` varchar(14) NOT NULL default '',
  `user_token` varchar(32) NOT NULL default '',
  `user_role_id` int(4) unsigned not null,
  `user_active` tinyint(1) unsigned NOT NULL,
  `user_external_name` varchar(255) default NULL,
  `user_service_id` int(4) unsigned NOT NULL,
  `user_builtin` tinyint(1) unsigned NOT NULL default 0,
  PRIMARY KEY  (`user_id`),
  UNIQUE KEY `user_name` (`user_name`, `user_service_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE utf8_general_ci;

--
-- Dumping data for table `users`
--
INSERT INTO `users` (`user_name`,`user_real_name`,`user_password`,`user_email`,`user_options`,`user_touched`,`user_token`,`user_role_id`,`user_active`,`user_service_id`, `user_builtin`) 
VALUES ('Sysop','','bdf6301b822e7778e38bf1072a74e4e8','','quickbar=1\nunderline=1\nhover=1\nsearchlimit=20\ncontextlines=5\ncontextchars=50\nskin=ace\nrcdays=7\nrclimit=50\nhighlightbroken=1\nstubthreshold=0\nadvancededitor=0\neditsection=1\nshowtoc=1\nshowtoolbar=1\ndate=0\nimagesize=2\nfancysig=0\nbclen=5\nvariant=en\nlanguage=en\nsearchNs-1=1\nsearchNs0=1\nsearchNs1=0\nsearchNs2=1\nsearchNs3=0\nsearchNs4=0\nsearchNs5=1\nsearchNs6=0\nsearchNs7=0\nsearchNs8=0\nsearchNs9=1\nsearchNs10=1\nsearchNs11=0\nsearchNs12=1\nsearchNs13=0\nsearchNs14=0\nsearchNs15=0\nsearchNs16=1\nrememberpassword=0','20061221213835','2158a249b6b8368a738bf81d97627be1','5','1','1','1'),
	   ('Anonymous','Anonymous User','','','','0','','3','1','1','1');

--
-- Table structure for table `watchlist`
--

CREATE TABLE `watchlist` (
  `wl_user` int(5) unsigned NOT NULL default '0',
  `wl_namespace` tinyint(2) unsigned NOT NULL default '0',
  `wl_title` varchar(255) NOT NULL default '',
  UNIQUE KEY `wl_user` (`wl_user`,`wl_namespace`,`wl_title`),
  KEY `namespace_title` (`wl_namespace`,`wl_title`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE utf8_general_ci;

-- Dump completed on 2007-02-17  0:27:06
