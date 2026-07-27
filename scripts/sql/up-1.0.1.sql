-- upgrade to 1.0.1
ALTER TABLE `glpi_plugin_favorites_preferences`
    CHANGE COLUMN `types` `types` LONGTEXT NULL DEFAULT NULL COLLATE 'utf8mb4_unicode_ci' AFTER `id`,
    ADD COLUMN `always_in_first` TINYINT(1) NOT NULL DEFAULT '1' AFTER `types`,
    ADD COLUMN `disable_additive_ticket_menu` TINYINT(1) NOT NULL DEFAULT '0' AFTER `always_in_first`,
    ADD CONSTRAINT `users_id` FOREIGN KEY (`id`) REFERENCES `glpi_users` (`id`) ON UPDATE NO ACTION ON DELETE CASCADE;
