-- -------------------------------------------------------------
-- -------------------------------------------------------------
-- TablePlus 1.2.6
--
-- https://tableplus.com/
--
-- Database: cek_dokter_kita
-- Generation Time: 2025-07-15 15:15:06.551818
-- -------------------------------------------------------------

CREATE TABLE `certifications` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `person_id` bigint unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  `issuing_organization` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `person_id` (`person_id`),
  CONSTRAINT `certifications_ibfk_1` FOREIGN KEY (`person_id`) REFERENCES `people` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO `cek_dokter_kita`.`certifications` (`id`, `person_id`, `name`, `issuing_organization`, `created_at`, `updated_at`) VALUES 
(1, 1, 'Spesialis Radiologi (Intervensi)', 'Kolegium Radiologi Indonesia', '2025-07-15 14:38:07', '2025-07-15 14:38:07'),
(2, 2, 'Konsultan Urologi Onkologi', 'Ikatan Ahli Urologi Indonesia (IAUI)', '2025-07-15 14:38:07', '2025-07-15 14:38:07'),
(3, 3, 'Konsultan Oftalmologi', 'Perhimpunan Dokter Spesialis Mata Indonesia (PERDAMI)', '2025-07-15 14:38:07', '2025-07-15 14:38:07'),
(4, 4, 'Konsultan Hematologi-Onkologi Medik', 'Perhimpunan Dokter Spesialis Penyakit Dalam Indonesia (PAPDI)', '2025-07-15 14:38:07', '2025-07-15 14:38:07'),
(5, 6, 'Konsultan Gastro-Hepatologi Anak', 'Ikatan Dokter Anak Indonesia (IDAI)', '2025-07-15 14:38:07', '2025-07-15 14:38:07'),
(6, 7, 'Konsultan Kardiovaskular', 'Perhimpunan Dokter Spesialis Kardiovaskular Indonesia (PERKI)', '2025-07-15 14:38:07', '2025-07-15 14:38:07'),
(7, 8, 'Konsultan Hematologi-Onkologi Medik', 'Perhimpunan Ahli Onkologi Medik Indonesia (PERHOMPEDIN)', '2025-07-15 14:38:07', '2025-07-15 14:38:07'),
(8, 11, 'Konsultan Epilepsi', 'Perhimpunan Dokter Spesialis Saraf Indonesia (PERDOSSI)', '2025-07-15 14:38:07', '2025-07-15 14:38:07'),
(9, 12, 'Konsultan Fertilitas Endokrinologi Reproduksi', 'Perkumpulan Obstetri dan Ginekologi Indonesia (POGI)', '2025-07-15 14:38:07', '2025-07-15 14:38:07'),
(10, 16, 'Konsultan Infeksi Paru', 'Perhimpunan Dokter Paru Indonesia (PDPI)', '2025-07-15 14:38:07', '2025-07-15 14:38:07'),
(11, 18, 'Konsultan Hematologi-Onkologi Medik', 'Perhimpunan Dokter Spesialis Penyakit Dalam Indonesia (PAPDI)', '2025-07-15 14:38:07', '2025-07-15 14:38:07'),
(12, 23, 'Konsultan Paru', 'Perhimpunan Dokter Paru Indonesia (PDPI)', '2025-07-15 14:38:07', '2025-07-15 14:38:07'),
(13, 25, 'Konsultan Tumbuh Kembang Anak', 'Ikatan Dokter Anak Indonesia (IDAI)', '2025-07-15 14:38:07', '2025-07-15 14:38:07'),
(14, 26, 'Konsultan Alergi Imunologi', 'Perhimpunan Alergi Imunologi Indonesia (PERALMUNI)', '2025-07-15 14:38:07', '2025-07-15 14:38:07'),
(15, 28, 'Konsultan Kardiovaskular', 'Perhimpunan Dokter Spesialis Kardiovaskular Indonesia (PERKI)', '2025-07-15 14:38:07', '2025-07-15 14:38:07'),
(16, 29, 'Spesialis Gizi Klinik', 'Perhimpunan Dokter Gizi Klinik Indonesia (PDGKI)', '2025-07-15 14:38:07', '2025-07-15 14:38:07'),
(17, 30, 'Spesialis Kedokteran Jiwa', 'Perhimpunan Dokter Spesialis Kedokteran Jiwa Indonesia (PDSKJI)', '2025-07-15 14:38:07', '2025-07-15 14:38:07'),
(18, 31, 'Konsultan Penyakit Tropik Infeksi', 'Perhimpunan Dokter Spesialis Penyakit Dalam Indonesia (PAPDI)', '2025-07-15 14:38:07', '2025-07-15 14:38:07'),
(19, 32, 'Konsultan Endokrin Metabolik Diabetes', 'Perhimpunan Endokrinologi Indonesia (PERKENI)', '2025-07-15 14:38:07', '2025-07-15 14:38:07'),
(20, 33, 'Konsultan Neurologi', 'Perhimpunan Dokter Spesialis Saraf Indonesia (PERDOSSI)', '2025-07-15 14:38:07', '2025-07-15 14:38:07'),
(21, 34, 'Konsultan Kardiovaskular', 'Perhimpunan Dokter Spesialis Kardiovaskular Indonesia (PERKI)', '2025-07-15 14:38:07', '2025-07-15 14:38:07'),
(22, 35, 'Konsultan Endokrinologi Anak', 'Ikatan Dokter Anak Indonesia (IDAI)', '2025-07-15 14:38:07', '2025-07-15 14:38:07'),
(23, 36, 'Fellowship in Joint Replacement', 'Singapore General Hospital', '2025-07-15 14:38:07', '2025-07-15 14:38:07'),
(24, 37, 'Laser & Aesthetic Skin Therapy', 'American Board of Aesthetic Medicine', '2025-07-15 14:38:07', '2025-07-15 14:38:07'),
(25, 56, 'Spine Surgery Fellowship', 'Seoul National University Hospital', '2025-07-15 14:38:07', '2025-07-15 14:38:07'),
(26, 58, 'Konsultan Intensive Care (KIC)', 'Perhimpunan Dokter Spesialis Anestesiologi dan Terapi Intensif Indonesia', '2025-07-15 14:38:07', '2025-07-15 14:38:07'),
(27, 61, 'Laparoscopic Surgery', 'World Association of Laparoscopic Surgeons', '2025-07-15 14:38:07', '2025-07-15 14:38:07'),
(28, 64, 'Clinical Electrophysiology', 'National Heart Centre Singapore', '2025-07-15 14:38:07', '2025-07-15 14:38:07'),
(29, 67, 'Neonatal-Perinatal Medicine', 'Ikatan Dokter Anak Indonesia (IDAI)', '2025-07-15 14:38:07', '2025-07-15 14:38:07'),
(30, 90, 'Surgical Oncology', 'Perhimpunan Ahli Bedah Onkologi Indonesia', '2025-07-15 14:38:07', '2025-07-15 14:38:07'),
(31, 92, 'Arthroscopy & Sports Medicine', 'International Society of Arthroscopy, Knee Surgery and Orthopaedic Sports Medicine', '2025-07-15 14:38:07', '2025-07-15 14:38:07');

