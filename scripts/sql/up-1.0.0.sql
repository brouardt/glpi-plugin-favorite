-- install initiale preferences table to 1.0.0
CREATE TABLE IF NOT EXISTS `glpi_plugin_favorites_preferences`
(
    `id`    INT(10) UNSIGNED NOT NULL,
    `types` text DEFAULT NULL,
    PRIMARY KEY (`id`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;
