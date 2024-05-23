###
# This creates the table, and entries to support the Resources page
# It includes the permissions as well so you can query the content
###

# Creates about table and content entry for Resources

DROP TABLE IF EXISTS `resources`;

CREATE TABLE `resources` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `PageTitle` varchar(255) DEFAULT NULL,
  `published_at` datetime DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `SecondaryTitle` varchar(255) DEFAULT NULL,
  `Section1Title` varchar(255) DEFAULT NULL,
  `Section1Content` longtext,
  `Section2Title` varchar(255) DEFAULT NULL,
  `Section2Content` longtext,
  `Section3Title` varchar(255) DEFAULT NULL,
  `Section3Content` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB;

INSERT INTO `resources` (`id`, `PageTitle`, `published_at`, `created_by`, `updated_by`, `created_at`, `updated_at`, `SecondaryTitle`, `Section1Title`, `Section1Content`, `Section2Title`, `Section2Content`, `Section3Title`, `Section3Content`)
VALUES
  (1,'Anchor Fabrication Resources','2021-11-11 16:02:26',1,1,'2021-11-11 15:56:53','2021-11-11 16:02:26','Delivering Quality with Integrity Begins with Transparent Communication','Forms','Streamline communication with online forms. Schedule a tour, request a consultation, or simply reach out with a question.','The Metal Fabrication Blog','Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. ','Choosing a Manufacturing Partner','Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. ');

# Adds rows for core_store
INSERT INTO `core_store` (`id`, `key`, `value`, `type`, `environment`, `tag`)
VALUES
  (42, 'model_def_application::resources.resources', '{\"uid\":\"application::resources.resources\",\"collectionName\":\"resources\",\"kind\":\"singleType\",\"info\":{\"name\":\"Resources\",\"description\":\"\"},\"options\":{\"increments\":true,\"timestamps\":[\"created_at\",\"updated_at\"],\"draftAndPublish\":true},\"attributes\":{\"PageTitle\":{\"type\":\"string\"},\"SecondaryTitle\":{\"type\":\"string\"},\"Section1Title\":{\"type\":\"string\"},\"Section1Content\":{\"type\":\"richtext\"},\"Section2Title\":{\"type\":\"string\"},\"Section2Content\":{\"type\":\"richtext\"},\"Section3Title\":{\"type\":\"string\"},\"Section3Content\":{\"type\":\"richtext\"},\"published_at\":{\"type\":\"datetime\",\"configurable\":false},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"private\":true}}}', 'object', NULL, NULL);
INSERT INTO `core_store` (`id`, `key`, `value`, `type`, `environment`, `tag`)
VALUES
  (44, 'plugin_content_manager_configuration_content_types::application::resources.resources', '{\"uid\":\"application::resources.resources\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"PageTitle\",\"defaultSortBy\":\"PageTitle\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"PageTitle\":{\"edit\":{\"label\":\"PageTitle\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"PageTitle\",\"searchable\":true,\"sortable\":true}},\"SecondaryTitle\":{\"edit\":{\"label\":\"SecondaryTitle\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"SecondaryTitle\",\"searchable\":true,\"sortable\":true}},\"Section1Title\":{\"edit\":{\"label\":\"Section1Title\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Section1Title\",\"searchable\":true,\"sortable\":true}},\"Section1Content\":{\"edit\":{\"label\":\"Section1Content\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Section1Content\",\"searchable\":false,\"sortable\":false}},\"Section2Title\":{\"edit\":{\"label\":\"Section2Title\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Section2Title\",\"searchable\":true,\"sortable\":true}},\"Section2Content\":{\"edit\":{\"label\":\"Section2Content\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Section2Content\",\"searchable\":false,\"sortable\":false}},\"Section3Title\":{\"edit\":{\"label\":\"Section3Title\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Section3Title\",\"searchable\":true,\"sortable\":true}},\"Section3Content\":{\"edit\":{\"label\":\"Section3Content\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Section3Content\",\"searchable\":false,\"sortable\":false}},\"published_at\":{\"edit\":{\"label\":\"Published_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Published_at\",\"searchable\":true,\"sortable\":true}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"PageTitle\",\"SecondaryTitle\",\"Section1Title\"],\"editRelations\":[],\"edit\":[[{\"name\":\"PageTitle\",\"size\":6},{\"name\":\"SecondaryTitle\",\"size\":6}],[{\"name\":\"Section1Title\",\"size\":6}],[{\"name\":\"Section1Content\",\"size\":12}],[{\"name\":\"Section2Title\",\"size\":6}],[{\"name\":\"Section2Content\",\"size\":12}],[{\"name\":\"Section3Title\",\"size\":6}],[{\"name\":\"Section3Content\",\"size\":12}]]}}', 'object', '', '');

# Entries for strapi_permission
INSERT INTO `strapi_permission` (`id`, `action`, `subject`, `fields`, `conditions`, `role`, `created_at`, `updated_at`)
VALUES
  (138, 'plugins::content-manager.explorer.create', 'application::resources.resources', '[\"PageTitle\",\"SecondaryTitle\",\"Section1Title\",\"Section1Content\",\"Section2Title\",\"Section2Content\",\"Section3Title\",\"Section3Content\"]', '[]', 1, '2021-11-11 16:30:35', '2021-11-11 16:30:36'),
  (139, 'plugins::content-manager.explorer.read', 'application::resources.resources', '[\"PageTitle\",\"SecondaryTitle\",\"Section1Title\",\"Section1Content\",\"Section2Title\",\"Section2Content\",\"Section3Title\",\"Section3Content\"]', '[]', 1, '2021-11-11 16:30:35', '2021-11-11 16:30:36'),
  (140, 'plugins::content-manager.explorer.update', 'application::resources.resources', '[\"PageTitle\",\"SecondaryTitle\",\"Section1Title\",\"Section1Content\",\"Section2Title\",\"Section2Content\",\"Section3Title\",\"Section3Content\"]', '[]', 1, '2021-11-11 16:30:35', '2021-11-11 16:30:36'),
  (141, 'plugins::content-manager.explorer.delete', 'application::resources.resources', NULL, '[]', 1, '2021-11-11 16:30:35', '2021-11-11 16:30:36'),
  (142, 'plugins::content-manager.explorer.publish', 'application::resources.resources', NULL, '[]', 1, '2021-11-11 16:30:35', '2021-11-11 16:30:36');

# Entries for user permissions
INSERT INTO `users-permissions_permission` (`id`, `type`, `controller`, `action`, `enabled`, `policy`, `role`, `created_by`, `updated_by`)
VALUES
  (225, 'application', 'resources', 'delete', 0, '', 2, NULL, NULL),
  (226, 'application', 'resources', 'delete', 0, '', 1, NULL, NULL),
  (227, 'application', 'resources', 'find', 0, '', 1, NULL, NULL),
  (228, 'application', 'resources', 'find', 0, '', 2, NULL, NULL),
  (229, 'application', 'resources', 'update', 0, '', 1, NULL, NULL),
  (230, 'application', 'resources', 'update', 0, '', 2, NULL, NULL);