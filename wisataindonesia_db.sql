-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 10, 2025 at 06:11 AM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wisataindonesia_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `article`
--

CREATE TABLE `article` (
  `id` int NOT NULL,
  `date` varchar(20) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `picture` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `article`
--

INSERT INTO `article` (`id`, `date`, `title`, `content`, `picture`) VALUES
(1, '2025-03-19', 'Pura Ulun Danu Beratan Bali - yang Bikin Hati Adem Banget!', 'Kalau kamu lagi cari tempat healing yang nggak cuma indah tapi juga penuh aura magis, Pura Ulun Danu Beratan di Bali wajib banget masuk bucket list kamu!. Bayangin deh, kamu duduk santai di pinggir Danau Beratan, sambil nikmatin sunset yang mewah banget warnanya—jingga, emas, ungu, semuanya nyatu di langit dan mantul di air. Di depan kamu, berdiri anggun pura yang kayak ngambang di atas danau. Fix, rasanya kayak lagi ada di dunia dongeng!\r\nPura ini nggak cuma aesthetic buat foto-foto, tapi juga punya cerita dan aura spiritual yang kental. Dibangun sebagai persembahan buat Dewi Danu, sang dewi air dan kesuburan, tempat ini bener-bener bikin kamu merasa lebih tenang dan “connect” sama alam. \r\nDan vibes-nya? Dingin, sejuk, adem, cocok banget buat ngademin pikiran yang lagi riweh sama tugas atau drama kehidupan. Mau datang pagi buat sunrise vibes atau sore buat keindahan senja, dua-duanya sama-sama bikin speechless.\r\nJadi... siap-siap bawa kamera, outfit terbaik, dan hati yang siap terpukau, karena Pura Ulun Danu Beratan bukan cuma tempat wisata—tapi tempat di mana kamu bisa recharge energi dan jatuh cinta lagi sama Bali.', 'pura bali.jpg'),
(2, '2025-03-18', 'RAJA AMPAT', 'Raja Ampat yang terletak di Papua Barat merupakan surga tersembunyi yang menyimpan keindahan alam bawah laut luar biasa. Gugusan pulau-pulau karang yang eksotis, perairan biru jernih, dan keanekaragaman hayati laut menjadikan Raja Ampat sebagai destinasi impian para pecinta diving dari seluruh dunia.\r\n\r\nDengan lebih dari 1.500 spesies ikan dan 500 lebih jenis karang, Raja Ampat adalah salah satu kawasan dengan keanekaragaman hayati laut tertinggi di dunia. Wisatawan dapat menikmati snorkeling, menyelam, atau sekadar bersantai di pantai pasir putih yang masih alami dan tenang.\r\n              \r\nTak hanya pesona bawah lautnya, budaya lokal masyarakat Papua juga menjadi daya tarik tersendiri. Menjelajah desa-desa tradisional, menikmati makanan khas, serta berinteraksi dengan masyarakat yang ramah akan membuat perjalanan ke Raja Ampat semakin bermakna.', 'RajaAmpat.jpg'),
(7, '2025-03-15', 'PULAU BELITUNG', 'Pulau Belitung yang terletak di lepas pantai timur Sumatera menawarkan pesona pantai yang berbeda dari yang lain. Dikenal karena batu granit raksasa dan air laut yang bening, Belitung mulai terkenal setelah menjadi latar film \"Laskar Pelangi\".\r\nPantai Tanjung Tinggi, Tanjung Kelayang, dan Pulau Lengkuas dengan mercusuar tuanya adalah tempat favorit wisatawan. Kamu bisa island hopping, snorkeling, atau sekadar bersantai di atas pasir putih yang lembut.\r\nKeindahan alam yang asri, keramahan warga lokal, dan nilai sejarah yang kuat membuat Belitung jadi tempat yang cocok untuk liburan menenangkan dan penuh inspirasi.', 'pulaubelitung.jpg'),
(8, '2025-03-16', 'LABUAN BAJO', 'Labuan Bajo yang terletak di Nusa Tenggara Timur adalah pintu gerbang menuju Taman Nasional Komodo, rumah bagi hewan purba Komodo yang hanya ada di Indonesia. Selain Komodo, kawasan ini juga menawarkan keindahan alam yang luar biasa, mulai dari pantai berpasir merah muda di Pink Beach hingga pemandangan sunset dari Bukit Cinta.\r\nAktivitas wisata di Labuan Bajo tidak hanya terbatas pada melihat komodo, tetapi juga menyelam di perairan jernih yang dipenuhi terumbu karang, berlayar antar pulau dengan kapal pinisi, hingga menjelajahi Goa Rangko yang memiliki kolam air asin di dalamnya.\r\nDengan perpaduan antara keunikan fauna, kekayaan laut, dan keramahan penduduk lokal, Labuan Bajo menjadi destinasi yang wajib dikunjungi bagi pencinta petualangan.', 'labuanbajo.jpg'),
(9, '2025-03-17', 'DANAU TOBA', 'Danau Toba merupakan danau vulkanik terbesar di Asia Tenggara yang terbentuk dari letusan supervolcano ribuan tahun lalu. Terletak di Sumatera Utara, danau ini dikelilingi oleh perbukitan hijau dan memiliki Pulau Samosir di tengahnya, yang menjadi pusat budaya suku Batak Toba.\r\nWisatawan dapat menikmati udara sejuk, pemandangan danau yang menenangkan, serta budaya lokal yang kaya. Di Pulau Samosir, terdapat museum Batak, rumah adat, dan pertunjukan musik serta tarian tradisional. Selain itu, wisata kuliner khas Batak seperti naniura dan saksang juga patut dicoba.\r\nDanau Toba cocok untuk kamu yang ingin menikmati liburan yang tenang, dekat dengan alam, namun tetap sarat dengan nilai sejarah dan budaya.', 'danautoba.jpg'),
(10, '2025-03-21', 'PULAU SERIBU', 'Kepulauan Seribu adalah sebuah kepulauan yang terletak di Kabupaten Administrasi Kepulauan Seribu, Daerah Khusus Ibukota Jakarta, Indonesia. Letak Kepulauan Seribu berada di bagian utara dari Teluk Jakarta. Jumlah pulau di Kepulauan Seribu sebanyak 110 pulau dengan kawasan seluas 1.180 hektare yang memanjang dari selatan ke utara. Ukuran pulau-pulau di Kepulauan Seribu tergolong kecil dengan datarann yang landai dan terbagi menjadi beberapa gugus pulau.\r\n\r\nSuhu rata-rata di Kepulauan Seribu adalah 27 ºC. Iklim di Kepulauan Seribu adalah tropika dengan dua musim, yaitu musim hujan dan musim kemarau. Curah hujan di Kepulauan Seribu cukup tinggi dengan rentang antara 100–400 mm. Kepulauan Seribu tidak memiliki hidrologi permukaan. Ekosistem utama yang membentuk Kepulauan Seribu adalah ekosistem terumbu karang. Sementara ekosistem lainnya meliputi ekosistem hutan bakau, ekosistem padang lamun dan ekosistem perairan.\r\n\r\nKawasan Kepulauan Seribu dimanfaatkan untuk permukiman, penangkapan ikan, budidaya rumput laut, wisata dan taman nasional.  Sebagian besar kepemilikan pulau di Kepulauan Seribu merupakan kepemilikan pribadi oleh perorangan ataupun swasta. Lahan di Kepulauan Seribu dimanfaatkan untuk aktivitas nelayan, wisata dan budidaya rumput laut. Kepulauan Seribu memiliki beberapa masalah lingkungan terutama degradasi lingkungan, kerusakan ekosistem, pengelolaan sampah dan penyediaan angkutan umum.', 'unnamed.jpg'),
(11, '2025-03-20', 'PULAU KOMODO', 'Pulau Komodo adalah sebuah pulau yang terletak di Kepulauan Nusa Tenggara, berada di sebelah timur Pulau Sumbawa, yang dipisahkan oleh Selat Sape. Pulau Komodo dikenal sebagai habitat asli hewan komodo.\r\n\r\nPulau ini termasuk salah satu kawasan Taman Nasional Komodo yang dikelola oleh Pemerintah Pusat.\r\n\r\nSecara administratif, pulau ini termasuk wilayah Kabupaten Manggarai Barat, Kecamatan Komodo, Provinsi Nusa Tenggara Timur, Indonesia. Pulau Komodo merupakan ujung paling barat Provinsi Nusa Tenggara Timur, berbatasan dengan Provinsi Nusa Tenggara Barat.\r\n\r\nDi Pulau Komodo, hewan komodo hidup dan berkembang biak dengan baik. Hingga Agustus 2009, di pulau ini terdapat sekitar 1300 ekor komodo. Ditambah dengan pulau lain, seperti Pulau Rinca dan dan Gili Motang, jumlah mereka keseluruhan mencapai sekitar 2500 ekor. Ada pula sekitar 100 ekor komodo di Cagar Alam Wae Wuul di daratan Pulau Flores tapi tidak termasuk wilayah Taman Nasional Komodo.\r\n\r\nSelain komodo, pulau ini juga menyimpan eksotisme flora yang beragam kayu sepang yang oleh warga sekitar digunakan sebagi obat dan bahan pewarna pakaian, pohon nitak ini atau sterculia oblongata di yakini berguna sebagai obat dan bijinya gurih dan enak seperti kacang polong.\r\n\r\nPulau Komodo juga diterima sebagai Situs Warisan Dunia UNESCO, karena dalam wilayah Taman Nasional Komodo, bersama dengan Pulau Rinca, Pulau Padar dan Gili Motang', 'licensed-image.jpeg'),
(12, '2025-04-01', 'Pemanasan global atau global warming', 'Pemanasan global atau global warming adalah istilah yang menggambarkan peristiwa kenaikan suhu rata-rata daratan, lautan dan atmosfer bumi secara bertahap. Sejak 100 tahun lalu, suhu permukaan bumi mengalami peningkatan sekitar 0,6 derajat celsius. Oleh karena itu, peneliti dan ilmuwan mulai melakukan penelitian mengenai fenomena ini.\r\n\r\nPemanasan global menjadi isu global, karena tidak hanya dialami atau menimpa bangsa Indonesia saja dengan bukti di banyak kota dan desa cuaca semakin panas, melainkan hampir seluruh belahan dunia. Masalah pemanasan global mulai diangkat ke permukaan pada Konferensi Tingkat Tinggi (KTT) Bumi (Earth Summit) di Rio de Janerio, Brazil tahun 1992. Sebelum diselenggarakan KTT Bumi tersebut, persoalan seputar pemanasan global tidak terlalu dianggap serius, dan dianggap sebagai hal yang biasa terjadi dalam setiap kehidupan atau interaksi antar manusia. Akan tetapi dengan berbagai penelitian atau riset dan ditandai dengan beragam tanda-tanda dan dampak, pemanasan global semakin mendapatkan perhatian secara internasional. KTT tentang bumi yang diselenggarakan di kota Kyoto Jepang tahun 1997, semakin mematenkan dunia bahwa pemanasan global merupakan musuh utama umat manusia yang mendiami bumi, sehingga diperlukan upaya untuk mengatasi secara menyeluruh, terpadu dan berkelanjutan.\r\n\r\nBegitu juga di KTT G20 yang diadakan di Roma Italia tahun 2021, para petinggi negara anggota G20 termasuk Presiden Joko Widodo sepakat untuk mengurangi pemanasan global hingga 1,5 derajat celcius. Jokowi mengatakan Pemerintah Indonesia telah berupaya untuk mengurangi emisi karbon di mana deforestasi dapat ditekan hingga titik terendah dalam 20 tahun ini. Indonesia juga merehabilitasi 3 juta hektare lahan kritis selama 10 tahun antara 2010-2020 dan menargetkan rehabilitasi hutan mangrove hingga 600.000 hektare sampai 2024. Sementara itu, Jokowi juga menyatakan bahwa Indonesia berkomitmen untuk merehabilitasi hutan-hutan penting yang rusak karena digunakan untuk produksi kelapa sawit. Kebarakan hutan di Indonesia, lanjutnya, juga telah berkurang 82 persen dibandingkan dengan sebelumnya. Seperti diketahui, Jokowi akan berpartisipasi dalam perhelatan Konferensi Tingkat Tinggi (KTT) COP-26 tentang perubahan iklim di Glasgow, Skotlandia, pada 1 - 2 November 2021. Indonesia memiliki peran yang cukup strategis dalam perubahan iklim dunia seiring dengan statusnya sebagai produsen batu bara dan kelapa sawit terbesar.\r\n\r\nPenyebab terjadinya pemanasan global adalah sebagai berikut:\r\n\r\n1.     Meningkatnya gas rumah kaca\r\n\r\nGas rumah kaca terjadi akibat adanya pembakaran minyak bumi, seperti bahan bakar batu bara serta pembakaran gas alam.\r\n\r\n2.     Efek Rumah Kaca\r\n\r\nEfek rumah kaca ini menjadikan panas yang berada di bumi tidak dapat dipantulkan ke luar angkasa, tetapi terperangkap di atmosfer. efek rumah kaca ini bermanfaat manusia, namun jika berlebihan akan berdampak buruk terhadap iklim dan cuaca yang ada di bumi.\r\n\r\n3.   Polusi Sampah Plastik Yang Tidak Dapat Didaur Ulang\r\n\r\nGas metana yang berasal dari plastik yang terkena sinar matahari dikatakan sebagai salah satu penyebab utama perubahan iklim, hal ini berhubungan dengan peningkatan pemanasan global. Sampah yang setiap hari dihasilkan manusia terutama sampah-sampah yang tidak bisa didaur ulang seperti styrofoam dan plastik juga menjadi sumber lain dari emisi CO2.\r\n\r\n4.   Boros Penggunaan Listrik\r\n\r\n     Pemborosan listrik membuat cadangan energi listrik menjadi semakin menipis karena energi listrik memerlukan pembakaran batu bara sehingga meningkatkan pemanasan global.\r\n\r\n5.   Polusi Udara Akibat Asap Industri Pabrik\r\n\r\nIndustri pabrik menyebabkan banyaknya asap yang yang dihasilkan, dan dapat mengakibatkan polusi udara yang akan membuat lingkungan tercemar dan terjadinya pemanasan global.\r\n\r\n6.   Penebangan Pohon, Kerusakan, dan Pembakaran Hutan\r\n\r\n      Perusakan hutan akan menyebabkan pemanasan global, karena hutan memiliki fungsi menyerap gas karbondioksida, dan hutan merupakan penghasil oksigen.\r\n\r\n7.   Penggunaan Chlorofluorocarbon CFC secara berlebihan\r\n\r\n      Chlorofluorocarbon (CFC) adalah suatu bahan kimia yang diproduksi untuk berbagai kebutuhan peralatan rumah tangga seperti AC atau pendingin ruangan dan kulkas.  Zat kimia ini dapat mengakibatkan penipisan lapisan ozon.\r\n\r\n \r\n\r\nDampak pemanasan global adalah sebagai berikut:\r\n\r\n1.   Meningkatnya temperatur bumi di beberapa wilayah dan perubahan iklim.\r\n\r\n2.   Mencairnya glasier sehingga permukaan air laut meningkat dan menyebabkan daerah pantai akan terendam.\r\n\r\n3.   Peningkatan suhu akan menyebabkan meluasnya kepunahan spesies dan kerusakan pada organisme dan ekosistem.\r\n\r\n4.   Hilangnya terumbu karang karena meningkatnya suhu dan pengasaman air laut. Padahal banyak spesies lain yang hidup bergantung pada terumbu karang.\r\n\r\n5.   Curah hujan dan cuaca tidak menentu, sehingga menyebabkan terganggunya hasil panen.\r\n\r\n6.   Lapisan ozon (atom oksigen pada atmosfer) menipis. Sementara, dia memiliki fungsi mengatur dan menyerap sinar ultraviolet yang masuk ke permukaan bumi, menjaga kestabilan suhu Bumi, dan melindungi dari benda-benda langit yang jatuh ke Bumi.\r\n\r\n\r\nCara menyikapi dan menanggulangi adalah pemanasan global sebagai berikut:\r\n\r\n1.     Konservasi lingkungan\r\n\r\nKonservasi lingkungan dapat dilakukan dengan cara menanam pohon dan penghijauan lahan-lahan dengan kondisi yang kritis. Tumbuh-tumbuhan memiliki proses fotosintetis untuk bertahan ini. Dalam proses ini, tumbuhan dapat menghasilkan oksigen. Semakin banyaknya oksigen yang dihasilkan oleh tumbuh-tumbuhan, jumlah gas-gas karbon yang ada di atmoser akan berkurang.\r\n\r\n\r\n\r\n\r\n2.     Menggunakan Energi Alternatif\r\n\r\nPenggunaan energi alternatif dapat mengurangi penggunaan energi bahan bakar fosil (minyak bumi dan batu bara).  Bahan bakar fosil menghasilkan banyak emisi gas karbon yang diakibatkan oleh proses pembakaran bahan-bahan tersebut. Energi alternatif yang bisa digunakan oleh manusia sebagai pengganti sumber energi tak terbarukan adalah energi bio-energy, energi angin, energi panas bumi, energi surya, dan sebagainya.\r\n\r\n3.     Daur Ulang dan Efisiensi Energi\r\n\r\nAktivitas manusia kerap kali menghasilkan gas yang mengandung karbon, contohnya penggunaan kompor minyak. Asap yang mengandung gas karbon dihasilkan oleh kompor minyak tanah naik ke udara. Oleh karena itu, penggunaan kompor minyak sebaiknya diganti dengan biogas. Biogas dapat dimanfaatkan sebagai sumber energi panas yang berasal dari sampah organik yang telah didaur ulang.\r\n\r\n4.   Edukasi Masyarakat Mengenai Masalah Lingkungan\r\n\r\nMasyarakat dunia perlu memiliki edukasi dan pemahaman terhadap masalah lingkungan agar sama-sama bersatu untuk menanggulangi masalah tersebut. Pemahaman mengenai pola pikir dan perilaku manusia yang berdampak kepada lingkungan diperlukan agar masyarakat memiliki kesadaran dan akan menumbuhkan rasa cinta terhadap lingkungan. Selain itu, masyarakat perlu menegakkan hukum mengenai perlindungan dan pelestarian lingkungan.', 'maxresdefault.jpg'),
(13, '2025-06-16', '15 Warisan Budaya Takbenda Indonesia yang Diakui UNESCO', 'Ada sederet daftar Warisan Budaya Takbenda (WBTb) dari Indonesia yang telah secara resmi diakui oleh UNESCO. Tercatat ada 15 warisan budaya dari berbagai daerah di Indonesia yang masuk dalam beberapa kategori WBTb UNESCO sejak 2008 hingga 2024.\r\nMengutip dari situs resmi Intangible Cultural Heritage UNESCO, berikut ini daftar terbaru dari Warisan Budaya Takbenda Indonesia yang telah resmi diakui UNESCO dari tahun 2008 sampai 2024:\r\n\r\n1. Keris (2008)\r\nKeris Indonesia (Indonesian Kris) tercatat dalam Daftar Representatif Warisan Budaya Takbenda Kemanusiaan (Representative List of the Intangible Cultural Heritage of Humanity) UNESCO sejak 4 November 2008.\r\n\r\n2. Pertunjukan Wayang (2008)\r\nPertunjukan Wayang (Wayang Puppet Theatre) tercatat dalam Daftar Representatif Warisan Budaya Takbenda Kemanusiaan (Representative List of the Intangible Cultural Heritage of Humanity) UNESCO sejak 4 November 2008.\r\n\r\n3. Batik (2009)\r\nBatik Indonesia (Indonesian Batik) tercatat dalam Daftar Representatif Warisan Budaya Takbenda Kemanusiaan (Representative List of the Intangible Cultural Heritage of Humanity) UNESCO sejak 30 September 2009.\r\n\r\n4. Pendidikan dan Pelatihan Batik (2009)\r\nPendidikan dan pelatihan batik Indonesia sebagai warisan budaya tak benda untuk pelajar SD, SMP, SMA, SMK dan mahasiswa politeknik yang bekerja-sama dengan Museum Batik di Pekalongan (Education and training in Indonesian Batik intangible cultural heritage for elementary, junior, senior, vocational schools and polytechnics students in collaboration with Batik Museum in Pekalongan) tercatat sebagai Daftar Praktik Pengamanan yang Baik (Register of Good Safeguarding Practices) UNESCO sejak 1 Oktober 2009.\r\n\r\n5. Angklung (2010)\r\nAngklung Indonesia (Indonesian Angklung) termasuk dalam Daftar Representatif Warisan Budaya Takbenda Kemanusiaan (Representative List of the Intangible Cultural Heritage of Humanity) UNESCO sejak 16 November 2010.\r\n\r\n6. Tari Saman (2011)\r\nTari Saman (Saman Dance) termasuk dalam Daftar Warisan Budaya Takbenda yang Membutuhkan Perlindungan Mendesak (List of Intangible Cultural Heritage in Need of Urgent Safeguarding) UNESCO sejak 24 November 2011.\r\n\r\n7. Noken (2012)\r\nTas Noken (Noken multifunction knotted or woven bag, handcraft of the people of Papua) tercatat sebagai Daftar Warisan Budaya Takbenda yang Membutuhkan Perlindungan Mendesak (List of Intangible Cultural Heritage in Need of Urgent Safeguarding) UNESCO sejak 4 Desember 2012.\r\n\r\n8. Tari Tradisional Bali (2017)\r\nTiga Golongan Tari Tradisional di Bali (Three Genres of Traditional Dance in Bali) tercatat sebagai Daftar Representatif Warisan Budaya Takbenda Kemanusiaan (Representative List of the Intangible Cultural Heritage of Humanity) UNESCO sejak 2 Desember 2015.\r\n\r\n9. Perahu Pinisi (2017)\r\nSeni Rakit Perahu Pinisi (Pinisi, art of boatbuilding in South Sulawesi) termasuk dalam Daftar Representatif Warisan Budaya Takbenda Kemanusiaan (Representative List of the Intangible Cultural Heritage of Humanity) UNESCO sejak 7 Desember 2017.\r\n\r\n10. Pencak Silat (2019)\r\nPencak Silat (Traditions of Pencak Silat) menjadi bagian dari Daftar Representatif Warisan Budaya Takbenda Kemanusiaan (Representative List of the Intangible Cultural Heritage of Humanity) UNESCO sejak 12 Desember 2019.\r\n\r\n11. Pantun (2020)\r\nPantun diakui sebagai bagian dari Daftar Representatif Warisan Budaya Takbenda Kemanusiaan (Representative List of the Intangible Cultural Heritage of Humanity) UNESCO sejak 17 Desember 2020.\r\n\r\n12. Gamelan (2021)\r\nGamelan diakui sebagai dalam Daftar Representatif Warisan Budaya Takbenda Kemanusiaan (Representative List of the Intangible Cultural Heritage of Humanity) UNESCO sejak 15 Desember 2021.\r\n\r\n13. Jamu (2023)\r\nBudaya sehat Jamu (Jamu wellness culture) diakui sebagai dalam Daftar Representatif Warisan Budaya Takbenda Kemanusiaan (Representative List of the Intangible Cultural Heritage of Humanity) UNESCO sejak 6 Desember 2023.\r\n\r\n\r\n14. Reog Ponorogo (2024)\r\nPertunjukan Reog Ponorogo (Reog Ponorogo performing art) tercatat sebagai Daftar Warisan Budaya Takbenda yang Membutuhkan Perlindungan Mendesak (List of Intangible Cultural Heritage in Need of Urgent Safeguarding) UNESCO sejak 3 Desember 2024.', 'ilustrasi-contoh-pantun-sunda-lucu_169.jpeg'),
(14, '2025-04-03', 'Budaya Indonesia yang Terancam Punah', 'Indonesia termasuk negara yang kaya akan keanekaragaman, baik itu sumber daya alamnya maupun kebudayaannya.\r\n\r\nSetiap wilayah di Indonesia memiliki kebudayaan yang unik dan tak dimiliki tempat lain. Tak sedikit warisan budaya menjadi ciri khas dan cerminan dari suatu daerah di Indonesia.\r\n\r\nNamun, sayangnya, saat ini banyak warisan budaya Indonesia yang terancam punah. Sebab, warisan budaya tersebut luntur dimakan perkembangan zaman yang semakin canggih dan maju.\r\n\r\nLantas, apa saja warisan budaya Indonesia yang terancam punah? \r\n\r\n1. Talempong Unggan-Sumatera Barat\r\n\r\nTalempong Unggan adalah alat perkusi yang berasal dari daerah Sumatera Barat. Bentuk alat musik tradisional Minangkabau ini mirip dengan bonang.Dahulu setiap talempong unggan tampil, jumlah penontonnya sangat banyak. Sayangnya, sekarang, pertunjukan talempong unggan semakin berkurang dan sepi peminat.\r\n\r\n2. Ronggeng Ketuk-Jawa Barat\r\n\r\nRonggeng ketuk disebut juga dengan tarik tulis tilu. Tarian tradisional ini berasal dari Kabupaten Indramayu, Jawa Barat. Tari Ronggeng Ketuk umumnya dipertunjukkan untuk upacara adat desa seperti upacara Ngarot, bersih desa, mapag sri, dan lain-lain.\r\n\r\nBentuk pertunjukan dari tari tradisional ini adalah terdapat penari wanita yang tampil dengan didampingi oleh penari pria. Warisan budaya ini saat pertunjukan diiringi instrumen tradisional berupa cemplon atau ketuk yang terdiri dari 3 buah instrumen-instrumen yang lainnya seperti rebab, kendhang sabet, tipung 3, ketuk, suling, gong, kecrek, dan suling.\r\n\r\n3. Topeng Menor-Jawa Barat\r\n\r\nTopeng menor merupakan kesenian berbentuk tarian yang berasal dari kabupaten Cirebon, Jawa Barat. Para penari saat tampil akan menggunakan sebuah topeng berwarna putih yang dihiasi dengan sejenis tali yang diikatkan pada dahi. Topeng yang digunakan umumnya berbentuk wajah sedang tertawa.\r\n\r\n4. Wayang Kulit-Jawa Tengah dan Jawa Timur\r\n\r\nWayang kulit adalah sebuah pertunjukan drama dengan boneka dari kulit. Pagelaran wayang kulit dapat dikatakan sebagai kesenian tradisional yang paripurna sebab didalamnya terkandung seni peran, seni suara, seni musik, seni tutur, seni sastra, seni lukis, seni pahat, dan juga seni perlambang.\r\n\r\nPertunjukan wayang kulit umumnya dimainkan oleh satu dalang atau lebih. Dalang bertugas untuk membuat seolah wayang tersebut berbicara.\r\n\r\n5. Tari Gandai-Bengkulu\r\n\r\nTari gandai merupakan warisan budaya Indonesia yang berasal dari Bengkulu. Tarian ini biasanya ditampilkan ketika sebuah perkawinan berlangsung. Tarian ini berbentuk pasangan yang diiringi oleh alat musik bernama serunai.\r\n\r\n6. Ngaguyah Hujan-Jawa Barat\r\n\r\nNgaguyah hujan merupakan tarian dari daerah Jawa Barat yang digunakan untuk memanggil hujan. Ngaguyah hujan umumnya ditampilkan ketika ada ritual memanggil hujan. Sayangnya, sekarang hanya sedikit orang yang mengetahui tata cara menjalankan ngaguyah hujan.\r\n\r\n7. Sisingaan-Jawa Barat\r\n\r\nSisingaan adalah seni tradisional yang berasal dari daerah Subang, Jawa Barat. Warisan budaya satu ini dikenal dengan sebutan Gotong Singa atau Odong-odong.Saat ini, kesenian ini dimainkan untuk acara-acara khusus seperti acara menerima tamu kehormatan, acara khitanan anak, acara hari-hari besar dan sebagainya.\r\n\r\n8. Keni-Gayo Aceh\r\n\r\nKeni termasuk salah satu karya masyarakat dataran tinggi Gayo di Provinsi Aceh yang terbuat dari tanah liat. Keni sudah dikenal masyarakat Gayo sejak zaman prasejarah dan dibuktikan dengan penemuan peradaban manusia di tepi Danau Lut Tawar.Hanya saja, keberadaan keni, sudah sangat jarang ditemukan. Keni dalam bahasa Gayo artinya kendi atau gerabah.\r\n\r\n9. Tari Reog-Jawa Timur\r\n\r\nTari Reog adalah tari tradisional yang berasal dari Kabupaten Ponorogo, Jawa Timur. Tari ini dilakukan secara massal dengan tokoh lakon yang menampilkan struktur cerita yang mengiringi proses tari.\r\n\r\nUmumnya, masyarakat Ponorogo dan sekitarnya akan mementaskan Tari Reog setiap malam satu suro dan malam bulan purnama. Namun, seiring perkembangan zaman, Tari Reog juga digunakan sebagai bentuk penghormatan kepada tamu besar, sehingga tidak hanya ditampilkan untuk ritual adat saja.\r\n\r\n10. Tari Merawai-Kepulauan Riau\r\n\r\nMerawai termasuk tari tradisional yang berasal dari Pulau Lipan, Kecamatan Selayar, Kabupaten Lingga, Kepulauan Riau. Tari Merawai umumnya dipertunjukkan sebagai hiburan untuk mengisi waktu senggang.\r\n\r\nSayangnya, tarian ini sudah hampir punah, sebab masyarakat sudah jarang menampilkannya lantaran tergeser teknologi serta musik modern.', '20200911120948.png'),
(15, '2025-06-06', 'spesies hewan di Indonesia yang terancam punah.', 'Indonesia dikenal sebagai negara dengan keanekaragaman hayati yang luar biasa. Dengan lebih dari 300 ribu jenis satwa liar, Indonesia menyimpan sekitar 17 persen dari total satwa di dunia. Namun, di balik kekayaan ini, terdapat ancaman serius yang mengintai banyak spesies. Berdasarkan laporan dari International Union for the Conservation of Nature (IUCN) pada tahun 2022, tercatat ada 1.225 spesies hewan di Indonesia yang terancam punah.\r\n\r\nAncaman Terhadap Keberadaan Satwa\r\nDari total spesies yang terancam punah tersebut, sebanyak 192 di antaranya sangat terancam punah, 361 terancam punah, dan 672 rentan. Penyebab utama dari penurunan populasi ini meliputi perburuan liar yang masif, kerusakan habitat alami akibat deforestasi, serta perdagangan satwa liar untuk kepentingan komersial. Jika tidak ada tindakan serius dari pemerintah dan masyarakat untuk melindungi mereka, bukan tidak mungkin spesies-spesies ini akan hilang dari muka bumi.\r\n\r\nBerikut adalah sepuluh hewan langka yang terancam punah di Indonesia:\r\n\r\nHarimau Sumatera\r\nHarimau Sumatera adalah satu-satunya subspesies harimau yang tersisa di Indonesia. Populasinya terus menurun akibat perburuan dan hilangnya habitat. Dengan hanya sekitar 400 ekor yang tersisa di alam liar, harimau ini menjadi simbol perjuangan konservasi satwa liar.\r\nBadak Jawa\r\nBadak Jawa merupakan salah satu spesies paling langka di dunia, dengan hanya sekitar 50 ekor yang tersisa di Taman Nasional Ujung Kulon. Ukurannya lebih kecil dibandingkan badak India dan memiliki cula yang lebih kecil. Ancaman terhadap badak Jawa termasuk perburuan dan hilangnya habitat.\r\nBekantan\r\nBekantan adalah primata endemik Kalimantan yang juga terancam punah. Dengan wajah khasnya yang lucu dan ekor panjang, bekantan menghadapi ancaman dari kerusakan habitat akibat pembukaan lahan untuk perkebunan. Upaya perlindungan telah dilakukan melalui pembentukan Komunitas Sahabat Bekantan Indonesia untuk membantu konservasi spesies ini.\r\nKomodo\r\nSebagai reptil terbesar di dunia, komodo kini menghadapi ancaman serius dari perubahan iklim dan aktivitas manusia. Populasi mereka di alam liar tidak lebih dari 5.000 ekor, dan mereka tergantung pada ekosistem pulau-pulau kecil tempat mereka hidup.\r\nOrangutan\r\nSpesies ini terkenal dengan kecerdasannya dan menjadi simbol konservasi hutan tropis Indonesia. Namun, habitatnya terus berkurang akibat deforestasi untuk perkebunan kelapa sawit dan penebangan liar. Upaya penyelamatan orangutan semakin mendesak untuk mencegah kepunahan.\r\nElang Jawa\r\nBurung pemangsa ini merupakan salah satu spesies burung langka di Indonesia dan terancam kehilangan habitat serta perburuan. Dengan populasi yang terus menurun, elang Jawa membutuhkan perhatian khusus dalam upaya pelestariannya.\r\nKakatua Raja\r\nKakatua ini dikenal karena kecantikan bulunya dan menjadi target perdagangan ilegal, sehingga populasinya semakin menurun. Kakatua Raja kini sangat jarang ditemukan di alam liar dan memerlukan upaya konservasi untuk melindungi keberadaannya.\r\nPenyu Hijau\r\nPenyu hijau menghadapi ancaman dari penangkapan liar dan kerusakan habitat tempat bertelur mereka. Sebagai spesies yang dilindungi, penyu hijau memiliki peran penting dalam menjaga keseimbangan ekosistem laut.\r\nBanteng\r\nBanteng adalah mamalia besar yang kini semakin sulit ditemukan akibat perburuan dan hilangnya habitat alami mereka. Upaya konservasi banteng perlu ditingkatkan untuk memastikan kelangsungan hidup spesies ini.\r\nKucing Hutan Sunda\r\nKucing hutan Sunda adalah predator kecil yang juga terancam punah akibat kerusakan habitat hutan tropis. Keberadaannya penting dalam menjaga keseimbangan ekosistem hutan.', '4d5ee3566e89d5205d656bed78744d08.jpg'),
(16, '2025-06-10', 'Jatim Park 1', 'Bila membahas tentang wisata di Jawa Timur pasti tidak bisa lepas dari Jatim Park. Jatim Park yang terletak di Kota Batu ini menjadi destinasi favorit keluarga yang sangat lengkap. Tidak hanya itu, udara yang sejuk membuat pengunjung betah untuk memilih destinasi ini, terutama saat liburan panjang sekolah. Kali ini, Wonderful Images akan membahasa mengenai Jatim Park 1. Taman rekreasi yang dibangun pertama kali oleh Jatim Park ini memiliki konsep taman bermain yang dipadukan dengan taman edukasi.\r\n\r\nPengunjung juga bisa belajar banyak hal di sini, seperti belajar sains di Science Center, belajar sejarah lewat diorama di Taman Sejarah, belajar anatomi tubuh di Museum Tubuh The Bagong Adventure, serta belajar budaya Indonesia di Indonesia Heritage Museum dan Galeri Etnik. Jatim Park 1 juga memilikio banyak wahana seru untuk anak-anak hingga orang dewasa. Anak-anak bisa mencoba wahana Mini Train, Happy Boat, Convoy Car, Ulat Coaster, dan Froggy. Sementara untuk orang dewasa, terdapat berbagai wahana yang menguji adrenalin. Seperti Pendulum, Gold Mining Coaster, Flying Tornado, Enterprise Ride, dan Gyroscope.', 'download (1).jpeg'),
(17, '2025-06-14', 'Jatim Park 2', 'Salah satu tempat wisata di Jawa Timur yang menarik dan wajib kamu kunjungi yakni Jatim Park 2. Jawa Timur Park 2 atau Jatim Park 2 merupakan tempat wisata edukasi yang menawarkan berbagai wahana menyenangkan untuk dicoba.\r\n\r\nBahkan, di tempat wisata ini tidak kurang ada 35 wahana yang bisa kamu kunjungi dan nikmati saat berlibur ke sini.\r\n\r\nBerbeda dengan Jatim Park 1 yang menggunakan konsep hiburan, Jatim Park 2 lebih menggunakan konsep edukasi, belajar ilmu alam, biologi serta pembelajaran satwa alam yang desain dengan latar belakang sesuai habitatnya.\r\n\r\nHal ini terbukti dengan 3 zona utama yang berada di dalamnya, yakni Secret Zoo, Eco Green Park, dan Museum Satwa.\r\n\r\nDi tempat ini kamu bisa menikmati wisata edukasi yang menyenangkan dan tidak membosankan, bahkan cenderung membuatmu merasakan pengalaman baru yang berkesan.\r\n\r\nPelayanan di Jatim Park 2 ini juga begitu prima, bagi wisatawan yang tidak mampu berjalan jauh, di sini kamu menggunakan e-bike untuk membantu berkeliling di sejumlah wahana yang ada.\r\n\r\nSejarah Jatim Park 2\r\nMenempati lahan seluas 2 hektar, meski merupakan pengembangan dari Jatim Park 1, tapi konsep yang diusung Jatim Park 2 sedikit berbeda yaitu lebih menitik beratkan pada konsep eduwisata terutama tentang lingkungan dan ilmu pengetahuan alam.\r\n\r\nKarena itulah, untuk membangun konten – konten yang ada di Jatim Park 2, pihak Jatim Park Group menggandeng Kementrian Lingkungan Hidup dan Kehutanan.\r\n\r\nBahkan Jatim Park Group juga bekerja sama secara resmi dengan LIP (Lembaga Ilmu Pengetahuan Indonesia) untuk menyesuaikan sistem pengumpulan dan pengelolaan data dari koleksi flora dan fauna yang ada di masing-masing taman.\r\n\r\nMeski sudah dibangun sejak tahun 2008 dan diresmikan serta di buka untuk umum pada tahun 2010 oleh Presiden RI, Susilo Bambang Yudhoyono, tapi upaya pengembangan Jatim Park 2 masih terus dilakukan hingga sekarang.\r\n\r\nSalah satunya adalah rencana pembangunan infrastruktur transportasi, untuk meningkatkan kualitas layanan.\r\n\r\nJenis transportasi yang akan dibangun tersebut berupa kereta monorail yang menghubungkan ketiga objek wisata yang ada di Jatim Park 2 dan objek wisata lainnya yang berada di bawah manajemen Jatim Park Group.\r\n\r\nKarena sisi pelayanan itulah yang menjadi modal utama dari Jatim Park Group sehingga bisa sukses dalam mengembangkan 12 objek wisata dan 4 hotel serta resort di Jawa Timur.\r\n\r\nDengan pelayanan prima yang diberikan itulah sejumlah penghargaan bisa diraih oleh Jatim Park 2. Di antaranya adalah terpilihnya Batu Secret Zoo sebagai Kebun Binatang Terbaik Se-Asia pada tahun 2014 versi Tripadvisor.\r\n\r\nKemudian Situs Tujuan Wisata Terbaik Se-Asia tahun 2015, dan meraih Certificate of Excellence Service di tahun 2016.', 'download (2).jpeg'),
(18, '2025-06-17', 'Alun Alun Kota Malang', 'Sedang mencari lokasi wisata yang seru dan murah meriah di Kota Apel? Alun-Alun Malang bisa menjadi rekomendasi terbaik. Ruang publik ini selalu ramai dikunjungi oleh warga untuk sekedar nongkrong atau wisata kuliner.\r\n\r\nLokasi yang strategis memudahkan masyarakat untuk menyambanginya, baik dengan kendaraan pribadi maupun transportasi umum. Bagi kamu yang tertarik datang ke Alun-Alun Malang, simak ulasan lengkapnya di bawah ini.\r\n\r\nAlun-Alun Malang atau lebih dikenal dengan nama Alun-Alun Merdeka merupakan salah satu landmark Kota Apel yang selalu ramai dikunjungi. Wajar saja, karena ada banyak aktivitas menarik yang bisa dilakukan di tempat tersebut. Salah satunya adalah menikmati suasana alun-alun yang asri dan sejuk. Taman Merdeka dibangun dengan pepohonan rimbun berukuran besar. Di berbagai penjurunya tersedia tanaman hias dan rumput hijau yang menyegarkan mata. Masyarakat bisa duduk santai menikmati pemandangan kota atau piknik bersama keluarga.\r\n\r\nwahana permainan alun alun malang\r\n\r\nAlun-Alun Malang juga dilengkapi wahana permainan anak-anak berupa ayunan, jungkat-jungkit, dan perosotan. Semua permainan tersebut dirawat secara rutin sehingga dipastikan aman dan bersih. Dengan penataan yang rapi dan bersih, alun-alun bisa menjadi tempat menarik untuk berfoto.\r\n\r\n\r\nAda banyak spot foto instagramable yang bisa kamu temukan di sini, mulai dari spot bertuliskan  “Alun-Alun Malang” dan “I Love Ngalam,” serta area air mancur.\r\n\r\nUntuk kamu yang gemar olahraga, terdapat trek lari dan jalur bersepeda yang bisa digunakan. Alun-alun ini juga dilengkapi dengan WiFi gratis, ruang menyusui, dan toilet untuk menambah kenyamanan seluruh pengunjung.\r\n\r\nLokasi Alun-Alun Malang\r\n\r\nAlun-Alun Malang berlokasi di Jalan Merdeka Selatan, Kidul Dalem, Klojen, Kota Malang. Lokasinya berada di kawasan strategis pusat kota, dekat dengan moda transportasi publik dan berbagai fasilitas penunjang. Lokasinya hanya 3 menit dari Pasar Besar Malang dan Halte Bus Kauman.\r\n \r\n\r\nBahkan, Terminal Arjosari dan Bandara Abdulrachman Saleh juga dapat dijangkau dalam waktu 20 menit-an saja dari alun-alun, lho.\r\n\r\n\r\nJika datang dari Alun-Alun Bunder, lokasi alun-alun ini hanya 700 meter ke arah timur laut.\r\n\r\n\r\nHarga Tiket dan Jam Operasional Alun-Alun Malang\r\nHarga Tiket Masuk dan Jam Operasional Alun-alun Malang.jpeg\r\n \r\n\r\nUntuk masuk ke dalam alun-alun, kamu tidak perlu membayar biaya apapun alias gratis. Namun, untuk parkir kendaraan, pengunjung akan dikenakan biaya sebesar Rp2.000 untuk speeda motor dan Rp5.000 untuk mobil. Kamu bisa mengunjungi alun-alun kapanpun karena dibuka selama 24 jam. Saat beraktivitas di kawasan alun-alun, pengunjung dihimbau untuk senantiasa menjaga kebersihan dan ketertiban bersama.\r\n\r\nDemikianlah informasi mengenai Alun-Alun Kota Malang yang menarik untuk diketahui.\r\n\r\n\r\nSemoga ulasan di atas bermanfaat, ya.\r\n\r\n\r\nSelamat berkunjung!', 'unnamed (1).jpg'),
(19, '2025-06-20', 'Alun Alun Tugu Malang', 'Alun-Alun Bundar adalah alun-alun atau tanah lapang yang terletak di Kota Malang, Jawa Timur. Alun- alun ini dibangun pada tahun 1920 oleh orang Belanda Thomas Karsten. Di bagian tengah alun-alun ini terdapat sebuah tugu yang dikelilingi oleh kolam teratai. Alun-Alun Bundar terletak di depan Balai Kota Malang.\r\n\r\nAlun- alun Bunder ini merupakan simbol kekuasaan kolonial Belanda di Kota Malang, karena pemerintah kolonial beranggapan bahwa Alun- alun kota Malang terlalu berbau indisch. Pada awalnya nama taman ini adalah JP Coen Plein, sebagai bentuk penghormatan kepada Gubernur jendral Jaan Pieterzoen Coen.\r\n\r\nFondasi tugu yang berada di bagian tengah alun-alun ini dibangun pada tahun 1945 dan pernah dihancurkan Belanda saat menguasai Kota Malang. Pada tahun 1952, tugu ini dibangun kembali yang diresmikan oleh Presiden Soekarno pada tanggal 20 Mei 1953. Alun-Alun Bundar merupakan markah tanah Kota Malang selain Adimarga Ijen.', 'unnamed (2).jpg'),
(20, '2025-06-15', 'Jatim Park 3', 'Dari wahana sebelumnya yaitu Jatim Park 1 yang menawarkan permainan, pengetahuan hingga hiburan dan Jatim Park 2 dengan kemegahan dari Museum Satwa serta Secret Zoonya, Jatim Park kini menghadirkan wahana menarik buatan berupa replika Dinosaurus.\r\n\r\nJatim Park 3 berada di desa Beji, Kecamatan Junrejo, Kota Batu. Jatim Park 3 mengusung konsep taman bermain sekaligus edukasi mengenai hewan-hewan purbakala termasuk Dinosaurus di area Dinopark dan area spot foto patung lilin yang lengkap dengan nuansa berbagai negara serta terdapat taman lampu yang luas diarea The Legend Stars.[butuh rujukan] Di dalam Jatim Park 3 juga terdapat sebuah museum yaitu Museum Musik Dunia.[2] Selain itu terdapat Funtech Plaza, dan Milenial Glow Garden. Taman Wisata Jatim Park 3 juga dilengkapi dengan food court di tiap area yang menyajikan aneka masakan tradisional, eropa, jajanan ringan dan minuman segar.', 'unnamed (3).jpg');

-- --------------------------------------------------------

--
-- Table structure for table `article_author`
--

CREATE TABLE `article_author` (
  `article_id` int NOT NULL,
  `author_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `article_author`
--

INSERT INTO `article_author` (`article_id`, `author_id`) VALUES
(1, 1),
(2, 4),
(7, 4),
(8, 4),
(9, 4),
(10, 4),
(11, 4),
(12, 4),
(13, 4),
(14, 4),
(15, 4),
(16, 4),
(17, 4),
(18, 4),
(19, 4),
(20, 4);

-- --------------------------------------------------------

--
-- Table structure for table `article_category`
--

CREATE TABLE `article_category` (
  `article_id` int NOT NULL,
  `category_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `article_category`
--

INSERT INTO `article_category` (`article_id`, `category_id`) VALUES
(1, 4),
(2, 4),
(7, 4),
(8, 4),
(9, 4),
(10, 4),
(11, 4),
(12, 5),
(13, 5),
(14, 5),
(15, 5),
(16, 6),
(17, 6),
(18, 6),
(19, 6),
(20, 6);

-- --------------------------------------------------------

--
-- Table structure for table `author`
--

CREATE TABLE `author` (
  `id` int NOT NULL,
  `nickname` varchar(100) NOT NULL,
  `email` varchar(150) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `author`
--

INSERT INTO `author` (`id`, `nickname`, `email`, `password`) VALUES
(1, 'Budi', 'budi@example.com', 'password123'),
(2, 'Didik', 'didik@example.com', 'password123'),
(3, 'Iwan', 'iwan@example.com', 'password123'),
(4, 'azzahrayrs', 'azzahra@gmail.com', '$2y$10$PT9KgVLtjyQoxKfQYjPFkOHMJ1tje9f8hN2DOjz.yUbMmm0uPuFyC');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `description`) VALUES
(4, 'Alam', 'Kategori yang mencakup tempat wisata alam seperti gunung, pantai, air terjun, dan hutan wisata.'),
(5, 'Pendidikan', 'Kategori yang berisi tempat wisata edukasi seperti museum, pusat sains, kebun binatang, dan planetarium.'),
(6, 'Taman', 'Kategori yang mencakup tempat wisata taman rekreasi seperti taman kota, taman hiburan, dan taman bermain.');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `article_author`
--
ALTER TABLE `article_author`
  ADD PRIMARY KEY (`article_id`,`author_id`),
  ADD KEY `author_id` (`author_id`);

--
-- Indexes for table `article_category`
--
ALTER TABLE `article_category`
  ADD PRIMARY KEY (`article_id`,`category_id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `author`
--
ALTER TABLE `author`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `article`
--
ALTER TABLE `article`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `author`
--
ALTER TABLE `author`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `article_author`
--
ALTER TABLE `article_author`
  ADD CONSTRAINT `article_author_ibfk_1` FOREIGN KEY (`article_id`) REFERENCES `article` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `article_author_ibfk_2` FOREIGN KEY (`author_id`) REFERENCES `author` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `article_category`
--
ALTER TABLE `article_category`
  ADD CONSTRAINT `article_category_ibfk_1` FOREIGN KEY (`article_id`) REFERENCES `article` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `article_category_ibfk_2` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
