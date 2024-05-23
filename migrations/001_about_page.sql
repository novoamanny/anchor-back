###
# This creates the table, and entries to support the about page
# It includes the permissions as well so you can query the content
###

# Creates about table and content entry for about
DROP TABLE IF EXISTS `abouts`;

CREATE TABLE `abouts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Title` varchar(255) DEFAULT NULL,
  `published_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `PageTitle` varchar(255) DEFAULT NULL,
  `PageSubTitle` varchar(255) DEFAULT NULL,
  `HistoryTitle` varchar(255) DEFAULT NULL,
  `HistoryContent` longtext,
  `FacilitiesTitle` varchar(255) DEFAULT NULL,
  `FacilitiesSubTitle` varchar(255) DEFAULT NULL,
  `FacilitiesContent` longtext,
  `ValuesTitle` varchar(255) DEFAULT NULL,
  `ValuesSubTitle` varchar(255) DEFAULT NULL,
  `ValuesContent` longtext,
  `TeamTitle` varchar(255) DEFAULT NULL,
  `TeamSubTitle` varchar(255) DEFAULT NULL,
  `TeamContent` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB;

INSERT INTO `abouts` (`id`, `Title`, `published_at`, `created_by`, `updated_by`, `created_at`, `updated_at`, `PageTitle`, `PageSubTitle`, `HistoryTitle`, `HistoryContent`, `FacilitiesTitle`, `FacilitiesSubTitle`, `FacilitiesContent`, `ValuesTitle`, `ValuesSubTitle`, `ValuesContent`, `TeamTitle`, `TeamSubTitle`, `TeamContent`)
VALUES
	(1,NULL,'2021-10-22 22:14:17',1,1,'2021-10-22 22:14:15','2021-10-24 00:16:30','Anchor Fabrication, Forging Problems into Opportunities','Light, Mid-Range, and Heavy Metal Fabrication Under One Roof','Company History','Originating as a concept in 1989, Anchor Fabrication began with the purchase of a modest 25,000 square-foot custom metal fabrication facility before operations officially commenced in January 1990. Those personnel selling Anchor Fabrication simultaneously worked in production using our original equipment: two 12-foot shears, a punch, track torch, roll and two 12-foot press brakes.\n\nSince that time, we’ve ambitiously expanded our enterprise, adding square footage and capabilities each step of the way. We’ve invested in technologically advanced equipment and metal fabrication tools, perfected our process, and solidified customer relationships, serving almost every major industry there is.\n\nMost recently, we merged three companies into one metal fabrication shop that serves all your manufacturing needs. Anchor Manufacturing, ABBY, and Quality Industries are all Anchor Fabrication. These acquisitions enable Anchor to provide light, mid-range, and heavy metal fabrication under one roof, simplifying purchase orders, logistics, and quality control for our customers.\n\nAt Anchor Fabrication, the sheer size of our annual output competes with any metal fabrication conglomerate in the United States. \n\n- 1 million parts\n- 1 million man hours \n- 1 million square feet of manufacturing space \n\nWe always welcome facility tours for current and prospective partners. Come see for yourself how Anchor Fabrication makes it all happen. ','Facilities','Built For Capacity','- Fort Worth, TX: 360,000 sq feet (with added 224,000 sq. ft. expansion) \n- Garland, TX: 60,000 sq feet\n- Dallas, TX: 120,000 sq feet\n- Walnut, MS: 160,000 sq feet\n- Ashland, MS: 200,000 sq feet\n- New Albany, MS: 60,000 sq feet\n- TN','Values','Forging problems into opportunities','Our values stem from our Christian faith, a central pillar of our culture. Working for a purpose greater than ourselves drives us in our professional and personal lives. We pride ourselves in\n\n- Employing the best-trained and most experienced custom metal fabrication staff in the industry\n- Genuinely investing in people and their professional development \n- Cultivating lasting and trustworthy relationships with our clients\n- Exuding our Guiding Principles at work and in our personal lives\n  - Everyone matters\n  - Deliver quality with integrity\n  - Turn tough problems into real opportunities\n  - Realize our potential\n  - Act with purpose, for the greater good','Team','An Anchor For Business','The Anchor Fabrication management team brings years of experience and specialization within an ever-evolving metal fabrication industry. We understand how to meet demanding client requests and deliver products exactly as designed.');

# Adds rows for core_store
INSERT INTO `core_store` (`id`, `key`, `value`, `type`, `environment`, `tag`)
VALUES
	(36, 'model_def_application::about.about', '{\"uid\":\"application::about.about\",\"collectionName\":\"abouts\",\"kind\":\"singleType\",\"info\":{\"name\":\"About\",\"description\":\"\"},\"options\":{\"increments\":true,\"timestamps\":[\"created_at\",\"updated_at\"],\"draftAndPublish\":true},\"attributes\":{\"PageTitle\":{\"type\":\"string\"},\"PageSubTitle\":{\"type\":\"string\"},\"HistoryTitle\":{\"type\":\"string\"},\"HistoryContent\":{\"type\":\"richtext\"},\"FacilitiesTitle\":{\"type\":\"string\"},\"FacilitiesSubTitle\":{\"type\":\"string\"},\"FacilitiesContent\":{\"type\":\"richtext\"},\"ValuesTitle\":{\"type\":\"string\"},\"ValuesSubTitle\":{\"type\":\"string\"},\"ValuesContent\":{\"type\":\"richtext\"},\"TeamTitle\":{\"type\":\"string\"},\"TeamSubTitle\":{\"type\":\"string\"},\"TeamContent\":{\"type\":\"richtext\"},\"published_at\":{\"type\":\"datetime\",\"configurable\":false},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"private\":true}}}', 'object', NULL, NULL),
	(37, 'plugin_content_manager_configuration_content_types::application::about.about', '{\"uid\":\"application::about.about\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"id\",\"defaultSortBy\":\"id\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"PageTitle\":{\"edit\":{\"label\":\"PageTitle\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"PageTitle\",\"searchable\":true,\"sortable\":true}},\"PageSubTitle\":{\"edit\":{\"label\":\"PageSubTitle\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"PageSubTitle\",\"searchable\":true,\"sortable\":true}},\"HistoryTitle\":{\"edit\":{\"label\":\"HistoryTitle\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"HistoryTitle\",\"searchable\":true,\"sortable\":true}},\"HistoryContent\":{\"edit\":{\"label\":\"HistoryContent\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"HistoryContent\",\"searchable\":false,\"sortable\":false}},\"FacilitiesTitle\":{\"edit\":{\"label\":\"FacilitiesTitle\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"FacilitiesTitle\",\"searchable\":true,\"sortable\":true}},\"FacilitiesSubTitle\":{\"edit\":{\"label\":\"FacilitiesSubTitle\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"FacilitiesSubTitle\",\"searchable\":true,\"sortable\":true}},\"FacilitiesContent\":{\"edit\":{\"label\":\"FacilitiesContent\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"FacilitiesContent\",\"searchable\":false,\"sortable\":false}},\"ValuesTitle\":{\"edit\":{\"label\":\"ValuesTitle\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"ValuesTitle\",\"searchable\":true,\"sortable\":true}},\"ValuesSubTitle\":{\"edit\":{\"label\":\"ValuesSubTitle\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"ValuesSubTitle\",\"searchable\":true,\"sortable\":true}},\"ValuesContent\":{\"edit\":{\"label\":\"ValuesContent\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"ValuesContent\",\"searchable\":false,\"sortable\":false}},\"TeamTitle\":{\"edit\":{\"label\":\"TeamTitle\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"TeamTitle\",\"searchable\":true,\"sortable\":true}},\"TeamSubTitle\":{\"edit\":{\"label\":\"TeamSubTitle\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"TeamSubTitle\",\"searchable\":true,\"sortable\":true}},\"TeamContent\":{\"edit\":{\"label\":\"TeamContent\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"TeamContent\",\"searchable\":false,\"sortable\":false}},\"published_at\":{\"edit\":{\"label\":\"Published_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Published_at\",\"searchable\":true,\"sortable\":true}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"published_at\",\"created_at\",\"PageTitle\"],\"edit\":[[{\"name\":\"PageTitle\",\"size\":6},{\"name\":\"PageSubTitle\",\"size\":6}],[{\"name\":\"HistoryTitle\",\"size\":6}],[{\"name\":\"HistoryContent\",\"size\":12}],[{\"name\":\"FacilitiesTitle\",\"size\":6},{\"name\":\"FacilitiesSubTitle\",\"size\":6}],[{\"name\":\"FacilitiesContent\",\"size\":12}],[{\"name\":\"ValuesTitle\",\"size\":6},{\"name\":\"ValuesSubTitle\",\"size\":6}],[{\"name\":\"ValuesContent\",\"size\":12}],[{\"name\":\"TeamTitle\",\"size\":6},{\"name\":\"TeamSubTitle\",\"size\":6}],[{\"name\":\"TeamContent\",\"size\":12}]],\"editRelations\":[]}}', 'object', '', '');

# Entries for strapi_permission

INSERT INTO `strapi_permission` (`id`, `action`, `subject`, `fields`, `conditions`, `role`, `created_at`, `updated_at`)
VALUES
	(110, 'plugins::content-manager.explorer.delete', 'application::about.about', NULL, '[]', 1, '2021-10-21 22:34:43', '2021-10-21 22:34:43'),
	(111, 'plugins::content-manager.explorer.publish', 'application::about.about', NULL, '[]', 1, '2021-10-21 22:34:43', '2021-10-21 22:34:43'),
	(112, 'plugins::content-manager.explorer.create', 'application::about.about', '[\"PageTitle\",\"PageSubTitle\",\"HistoryTitle\",\"HistoryContent\",\"FacilitiesTitle\",\"FacilitiesSubTitle\",\"FacilitiesContent\",\"ValuesTitle\",\"ValuesSubTitle\",\"ValuesContent\",\"TeamTitle\",\"TeamSubTitle\",\"TeamContent\"]', '[]', 1, '2021-10-22 22:08:42', '2021-10-22 22:08:42'),
	(113, 'plugins::content-manager.explorer.read', 'application::about.about', '[\"PageTitle\",\"PageSubTitle\",\"HistoryTitle\",\"HistoryContent\",\"FacilitiesTitle\",\"FacilitiesSubTitle\",\"FacilitiesContent\",\"ValuesTitle\",\"ValuesSubTitle\",\"ValuesContent\",\"TeamTitle\",\"TeamSubTitle\",\"TeamContent\"]', '[]', 1, '2021-10-22 22:08:42', '2021-10-22 22:08:42'),
	(114, 'plugins::content-manager.explorer.update', 'application::about.about', '[\"PageTitle\",\"PageSubTitle\",\"HistoryTitle\",\"HistoryContent\",\"FacilitiesTitle\",\"FacilitiesSubTitle\",\"FacilitiesContent\",\"ValuesTitle\",\"ValuesSubTitle\",\"ValuesContent\",\"TeamTitle\",\"TeamSubTitle\",\"TeamContent\"]', '[]', 1, '2021-10-22 22:08:42', '2021-10-22 22:08:42');

# Entries for user permissions

INSERT INTO `users-permissions_permission` (`id`, `type`, `controller`, `action`, `enabled`, `policy`, `role`, `created_by`, `updated_by`)
VALUES
	(195, 'application', 'about', 'delete', 0, '', 1, NULL, NULL),
	(196, 'application', 'about', 'delete', 0, '', 2, NULL, NULL),
	(197, 'application', 'about', 'find', 0, '', 1, NULL, NULL),
	(198, 'application', 'about', 'find', 1, '', 2, NULL, NULL),
	(199, 'application', 'about', 'update', 0, '', 1, NULL, NULL),
	(200, 'application', 'about', 'update', 0, '', 2, NULL, NULL);
