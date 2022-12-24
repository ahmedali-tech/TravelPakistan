

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


--
CREATE DATABASE BLOG;
USE BLOG;
CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `comment` varchar(255) NOT NULL,
  `postId` int(11) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `userId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `comment`, `postId`, `createdAt`, `updatedAt`, `userId`) VALUES
(15, 'Loved this post! Keep on going!', 86, '2022-12-07 10:32:35', '2022-12-07 10:32:35', 19),
(16, 'Awesome story!', 86, '2022-12-07 10:34:25', '2022-12-07 10:34:25', 4),
(34, 'I agree, Multan is THE best destination!', 74, '2022-12-07 12:20:24', '2022-12-07 12:20:24', 3),
(36, 'I love sea, the best place for vacation.', 71, '2022-12-08 15:54:07', '2022-12-08 15:54:07', 3);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `category` varchar(255) DEFAULT NULL,
  `comment_count` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `content`, `image`, `createdAt`, `updatedAt`, `category`, `comment_count`) VALUES
(19, 'Lahore', 'Location of Lahore City is bounded on the North and West by Sheikhupura district, on the east by India and on the south Kasur district River Ravi flows on the northern side of Lahore. Total land area of the city is 404 sq. Km. Altitude of the city lies between 31-15 and 31-45 North latitudes and 74-01 and 74-39 East longitude. Climate of Lahore city faces extremes climate, May, June, and July are hottest months. The minimum temperature varies between 39 C and 26 C respectively. While December, January and February are the coldest months. Languages spoken in the city are Punjabi, Urdu and English. Extravagant language, maybe, but admirers have always vied with each other to immortalize this Pearl of the Punjab.Lahore is Queen of cities; others are like a golden ring, she the diamond. In the 12th century a poet imprisoned in Persia yearned for Lahore as for a woman: I want, some velvet form which emanates the fragrance of Lahore. For longing for Lahore heart and soul faint within me.', '/uploads/lahore.jpg', '2022-12-13 06:10:45', '2022-12-13 15:54:07', 'Lifestyle', 1),
(72, 'Islamabad', 'Islamabad Capital Territory, located on the Pothohar Plateau of the northern Punjab region, is considered one of the earliest sites of human settlement in Asia. Some of the earliest Stone Age artefacts in the world have been found on the plateau, dating from 100,000 to 500,000 years ago. Rudimentary stones recovered from the terraces of the Soan River testify to the endeavours of early man in the inter-glacial period. Items of pottery and utensils dating back to prehistory have been found.', '/uploads/islamabad.jpg', '2022-12-24 06:11:19', '2022-12-13 11:17:04', 'Lifestyle', 0),
(73, 'Faisalabad', 'Faisalabad, formerly (until 1979) Lyallpur, city, east-central Punjab province, Pakistan, in the Rechna Doab upland. The city, the district headquarters, is a distributing centre centrally located in the Punjab plain and connected by road, rail, and air with Multan and Lahore and by air with Lahore and Karachi. When founded in 1890, it was named for Sir Charles James Lyall, lieutenant governor of the Punjab. It became headquarters of the Lower Chenab colony and in 1898 was incorporated as a municipality. Industries produce chemical fertilizer, synthetic fibres, drugs and pharmaceuticals, canned products, ghee (clarified butter), oil, soap, textiles, hosiery, sugar, and flour. It is also a wholesale market for cloth and grain. Amenities include several parks, many schools, and the University of Agriculture, Faisalabad (established 1961). It also includes a number of colleges affiliated with the University of the Punjab.', '/uploads/faisalabad.jpg', '2022-12-21 06:12:04', '2022-12-21 10:58:08', 'Travel', 0),
(74, 'Multan', 'Multan, city, south-central Punjab province, east-central Pakistan. It is built on a mound just east of the Chenab River.The chief seat of the Malavas, an ancient people who ruled the region in the 4th century BCE, Multan was subdued by Alexander the Great in 326 BCE and was brought under Umayyad rule about 712 CE. For three centuries it remained the outpost of Islam in India. In the 10th century it became a centre of the Qarmatian heretics. The commercial and military key to the southern route into India, it suffered several sacks and sieges over the centuries. It was subject to the Delhi sultanate and the Mughal Empire and was then captured by the Afghans (1779), the Sikhs (1818), and the British (1849). Multan was formerly called Kashtpur, Hanspur, Bāgpur, and Sanb (or Sanābpur). Its current name may be a contraction of Mulasthān, a name that may refer to the citys ancient Sun Temple.', '/uploads/multan.jpg', '2022-12-11 06:12:21', '2022-12-11 12:20:24', 'Travel', 1),
(83, 'Kashmir', 'Kashmir, region of the northwestern Indian subcontinent. It is bounded by the Uygur Autonomous Region of Xinjiang to the northeast and the Tibet Autonomous Region to the east (both parts of China), by the Indian states of Himachal Pradesh and Punjab to the south, by Pakistan to the west, and by Afghanistan to the northwest. The region, with a total area of some 85,800 square miles (222,200 square km), has been the subject of dispute between India and Pakistan since the partition of the Indian subcontinent in 1947. The northern and western portions are administered by Pakistan and comprise three areas: Azad Kashmir, Gilgit, and Baltistan, the last two being part of a single administrative unit called Gilgit-Baltistan (formerly Northern Areas). Administered by India are the southern and southeastern portions, Jammu and Kashmir and Ladakh. The Indian- and Pakistani-administered portions are divided by a line of control agreed to in 1972, although neither country recognizes it as an international boundary. In addition, China became active in the eastern area of Kashmir in the 1950s and has controlled the northeastern part of Ladakh (the easternmost portion of the region) since 1962.', '/uploads/kashmir.jpg', '2022-12-12 06:12:24', '2022-12-12 11:16:22', 'Sport', 0),
(85, 'Peshawar', 'Peshawar, city, capital of Khyber Pakhtunkhwa province, northern Pakistan. The city lies just west of the Bara River, a tributary of the Kabul River, near the Khyber Pass. The Shahji-ki Dheri mounds, situated to the east, cover ruins of the largest Buddhist stupa in the subcontinent (2nd century CE), which attest the lengthy association of the city with the Buddha and Buddhism. Once the capital of the ancient Buddhist kingdom of Gandhara, the city was known variously as Parasawara and Purusapura (town, or abode, of Purusa); it was also called Begram. The present name, Peshawar (pesh awar, “frontier town”), is ascribed to Akbar, the Mughal emperor of India (1556–1605). A great historic centre of transit-caravan trade with Afghanistan and Central Asia, Peshawar is today connected by highway and rail with Lahore, Rawalpindi, Hyderabad, and Karachi and by air with Rawalpindi, Chitral, and Kabul, Afghanistan.', '/uploads/peshawar.jpg', '2022-12-21 06:14:01', '2022-12-07 10:57:12', 'Lifestyle', 0),
(86, 'Quetta', ' Quetta, also spelled Kwatah, city, district, and division of Balochistan province, Pakistan. The name is a variation of kwatkot, a Pashto word meaning “fort,” and the city is still locally known by its ancient name of Shāl or Shālkot.The city is the divisional and district headquarters and is an important marketing and communications centre at the north end of the Shāl Valley about 5,500 feet (1,675 metres) above sea level. It is the southernmost point in a line of frontier posts and in the system of strategic roads and railways near the northwest (Afghanistan) border. Commanding the Bolān and Khojak passes, Quetta was occupied by the British in 1876; a residency was founded by Sir Robert Sandeman, and the town developed around its strongly garrisoned army station. Incorporated as a municipality in 1896, its Army Command and Staff College was opened in 1907. A violent earthquake partially destroyed the city in May 1935, with a loss of 20,000 lives. Now a market centre for western Afghanistan, eastern Iran, and part of Central Asia, its industries include cotton mills, a sulfur refinery, coke briquetting plants, a thermal power station, and fruit canneries. The city is the site of a geophysical institute, the Geological Survey of Pakistan, Sandeman Library, and two government colleges affiliated with the University of Peshawar. The University of Balochistan was established at Quetta in 1970. The city is also an important summer resort.', '/uploads/quetta.jpg', '2022-12-26 06:17:25', '2022-12-01 12:23:21', 'Sport', 2),
(150, 'Hunza', 'Karimabad, also called Baltit or Hunza, town in the Gilgit-Baltistan area of the Pakistani-administered portion of the Kashmir region, in the northwestern part of the Indian subcontinent. Formerly a small principality under the hereditary ruler known as the Mir of Hunza, it joined with Pakistan in 1947. The town, situated on the west bank of the Hunza River, was a stopping place for travelers descending from the Hindu Kush mountains into the Vale of Kashmir. Surrounded by snowcapped mountain peaks such as the Rakaposhi, vast glaciers such as the Ulter, and deep gorges, Karimabad is accessible by mountain road from Gilgit. Roses, pansies, lilies, zinnias, and cosmos grow wild in the area, as do willow, fir, and poplar trees. Snow leopards, markhors (a type of goat), ibexes, yaks, red-striped foxes, ducks, and Marco Polo sheep also inhabit the region. The local residents use irrigation to grow crops of rice, corn (maize), fruits, and vegetables.', '/uploads/hunza.jpg', '2022-12-19 06:34:52', '2022-12-07 12:37:24', 'Lifestyle', 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `role` int(11) NOT NULL DEFAULT 0,
  `firstName` varchar(255) NOT NULL,
  `lastName` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `createdAt`, `updatedAt`, `role`, `firstName`, `lastName`) VALUES
(3, 'ahmed@gmail.com', '$2b$10$ohc/4QLFD9R8iQwaIZtvc.ffOKUfLF2DY6HeUokprlB/CVNSPe5ee', '2022-12-24 07:46:06', '2022-12-24 10:58:19', 0, 'Ahmed', 'Ali'),
(21, 'ahmedaalee016@gmail.com', '$2b$10$.Fky2c88M8gaPuK0KWugF.zoAoST9nvsUj2zMtm.25jXs/s0uta0K', '2022-12-24 07:46:06', '2022-12-24 10:58:19', 1, 'Ahmed', 'Ali');


--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `postId` (`postId`),
  ADD KEY `userId` (`userId`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=162;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comments`
--

COMMIT;

