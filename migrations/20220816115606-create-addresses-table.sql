
-- +migrate Up
CREATE TABLE `addresses` (
  `id` bigint PRIMARY KEY NOT NULL AUTO_INCREMENT COMMENT 'ไอดี',
  `created_at` datetime NOT NULL COMMENT 'วันเวลาที่สร้าง',
  `updated_at` datetime NOT NULL COMMENT 'วันเวลาที่อัพเดตล่าสุด',
  `deleted_at` datetime COMMENT 'วันเวลาที่ลบ',
  `address` varchar(255) NOT NULL COMMENT 'ที่อยุ่',
  `description` text COMMENT 'รายละเอียดที่อยุ่',
  `user_id` bigint NOT NULL
);

-- +migrate Down
DROP TABLE `addresses`;