SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `Greedy Bank`
--

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `sno` int(3) NOT NULL,
  `sender` text NOT NULL,
  `receiver` text NOT NULL,
  `balance` int(8) NOT NULL,
  `datetime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`sno`, `sender`, `receiver`, `balance`, `datetime`) VALUES
(1, 'Kajal', 'Ankita', 2000, '2021-07-15 16:58:27'),
(2, 'Kajal', 'Ankita', 2000, '2021-07-15 18:00:11'),
(3, 'Ankita', 'Nikita', 5000, '2021-07-15 15:01:32'),
(4, 'Kajal', 'Nikita', 5000, '2021-07-15 17:06:15'),
(5, 'Jivika', 'Ankita', 500, '2021-07-15 19:28:24'),
(6, 'Jivika', 'Ankita', 900, '2021-07-15 19:40:31'),
(7, 'Jivika', 'Ankita', 3700, '2021-07-15 19:00:22'),
(8, 'Shiva', 'Alka', 8760, '2021-07-14 07:39:28'),
(9, 'Arshi', 'Kajal', 870, '2021-07-14 09:57:08'),
(10, 'Kajal', 'Alka', 100, '2021-07-14 11:52:18');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(3) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(30) NOT NULL,
  `balance` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `balance`) VALUES
(7678, 'Ankita', 'anki@gmail.com', 46600),
(7889, 'Jivika', 'jeev45@gmail.com', 30620),
(2736, 'Gaurav', 'gian89@gmail.com', 40000),
(4788, 'Alka', 'happy78@gmail.com', 48800),
(4353, 'shiva', 'shivu90@gmail.com', 35000),
(4578, 'Aman', 'aman897@gmail.com', 49500),
(8779, 'Nikita', 'nikkii07@gmail.com', 40000),
(6878, 'Sindhu', 'siin654@gmail.com', 49480),
(3688, 'Kajal', 'sarii65@gmail.com', 40000),
(5768, 'Sachin', 'rockstar87@gmail.com', 30000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `transaction`
--f
ALTER TABLE `transaction`
  MODIFY `sno` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54655;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
