-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jun 17, 2024 at 06:12 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `missionvatsalyafinance`
--

-- --------------------------------------------------------

--
-- Table structure for table `cci`
--

CREATE TABLE `cci` (
  `id` varchar(7) NOT NULL,
  `district` varchar(17) DEFAULT NULL,
  `cci_name` varchar(69) DEFAULT NULL,
  `cci_run_by` varchar(27) DEFAULT NULL,
  `cci_unit_no` int(1) DEFAULT NULL,
  `cci_gender` varchar(8) DEFAULT NULL,
  `strength` int(2) DEFAULT NULL,
  `cci_addr` varchar(129) DEFAULT NULL,
  `cci_pin` varchar(6) DEFAULT NULL,
  `pab_st` varchar(3) DEFAULT NULL,
  `category` varchar(27) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `cci`
--

INSERT INTO `cci` (`id`, `district`, `cci_name`, `cci_run_by`, `cci_unit_no`, `cci_gender`, `strength`, `cci_addr`, `cci_pin`, `pab_st`, `category`) VALUES
('CCI_1', 'ALIPURDUAR', 'ALIPURDUAR GOVT RUN SPECIALIZED ADOPTION AGENCY', 'Government', 1, 'Combined', 10, 'SUFAL BANGLA BUILDING 1ST FLOOR, NEAR SUB DIVISIONAL OFFICER\'S OFFICE, ALIPURDUAR MUNICIPALITY, PO- ALIPURDUAR COURT, PIN- 736122', '0', 'Yes', 'Specialized Adoption Agency'),
('CCI_10', 'COOCHBIHAR', 'CHILDREN HOME FOR BLIND BOYS', 'Government', 1, 'Male', 50, 'PO+DIST- COOHBEHAR,PIN-736101', '', 'Yes', 'Children Home CWSN'),
('CCI_100', 'NORTH 24 PARGANAS', 'Bodhi Peet Home', 'Non-Government Organisation', 1, 'Female', 25, 'AQ-16, Sector-V, Saltlake', '700091', 'Yes', 'Children Home CWSN'),
('CCI_101', 'NORTH 24 PARGANAS', 'Child Care Home run by WIF', 'Non-Government Organisation', 1, 'Female', 50, 'Sukantanagar, Saltlake,Sector-IV', '700098', 'Yes', 'Children Home'),
('CCI_102', 'NORTH 24 PARGANAS', 'DHRUBASHRAM HOME', 'Government', 1, 'Male', 50, '30, SRI GOPAL MULLICK ROAD, KOLKATA-700057', '0', 'Yes', 'Observation Home'),
('CCI_103', 'NORTH 24 PARGANAS', 'DHRUBASHRAM HOME', 'Government', 2, 'Male', 50, '30, SRI GOPAL MULLICK ROAD, KOLKATA-700057', '0', 'Yes', 'Observation Home'),
('CCI_104', 'NORTH 24 PARGANAS', 'KISHALAYA HOME', 'Government', 2, 'Male', 50, 'PO- BARASAT, DIST- NORTH 24 PARGANAS, WB', '0', 'Yes', 'Children Home'),
('CCI_105', 'NORTH 24 PARGANAS', 'KISHALAYA HOME', 'Government', 1, 'Male', 50, 'PO-BARASAT, DIST-NORTH 24 PARGANAS, WB', '0', 'Yes', 'Children Home'),
('CCI_106', 'NORTH 24 PARGANAS', 'MUKTI Rehabilitatin Centre', 'Non-Government Organisation', 1, 'Combined', 10, 'Ramkrishna Pally,Dashadrone,  P.O-Rajarhat Gopalpur', '700136', 'Yes', 'Specialized Adoption Agency'),
('CCI_107', 'NORTH 24 PARGANAS', 'Nijoloy Women s Interlink Foundation', 'Non-Government Organisation', 1, 'Female', 50, 'Sukanta Sarani, Doltala More, Methopara, Ganganagar, Madhyamgram', '700132', 'Yes', 'Children Home'),
('CCI_108', 'NORTH 24 PARGANAS', 'Ramkrishna Vivekananda Mission', 'Non-Government Organisation', 1, 'Male', 50, '20, Riverside Road, Barrackpore', '700120', 'Yes', 'Children Home'),
('CCI_109', 'NORTH 24 PARGANAS', 'SUKANYA HOME', 'Government', 2, 'Female', 50, 'AQ-15, SECTOR-V, SALT LAKE CITY, KOLKATA-700091, WB', '0', 'Yes', 'Children Home'),
('CCI_11', 'COOCHBIHAR', 'CHILDREN HOME FOR BLIND BOYS', 'Government', 2, 'Male', 50, 'PO+DIST- COOCHBEHAR, PIN 736101, WB-736101', '', 'Yes', 'Children Home CWSN'),
('CCI_110', 'NORTH 24 PARGANAS', 'SUKANYA HOME', 'Government', 1, 'Female', 50, 'AQ-15, SECTOR-V, SALT LAKE CITY, KOLKATA-700091, WB', '0', 'Yes', 'Children Home'),
('CCI_111', 'PASCHIM BARDHAMAN', 'Durgapur Indira Pragati Society', 'Non-Government Organisation', 1, 'Combined', 10, 'Gopal Math, Kamala Kutir, PO- Oyaria, Durgapur', '713217', 'Yes', 'Specialized Adoption Agency'),
('CCI_112', 'PASCHIM MEDINIPUR', 'Benai Bijoy Krishna Rural Developmentn Society', 'Non-Government Organisation', 2, 'Male', 50, 'Vill Uttarbar, PO Kheput Block Daspur II, Dist Paschim Medinipur', '721148', 'Yes', 'Children Home'),
('CCI_113', 'PASCHIM MEDINIPUR', 'Benai Bijoy Krishna Rural Developmentn Society', 'Non-Government Organisation', 1, 'Male', 50, 'Vill Uttarbar, PO Kheput Block Daspur II, Dist Paschim Medinipur', '721148', 'Yes', 'Children Home CWSN'),
('CCI_114', 'PASCHIM MEDINIPUR', 'Chakkumar Association for Social Service', 'Non-Government Organisation', 1, 'Male', 50, 'Vill Chakkumar, PO Debra Bazar, Debra, Dist Paschim Medinipur', '721126', 'Yes', 'Observation Home'),
('CCI_115', 'PASCHIM MEDINIPUR', 'Chakkumar Association for Social Service', 'Non-Government Organisation', 2, 'Male', 50, 'Vill Chakkumar, PO Debra Bazar, Debra, Dist Paschim Medinipur', '721126', 'Yes', 'Children Home'),
('CCI_116', 'PASCHIM MEDINIPUR', 'Dantan Manav Kalyan Kendra', 'Non-Government Organisation', 1, 'Female', 50, 'Krishnapur, PO Dantan, Dist Paschim Medinipur', '721426', 'Yes', 'Children Home CWSN'),
('CCI_117', 'PASCHIM MEDINIPUR', 'Motherchak Naboday Kishalay Sangha', 'Non-Government Organisation', 2, 'Female', 50, 'Vill Gokulpur, PO Bargokulpur, PS Kharagpur Local, Dist Paschim Medinipur', '721301', 'Yes', 'Children Home CWSN'),
('CCI_118', 'PASCHIM MEDINIPUR', 'Motherchak Naboday Kishalay Sangha', 'Non-Government Organisation', 1, 'Female', 50, 'Vill Gokulpur, PO Bargokulpur, PS Kharagpur Local, Dist Paschim Medinipur', '721301', 'Yes', 'Children Home CWSN'),
('CCI_119', 'PASCHIM MEDINIPUR', 'VIDYASAGAR BALIKA BHAVAN', 'Government', 5, 'Female', 50, 'PO-GOPE, DIST- PASCHIM MEDINIPUR, WB', '0', 'Yes', 'Children Home'),
('CCI_12', 'COOCHBIHAR', 'New Bharti Club', 'Non-Government Organisation', 1, 'Combined', 10, 'Vill+PO-Baneswar,P.S. Kotwali', '736133', 'Yes', 'Specialized Adoption Agency'),
('CCI_120', 'PASCHIM MEDINIPUR', 'VIDYASAGAR BALIKA BHAVAN', 'Government', 1, 'Combined', 10, 'PO- GOPE, DIST- PASCHIM MEDINIPUR, WB', '0', 'Yes', 'Specialized Adoption Agency'),
('CCI_121', 'PASCHIM MEDINIPUR', 'VIDYASAGAR BALIKA BHAVAN', 'Government', 4, 'Female', 50, 'PO- GOPE, DIST- PASCHIM MEDINIPUR, WB', '0', 'Yes', 'Children Home'),
('CCI_122', 'PASCHIM MEDINIPUR', 'VIDYASAGAR BALIKA BHAVAN', 'Government', 3, 'Female', 50, 'PO-GOPE, DIST- PASCHIM MEDINIPUR, WB', '0', 'Yes', 'Children Home'),
('CCI_123', 'PASCHIM MEDINIPUR', 'VIDYASAGAR BALIKA BHAVAN', 'Government', 7, 'Female', 50, 'PO- GOPE, DIST- PASCHIM MEDINIPUR, WB', '0', 'Yes', 'Children Home'),
('CCI_124', 'PASCHIM MEDINIPUR', 'VIDYASAGAR BALIKA BHAVAN', 'Government', 8, 'Female', 50, 'PO- GOPE, DIST- PASCHIM MEDINIPUR. WB', '0', 'Yes', 'Children Home'),
('CCI_125', 'PASCHIM MEDINIPUR', 'VIDYASAGAR BALIKA BHAVAN', 'Government', 9, 'Female', 50, 'PO- GOPE, DIST- PASCHIM MEDINIPUR, WB', '0', 'Yes', 'Children Home'),
('CCI_126', 'PASCHIM MEDINIPUR', 'VIDYASAGAR BALIKA BHAVAN', 'Government', 1, 'Female', 50, 'PO- GOPE, DIST- PASCHIM MEDINIPUR, WB', '0', 'Yes', 'Children Home'),
('CCI_127', 'PASCHIM MEDINIPUR', 'VIDYASAGAR BALIKA BHAVAN', 'Government', 2, 'Female', 50, 'PO- GOPE, DIST- PASCHIM MEDINIPUR, WB', '0', 'Yes', 'Children Home'),
('CCI_128', 'PASCHIM MEDINIPUR', 'VIDYASAGAR BALIKA BHAVAN', 'Government', 6, 'Female', 50, 'PO- GOPE, DIST- PASCHIM MEDINIPUR', '0', 'Yes', 'Children Home'),
('CCI_129', 'PURBA BARDHAMAN', 'Asansol Burdwan Seva Kendra', 'Non-Government Organisation', 1, 'Combined', 10, 'Chetana Community Care Centre, Viii- Jhinguti, P.0- Phagupur', '713102', 'Yes', 'Specialized Adoption Agency'),
('CCI_13', 'COOCHBIHAR', 'SAHID BANDANA SMRITI BALIKA ABAS', 'Government', 1, 'Combined', 10, 'PO+DIST- COOCH BEHAR, PIN -736101, WB', '0', 'Yes', 'Specialized Adoption Agency'),
('CCI_130', 'PURBA BARDHAMAN', 'Asansol Burdwan Seva Kendra, Chetan, Community Care Centre', 'Non-Government Organisation', 1, 'Female', 50, 'Vill Jhinguti, PO Phagupur, Dist Purba Bardhaman', '713102', 'Yes', 'Children Home CWSN'),
('CCI_131', 'PURBA BARDHAMAN', 'CHILDREN HOME FOR GIRLS', 'Government', 2, 'Combined', 10, 'BAMCHANDAIPUR, JOTERAM, PS- SAKTIGARH, PURBA BARDHAMAN, PIN-713104', '0', 'Yes', 'Specialized Adoption Agency'),
('CCI_132', 'PURBA BARDHAMAN', 'CHILDREN HOME FOR GIRLS', 'Government', 1, 'Combined', 10, 'BAMCHANDAIPUR, JOTERAM, PS- SAKTIGARH, PURBA BARDHAMAN, PIN-713104', '0', 'Yes', 'Specialized Adoption Agency'),
('CCI_133', 'PURBA BARDHAMAN', 'CHILDREN HOME FOR GIRLS, PURBA BURDWAN', 'Government', 2, 'Female', 50, 'B L HATI ROAD, WEST OF DHALDIGHI, RADHANAGAR, PO+DIST-PURBA BURDWAN, WB', '0', 'Yes', 'Children Home'),
('CCI_134', 'PURBA BARDHAMAN', 'CHILDREN HOME FOR GIRLS, PURBA BURDWAN', 'Government', 1, 'Female', 50, 'B L HATI ROAD, WEST OF DHALDIGHI, RADHANAGAR, PO+DIST-PURBA BURDWAN, WB', '0', 'Yes', 'Children Home'),
('CCI_135', 'PURBA BARDHAMAN', 'Society for Mental Health Care Anandaniketan', 'Non-Government Organisation', 1, 'Female', 50, 'Vill & PO Khajurdihi, PS Katwa, Dist Purba Bardhaman', '713150', 'Yes', 'Children Home CWSN'),
('CCI_136', 'PURBA BARDHAMAN', 'Society for Mental Health Care Anandaniketan', 'Non-Government Organisation', 3, 'Male', 50, 'Vill & PO Khajurdihi, PS Katwa, Dist Purba Bardhaman', '713150', 'Yes', 'Children Home CWSN'),
('CCI_137', 'PURBA BARDHAMAN', 'Society for Mental Health Care Anandaniketan', 'Non-Government Organisation', 4, 'Male', 50, 'Vill & PO Khajurdihi, PS Katwa, Dist Purba Bardhaman', '713150', 'Yes', 'Children Home CWSN'),
('CCI_138', 'PURBA BARDHAMAN', 'Society for Mental Health Care Anandaniketan', 'Non-Government Organisation', 2, 'Female', 50, 'Vill & PO Khajurdihi, PS Katwa, Dist Purba Bardhaman', '713150', 'Yes', 'Children Home CWSN'),
('CCI_139', 'PURBA MEDINIPUR', 'Antyodoy Anath Ashram - Snehachhaya home', 'Non-Government Organisation', 1, 'Female', 50, 'Vill+PO-Paushi, PS-BHupatinagar, Purba Medinipur, WB', '721444', 'Yes', 'Children Home'),
('CCI_14', 'COOCHBIHAR', 'SAHID BANDANA SMRITI BALIKA ABAS', 'Government', 1, 'Female', 50, 'PO+DIST- COOCH BEHAR', '736101', 'Yes', 'Children Home'),
('CCI_140', 'PURBA MEDINIPUR', 'Bodhodaya Home run by Vivekananda Loksiksha Niketan', 'Non-Government Organisation', 1, 'Male', 50, 'Vill Faridpur, PO Dakshin Dauki, PS Junput Coastal, Dist Purba Medinipur', '721450', 'Yes', 'Children Home CWSN'),
('CCI_141', 'PURBA MEDINIPUR', 'Dakshin Gholepukuria Sonali Sangha O Pathagar', 'Non-Government Organisation', 1, 'Female', 50, 'Vill & PO Gholepukuria, Block Nandigram II, PS Nandigram, Dist Purba Medinipur', '721650', 'Yes', 'Children Home CWSN'),
('CCI_142', 'PURBA MEDINIPUR', 'Nimtouri Tamluk Unnayan Samity (Sishu Greha)', 'Non-Government Organisation', 1, 'Combined', 10, 'Vill. Chalk Srikrishnapur, Po-Kulberia, P.S-Tamluk', '721649', 'Yes', 'Specialized Adoption Agency'),
('CCI_143', 'PURBA MEDINIPUR', 'Snehanir run by Nimtouri Tamluk Unnayan Samity', 'Non-Government Organisation', 1, 'Female', 50, 'Vill Chaksrikrishnapur, PO Kulberia, PS Tamluk, Dist Purba Medinipur', '721649', 'Yes', 'Children Home CWSN'),
('CCI_144', 'PURBA MEDINIPUR', 'Swamiji Observation Home run by Amar Seva Sangha', 'Non-Government Organisation', 1, 'Male', 50, 'Vill & PO Raine, PS Kolaghat, Dist Purba Medinipur', '721130', 'Yes', 'Observation Home'),
('CCI_145', 'PURBA MEDINIPUR', 'Tapoban Sishu Abas run by Kajla Janakalyan Samity', 'Non-Government Organisation', 1, 'Male', 50, 'Vill & PO Sarada, Via Deulbard, PS Contai, Dist Purba Medinipur', '721427', 'Yes', 'Children Home'),
('CCI_146', 'PURBA MEDINIPUR', 'The Sister Nivedita Home for Girls run by Naba Kishore Sangha', 'Non-Government Organisation', 1, 'Female', 50, 'Vill & PO Bargodagodar, PS Nandakumar, Dist Purba Medinipur', '721652', 'Yes', 'Children Home'),
('CCI_147', 'PURBA MEDINIPUR', 'Unmesh UNIT I run by Haldia Samaj Kalyan Parshad', 'Non-Government Organisation', 1, 'Male', 50, 'Vill Basudevpur, PO Khanjanchak, PS Durgachak, Dist Purba Medinipur', '721602', 'Yes', 'Children Home CWSN'),
('CCI_148', 'PURBA MEDINIPUR', 'Unmesh UNIT II run by Haldia Samaj Kalyan Parshad', 'Non-Government Organisation', 2, 'Male', 50, 'Vill Basudevpur, PO Khanjanchak, PS Durgachak, Dist Purba Medinipur', '721602', 'Yes', 'Children Home CWSN'),
('CCI_149', 'PURBA MEDINIPUR', 'Uttaran run by CINI Moyna Rural Health Development Centre', 'Non-Government Organisation', 1, 'Male', 50, 'Vill & PO Paschim Naichanpur, PS Moyna, Dist Purba Medinipur', '721642', 'Yes', 'Children Home'),
('CCI_15', 'COOCHBIHAR', 'SAHID BANDANA SMRITI BALIKA ABAS', 'Government', 2, 'Female', 50, 'PO+DIST- COOCHBEHAR, PIN-736101', '0', 'Yes', 'Children Home'),
('CCI_150', 'PURBA MEDINIPUR', 'Vivekananda Loksiksha Niketan (Sneha Kutir)', 'Non-Government Organisation', 2, '', 10, 'Vill-Faridpur, Po-Dakshin Dauki, Ps-Junput Coastal', '721450', 'Yes', 'Specialized Adoption Agency'),
('CCI_151', 'PURBA MEDINIPUR', 'Vivekananda Loksiksha Niketan (Sneha Kutir)', 'Non-Government Organisation', 1, 'Combined', 10, 'Vill-Faridpur, Po-Dakshin Dauki, Ps-Junput Coastal', '721450', 'Yes', 'Specialized Adoption Agency'),
('CCI_152', 'PURULIA', 'ANANDAMATH (F)', 'Government', 1, 'Combined', 10, 'PO-SIMULIA, DIST-PURULIA, WB', '0', 'Yes', 'Specialized Adoption Agency'),
('CCI_153', 'PURULIA', 'ANANDAMATH HOME (F)', 'Government', 1, 'Female', 50, 'PO- SIMILIA, DIST- PURULIA, WB', '0', 'Yes', 'Children Home'),
('CCI_154', 'PURULIA', 'ANANDAMATH HOME (F)', 'Government', 2, 'Female', 50, 'PO- SIMILIA, DIST- PURULIA', '0', 'Yes', 'Children Home'),
('CCI_155', 'PURULIA', 'Manipur Leprosy Rehabilitation Centre', 'Non-Government Organisation', 1, 'Male', 50, 'Vill Manipur Colony, PO & PS Adra, Dist Purulia', '723121', 'Yes', 'Children Home'),
('CCI_156', 'SOUTH 24 PARGANAS', 'Asha Bhawan Centre', 'Non-Government Organisation', 1, 'Female', 50, 'Vill Keoradanga, PO Betberia, PS Bishnupur, Dist South 24 Parganas', '743503', 'Yes', 'Children Home CWSN'),
('CCI_157', 'SOUTH 24 PARGANAS', 'Digambarpur Angikar', 'Non-Government Organisation', 1, 'Male', 50, 'Vill & PO Digambarpur, Via Kashinagar, Block Pathar Pratima, PS Dholahat, Dist South 24 Parganas', '743349', 'Yes', 'Children Home'),
('CCI_158', 'SOUTH 24 PARGANAS', 'Digambarpur Angikar', 'Non-Government Organisation', 5, 'Female', 50, 'Vill & PO Digambarpur, Via Kashinagar, Block Pathar Pratima, PS Dholahat, Dist South 24 Parganas', '743349', 'Yes', 'Children Home'),
('CCI_159', 'SOUTH 24 PARGANAS', 'Digambarpur Angikar', 'Non-Government Organisation', 2, 'Male', 50, 'Vill & PO Digambarpur, Via Kashinagar, Block Pathar Pratima, PS Dholahat, Dist South 24 Parganas', '743349', 'Yes', 'Children Home CWSN'),
('CCI_16', 'COOCHBIHAR', 'SAHID BANDANA SMRITI BALIKA ABAS', 'Government', 3, 'Female', 50, 'PO+DIST-COOCHBEHAR, PIN-736101', '0', 'Yes', 'Observation Home'),
('CCI_160', 'SOUTH 24 PARGANAS', 'Digambarpur Angikar', 'Non-Government Organisation', 1, 'Combined', 10, 'Vill & PO Digambarpur, Via Kashinagar, Block Pathar Pratima, PS Dholahat, Dist South 24 Parganas', '743349', 'Yes', 'Specialized Adoption Agency'),
('CCI_161', 'SOUTH 24 PARGANAS', 'Digambarpur Angikar', 'Non-Government Organisation', 4, 'Female', 50, 'Vill & PO Digambarpur, Via Kashinagar, Block Pathar Pratima, PS Dholahat, Dist South 24 Parganas', '743349', 'Yes', 'Children Home'),
('CCI_162', 'SOUTH 24 PARGANAS', 'Digambarpur Angikar', 'Non-Government Organisation', 3, 'Female', 50, 'Vill & PO Digambarpur, Via Kashinagar, Block Pathar Pratima, PS Dholahat, Dist South 24 Parganas', '743349', 'Yes', 'Children Home CWSN'),
('CCI_163', 'SOUTH 24 PARGANAS', 'Nava Diganta Home, Indian Society for Sponsorship and Adoption', 'Non-Government Organisation', 1, 'Female', 50, '70, Jugipara Road, Baishali Park, PO Rajpur, PS Sonarpur, Dist South 24 Parganas', '700149', 'Yes', 'Children Home'),
('CCI_164', 'SOUTH 24 PARGANAS', 'New Age Society for All', 'Non-Government Organisation', 1, 'Male', 50, 'Sitakundu Main Road, PO Sitakundu, PS Baruipur, Dist South 24 Parganas', '700144', 'Yes', 'Children Home CWSN'),
('CCI_165', 'SOUTH 24 PARGANAS', 'Noor Ali Memorial Society', 'Non-Government Organisation', 1, 'Male', 50, 'Vill Sodpukur, PO Ramchandra Nagar, PS Dholahat, Block Kakdwip, Dist South 24 Parganas', '743339', 'Yes', 'Children Home'),
('CCI_166', 'SOUTH 24 PARGANAS', 'Sanlaap', 'Non-Government Organisation', 1, 'Female', 50, 'Sneha, 52, Nalini Mitra Road, Vill. Elachi, PO. Narendrapur, PS. Sonarpur', '700103', 'Yes', 'Children Home'),
('CCI_167', 'UTTAR DINAJPUR', 'Bharat Sevashram Sangha', 'Non-Government Organisation', 1, 'Male', 50, 'Vill Kunor, PO & PS Kaliyaganj, Dist South 24 Parganas', '733252', 'Yes', 'Children Home'),
('CCI_168', 'UTTAR DINAJPUR', 'Purba Netaji Pally Rural Development Society', 'Non-Government Organisation', 1, 'Combined', 10, 'Rabindra Sarani, Raiganj', '733134', 'Yes', 'Specialized Adoption Agency'),
('CCI_169', 'UTTAR DINAJPUR', 'St. John Ambulance Association', 'Non-Government Organisation', 2, 'Male', 50, 'Vill & PO Debinagar, PS Raiganj, Dist Uttar Dinajpur', '733123', 'Yes', 'Observation Home'),
('CCI_17', 'DAKSHIN DINAJPUR', 'Nowpara Teor Samaj Kalyan Samity', 'Non-Government Organisation', 1, 'Combined', 10, 'Vill- RainagarNear Hili Hospital,P.O+P.S-Hili', '733126', 'Yes', 'Specialized Adoption Agency'),
('CCI_170', 'UTTAR DINAJPUR', 'St. John Ambulance Association', 'Non-Government Organisation', 1, 'Female', 50, 'Vill & PO Debinagar, PS Raiganj, Dist Uttar Dinajpur', '733123', 'Yes', 'Children Home'),
('CCI_171', 'UTTAR DINAJPUR', 'SURYADAYA CHILDREN HOME FOR DEAF AND DUMB BOYS AND GIRLS', 'Government', 1, 'Male', 50, 'PO-KARANJORA, PIN-733130, DIST- UTTAR DINAJPUR, WB', '0', 'Yes', 'Children Home CWSN'),
('CCI_172', 'UTTAR DINAJPUR', 'SURYADAYA CHILDREN HOME FOR DEAF AND DUMB BOYS AND GIRLS', 'Government', 2, 'Female', 50, 'PO- KARANJORA, DIST-UTTAR DINAJPUR, WB, PIN-733130', '0', 'Yes', 'Children Home CWSN'),
('CCI_18', 'DAKSHIN DINAJPUR', 'SUVAYAN HOME (M)', 'Government', 2, 'Male', 50, 'VILL- HOSSIERPUR, PO- BELTALA PARK, BALURGHAT, DAKSHIN DINAJPUR, WB', '0', 'Yes', 'Children Home'),
('CCI_19', 'DAKSHIN DINAJPUR', 'SUVAYAN HOME (M)', 'Government', 1, 'Male', 50, 'VILL-HOSSIERPUR, PO-BELTALA PARK, BALURGHAT, DIST- DAKSHIN DINAJPUR', '0', 'Yes', 'Children Home'),
('CCI_2', 'ALIPURDUAR', 'Khagrabari Rural Energy Development Association (KREDA)', 'Non-Government Organisation', 1, 'Male', 50, 'Vill-Madhya Kamakhyaguri, P.O. Kamakhaguri, Kumargram, Alipurduar', '706202', 'Yes', 'Children Home CWSN'),
('CCI_20', 'DARJEELING', 'Edith Wilkins Street Children Trust Foundation Home for Girls', 'Non-Government Organisation', 1, 'Female', 50, '8th Jawahar Road, East Holmden, Lower Hermitage', '734101', 'Yes', 'Children Home'),
('CCI_21', 'DARJEELING', 'GOVT. RUN CHILDREN\'S HOME FOR GIRLS', 'Government', 1, 'Female', 50, 'BAIRATISHAL, MATIGARA, SILIGURI, DIST-DARJEELING, WB', '0', 'Yes', 'Children Home'),
('CCI_22', 'DARJEELING', 'SAA at GOVT. RUN CHILDREN\'S HOME FOR GIRLS', 'Government', 1, 'Combined', 10, 'BAIRATISHAL, MATIGARA, SILIGURI, DIST-DARJEELING, WB', '', 'No', 'Specialized Adoption Agency'),
('CCI_23', 'HOOGHLY', 'CHILDREN HOME FOR GIRLS, UTTARPARA', 'Government', 1, 'Female', 50, '7, RAJMOHAN ROAD, UTTARPARA, PIN-712258', '0', 'Yes', 'Children Home'),
('CCI_24', 'HOOGHLY', 'CHILDREN HOME FOR GIRLS, UTTARPARA', 'Government', 2, 'Female', 50, '7, RAJMOHAN ROAD, UTTARPARA, PIN-712258', '0', 'Yes', 'Children Home'),
('CCI_25', 'HOOGHLY', 'CHILDREN HOME FOR GIRLS, UTTARPARA', 'Government', 1, 'Combined', 10, '7, RAJMOHAN ROAD, UTTARPARA, DIST- HOOGHLY, WB, PIN-712258', '0', 'Yes', 'Specialized Adoption Agency'),
('CCI_26', 'HOOGHLY', 'CHILDREN HOME FOR GIRLS, UTTARPARA', 'Government', 3, 'Female', 50, '7, RAJMOHAN ROAD, UTTARPARA, PIN-712258', '0', 'Yes', 'Children Home'),
('CCI_27', 'HOOGHLY', 'Gopalnagar Nivedita Welfare Society ', 'Non-Government Organisation', 1, 'Male', 50, 'Vill-Gopalnagar, PO Harharia (Singur),', '712409', 'Yes', 'Children Home'),
('CCI_28', 'HOOGHLY', 'Jana Siksha Prochar Kendra', 'Non-Government Organisation', 1, 'Female', 50, 'Vill & PO Baganda, PS Jangipara, Hooghly', '0', 'Yes', 'Children Home'),
('CCI_29', 'HOOGHLY', 'Kalyan Bharati Observation Home for Boys', 'Non-Government Organisation', 1, 'Male', 25, 'Kamarkundu', '712407', 'Yes', 'Observation Home'),
('CCI_3', 'ALIPURDUAR', 'Khagrabari Rural Energy Development Association (KREDA)', 'Non-Government Organisation', 2, 'Female', 50, 'Vill-Madhya Kamakhyaguri, P.O. Kamakhaguri, Kumargram, Alipurduar', '706202', 'Yes', 'Children Home CWSN'),
('CCI_30', 'HOOGHLY', 'Khanyan Dr. B.R. Ambedkar Seba Samity', 'Non-Government Organisation', 1, 'Male', 50, 'Vill & PO Mogra, PS Mogra, Block Chinsura Mogra, Hooghly', '712148', 'Yes', 'Children Home CWSN'),
('CCI_31', 'HOOGHLY', 'Prabartak Seva Niketan', 'Non-Government Organisation', 1, 'Female', 50, 'Sarkarpara Lane, Boraichanditala, PO & PS Chandannagar, Hooghly', '712136', 'Yes', 'Children Home'),
('CCI_32', 'HOOGHLY', 'Satya Bharti', 'Non-Government Organisation', 1, 'Combined', 10, '28 Vidyasagar Road,PO-Nabagram, Kornagar', '712246', 'Yes', 'Specialized Adoption Agency'),
('CCI_33', 'HOWRAH', 'Asha Bhavan Centre', 'Non-Government Organisation', 3, 'Female', 50, 'Vill Kathila, PO Banitabla, PS Uluberia, Howrah', '711316', 'Yes', 'Children Home CWSN'),
('CCI_34', 'HOWRAH', 'Asha Bhavan Centre', 'Non-Government Organisation', 2, 'Female', 50, 'Vill Kathila, PO Banitabla, PS Uluberia, Howrah', '711316', 'Yes', 'Children Home CWSN'),
('CCI_35', 'HOWRAH', 'Asha Bhavan Centre', 'Non-Government Organisation', 1, 'Female', 50, 'Vill Kathila, PO Banitabla, PS Uluberia, Howrah', '711316', 'Yes', 'Children Home CWSN'),
('CCI_36', 'HOWRAH', 'Chiranabin', 'Non-Government Organisation', 4, 'Female', 50, 'Vill Parbakshi, PO Bakshi, PS Joypur, Howrah', '711303', 'Yes', 'Children Home CWSN'),
('CCI_37', 'HOWRAH', 'Chiranabin', 'Non-Government Organisation', 3, 'Female', 50, 'Vill Parbakshi, PO Bakshi, PS Joypur, Howrah', '711303', 'Yes', 'Children Home CWSN'),
('CCI_38', 'HOWRAH', 'Chiranabin', 'Non-Government Organisation', 1, 'Male', 50, 'Vill Parbakshi, PO Bakshi, PS Joypur, Howrah', '711303', 'Yes', 'Observation Home'),
('CCI_39', 'HOWRAH', 'Chiranabin', 'Non-Government Organisation', 2, 'Female', 50, 'Vill Parbakshi, PO Bakshi, PS Joypur, Howrah', '711303', 'Yes', 'Children Home CWSN'),
('CCI_4', 'BANKURA', 'Chamtagara Adibasi Mahila Samity', 'Non-Government Organisation', 1, 'Combined', 10, 'Vill– Chamtagara, PO-  Chamtagara, PS – Chhatna', '722137', 'Yes', 'Specialized Adoption Agency'),
('CCI_40', 'HOWRAH', 'Itinda Community Development Society', 'Non-Government Organisation', 2, 'Male', 50, 'Vill Bhooyarah, PO Mugkalyan, Howrah ', '711312', 'Yes', 'Children Home'),
('CCI_41', 'HOWRAH', 'Itinda Community Development Society', 'Non-Government Organisation', 1, 'Male', 50, 'Vill Bhooyarah, PO Mugkalyan, Howrah ', '711312', 'Yes', 'Children Home'),
('CCI_42', 'HOWRAH', 'Keuti Purba Dharani Biplabi Sangha', 'Non-Government Organisation', 1, 'Combined', 10, '43, Sailendra (nath) Bose Road, P.S. Golabari,  Dist-Howrah', '711106', 'Yes', 'Specialized Adoption Agency'),
('CCI_43', 'HOWRAH', 'SUNDARIBAI MULCHAND MAHATTA HOME (SMM HOME)', 'Government', 2, 'Female', 50, '8, STARK ROAD, LILUAH, PO- HOWRAH, PIN- 711101, DIST- HOWRAH, WB', '0', 'Yes', 'Children Home'),
('CCI_44', 'HOWRAH', 'SUNDARIBAI MULCHAND MAHATTA HOME (SMM HOME)', 'Government', 5, 'Female', 50, '8, STARK ROAD, LILUAH PO+DIST- HOWRAH, PIN- 711101', '0', 'Yes', 'Children Home'),
('CCI_45', 'HOWRAH', 'SUNDARIBAI MULCHAND MAHATTA HOME (SMM HOME)', 'Government', 7, 'Female', 50, '8, STARK ROAD,  LILUAH PO+DIST- HOWRAH, PIN-711101', '0', 'Yes', 'Observation Home'),
('CCI_46', 'HOWRAH', 'SUNDARIBAI MULCHAND MAHATTA HOME (SMM HOME)', 'Government', 1, 'Female', 50, '8, STARK ROAD, LILUAH, PO- HOWRAH, PIN-711101, DIST- HOWRAH, WB', '0', 'Yes', 'Children Home'),
('CCI_47', 'HOWRAH', 'SUNDARIBAI MULCHAND MAHATTA HOME (SMM HOME)', 'Government', 3, 'Female', 50, '8, STARK ROAD, LILUAH, PO- HOWRAH, DIST- HOWRAH, PIN- 711101', '0', 'Yes', 'Children Home'),
('CCI_48', 'HOWRAH', 'SUNDARIBAI MULCHAND MAHATTA HOME (SMM HOME)', 'Government', 6, 'Female', 50, '8, STARK ROAD, LILUAH, PO+DIST- HOWRAH, PIN-711101', '0', 'Yes', 'Children Home'),
('CCI_49', 'HOWRAH', 'SUNDARIBAI MULCHAND MAHATTA HOME (SMM HOME)', 'Government', 2, 'Combined', 10, '8, STARK ROAD, LILUAH, PO+DIST- HOWRAH, PIN-711101', '0', 'Yes', 'Specialized Adoption Agency'),
('CCI_5', 'BANKURA', 'SUMANGALAM HOME FOR BOYS', 'Government', 1, 'Male', 50, 'KHARIKASULI, PO- MORAR, DIST- BANKURA', '0', 'Yes', 'Children Home'),
('CCI_50', 'HOWRAH', 'SUNDARIBAI MULCHAND MAHATTA HOME (SMM HOME)', 'Government', 1, 'Combined', 10, '8, STARK ROAD , LILUAH, PO+DIST- HOWRAH, PIN-711101', '0', 'Yes', 'Specialized Adoption Agency'),
('CCI_51', 'HOWRAH', 'SUNDARIBAI MULCHAND MAHATTA HOME (SMM HOME)', 'Government', 4, 'Female', 50, '8, STARK ROAD, LILUAH, PO+DIST- HOWRAH, PIN-711101', '0', 'Yes', 'Children Home'),
('CCI_52', 'JALPAIGURI', 'Anubhab run by Jalpaiguri Mahila Kalyan Sangha', 'Non-Government Organisation', 1, 'Female', 50, 'New Town Bose Para, PO & Dist Jalpaiguri', '735101', 'Yes', 'Children Home'),
('CCI_53', 'JALPAIGURI', 'KORAK CHILDREN HOME FOR BOYS', 'Government', 1, 'Male', 50, 'RACE COURSE, DIST- JALPAIGURI, WB', '0', 'Yes', 'Children Home'),
('CCI_54', 'JALPAIGURI', 'KORAK CHILDREN HOME FOR BOYS', 'Government', 2, 'Male', 50, 'RACE COURSE, DIST-JALPAIGURI, WB', '0', 'Yes', 'Observation Home'),
('CCI_55', 'JALPAIGURI', 'KOROK CHILDREN HOME FOR BOYS', 'Government', 1, 'Combined', 10, '', '0', 'Yes', 'Specialized Adoption Agency'),
('CCI_56', 'JALPAIGURI', 'Nijoloy Children Home for Girls (Womens Interlink Foundation)', 'Non-Government Organisation', 1, 'Female', 50, 'Pandapara Battola, PO Pandapara Kalibari, Jalpaiguri', '735132', 'Yes', 'Children Home'),
('CCI_57', 'JHARGRAM', 'Nivedita Gramin Karma Mandir', 'Non-Government Organisation', 1, 'Combined', 10, 'PO-Manikpara, Dist-Jhargram', '721513', 'Yes', 'Specialized Adoption Agency'),
('CCI_58', 'KALIMPONG', 'Hope Family Trust', 'Non-Government Organisation', 1, 'Combined', 10, 'Primtam Road, Kalimpong', '', 'No', 'Specialized Adoption Agency'),
('CCI_59', 'KOLKATA', 'All Bengal Womens Union ', 'Non-Government Organisation', 1, 'Female', 50, '89, Elliot Road, Kolkata', '700017', 'Yes', 'Children Home'),
('CCI_6', 'BANKURA', 'SUMANGALAM HOME FOR BOYS', 'Government', 2, 'Male', 50, 'KHARIKASULI, PO- MORAR, DIST- BANKURA, WB', '0', 'Yes', 'Children Home'),
('CCI_60', 'KOLKATA', 'All Bengal Womens Union ', 'Non-Government Organisation', 2, 'Female', 50, '89, Elliot Road, Kolkata', '700017', 'Yes', 'Children Home'),
('CCI_61', 'KOLKATA', 'Amader Bari Child In Need Institute (CINI)', 'Non-Government Organisation', 1, 'Female', 50, '63, Rafi Ahmed Kidwai Road, Kolkata', '700016', 'Yes', 'Children Home'),
('CCI_62', 'KOLKATA', 'Children Home for Boys UNIT I run by Future Hope', 'Non-Government Organisation', 1, 'Male', 25, '1/8 Rowland Road', '700020', 'Yes', 'Children Home'),
('CCI_63', 'KOLKATA', 'Children Home for Boys UNIT II run by Future Hope', 'Non-Government Organisation', 1, 'Male', 25, '200/2D Rashbehari Avenue', '700029', 'Yes', 'Children Home'),
('CCI_64', 'KOLKATA', 'Children Home for Boys UNIT III run by Future Hope', 'Non-Government Organisation', 1, 'Male', 25, '6, Bompass Road', '700029', 'Yes', 'Children Home'),
('CCI_65', 'KOLKATA', 'Children Home for Girls run by Future Hope', 'Non-Government Organisation', 1, 'Female', 50, '32 A and B Old, Ballygunge 2nd Lane', '700019', 'Yes', 'Children Home'),
('CCI_66', 'KOLKATA', 'Hamara Ghar Child In Need Institute (CINI)', 'Non-Government Organisation', 1, 'Male', 50, '37, Pottery Road, Tangra, Kolkata', '700015', 'Yes', 'Children Home'),
('CCI_67', 'KOLKATA', 'Indian Society for Rehabilitations of Children', 'Non-Government Organisation', 2, 'Combined', 10, '9B, lake View Road', '700029', 'Yes', 'Specialized Adoption Agency'),
('CCI_68', 'KOLKATA', 'Indian Society for Rehabilitations of Children', 'Non-Government Organisation', 1, 'Combined', 10, '9B, lake View Road', '700029', 'Yes', 'Specialized Adoption Agency'),
('CCI_69', 'KOLKATA', 'Society for Indian Childrens Welfare', 'Non-Government Organisation', 3, 'Combined', 10, '20 & 22 Col. Biswas Road, Beckbagan', '700019', 'Yes', 'Specialized Adoption Agency'),
('CCI_7', 'BIRBHUM', 'NAVEENA HOME FOR GIRLS run by ELMHIRST INSTITUTE OF COMMUNITY STUDIES', 'Non-Government Organisation', 1, 'Female', 50, 'Andrew Palli Santiniketan', '731235', 'Yes', 'Children Home'),
('CCI_70', 'KOLKATA', 'Society for Indian Childrens Welfare', 'Non-Government Organisation', 2, 'Combined', 10, '20 & 22 Col. Biswas Road, Beckbagan', '700019', 'Yes', 'Specialized Adoption Agency'),
('CCI_71', 'KOLKATA', 'Society for Indian Childrens Welfare', 'Non-Government Organisation', 1, 'Combined', 10, '20 & 22 Col. Biswas Road, Beckbagan', '700019', 'Yes', 'Specialized Adoption Agency'),
('CCI_72', 'KOLKATA', 'The Indian Society for Sponsorship and Adoption', 'Non-Government Organisation', 2, 'Combined', 10, '1, Palace Court, 1, Kyd Street, Kolkata- 700016  Home: P-41, Sector -A Metropolitan Co- operative Society', '700105', 'Yes', 'Specialized Adoption Agency'),
('CCI_73', 'KOLKATA', 'The Indian Society for Sponsorship and Adoption', 'Non-Government Organisation', 1, 'Combined', 10, '1, Palace Court, 1, Kyd Street, Kolkata- 700016  Home: P-41, Sector -A Metropolitan Co- operative Society', '700105', 'Yes', 'Specialized Adoption Agency'),
('CCI_74', 'KOLKATA', 'The Indian Society for Sponsorship and Adoption', 'Non-Government Organisation', 4, 'Combined', 10, '1, Palace Court, 1, Kyd Street, Kolkata- 700016  Home: P-41, Sector -A Metropolitan Co- operative Society', '700105', 'Yes', 'Specialized Adoption Agency'),
('CCI_75', 'KOLKATA', 'The Indian Society for Sponsorship and Adoption', 'Non-Government Organisation', 3, 'Combined', 10, '1, Palace Court, 1, Kyd Street, Kolkata- 700016  Home: P-41, Sector -A Metropolitan Co- operative Society', '700105', 'Yes', 'Specialized Adoption Agency'),
('CCI_76', 'MALDAH', 'CHILDREN HOME FOR GIRLS, MALDA (SHAISHALI SISHU KANYA ABAS)', 'Government', 2, 'Female', 50, 'SARBOMANGALA ROAD, PO+DIST-MALDA, WB', '0', 'Yes', 'Children Home'),
('CCI_77', 'MALDAH', 'CHILDREN HOME FOR GIRLS, MALDA (SHAISHALI SISHU KANYA ABAS)', 'Government', 1, 'Female', 50, 'SARBOMANGALA ROAD, PO+DIST- MALDA, WB', '0', 'Yes', 'Children Home'),
('CCI_78', 'MALDAH', 'Sunitee Sishu Griha run by Haiderpur Shelter of Malda', 'Non-Government Organisation', 1, 'Combined', 10, 'Maheshmati (West) Behind Bikram Club', '732101', 'Yes', 'Specialized Adoption Agency'),
('CCI_79', 'MURSHIDABAD', 'ANANDA ASHRAM HOME (M)', 'Government', 1, 'Male', 50, 'K.N.ROAD, PO- BERHAMPORE, DIST- MURSHIDABAD, WB', '0', 'Yes', 'Observation Home'),
('CCI_8', 'BIRBHUM', 'RAMPURHAT SPASTICS AND HANDICAPPED SOCIETY (CWSN BOYS)', 'Non-Government Organisation', 1, 'Male', 50, 'Chandmari Uttar Pally, Ward No.13, PO+PS-Rampurhat', '731224', 'Yes', 'Children Home CWSN'),
('CCI_80', 'MURSHIDABAD', 'ANANDA ASHRAM HOME (M)', 'Government', 2, 'Male', 50, 'K.N.ROAD, PO- BERHAMPORE, DIST- MURSHIDABAD', '0', 'Yes', 'Observation Home'),
('CCI_81', 'MURSHIDABAD', 'Beldanga Bhagirathi Seva Sadan', 'Non-Government Organisation', 1, 'Combined', 10, 'Maheshmati (West) Behind Bikram Club', '732101', 'Yes', 'Specialized Adoption Agency'),
('CCI_82', 'MURSHIDABAD', 'Domkal Vikas Kendra', 'Non-Government Organisation', 1, 'Combined', 10, 'Vill-+PO-Domkal, PS-Domkal', '742302', 'Yes', 'Specialized Adoption Agency'),
('CCI_83', 'MURSHIDABAD', 'Haripur Dr. Ambedkar Janaseba Mission', 'Non-Government Organisation', 1, 'Female', 50, 'Vill & PO Nagar, PS Khargram, Murshidabad', '742159', 'Yes', 'Children Home CWSN'),
('CCI_84', 'MURSHIDABAD', 'KAZI NAZRUL ISLAM CHILDRENS HOME (DESTITUTE HOME)', 'Government', 2, 'Male', 50, 'KADAI(M). KADAI, PO- BERHAMPORE, DIST- MURSHIDABAD', '0', 'Yes', 'Children Home'),
('CCI_85', 'MURSHIDABAD', 'KAZI NAZRUL ISLAM CHILDRENS HOME(DESTITUTE HOME)', 'Government', 1, 'Male', 50, 'KADAI (M), KADAI, PO- BERHAMPORE, DIST- MURSHIDABAD, WB', '0', 'Yes', 'Children Home'),
('CCI_86', 'MURSHIDABAD', 'SHILAYAN HOME FOR GIRLS', 'Government', 4, 'Female', 50, 'BABULBONA ROAD, BISHNUPUR, PO- BERHAMPORE, DIST- MURSHIDABAD, PIN-742101', '0', 'Yes', 'Children Home'),
('CCI_87', 'MURSHIDABAD', 'SHILAYAN HOME FOR GIRLS', 'Government', 1, 'Female', 50, 'BABULBONA ROAD, BISHNUPUR, PO- BERHAMPORE, PIN-742101, DIST- MURSHIDABAD', '0', 'Yes', 'Children Home'),
('CCI_88', 'MURSHIDABAD', 'SHILAYAN HOME FOR GIRLS', 'Government', 6, 'Female', 50, 'BABULBONA ROAD, BISHNUPUR, PO- BERHAMPORE, DIST- MURSHIDABAD', '0', 'Yes', 'Children Home'),
('CCI_89', 'MURSHIDABAD', 'SHILAYAN HOME FOR GIRLS', 'Government', 2, 'Female', 50, 'BABULBONA ROAD, BISHNUPUR, PO- BERHAMPORE, DIST- MURSHIDABAD, PIN-742101', '0', 'Yes', 'Children Home'),
('CCI_9', 'BIRBHUM', 'Suri Center for Child Welfare', 'Non-Government Organisation', 1, 'Combined', 10, 'Sova Bazar,Rabindra pally,P.O-Suiri', '731101', 'Yes', 'Specialized Adoption Agency'),
('CCI_90', 'MURSHIDABAD', 'SHILAYAN HOME FOR GIRLS', 'Government', 3, 'Female', 50, 'BABULBONA ROAD, BISHNUPUR, PO- BERHAMPORE, DIST- MURSHIDABAD, PIN-742101', '0', 'Yes', 'Children Home'),
('CCI_91', 'MURSHIDABAD', 'SHILAYAN HOME FOR GIRLS', 'Government', 5, 'Female', 50, 'BABULBONA ROAD, BISHNUPUR, PO- BERHAMPORE, DIST- MURSHIDABAD', '', 'Yes', 'Observation Home'),
('CCI_92', 'MURSHIDABAD', 'SHILAYAN HOME FOR GIRLS', 'Government', 1, 'Combined', 10, 'BABULBONA ROAD, BISHNUPUR, PO- BERHAMPORE, PIN-742101, DIST- MURSHIDABAD', '0', 'Yes', 'Specialized Adoption Agency'),
('CCI_93', 'NADIA', 'CHILDREN HOME FOR GIRLS, NADIA', 'Government', 1, 'Female', 50, 'NAGENDRANAGAR, 3RD LANE, PO- KRISHNANAGAR, DIST- NADIA, WB', '0', 'Yes', 'Children Home'),
('CCI_94', 'NADIA', 'Karimpur Social Welfare Society', 'Non-Government Organisation', 1, 'Male', 50, 'Pattabuka More, PO Natna Pattabuka, PS Karimpur, Nadia', '741122', 'Yes', 'Children Home'),
('CCI_95', 'NADIA', 'Karimpur Social Welfare Society', 'Non-Government Organisation', 2, 'Male', 50, 'Pattabuka More, PO Natna Pattabuka, PS Karimpur, Nadia', '741122', 'Yes', 'Observation Home'),
('CCI_96', 'NADIA', 'Nakashipara Nirmal Hriday Samity', 'Non-Government Organisation', 1, 'Male', 50, 'Vill Galaidaripara, PO Badbillwagram, PS Nakashipara, Nadia', '741126', 'Yes', 'Children Home CWSN'),
('CCI_97', 'NADIA', 'Ranaghat Lions Trust', 'Non-Government Organisation', 1, 'Combined', 10, 'Biswaspara, PO-Ranaghat', '741201', 'Yes', 'Specialized Adoption Agency'),
('CCI_98', 'NORTH 24 PARGANAS', 'Bodhana Home', 'Non-Government Organisation', 2, 'Male', 50, 'Chakpachuria, PO Chakpachuria, PS Technocity, North 24 Parganas', '700160', 'Yes', 'Children Home CWSN'),
('CCI_99', 'NORTH 24 PARGANAS', 'Bodhana Home', 'Non-Government Organisation', 1, 'Male', 50, 'Chakpachuria, PO Chakpachuria, PS Technocity, North 24 Parganas', '700160', 'Yes', 'Children Home CWSN');

-- --------------------------------------------------------

--
-- Table structure for table `fund_release`
--

CREATE TABLE `fund_release` (
  `id` int(11) NOT NULL,
  `cci_id` varchar(255) NOT NULL,
  `fy_id` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fy_quater`
--

CREATE TABLE `fy_quater` (
  `fy_id` varchar(10) NOT NULL,
  `fy` varchar(7) NOT NULL,
  `quater` varchar(255) NOT NULL,
  `locked` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `fy_quater`
--

INSERT INTO `fy_quater` (`fy_id`, `fy`, `quater`, `locked`) VALUES
('2324Q4', '2023-24', 'January 2024 - March 2024', 0);

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` int(11) NOT NULL,
  `user_type` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `user_type`, `password`) VALUES
(1, 'AO SCPS', '12345'),
(2, 'Treasurer SCPS', '12345'),
(3, 'DCRT', '12345');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cci`
--
ALTER TABLE `cci`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fund_release`
--
ALTER TABLE `fund_release`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fy_quater`
--
ALTER TABLE `fy_quater`
  ADD PRIMARY KEY (`fy_id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `fund_release`
--
ALTER TABLE `fund_release`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
