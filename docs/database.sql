-- SQL dump generated using DBML (dbml-lang.org)
-- Database: MySQL
-- Generated at: 2022-08-16T04:55:37.425Z

CREATE TABLE `users` (
  `id` bigint PRIMARY KEY NOT NULL AUTO_INCREMENT COMMENT 'ไอดี',
  `created_at` datetime NOT NULL COMMENT 'วันเวลาที่สร้าง',
  `updated_at` datetime NOT NULL COMMENT 'วันเวลาที่อัพเดตล่าสุด',
  `deleted_at` datetime COMMENT 'วันเวลาที่ลบ',
  `name` varchar(255) COMMENT 'ชื่อ',
  `surname` varchar(255) COMMENT 'นามสกุล',
  `email` varchar(255) COMMENT 'อีเมล',
  `phone_number` varchar(255) COMMENT 'เบอร์โทรศัพท์',
  `id_card` varchar(255) COMMENT 'บัตรประชาชน',
  `password` varchar(255) COMMENT 'รหัสผ่าน'
);

CREATE TABLE `addresses` (
  `id` bigint PRIMARY KEY NOT NULL AUTO_INCREMENT COMMENT 'ไอดี',
  `created_at` datetime NOT NULL COMMENT 'วันเวลาที่สร้าง',
  `updated_at` datetime NOT NULL COMMENT 'วันเวลาที่อัพเดตล่าสุด',
  `deleted_at` datetime COMMENT 'วันเวลาที่ลบ',
  `address` varchar(255) NOT NULL COMMENT 'ที่อยุ่',
  `description` text COMMENT 'รายละเอียดที่อยุ่',
  `user_id` bigint NOT NULL
);

ALTER TABLE `users` COMMENT = 'ข้อมูลผู้ใช้งาน';

ALTER TABLE `addresses` COMMENT = 'ข้อมูลที่อยู่';

ALTER TABLE `addresses` ADD FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
