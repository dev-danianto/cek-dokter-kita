-- -------------------------------------------------------------
-- -------------------------------------------------------------
-- TablePlus 1.2.6
--
-- https://tableplus.com/
--
-- Database: cek_dokter_kita
-- Generation Time: 2025-07-15 15:15:32.917099
-- -------------------------------------------------------------

CREATE TABLE `people` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `job_title` varchar(255) DEFAULT NULL,
  `company` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `bio` text,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO `cek_dokter_kita`.`people` (`id`, `name`, `email`, `job_title`, `company`, `city`, `bio`, `created_at`, `updated_at`) VALUES 
(1, 'Dr. dr. Terawan Agus Putranto, Sp.Rad(K)RI', NULL, 'Dokter Spesialis Radiologi', 'RSPAD Gatot Soebroto', 'Jakarta', 'Mantan Menteri Kesehatan RI, dikenal dengan metode intervensi radiologi untuk stroke.', '2025-07-15 14:38:07', '2025-07-15 14:38:07'),
(2, 'Prof. Dr. dr. Akmal Taher, Sp.U(K)', NULL, 'Dokter Spesialis Urologi', 'RS Cipto Mangunkusumo', 'Jakarta', 'Pakar urologi dan inovator di bidang kesehatan, pernah menjabat sebagai Dirut RSCM.', '2025-07-15 14:38:07', '2025-07-15 14:38:07'),
(3, 'Dr. dr. Nila Djuwita F. Moeloek, Sp.M(K)', NULL, 'Dokter Spesialis Mata', 'Jakarta Eye Center', 'Jakarta', 'Mantan Menteri Kesehatan RI dan seorang ahli terkemuka di bidang oftalmologi.', '2025-07-15 14:38:07', '2025-07-15 14:38:07'),
(4, 'Prof. dr. Zubairi Djoerban, Sp.PD-KHOM', NULL, 'Dokter Spesialis Penyakit Dalam', 'RS Kramat 128', 'Jakarta', 'Pakar HIV/AIDS terkemuka di Indonesia dan sering menjadi pembicara isu kesehatan publik.', '2025-07-15 14:38:07', '2025-07-15 14:38:07'),
(5, 'Dr. Boenjamin Setiawan, Ph.D.', NULL, 'Ilmuwan & Pengusaha Farmasi', 'Kalbe Farma', 'Jakarta', 'Pendiri Kalbe Farma, salah satu perusahaan farmasi terbesar di Asia Tenggara.', '2025-07-15 14:38:07', '2025-07-15 14:38:07'),
(6, 'Dr. dr. Hanifah Oswari, Sp.A(K)', NULL, 'Dokter Spesialis Anak', 'RS Cipto Mangunkusumo', 'Jakarta', 'Pakar di bidang gastroenterologi dan hepatologi anak.', '2025-07-15 14:38:07', '2025-07-15 14:38:07'),
(7, 'Prof. Dr. dr. Idrus Alwi, Sp.PD, K-KV, FACC, FESC', NULL, 'Dokter Spesialis Jantung', 'RS Medistra', 'Jakarta', 'Guru Besar Kardiologi di FKUI dan ahli penyakit kardiovaskular.', '2025-07-15 14:38:07', '2025-07-15 14:38:07'),
(8, 'Dr. Aru Wisaksono Sudoyo, SpPD-KHOM', NULL, 'Dokter Spesialis Onkologi', 'RS Kanker Dharmais', 'Jakarta', 'Ketua Yayasan Kanker Indonesia dan pakar dalam pengobatan kanker.', '2025-07-15 14:38:07', '2025-07-15 14:38:07'),
(9, 'Dr. Deby Vinski, AAMS, M.Sc', NULL, 'Dokter Anti-Aging', 'Vinski Tower', 'Jakarta', 'Dikenal sebagai "The Queen of Anti-Aging" dan presiden World Council of Preventive Medicine.', '2025-07-15 14:38:07', '2025-07-15 14:38:07'),
(10, 'Dr. Reisa Broto Asmoro', NULL, 'Dokter Umum & Influencer Kesehatan', 'Kementerian Kesehatan', 'Jakarta', 'Mantan juru bicara Satgas COVID-19 dan aktif memberikan edukasi kesehatan kepada publik.', '2025-07-15 14:38:07', '2025-07-15 14:38:07'),
(11, 'Prof. Dr. dr. Teguh AS Ranakusuma, Sp.S(K)', NULL, 'Dokter Spesialis Saraf', 'RS Medistra', 'Jakarta', 'Pakar neurologi dengan fokus pada epilepsi dan gangguan gerak.', '2025-07-15 14:38:07', '2025-07-15 14:38:07'),
(12, 'Dr. dr. Budi Wiweko, Sp.OG(K), MPH', NULL, 'Dokter Spesialis Kandungan', 'RSIA Bunda Jakarta', 'Jakarta', 'Ahli fertilitas dan endokrinologi reproduksi, dikenal sebagai "Dokter B-We".', '2025-07-15 14:38:07', '2025-07-15 14:38:07'),
(13, 'Dr. Mesty Ariotedjo, Sp.A', NULL, 'Dokter Spesialis Anak & Musisi', 'WeCare.id', 'Jakarta', 'Selain sebagai dokter anak, ia juga seorang pemain harpa dan co-founder platform crowdfunding kesehatan.', '2025-07-15 14:38:07', '2025-07-15 14:38:07'),
(14, 'Prof. Dr. Herkutanto, Sp.F, SH, FACFE', NULL, 'Dokter Spesialis Forensik', 'Universitas Indonesia', 'Jakarta', 'Pakar kedokteran forensik yang sering terlibat dalam kasus-kasus besar di Indonesia.', '2025-07-15 14:38:07', '2025-07-15 14:38:07'),
(15, 'Dr. Lula Kamal, M.Sc.', NULL, 'Dokter Umum & Presenter TV', 'Media Televisi', 'Jakarta', 'Wajah yang familiar di televisi sebagai presenter acara kesehatan dan aktivis gaya hidup sehat.', '2025-07-15 14:38:07', '2025-07-15 14:38:07'),
(16, 'Dr. dr. Erlina Burhan, M.Sc, Sp.P(K)', NULL, 'Dokter Spesialis Paru', 'RSUP Persahabatan', 'Jakarta', 'Pakar penyakit infeksi pernapasan dan menjadi garda terdepan selama pandemi COVID-19.', '2025-07-15 14:38:07', '2025-07-15 14:38:07'),
(17, 'Dr. Tirta Mandira Hudhi', NULL, 'Dokter Umum & Pengusaha', 'Cipeng', 'Yogyakarta', 'Dikenal sebagai "Dokter Influencer" yang vokal mengenai isu kesehatan dan kewirausahaan.', '2025-07-15 14:38:07', '2025-07-15 14:38:07'),
(18, 'Dr. dr. Ika Prasetya Wijaya, SpPD, K-HOM, FINASIM', NULL, 'Dokter Spesialis Penyakit Dalam', 'RS Premier Jatinegara', 'Jakarta', 'Ahli dalam bidang hematologi dan onkologi medik.', '2025-07-15 14:38:07', '2025-07-15 14:38:07'),
(19, 'Dr. Tompi, Sp.BP-RE', NULL, 'Dokter Spesialis Bedah Plastik & Penyanyi', 'Beyoutiful Clinic', 'Jakarta', 'Seorang dokter bedah plastik rekonstruksi dan estetika yang juga dikenal sebagai penyanyi jazz ternama.', '2025-07-15 14:38:07', '2025-07-15 14:38:07'),
(20, 'Dr. Sonia Wibisono', NULL, 'Dokter Umum & Lifestyle Influencer', 'Media Digital', 'Jakarta', 'Seorang dokter yang aktif di media sosial dan televisi, membahas topik kecantikan dan gaya hidup sehat.', '2025-07-15 14:38:07', '2025-07-15 14:38:07'),
(21, 'Prof. Dr. dr. Wiku Adisasmito, M.Sc., Ph.D', NULL, 'Dokter Kesehatan Masyarakat', 'Universitas Indonesia', 'Jakarta', 'Mantan Ketua Tim Pakar Gugus Tugas Percepatan Penanganan COVID-19 dan pakar kebijakan kesehatan.', '2025-07-15 14:38:07', '2025-07-15 14:38:07'),
(22, 'Dr. dr. Siti Nadia Tarmizi, M.Epid', NULL, 'Dokter Epidemiologi', 'Kementerian Kesehatan RI', 'Jakarta', 'Direktur Pencegahan dan Pengendalian Penyakit Menular Langsung Kemenkes RI.', '2025-07-15 14:38:07', '2025-07-15 14:38:07'),
(23, 'Prof. Dr. dr. Tjandra Yoga Aditama, Sp.P(K)', NULL, 'Dokter Spesialis Paru', 'WHO', 'Jakarta', 'Mantan Direktur Jenderal WHO Regional Office for South-East Asia dan pakar tuberkulosis.', '2025-07-15 14:38:07', '2025-07-15 14:38:07'),
(24, 'Dr. dr. Andri Wanananda, MS', NULL, 'Dokter Spesialis Penyakit Dalam', 'RS Mitra Kemayoran', 'Jakarta', 'Dokter konsultan penyakit dalam dan diabetes yang dikenal melalui program TV kesehatan.', '2025-07-15 14:38:07', '2025-07-15 14:38:07'),
(25, 'Dr. dr. Rini Sekartini, Sp.A(K)', NULL, 'Dokter Spesialis Anak', 'RS Cipto Mangunkusumo', 'Jakarta', 'Konsultan tumbuh kembang anak dan ahli autisme di Indonesia.', '2025-07-15 14:38:07', '2025-07-15 14:38:07'),
(26, 'Dr. dr. Iris Rengganis, Sp.PD-KAI', NULL, 'Dokter Spesialis Alergi Imunologi', 'RS Cipto Mangunkusumo', 'Jakarta', 'Pakar alergi dan imunologi klinis, sering memberikan edukasi tentang alergi makanan.', '2025-07-15 14:38:07', '2025-07-15 14:38:07'),
(27, 'Dr. Gamal Albinsaid', NULL, 'Dokter Umum & Pengusaha Sosial', 'Tzu Chi Indonesia', 'Malang', 'Pelopor inovasi kesehatan dengan sistem pembayaran sampah untuk berobat.', '2025-07-15 14:38:07', '2025-07-15 14:38:07'),
(28, 'Dr. dr. Dono Antono, Sp.PD-KKV', NULL, 'Dokter Spesialis Jantung', 'RS Jantung Harapan Kita', 'Jakarta', 'Ahli kardiologi intervensi dan mantan direktur RS Jantung Harapan Kita.', '2025-07-15 14:38:07', '2025-07-15 14:38:07'),
(29, 'Dr. dr. Fiastuti Witjaksono, MS, Sp.GK', NULL, 'Dokter Spesialis Gizi Klinik', 'RS Cipto Mangunkusumo', 'Jakarta', 'Pakar gizi klinik dan sering memberikan konsultasi nutrisi di media.', '2025-07-15 14:38:07', '2025-07-15 14:38:07'),
(30, 'Dr. dr. Karin Wiradarma, Sp.KJ', NULL, 'Dokter Spesialis Kedokteran Jiwa', 'RS Omni Alam Sutera', 'Tangerang', 'Psikiater yang aktif memberikan edukasi kesehatan mental di media sosial.', '2025-07-15 14:38:07', '2025-07-15 14:38:07'),
(31, 'Prof. Dr. dr. Nasronudin, Sp.PD-KPTI', NULL, 'Dokter Spesialis Penyakit Tropik', 'Universitas Airlangga', 'Surabaya', 'Pakar penyakit tropik dan infeksi, ahli HIV/AIDS terkemuka di Indonesia.', '2025-07-15 14:38:07', '2025-07-15 14:38:07'),
(32, 'Dr. dr. Dante Saksono Harbuwono, Sp.PD-KEMD, Ph.D', NULL, 'Dokter Spesialis Endokrin', 'RS Cipto Mangunkusumo', 'Jakarta', 'Ahli diabetes dan endokrinologi, aktif dalam penelitian metabolisme.', '2025-07-15 14:38:07', '2025-07-15 14:38:07'),
(33, 'Dr. dr. Purnamawati Sujud Putranto, Sp.S(K)', NULL, 'Dokter Spesialis Saraf', 'RS Medistra', 'Jakarta', 'Ahli neurologi dan pain management, dikenal sebagai pakar nyeri di Indonesia.', '2025-07-15 14:38:07', '2025-07-15 14:38:07'),
(34, 'Dr. dr. Bambang Budi Siswanto, Sp.PD-KKV', NULL, 'Dokter Spesialis Jantung', 'RS Jantung Harapan Kita', 'Jakarta', 'Ahli kardiologi dan mantan direktur RS Jantung Harapan Kita.', '2025-07-15 14:38:07', '2025-07-15 14:38:07'),
(35, 'Dr. dr. Aman Bhakti Pulungan, Sp.A(K)', NULL, 'Dokter Spesialis Anak', 'RS Cipto Mangunkusumo', 'Jakarta', 'Konsultan endokrinologi anak dan Ketua Umum Ikatan Dokter Anak Indonesia (IDAI).', '2025-07-15 14:38:07', '2025-07-15 14:38:07'),
(36, 'Dr. Budi Santoso, Sp.PD', NULL, 'Dokter Spesialis Penyakit Dalam', 'RSUD Dr. Moewardi', 'Surakarta', 'Berpengalaman dalam menangani kasus-kasus penyakit tropis dan metabolik.', '2025-07-15 14:38:07', '2025-07-15 14:38:07'),
(37, 'Dr. Anisa Rahmawati, Sp.KK', NULL, 'Dokter Spesialis Kulit', 'Klinik Dermabeauty', 'Bandung', 'Fokus pada dermatologi kosmetik dan perawatan anti-aging.', '2025-07-15 14:38:07', '2025-07-15 14:38:07'),
(38, 'Dr. Cahyo Nugroho, Sp.THT-KL', NULL, 'Dokter Spesialis THT', 'RS Premier Surabaya', 'Surabaya', 'Ahli bedah sinus dan gangguan tidur.', '2025-07-15 14:38:07', '2025-07-15 14:38:07'),
(39, 'Dr. Dewi Anggraini, Sp.GK', NULL, 'Dokter Spesialis Gizi', 'RS Pondok Indah', 'Jakarta', 'Konsultan nutrisi untuk atlet dan program kebugaran.', '2025-07-15 14:38:07', '2025-07-15 14:38:07'),
(40, 'Dr. Eka Saputra, Sp.An', NULL, 'Dokter Spesialis Anestesi', 'RSUP Dr. Sardjito', 'Yogyakarta', 'Berpengalaman dalam anestesi pediatrik.', '2025-07-15 14:38:07', '2025-07-15 14:38:07'),
(41, 'Dr. Fatimah Az-Zahra, Sp.M', NULL, 'Dokter Spesialis Mata', 'Medan Eye Center', 'Medan', 'Spesialis bedah katarak dengan teknik fakoemulsifikasi.', '2025-07-15 14:38:07', '2025-07-15 14:38:07'),
(42, 'Dr. Gede Wirawan, Sp.PD', NULL, 'Dokter Spesialis Penyakit Dalam', 'RSUP Sanglah', 'Denpasar', 'Fokus pada penyakit ginjal dan hipertensi.', '2025-07-15 14:38:07', '2025-07-15 14:38:07'),
(43, 'Dr. Hana Yuliana, Sp.OG', NULL, 'Dokter Spesialis Kandungan', 'RSIA Hermina', 'Bekasi', 'Ahli dalam program fertilitas dan bayi tabung.', '2025-07-15 14:38:07', '2025-07-15 14:38:07'),
(44, 'Dr. Iwan Setiawan, Sp.U', NULL, 'Dokter Spesialis Urologi', 'RS Awal Bros', 'Pekanbaru', 'Spesialis bedah urologi laparoskopik.', '2025-07-15 14:38:07', '2025-07-15 14:38:07'),
(45, 'Dr. Kartika Sari, Sp.KJ', NULL, 'Dokter Spesialis Jiwa', 'Klinik Sehat Mental', 'Depok', 'Psikiater dengan fokus pada gangguan kecemasan dan depresi.', '2025-07-15 14:38:07', '2025-07-15 14:38:07'),
(46, 'Dr. Leo Wijaya, Sp.JP', NULL, 'Dokter Spesialis Jantung', 'RS Siloam Karawaci', 'Tangerang', 'Kardiolog intervensi dengan keahlian pemasangan ring jantung.', '2025-07-15 14:38:07', '2025-07-15 14:38:07'),
(47, 'Dr. Marina Indah, Sp.Rad', NULL, 'Dokter Spesialis Radiologi', 'Eka Hospital', 'Tangerang', 'Ahli dalam MRI dan CT Scan diagnostik.', '2025-07-15 14:38:07', '2025-07-15 14:38:07'),
(48, 'Dr. Nurman Hidayat, Sp.S', NULL, 'Dokter Spesialis Saraf', 'RS Mayapada', 'Jakarta', 'Spesialis gangguan memori dan demensia.', '2025-07-15 14:38:07', '2025-07-15 14:38:07'),
(49, 'Dr. Putri Wulandari, Sp.A', NULL, 'Dokter Spesialis Anak', 'Brawijaya Women & Children Hospital', 'Jakarta', 'Konsultan alergi dan imunologi pada anak.', '2025-07-15 14:38:07', '2025-07-15 14:38:07'),
(50, 'Dr. Rahmat Hidayat, Sp.BP-RE', NULL, 'Dokter Spesialis Bedah Plastik', 'Klinik Estetika', 'Surabaya', 'Spesialis bedah rekonstruksi pasca-kecelakaan.', '2025-07-15 14:38:07', '2025-07-15 14:38:07'),
(51, 'Dr. Sari Puspita, Sp.PD-KGEH', NULL, 'Dokter Spesialis Gastro', 'RS Medistra', 'Jakarta', 'Konsultan penyakit hati dan pankreas.', '2025-07-15 14:38:07', '2025-07-15 14:38:07'),
(52, 'Dr. Taufik Rahman, Sp.P', NULL, 'Dokter Spesialis Paru', 'RS Paru Rotinsulu', 'Bandung', 'Fokus pada tuberkulosis dan penyakit paru kerja.', '2025-07-15 14:38:07', '2025-07-15 14:38:07'),
(53, 'Dr. Utami Ningrum, Sp.RM', NULL, 'Dokter Spesialis Rehabilitasi Medik', 'RS Pusat Otak Nasional', 'Jakarta', 'Ahli rehabilitasi untuk pasien cedera tulang belakang.', '2025-07-15 14:38:07', '2025-07-15 14:38:07'),
(54, 'Dr. Wahyu Tri, Sp.B', NULL, 'Dokter Spesialis Bedah', 'RSUD Dr. Soetomo', 'Surabaya', 'Spesialis bedah onkologi.', '2025-07-15 14:38:07', '2025-07-15 14:38:07'),
(55, 'Dr. Yasmine Putri, Sp.THT', NULL, 'Dokter Spesialis THT', 'RS THT Proklamasi', 'Jakarta', 'Ahli gangguan keseimbangan dan vertigo.', '2025-07-15 14:38:07', '2025-07-15 14:38:07'),
(56, 'Dr. Adhi Nugraha, Sp.OT(K)', NULL, 'Dokter Spesialis Ortopedi', 'RS Premier Jatinegara', 'Jakarta', 'Konsultan bedah panggul dan lutut.', '2025-07-15 14:38:07', '2025-07-15 14:38:07'),
(57, 'Dr. Cindy Claudia, Sp.KK', NULL, 'Dokter Spesialis Kulit', 'Erha Clinic', 'Jakarta', 'Dermatolog dengan minat pada penyakit kulit anak.', '2025-07-15 14:38:07', '2025-07-15 14:38:07'),
(58, 'Dr. Dwi Kurniawan, Sp.An-KIC', NULL, 'Dokter Spesialis Anestesi', 'RS Cipto Mangunkusumo', 'Jakarta', 'Konsultan perawatan intensif untuk kasus trauma.', '2025-07-15 14:38:07', '2025-07-15 14:38:07'),
(59, 'Dr. Amalia Rizky, Sp.M', NULL, 'Dokter Spesialis Mata', 'SMEC', 'Malang', 'Spesialis bedah kornea.', '2025-07-15 14:38:07', '2025-07-15 14:38:07'),
(60, 'Dr. Bayu Prakoso, Sp.PD', NULL, 'Dokter Spesialis Penyakit Dalam', 'RS Columbia Asia', 'Semarang', 'Fokus pada penyakit reumatik dan autoimun.', '2025-07-15 14:38:07', '2025-07-15 14:38:07'),
(61, 'Dr. Dinda Ayu, Sp.OG', NULL, 'Dokter Spesialis Kandungan', 'RS St. Carolus', 'Jakarta', 'Ahli fetomaternal untuk pemantauan janin.', '2025-07-15 14:38:07', '2025-07-15 14:38:07'),
(62, 'Dr. Fajar Maulana, Sp.U', NULL, 'Dokter Spesialis Urologi', 'RS Siloam Hospitals Kebon Jeruk', 'Jakarta', 'Spesialis disfungsi ereksi dan andrologi.', '2025-07-15 14:38:07', '2025-07-15 14:38:07'),
(63, 'Dr. Gita Lestari, Sp.KJ', NULL, 'Dokter Spesialis Jiwa', 'RSJ Dr. Soeharto Heerdjan', 'Jakarta', 'Psikiater dengan fokus pada adiksi dan napza.', '2025-07-15 14:38:07', '2025-07-15 14:38:07'),
(64, 'Dr. Hadi Prasetyo, Sp.JP', NULL, 'Dokter Spesialis Jantung', 'Pusat Jantung Nasional Harapan Kita', 'Jakarta', 'Ahli gagal jantung dan transplantasi.', '2025-07-15 14:38:07', '2025-07-15 14:38:07'),
(65, 'Dr. Indah Permata, Sp.Rad', NULL, 'Dokter Spesialis Radiologi', 'RS Kanker Dharmais', 'Jakarta', 'Radiolog dengan fokus pada intervensi vaskular.', '2025-07-15 14:38:07', '2025-07-15 14:38:07'),
(66, 'Dr. Krisna Bayu, Sp.S', NULL, 'Dokter Spesialis Saraf', 'RS Siloam Lippo Village', 'Tangerang', 'Spesialis gangguan tidur dan sleep apnea.', '2025-07-15 14:38:07', '2025-07-15 14:38:07'),
(67, 'Dr. Laila Fitria, Sp.A', NULL, 'Dokter Spesialis Anak', 'RS Pondok Indah', 'Jakarta', 'Konsultan kardiologi anak.', '2025-07-15 14:38:07', '2025-07-15 14:38:07'),
(68, 'Dr. Maulana Yusuf, Sp.BP-RE', NULL, 'Dokter Spesialis Bedah Plastik', 'The Clinic Beautylosophy', 'Jakarta', 'Spesialis bedah maksilofasial.', '2025-07-15 14:38:07', '2025-07-15 14:38:07'),
(69, 'Dr. Nina Anggraini, Sp.PD-KGEH', NULL, 'Dokter Spesialis Gastro', 'Mayapada Hospital', 'Jakarta', 'Ahli penyakit celiac dan intoleransi makanan.', '2025-07-15 14:38:07', '2025-07-15 14:38:07'),
(70, 'Dr. Panji Wibisono, Sp.P', NULL, 'Dokter Spesialis Paru', 'RSUP Persahabatan', 'Jakarta', 'Spesialis asma berat dan terapi biologis.', '2025-07-15 14:38:07', '2025-07-15 14:38:07'),
(71, 'Dr. Ratna Sari, Sp.RM', NULL, 'Dokter Spesialis Rehabilitasi Medik', 'RS Fatmawati', 'Jakarta', 'Spesialis rehabilitasi kardiorespirasi.', '2025-07-15 14:38:07', '2025-07-15 14:38:07'),
(72, 'Dr. Surya Kencana, Sp.B', NULL, 'Dokter Spesialis Bedah', 'RS Gading Pluit', 'Jakarta', 'Spesialis bedah laparoskopik.', '2025-07-15 14:38:07', '2025-07-15 14:38:07'),
(73, 'Dr. Tania Wijaya, Sp.THT', NULL, 'Dokter Spesialis THT', 'RS Pantai Indah Kapuk', 'Jakarta', 'Ahli bedah kepala dan leher.', '2025-07-15 14:38:07', '2025-07-15 14:38:07'),
(74, 'Dr. Viktor Sinaga, Sp.OT', NULL, 'Dokter Spesialis Ortopedi', 'RS Siaga Raya', 'Jakarta', 'Spesialis ortopedi anak.', '2025-07-15 14:38:07', '2025-07-15 14:38:07'),
(75, 'Dr. Winda Astuti, Sp.KK', NULL, 'Dokter Spesialis Kulit', 'Klinik Bamed', 'Jakarta', 'Dermatolog dengan fokus pada infeksi menular seksual.', '2025-07-15 14:38:07', '2025-07-15 14:38:07'),
(76, 'Dr. Yoga Pratama, Sp.An', NULL, 'Dokter Spesialis Anestesi', 'RS Grha Kedoya', 'Jakarta', 'Ahli anestesi untuk bedah saraf.', '2025-07-15 14:38:07', '2025-07-15 14:38:07'),
(77, 'Dr. Zahra Alatas, Sp.M', NULL, 'Dokter Spesialis Mata', 'Ciputra SMG Eye Clinic', 'Jakarta', 'Spesialis bedah plastik mata (okuloplasti).', '2025-07-15 14:38:07', '2025-07-15 14:38:07'),
(78, 'Dr. Adam Malik, Sp.PD', NULL, 'Dokter Spesialis Penyakit Dalam', 'RS Abdi Waluyo', 'Jakarta', 'Fokus pada endokrinologi dan tiroid.', '2025-07-15 14:38:07', '2025-07-15 14:38:07'),
(79, 'Dr. Bella Anindita, Sp.OG', NULL, 'Dokter Spesialis Kandungan', 'SamMarie Family Healthcare', 'Jakarta', 'Ahli kosmetik ginekologi.', '2025-07-15 14:38:07', '2025-07-15 14:38:07'),
(80, 'Dr. Candra Gunawan, Sp.U', NULL, 'Dokter Spesialis Urologi', 'RS EMC Sentul', 'Bogor', 'Spesialis bedah robotik urologi.', '2025-07-15 14:38:07', '2025-07-15 14:38:07'),
(81, 'Dr. Dara Puspitasari, Sp.KJ', NULL, 'Dokter Spesialis Jiwa', 'Angsamerah Clinic', 'Jakarta', 'Psikiater dengan fokus pada psikologi perinatal.', '2025-07-15 14:38:07', '2025-07-15 14:38:07'),
(82, 'Dr. Endang Sutrisno, Sp.JP', NULL, 'Dokter Spesialis Jantung', 'RS Premier Surabaya', 'Surabaya', 'Kardiolog dengan fokus pada hipertensi pulmonal.', '2025-07-15 14:38:07', '2025-07-15 14:38:07'),
(83, 'Dr. Fira Basuki, Sp.Rad', NULL, 'Dokter Spesialis Radiologi', 'RS Husada Utama', 'Surabaya', 'Ahli radiologi intervensi non-vaskular.', '2025-07-15 14:38:07', '2025-07-15 14:38:07'),
(84, 'Dr. Galih Permana, Sp.S', NULL, 'Dokter Spesialis Saraf', 'RS Islam Jakarta', 'Jakarta', 'Spesialis neuro-onkologi.', '2025-07-15 14:38:07', '2025-07-15 14:38:07'),
(85, 'Dr. Hanifah Siregar, Sp.A', NULL, 'Dokter Spesialis Anak', 'RSIA Tambak', 'Jakarta', 'Konsultan nefrologi anak.', '2025-07-15 14:38:07', '2025-07-15 14:38:07'),
(86, 'Dr. Iqbal Maulana, Sp.BP-RE', NULL, 'Dokter Spesialis Bedah Plastik', 'EMC Plastic Surgery', 'Tangerang', 'Spesialis bedah luka dan perawatan jaringan.', '2025-07-15 14:38:07', '2025-07-15 14:38:07'),
(87, 'Dr. Jajang Sukmara, Sp.PD-KGEH', NULL, 'Dokter Spesialis Gastro', 'RS OMNI Hospitals Pulomas', 'Jakarta', 'Ahli motilitas gastrointestinal.', '2025-07-15 14:38:07', '2025-07-15 14:38:07'),
(88, 'Dr. Kartini Hasan, Sp.P', NULL, 'Dokter Spesialis Paru', 'RS MMC', 'Jakarta', 'Spesialis kedokteran tidur dan gangguan napas saat tidur.', '2025-07-15 14:38:07', '2025-07-15 14:38:07'),
(89, 'Dr. Laksmi Dewi, Sp.RM', NULL, 'Dokter Spesialis Rehabilitasi Medik', 'Klinik Fisioterapi', 'Bandung', 'Spesialis rehabilitasi geriatri.', '2025-07-15 14:38:07', '2025-07-15 14:38:07'),
(90, 'Dr. Maman Suryaman, Sp.B', NULL, 'Dokter Spesialis Bedah', 'RS Medika Permata Hijau', 'Jakarta', 'Spesialis bedah payudara.', '2025-07-15 14:38:07', '2025-07-15 14:38:07'),
(91, 'Dr. Nabila Fitriani, Sp.THT', NULL, 'Dokter Spesialis THT', 'Klinik THT Ciranjang', 'Jakarta', 'Ahli otologi dan implan koklea.', '2025-07-15 14:38:07', '2025-07-15 14:38:07'),
(92, 'Dr. Oki Setiawan, Sp.OT', NULL, 'Dokter Spesialis Ortopedi', 'RS Pondok Indah - Puri Indah', 'Jakarta', 'Spesialis bedah kaki dan pergelangan kaki.', '2025-07-15 14:38:07', '2025-07-15 14:38:07'),
(93, 'Dr. Prilia Larasati, Sp.KK', NULL, 'Dokter Spesialis Kulit', 'Klinik Dermapro', 'Jakarta', 'Dermatolog dengan fokus pada jerawat dan rosacea.', '2025-07-15 14:38:07', '2025-07-15 14:38:07'),
(94, 'Dr. Rafian Hamzah, Sp.An', NULL, 'Dokter Spesialis Anestesi', 'RS Siloam MRCCC Semanggi', 'Jakarta', 'Ahli anestesi obstetri.', '2025-07-15 14:38:07', '2025-07-15 14:38:07'),
(95, 'Dr. Shinta Kurnia, Sp.M', NULL, 'Dokter Spesialis Mata', 'KMN EyeCare', 'Jakarta', 'Spesialis uveitis dan penyakit radang mata.', '2025-07-15 14:38:07', '2025-07-15 14:38:07'),
(96, 'Dr. Teuku Rahmat, Sp.PD', NULL, 'Dokter Spesialis Penyakit Dalam', 'RS Brawijaya Saharjo', 'Jakarta', 'Fokus pada penyakit infeksi.', '2025-07-15 14:38:07', '2025-07-15 14:38:07'),
(97, 'Dr. Utari Sulistyo, Sp.OG', NULL, 'Dokter Spesialis Kandungan', 'Morula IVF', 'Jakarta', 'Spesialis bedah minimal invasif ginekologi.', '2025-07-15 14:38:07', '2025-07-15 14:38:07'),
(98, 'Dr. Vian Budiarto, Sp.U', NULL, 'Dokter Spesialis Urologi', 'RS Yarsi', 'Jakarta', 'Spesialis transplantasi ginjal.', '2025-07-15 14:38:07', '2025-07-15 14:38:07'),
(99, 'Dr. Zakia Meutia, Sp.KJ', NULL, 'Dokter Spesialis Jiwa', 'Praktek Pribadi', 'Jakarta', 'Psikiater dengan fokus pada kesehatan mental wanita.', '2025-07-15 14:38:07', '2025-07-15 14:38:07'),
(100, 'Dr. Anjas Pramono, Sp.JP', NULL, 'Dokter Spesialis Jantung', 'RS Jantung Diagram', 'Depok', 'Kardiolog dengan fokus pada ekokardiografi.', '2025-07-15 14:38:07', '2025-07-15 14:38:07');

