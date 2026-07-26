-- install initiale preferences table
CREATE TABLE IF NOT EXISTS `glpi_plugin_favorites_preferences`
(
    `id`    INT(10) UNSIGNED NOT NULL,
    `types` TEXT NULL DEFAULT NULL COLLATE 'utf8mb4_unicode_ci',
    PRIMARY KEY (`id`),
    CONSTRAINT `users_id` FOREIGN KEY (`id`) REFERENCES `glpi_users` (`id`) ON UPDATE NO ACTION ON DELETE CASCADE
) COLLATE='utf8mb4_unicode_ci' ENGINE=InnoDB ROW_FORMAT=DYNAMIC;
