
-- +migrate Up
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

ALTER TABLE `users` COMMENT = 'ข้อมูลผู้ใช้งาน';

-- +migrate Down
DROP TABLE `users`;
