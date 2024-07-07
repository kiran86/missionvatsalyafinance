-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jul 07, 2024 at 07:03 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

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
  `cci_name` varchar(255) DEFAULT NULL,
  `cci_run_by` varchar(27) DEFAULT NULL,
  `cci_unit_no` int(1) DEFAULT NULL,
  `cci_gender` varchar(8) DEFAULT NULL,
  `strength` int(2) DEFAULT NULL,
  `cci_addr` varchar(255) DEFAULT NULL,
  `cci_pin` varchar(6) DEFAULT NULL,
  `category` varchar(27) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `cci`
--

INSERT INTO `cci` (`id`, `district`, `cci_name`, `cci_run_by`, `cci_unit_no`, `cci_gender`, `strength`, `cci_addr`, `cci_pin`, `category`) VALUES
('CCI_001', 'ALIPURDUAR', 'ALIPURDUAR GOVT RUN SPECIALIZED ADOPTION AGENCY', 'Government', 1, 'Combined', 10, 'SUFAL BANGLA BUILDING 1ST FLOOR, NEAR SUB DIVISIONAL OFFICER\'S OFFICE, ALIPURDUAR MUNICIPALITY, PO- ALIPURDUAR COURT, PIN- 736122', '0', 'Specialized Adoption Agency'),
('CCI_002', 'ALIPURDUAR', 'Khagrabari Rural Energy Development Association (KREDA)', 'Non-Government Organisation', 1, 'Male', 50, 'Vill-Madhya Kamakhyaguri, P.O. Kamakhaguri, Kumargram, Alipurduar', '706202', 'Children Home CWSN'),
('CCI_003', 'ALIPURDUAR', 'Khagrabari Rural Energy Development Association (KREDA)', 'Non-Government Organisation', 2, 'Female', 50, 'Vill-Madhya Kamakhyaguri, P.O. Kamakhaguri, Kumargram, Alipurduar', '706202', 'Children Home CWSN'),
('CCI_004', 'BANKURA', 'Chamtagara Adibasi Mahila Samity', 'Non-Government Organisation', 1, 'Combined', 10, 'Vill- Chamtagara, PO-  Chamtagara, PS - Chhatna', '722137', 'Specialized Adoption Agency'),
('CCI_005', 'BANKURA', 'SUMANGALAM HOME FOR BOYS', 'Government', 1, 'Male', 50, 'KHARIKASULI, PO- MORAR, DIST- BANKURA', '0', 'Children Home'),
('CCI_006', 'BANKURA', 'SUMANGALAM HOME FOR BOYS', 'Government', 2, 'Male', 50, 'KHARIKASULI, PO- MORAR, DIST- BANKURA, WB', '0', 'Children Home'),
('CCI_007', 'BIRBHUM', 'NAVEENA HOME FOR GIRLS run by ELMHIRST INSTITUTE OF COMMUNITY STUDIES', 'Non-Government Organisation', 1, 'Female', 50, 'Andrew Palli Santiniketan', '731235', 'Children Home'),
('CCI_008', 'BIRBHUM', 'RAMPURHAT SPASTICS AND HANDICAPPED SOCIETY (CWSN BOYS)', 'Non-Government Organisation', 1, 'Male', 50, 'Chandmari Uttar Pally, Ward No.13, PO+PS-Rampurhat', '731224', 'Children Home CWSN'),
('CCI_009', 'BIRBHUM', 'Suri Center for Child Welfare', 'Non-Government Organisation', 1, 'Combined', 10, 'Sova Bazar,Rabindra pally,P.O-Suiri', '731101', 'Specialized Adoption Agency'),
('CCI_010', 'COOCHBIHAR', 'CHILDREN HOME FOR BLIND BOYS', 'Government', 1, 'Male', 50, 'PO+DIST- COOHBEHAR,PIN-736101', '', 'Children Home CWSN'),
('CCI_011', 'COOCHBIHAR', 'CHILDREN HOME FOR BLIND BOYS', 'Government', 2, 'Male', 50, 'PO+DIST- COOCHBEHAR, PIN 736101, WB-736101', '', 'Children Home CWSN'),
('CCI_012', 'COOCHBIHAR', 'New Bharti Club', 'Non-Government Organisation', 1, 'Combined', 10, 'Vill+PO-Baneswar,P.S. Kotwali', '736133', 'Specialized Adoption Agency'),
('CCI_013', 'COOCHBIHAR', 'SAHID BANDANA SMRITI BALIKA ABAS', 'Government', 1, 'Combined', 10, 'PO+DIST- COOCH BEHAR, PIN -736101, WB', '0', 'Specialized Adoption Agency'),
('CCI_014', 'COOCHBIHAR', 'SAHID BANDANA SMRITI BALIKA ABAS', 'Government', 1, 'Female', 50, 'PO+DIST- COOCH BEHAR', '736101', 'Children Home'),
('CCI_015', 'COOCHBIHAR', 'SAHID BANDANA SMRITI BALIKA ABAS', 'Government', 2, 'Female', 50, 'PO+DIST- COOCHBEHAR, PIN-736101', '0', 'Children Home'),
('CCI_016', 'COOCHBIHAR', 'SAHID BANDANA SMRITI BALIKA ABAS', 'Government', 3, 'Female', 50, 'PO+DIST-COOCHBEHAR, PIN-736101', '0', 'Observation Home'),
('CCI_017', 'DAKSHIN DINAJPUR', 'Nowpara Teor Samaj Kalyan Samity', 'Non-Government Organisation', 1, 'Combined', 10, 'Vill- RainagarNear Hili Hospital,P.O+P.S-Hili', '733126', 'Specialized Adoption Agency'),
('CCI_018', 'DAKSHIN DINAJPUR', 'SUVAYAN HOME (M)', 'Government', 1, 'Male', 50, 'VILL-HOSSIERPUR, PO-BELTALA PARK, BALURGHAT, DIST- DAKSHIN DINAJPUR', '0', 'Children Home'),
('CCI_019', 'DAKSHIN DINAJPUR', 'SUVAYAN HOME (M)', 'Government', 2, 'Male', 50, 'VILL- HOSSIERPUR, PO- BELTALA PARK, BALURGHAT, DAKSHIN DINAJPUR, WB', '0', 'Children Home'),
('CCI_023', 'DARJEELING', 'Child in Need Institution (Open Shelter for girls)', 'Non-Government Organisation', 1, 'Female', 25, 'Meghnad Sarani, Hakim Para, Po+Ps-Siliguri, 734001', '734001', 'Open Shelter'),
('CCI_025', 'DARJEELING', 'Edith Wilkins Street Children Trust Foundation Home for Girls', 'Non-Government Organisation', 1, 'Female', 50, '8th Jawahar Road, East Holmden, Lower Hermitage', '734101', 'Children Home'),
('CCI_029', 'DARJEELING', 'GOVT. RUN CHILDREN\'S HOME FOR GIRLS', 'Government', 1, 'Female', 50, 'BAIRATISHAL, MATIGARA, SILIGURI, DIST-DARJEELING, WB', '0', 'Children Home'),
('CCI_039', 'HOOGHLY', 'CHILDREN HOME FOR GIRLS, UTTARPARA', 'Government', 1, 'Female', 50, '7, RAJMOHAN ROAD, UTTARPARA, PIN-712258', '0', 'Children Home'),
('CCI_040', 'HOOGHLY', 'CHILDREN HOME FOR GIRLS, UTTARPARA', 'Government', 1, 'Combined', 10, '7, RAJMOHAN ROAD, UTTARPARA, DIST- HOOGHLY, WB, PIN-712258', '0', 'Specialized Adoption Agency'),
('CCI_041', 'HOOGHLY', 'CHILDREN HOME FOR GIRLS, UTTARPARA', 'Government', 2, 'Female', 50, '7, RAJMOHAN ROAD, UTTARPARA, PIN-712258', '0', 'Children Home'),
('CCI_042', 'HOOGHLY', 'CHILDREN HOME FOR GIRLS, UTTARPARA', 'Government', 3, 'Female', 50, '7, RAJMOHAN ROAD, UTTARPARA, PIN-712258', '0', 'Children Home'),
('CCI_043', 'HOOGHLY', 'Gopalnagar Nivedita Welfare Society ', 'Non-Government Organisation', 1, 'Male', 50, 'Vill-Gopalnagar, PO Harharia (Singur),', '712409', 'Children Home'),
('CCI_044', 'HOOGHLY', 'Jana Siksha Prochar Kendra', 'Non-Government Organisation', 1, 'Female', 50, 'Vill & PO Baganda, PS Jangipara, Hooghly', '0', 'Children Home'),
('CCI_045', 'HOOGHLY', 'Kalyan Bharati Observation Home for Boys', 'Non-Government Organisation', 1, 'Male', 25, 'Kamarkundu', '712407', 'Observation Home'),
('CCI_047', 'HOOGHLY', 'Khanyan Dr. B.R. Ambedkar Seba Samity', 'Non-Government Organisation', 1, 'Male', 50, 'Vill & PO Mogra, PS Mogra, Block Chinsura Mogra, Hooghly', '712148', 'Children Home CWSN'),
('CCI_049', 'HOOGHLY', 'Prabartak Seva Niketan', 'Non-Government Organisation', 1, 'Female', 50, 'Sarkarpara Lane, Boraichanditala, PO & PS Chandannagar, Hooghly', '712136', 'Children Home'),
('CCI_050', 'HOOGHLY', 'Satya Bharti', 'Non-Government Organisation', 1, 'Combined', 10, '28 Vidyasagar Road,PO-Nabagram, Kornagar', '712246', 'Specialized Adoption Agency'),
('CCI_051', 'HOOGHLY', 'Taraknath Social Welfare', 'Non-Government Organisation', 1, 'Male', 25, 'Tarakeswar ,jyotashmbul Po-Tarakeswar, Hooghly PIN-712410', '712410', 'Open Shelter'),
('CCI_052', 'HOWRAH', 'Akshay Nagar Pallisiri Sangha, Girls (Open Shelter)', 'Non-Government Organisation', 1, 'Female', 25, 'Vill-Sahebbagan, PO-Samabay Palli, Nischinda, Howrah, Pin-711205', '711205', 'Open Shelter'),
('CCI_053', 'HOWRAH', 'Asha Bhavan Centre', 'Non-Government Organisation', 1, 'Female', 25, 'Uluberia Kathila PO Banitabala, PS Uluberia, Howrah', '', 'Open Shelter'),
('CCI_054', 'HOWRAH', 'Asha Bhavan Centre', 'Non-Government Organisation', 1, 'Female', 50, 'Vill Kathila, PO Banitabla, PS Uluberia, Howrah', '711316', 'Children Home CWSN'),
('CCI_055', 'HOWRAH', 'Asha Bhavan Centre', 'Non-Government Organisation', 2, 'Female', 50, 'Vill Kathila, PO Banitabla, PS Uluberia, Howrah', '711316', 'Children Home CWSN'),
('CCI_056', 'HOWRAH', 'Asha Bhavan Centre', 'Non-Government Organisation', 3, 'Female', 50, 'Vill Kathila, PO Banitabla, PS Uluberia, Howrah', '711316', 'Children Home CWSN'),
('CCI_057', 'HOWRAH', 'Chiranabin', 'Non-Government Organisation', 1, 'Male', 50, 'Vill Parbakshi, PO Bakshi, PS Joypur, Howrah', '711303', 'Observation Home'),
('CCI_058', 'HOWRAH', 'Chiranabin', 'Non-Government Organisation', 2, 'Female', 50, 'Vill Parbakshi, PO Bakshi, PS Joypur, Howrah', '711303', 'Children Home CWSN'),
('CCI_059', 'HOWRAH', 'Chiranabin', 'Non-Government Organisation', 3, 'Female', 50, 'Vill Parbakshi, PO Bakshi, PS Joypur, Howrah', '711303', 'Children Home CWSN'),
('CCI_060', 'HOWRAH', 'Chiranabin', 'Non-Government Organisation', 4, 'Female', 50, 'Vill Parbakshi, PO Bakshi, PS Joypur, Howrah', '711303', 'Children Home CWSN'),
('CCI_061', 'HOWRAH', 'Hijli Kalyan Kendra, Boys (Open Shelter)', 'Non-Government Organisation', 1, 'Male', 25, 'Kaminipara, Thana Makua, Panchanantala, Bakultala, P.O.-Danesh Sk. Lane, PS-Sankrail, Howrah-711109', '711109', 'Open Shelter'),
('CCI_062', 'HOWRAH', 'Howrah Central Supravat, Boys (Open Shelter)', 'Non-Government Organisation', 1, 'Male', 25, 'Ghanshyam Apartment, Gt. Floor, Chunavati, P.O.-Podra, Sankrail, Howrah-711109', '711109', 'Open Shelter'),
('CCI_064', 'HOWRAH', 'Itinda Community Development Society', 'Non-Government Organisation', 1, 'Male', 50, 'Vill Bhooyarah, PO Mugkalyan, Howrah ', '711312', 'Children Home'),
('CCI_065', 'HOWRAH', 'Itinda Community Development Society', 'Non-Government Organisation', 2, 'Male', 50, 'Vill Bhooyarah, PO Mugkalyan, Howrah ', '711312', 'Children Home'),
('CCI_066', 'HOWRAH', 'Keuti Purba Dharani Biplabi Sangha', 'Non-Government Organisation', 1, 'Combined', 10, '43, Sailendra (nath) Bose Road, P.S. Golabari,  Dist-Howrah', '711106', 'Specialized Adoption Agency'),
('CCI_067', 'HOWRAH', 'Khardah Public Cultural & Welfare Association (Open Shelter)', 'Non-Government Organisation', 1, 'Male', 25, 'Vill-Khardah, PO-Tulshiberia, Dist-Howrah, Pin-711401', '711401', 'Open Shelter'),
('CCI_068', 'HOWRAH', 'SUNDARIBAI MULCHAND MAHATTA HOME (SMM HOME)', 'Government', 1, 'Female', 50, '8, STARK ROAD, LILUAH, PO- HOWRAH, PIN-711101, DIST- HOWRAH, WB', '0', 'Children Home'),
('CCI_069', 'HOWRAH', 'SUNDARIBAI MULCHAND MAHATTA HOME (SMM HOME)', 'Government', 1, 'Combined', 10, '8, STARK ROAD , LILUAH, PO+DIST- HOWRAH, PIN-711101', '0', 'Specialized Adoption Agency'),
('CCI_070', 'HOWRAH', 'SUNDARIBAI MULCHAND MAHATTA HOME (SMM HOME)', 'Government', 2, 'Female', 50, '8, STARK ROAD, LILUAH, PO- HOWRAH, PIN- 711101, DIST- HOWRAH, WB', '0', 'Children Home'),
('CCI_071', 'HOWRAH', 'SUNDARIBAI MULCHAND MAHATTA HOME (SMM HOME)', 'Government', 2, 'Combined', 10, '8, STARK ROAD, LILUAH, PO+DIST- HOWRAH, PIN-711101', '0', 'Specialized Adoption Agency'),
('CCI_072', 'HOWRAH', 'SUNDARIBAI MULCHAND MAHATTA HOME (SMM HOME)', 'Government', 3, 'Female', 50, '8, STARK ROAD, LILUAH, PO- HOWRAH, DIST- HOWRAH, PIN- 711101', '0', 'Children Home'),
('CCI_073', 'HOWRAH', 'SUNDARIBAI MULCHAND MAHATTA HOME (SMM HOME)', 'Government', 4, 'Female', 50, '8, STARK ROAD, LILUAH, PO+DIST- HOWRAH, PIN-711101', '0', 'Children Home'),
('CCI_074', 'HOWRAH', 'SUNDARIBAI MULCHAND MAHATTA HOME (SMM HOME)', 'Government', 5, 'Female', 50, '8, STARK ROAD, LILUAH PO+DIST- HOWRAH, PIN- 711101', '0', 'Children Home'),
('CCI_075', 'HOWRAH', 'SUNDARIBAI MULCHAND MAHATTA HOME (SMM HOME)', 'Government', 6, 'Female', 50, '8, STARK ROAD, LILUAH, PO+DIST- HOWRAH, PIN-711101', '0', 'Children Home'),
('CCI_076', 'HOWRAH', 'SUNDARIBAI MULCHAND MAHATTA HOME (SMM HOME)', 'Government', 7, 'Female', 50, '8, STARK ROAD,  LILUAH PO+DIST- HOWRAH, PIN-711101', '0', 'Observation Home'),
('CCI_077', 'HOWRAH', 'Youth Welfare and Cultural Society, (Open Shelter for Boys)', 'Non-Government Organisation', 1, 'Male', 25, 'Amriya, PO-Kolorah, Domjur, Howrah, Pin-711411', '711411', 'Open Shelter'),
('CCI_078', 'JALPAIGURI', 'Anubhab run by Jalpaiguri Mahila Kalyan Sangha', 'Non-Government Organisation', 1, 'Female', 50, 'New Town Bose Para, PO & Dist Jalpaiguri', '735101', 'Children Home'),
('CCI_082', 'JALPAIGURI', 'KORAK CHILDREN HOME FOR BOYS', 'Government', 1, 'Male', 50, 'RACE COURSE, DIST- JALPAIGURI, WB', '0', 'Children Home'),
('CCI_083', 'JALPAIGURI', 'KORAK CHILDREN HOME FOR BOYS', 'Government', 2, 'Male', 50, 'RACE COURSE, DIST-JALPAIGURI, WB', '0', 'Observation Home'),
('CCI_084', 'JALPAIGURI', 'KOROK CHILDREN HOME FOR BOYS', 'Government', 1, 'Combined', 10, '', '0', 'Specialized Adoption Agency'),
('CCI_085', 'JALPAIGURI', 'Nijoloy Children Home for Girls (Womens Interlink Foundation)', 'Non-Government Organisation', 1, 'Female', 50, 'Pandapara Battola, PO Pandapara Kalibari, Jalpaiguri', '735132', 'Children Home'),
('CCI_087', 'JHARGRAM', 'Nivedita Gramin Karma Mandir', 'Non-Government Organisation', 1, 'Combined', 10, 'PO-Manikpara, Dist-Jhargram', '721513', 'Specialized Adoption Agency'),
('CCI_094', 'KOLKATA', 'All Bengal Womens Union ', 'Non-Government Organisation', 1, 'Female', 50, '89, Elliot Road, Kolkata', '700017', 'Children Home'),
('CCI_095', 'KOLKATA', 'All Bengal Womens Union ', 'Non-Government Organisation', 2, 'Female', 50, '89, Elliot Road, Kolkata', '700017', 'Children Home'),
('CCI_096', 'KOLKATA', 'Amader Bari Child In Need Institute (CINI)', 'Non-Government Organisation', 1, 'Female', 50, '63, Rafi Ahmed Kidwai Road, Kolkata', '700016', 'Children Home'),
('CCI_097', 'Kolkata', 'Amader Padakhep Open Shelter', 'Non-Government Organisation', 1, 'Male', 25, '75, Purba Phulbagan near Sahid Bedi, PS-Patuli, Kolkata-700086', '700086', 'Open Shelter'),
('CCI_099', 'Kolkata', 'Bengal Service Society Open Shelter', 'Non-Government Organisation', 1, 'Male', 25, '196F/2A/1 Picnic Garden Road , Kol-39', '700039', 'Open Shelter'),
('CCI_100', 'Kolkata', 'Calcutta Social Project Open Shelter for Boys', 'Non-Government Organisation', 1, 'Male', 25, '1/4 , Monoharpukur Road, Kolkata- 700029', '700029', 'Open Shelter'),
('CCI_101', 'Kolkata', 'Calcutta Social Project Open Shelter for Girls', 'Non-Government Organisation', 1, 'Female', 25, '1/4 , Monoharpukur Road, Kolkata- 700029', '700029', 'Open Shelter'),
('CCI_102', 'Kolkata', 'Child in Need Institute (CINI)', 'Non-Government Organisation', 1, 'Male', 25, 'Chaitanya Library 4/1 Dani Ghosh Sarani, Bedon Street, Kolkata 6', '700006', 'Open Shelter'),
('CCI_103', 'Kolkata', 'Child in need Institute (CINI) Urban Unit, Hamara Ghar, Open Shelter', 'Non-Government Organisation', 1, 'Male', 25, '37 Pottery Road, Kolkata - 700015', '700015', 'Open Shelter'),
('CCI_104', 'Kolkata', 'Child in need Institute (CINI) Urban Unit-II,', 'Non-Government Organisation', 1, 'Male', 25, 'Sealdah Carshed', '', 'Open Shelter'),
('CCI_106', 'KOLKATA', 'Children Home for Boys UNIT I run by Future Hope', 'Non-Government Organisation', 1, 'Male', 25, '1/8 Rowland Road', '700020', 'Children Home'),
('CCI_107', 'KOLKATA', 'Children Home for Boys UNIT II run by Future Hope', 'Non-Government Organisation', 1, 'Male', 25, '200/2D Rashbehari Avenue', '700029', 'Children Home'),
('CCI_108', 'KOLKATA', 'Children Home for Boys UNIT III run by Future Hope', 'Non-Government Organisation', 1, 'Male', 25, '6, Bompass Road', '700029', 'Children Home'),
('CCI_109', 'KOLKATA', 'Children Home for Girls run by Future Hope', 'Non-Government Organisation', 1, 'Female', 50, '32 A and B Old, Ballygunge 2nd Lane', '700019', 'Children Home'),
('CCI_112', 'Kolkata', 'Gana Unyan Parshad Open Shelter for Boys', 'Non-Government Organisation', 1, 'Male', 25, '28/1B/1, Bospukur Road, Kolkata- 700045', '700045', 'Open Shelter'),
('CCI_113', 'Kolkata', 'Gandhi Peace Foundation (Open Shelter for Girls)', 'Non-Government Organisation', 1, 'Female', 25, 'West Chowbaga, Kolkata-', '700105', 'Open Shelter'),
('CCI_114', 'Kolkata', 'Garden Reach Alif Nagar Development Organisation (Open Shelter)', 'Non-Government Organisation', 1, 'Male', 25, 'G-352/1 Alif Nagar (Garden Reach), Kolkata-700024', '700024', 'Open Shelter'),
('CCI_115', 'Kolkata', 'Garden Reach Bangla Bustee (Open Shelter)', 'Non-Government Organisation', 1, 'Male', 25, 'G-38, Bangla Basti, Garden Reach Road, Kolkata-700024', '700024', 'Open Shelter'),
('CCI_116', 'Kolkata', 'Garden Reach Slum Development (Open Shelter)', 'Non-Government Organisation', 1, 'Female', 25, 'P-229 Tikia Para 1st Lane, Garfden Reach, Kolkata-700024', '700024', 'Open Shelter'),
('CCI_117', 'KOLKATA', 'Hamara Ghar Child In Need Institute (CINI)', 'Non-Government Organisation', 1, 'Male', 50, '37, Pottery Road, Tangra, Kolkata', '700015', 'Children Home'),
('CCI_125', 'Kolkata', 'Humanity Association (Open Shelter for boys)', 'Non-Government Organisation', 1, 'Male', 25, '226, B.B. Ganguly Street, Kolkata -12', '700012', 'Open Shelter'),
('CCI_126', 'KOLKATA', 'Indian Society for Rehabilitations of Children', 'Non-Government Organisation', 1, 'Combined', 10, '9B, lake View Road', '700029', 'Specialized Adoption Agency'),
('CCI_127', 'KOLKATA', 'Indian Society for Rehabilitations of Children', 'Non-Government Organisation', 2, 'Combined', 10, '9B, lake View Road', '700029', 'Specialized Adoption Agency'),
('CCI_128', 'Kolkata', 'Institute of Psychological & Educational Research (IPER)(Open Shelter)', 'Non-Government Organisation', 1, 'Female', 25, 'P 39/1 , Prince Anwar Shah Road, Kolkata - 700045', '700045', 'Open Shelter'),
('CCI_132', 'Kolkata', 'Liberal Association for Movement of People (LAMP) (Open Shelter)', 'Non-Government Organisation', 1, 'Female', 25, '66,Surya Sen Street, Kol.- 09', '700009', 'Open Shelter'),
('CCI_133', 'Kolkata', 'Lutheran World Service India Trust', 'Non-Government Organisation', 1, 'Female', 25, '33/7 Murari Pukur Road, Kolkata 10', '700010', 'Open Shelter'),
('CCI_136', 'Kolkata', 'National Council for Women in India Child and Welfare Section (NCWI) (Open Shelter)', 'Non-Government Organisation', 1, 'Female', 25, 'Bosumati Bhavan, 166, BB Ganguly Street, Kolkata- 700012', '700012', 'Open Shelter'),
('CCI_140', 'Kolkata', 'Shafkat Alam Centre Tiljala SHED (Open Shelter)', 'Non-Government Organisation', 1, 'Male', 25, '52 Tiljala Road, Kolkata- 700046', '700046', 'Open Shelter'),
('CCI_141', 'KOLKATA', 'Society for Indian Childrens Welfare', 'Non-Government Organisation', 1, 'Combined', 10, '20 & 22 Col. Biswas Road, Beckbagan', '700019', 'Specialized Adoption Agency'),
('CCI_142', 'KOLKATA', 'Society for Indian Childrens Welfare', 'Non-Government Organisation', 2, 'Combined', 10, '20 & 22 Col. Biswas Road, Beckbagan', '700019', 'Specialized Adoption Agency'),
('CCI_143', 'KOLKATA', 'Society for Indian Childrens Welfare', 'Non-Government Organisation', 3, 'Combined', 10, '20 & 22 Col. Biswas Road, Beckbagan', '700019', 'Specialized Adoption Agency'),
('CCI_144', 'KOLKATA', 'The Indian Society for Sponsorship and Adoption', 'Non-Government Organisation', 1, 'Combined', 10, '1, Palace Court, 1, Kyd Street, Kolkata- 700016  Home: P-41, Sector -A Metropolitan Co- operative Society', '700105', 'Specialized Adoption Agency'),
('CCI_145', 'KOLKATA', 'The Indian Society for Sponsorship and Adoption', 'Non-Government Organisation', 2, 'Combined', 10, '1, Palace Court, 1, Kyd Street, Kolkata- 700016  Home: P-41, Sector -A Metropolitan Co- operative Society', '700105', 'Specialized Adoption Agency'),
('CCI_146', 'KOLKATA', 'The Indian Society for Sponsorship and Adoption', 'Non-Government Organisation', 3, 'Combined', 10, '1, Palace Court, 1, Kyd Street, Kolkata- 700016  Home: P-41, Sector -A Metropolitan Co- operative Society', '700105', 'Specialized Adoption Agency'),
('CCI_147', 'KOLKATA', 'The Indian Society for Sponsorship and Adoption', 'Non-Government Organisation', 4, 'Combined', 10, '1, Palace Court, 1, Kyd Street, Kolkata- 700016  Home: P-41, Sector -A Metropolitan Co- operative Society', '700105', 'Specialized Adoption Agency'),
('CCI_148', 'Kolkata', 'TRINITA Society for Social & Health Research (Open Shelter)', 'Non-Government Organisation', 1, 'Male', 25, '30 B Radhamadhab Dutta Garden Lane, Kolkata-10', '700010', 'Open Shelter'),
('CCI_149', 'Kolkata', 'TRINITA Society for Social & Health Research (Open Shelter)', 'Non-Government Organisation', 1, 'Male', 25, '32/3, Tapsia Road, (South), Kolkata- 700046 (forth Floor)', '700046', 'Open Shelter'),
('CCI_150', 'Kolkata', 'United Bustee Development Association (UBDA) (Open Shelter)', 'Non-Government Organisation', 1, 'Male', 25, '22/E, Gorachand Road, Kolkata - 700014', '700014', 'Open Shelter'),
('CCI_151', 'Kolkata', 'West Bengal Council for Child Welfare (WBCCW) (Open Shelter)', 'Non-Government Organisation', 1, 'Female', 25, '42, Ramesh Mitra Road, Kolkata-700025', '700025', 'Open Shelter'),
('CCI_152', 'MALDAH', 'CHILDREN HOME FOR GIRLS, MALDA (SHAISHALI SISHU KANYA ABAS)', 'Government', 1, 'Female', 50, 'SARBOMANGALA ROAD, PO+DIST- MALDA, WB', '0', 'Children Home'),
('CCI_153', 'MALDAH', 'CHILDREN HOME FOR GIRLS, MALDA (SHAISHALI SISHU KANYA ABAS)', 'Government', 2, 'Female', 50, 'SARBOMANGALA ROAD, PO+DIST-MALDA, WB', '0', 'Children Home'),
('CCI_154', 'MALDAH', 'Sunitee Sishu Griha run by Haiderpur Shelter of Malda', 'Non-Government Organisation', 1, 'Combined', 10, 'Maheshmati (West) Behind Bikram Club', '732101', 'Specialized Adoption Agency'),
('CCI_155', 'MURSHIDABAD', 'ANANDA ASHRAM HOME (M)', 'Government', 1, 'Male', 50, 'K.N.ROAD, PO- BERHAMPORE, DIST- MURSHIDABAD, WB', '0', 'Observation Home'),
('CCI_156', 'MURSHIDABAD', 'ANANDA ASHRAM HOME (M)', 'Government', 2, 'Male', 50, 'K.N.ROAD, PO- BERHAMPORE, DIST- MURSHIDABAD', '0', 'Observation Home'),
('CCI_157', 'MURSHIDABAD', 'Beldanga Bhagirathi Seva Sadan', 'Non-Government Organisation', 1, 'Combined', 10, 'Maheshmati (West) Behind Bikram Club', '732101', 'Specialized Adoption Agency'),
('CCI_158', 'MURSHIDABAD', 'Domkal Vikas Kendra', 'Non-Government Organisation', 1, 'Combined', 10, 'Vill-+PO-Domkal, PS-Domkal', '742302', 'Specialized Adoption Agency'),
('CCI_159', 'MURSHIDABAD', 'Haripur Dr. Ambedkar Janaseba Mission', 'Non-Government Organisation', 1, 'Female', 50, 'Vill & PO Nagar, PS Khargram, Murshidabad', '742159', 'Children Home CWSN'),
('CCI_161', 'MURSHIDABAD', 'KAZI NAZRUL ISLAM CHILDRENS HOME (DESTITUTE HOME)', 'Government', 2, 'Male', 50, 'KADAI(M). KADAI, PO- BERHAMPORE, DIST- MURSHIDABAD', '0', 'Children Home'),
('CCI_162', 'MURSHIDABAD', 'KAZI NAZRUL ISLAM CHILDRENS HOME(DESTITUTE HOME)', 'Government', 1, 'Male', 50, 'KADAI (M), KADAI, PO- BERHAMPORE, DIST- MURSHIDABAD, WB', '0', 'Children Home'),
('CCI_163', 'MURSHIDABAD', 'SHILAYAN HOME FOR GIRLS', 'Government', 1, 'Female', 50, 'BABULBONA ROAD, BISHNUPUR, PO- BERHAMPORE, PIN-742101, DIST- MURSHIDABAD', '0', 'Children Home'),
('CCI_164', 'MURSHIDABAD', 'SHILAYAN HOME FOR GIRLS', 'Government', 1, 'Combined', 10, 'BABULBONA ROAD, BISHNUPUR, PO- BERHAMPORE, PIN-742101, DIST- MURSHIDABAD', '0', 'Specialized Adoption Agency'),
('CCI_165', 'MURSHIDABAD', 'SHILAYAN HOME FOR GIRLS', 'Government', 2, 'Female', 50, 'BABULBONA ROAD, BISHNUPUR, PO- BERHAMPORE, DIST- MURSHIDABAD, PIN-742101', '0', 'Children Home'),
('CCI_166', 'MURSHIDABAD', 'SHILAYAN HOME FOR GIRLS', 'Government', 3, 'Female', 50, 'BABULBONA ROAD, BISHNUPUR, PO- BERHAMPORE, DIST- MURSHIDABAD, PIN-742101', '0', 'Children Home'),
('CCI_167', 'MURSHIDABAD', 'SHILAYAN HOME FOR GIRLS', 'Government', 4, 'Female', 50, 'BABULBONA ROAD, BISHNUPUR, PO- BERHAMPORE, DIST- MURSHIDABAD, PIN-742101', '0', 'Children Home'),
('CCI_168', 'MURSHIDABAD', 'SHILAYAN HOME FOR GIRLS', 'Government', 5, 'Female', 50, 'BABULBONA ROAD, BISHNUPUR, PO- BERHAMPORE, DIST- MURSHIDABAD', '', 'Observation Home'),
('CCI_169', 'MURSHIDABAD', 'SHILAYAN HOME FOR GIRLS', 'Government', 6, 'Female', 50, 'BABULBONA ROAD, BISHNUPUR, PO- BERHAMPORE, DIST- MURSHIDABAD', '0', 'Children Home'),
('CCI_170', 'NADIA', 'CHILDREN HOME FOR GIRLS, NADIA', 'Government', 1, 'Female', 50, 'NAGENDRANAGAR, 3RD LANE, PO- KRISHNANAGAR, DIST- NADIA, WB', '0', 'Children Home'),
('CCI_171', 'NADIA', 'Karimpur Social Welfare Society', 'Non-Government Organisation', 1, 'Male', 50, 'Pattabuka More, PO Natna Pattabuka, PS Karimpur, Nadia', '741122', 'Children Home'),
('CCI_172', 'NADIA', 'Karimpur Social Welfare Society', 'Non-Government Organisation', 2, 'Male', 50, 'Pattabuka More, PO Natna Pattabuka, PS Karimpur, Nadia', '741122', 'Observation Home'),
('CCI_175', 'NADIA', 'Nakashipara Nirmal Hriday Samity', 'Non-Government Organisation', 1, 'Male', 50, 'Vill Galaidaripara, PO Badbillwagram, PS Nakashipara, Nadia', '741126', 'Children Home CWSN'),
('CCI_177', 'NADIA', 'Ranaghat Lions Trust', 'Non-Government Organisation', 1, 'Combined', 10, 'Biswaspara, PO-Ranaghat', '741201', 'Specialized Adoption Agency'),
('CCI_179', 'North 24 Parganas', 'Aradhana Social Development Organisation (Open shelter for Boys)', 'Non-Government Organisation', 1, 'Male', 25, 'Sailen Moullick Sarani, PO-Hridaypur, North 24 Parganas, Pin-700127', '700127', 'Open Shelter'),
('CCI_184', 'North 24 Parganas', 'Bengal Mass Education Society (Open Shelter for Boys)', 'Non-Government Organisation', 1, 'Male', 25, 'E/15/D ADRASHA NAGAR BELGHORIA, P.O-NIMTA, KOL-49', '700049', 'Open Shelter'),
('CCI_186', 'North 24 Parganas', 'Bikash Bharati Welfare Society Open Shelter', 'Non-Government Organisation', 1, 'Male', 25, '23/1, Deshbondhu Road, Kolkata- 700035', '700035', 'Open Shelter'),
('CCI_187', 'NORTH 24 PARGANAS', 'Bodhana Home', 'Non-Government Organisation', 1, 'Male', 50, 'Chakpachuria, PO Chakpachuria, PS Technocity, North 24 Parganas', '700160', 'Children Home CWSN'),
('CCI_188', 'NORTH 24 PARGANAS', 'Bodhana Home', 'Non-Government Organisation', 2, 'Male', 50, 'Chakpachuria, PO Chakpachuria, PS Technocity, North 24 Parganas', '700160', 'Children Home CWSN'),
('CCI_189', 'NORTH 24 PARGANAS', 'Bodhi Peet Home', 'Non-Government Organisation', 1, 'Female', 25, 'AQ-16, Sector-V, Saltlake', '700091', 'Children Home CWSN'),
('CCI_190', 'NORTH 24 PARGANAS', 'Child Care Home run by WIF', 'Non-Government Organisation', 1, 'Female', 50, 'Sukantanagar, Saltlake,Sector-IV', '700098', 'Children Home'),
('CCI_192', 'NORTH 24 PARGANAS', 'DHRUBASHRAM HOME', 'Government', 1, 'Male', 50, '30, SRI GOPAL MULLICK ROAD, KOLKATA-700057', '0', 'Observation Home'),
('CCI_193', 'NORTH 24 PARGANAS', 'DHRUBASHRAM HOME', 'Government', 2, 'Male', 50, '30, SRI GOPAL MULLICK ROAD, KOLKATA-700057', '0', 'Observation Home'),
('CCI_199', 'North 24 Parganas', 'Janasiksha Prochar Kendra (Open Shelter)', 'Non-Government Organisation', 1, 'Female', 25, 'CK-6, Salt Lake, Sec-II, Kolkata - 91.', '700091', 'Open Shelter'),
('CCI_204', 'NORTH 24 PARGANAS', 'KISHALAYA HOME', 'Government', 1, 'Male', 50, 'PO-BARASAT, DIST-NORTH 24 PARGANAS, WB', '0', 'Children Home'),
('CCI_205', 'NORTH 24 PARGANAS', 'KISHALAYA HOME', 'Government', 2, 'Male', 50, 'PO- BARASAT, DIST- NORTH 24 PARGANAS, WB', '0', 'Children Home'),
('CCI_206', 'NORTH 24 PARGANAS', 'MUKTI Rehabilitatin Centre', 'Non-Government Organisation', 1, 'Combined', 10, 'Ramkrishna Pally,Dashadrone,  P.O-Rajarhat Gopalpur', '700136', 'Specialized Adoption Agency'),
('CCI_207', 'North 24 Parganas', 'MUKTI Rehabilitatin Centre (Open Shelter)', 'Non-Government Organisation', 1, 'Male', 25, 'Ramkrishnapally, Dahadrone, PO-Rajarhat, North 24 Pgs, Pin-700136', '700136', 'Open Shelter'),
('CCI_208', 'North 24 Parganas', 'Naihati New Life Society (Open Shelter for Girls)', 'Non-Government Organisation', 1, 'Female', 25, '172, Talpukur Road, Deulpara, PO. Naihati, North 24 Parganas-743165', '743165', 'Open Shelter'),
('CCI_209', 'NORTH 24 PARGANAS', 'Nijoloy Women s Interlink Foundation', 'Non-Government Organisation', 1, 'Female', 50, 'Sukanta Sarani, Doltala More, Methopara, Ganganagar, Madhyamgram', '700132', 'Children Home'),
('CCI_210', 'NORTH 24 PARGANAS', 'Ramkrishna Vivekananda Mission', 'Non-Government Organisation', 1, 'Male', 50, '20, Riverside Road, Barrackpore', '700120', 'Children Home'),
('CCI_211', 'North 24 Parganas', 'Ramkrishna Vivekananda Mission (Open shelter for girls)', 'Non-Government Organisation', 1, 'Female', 25, 'Agarpara Branch, 3, B.T. Road, Kolkata - 58', '700058', 'Open Shelter'),
('CCI_217', 'NORTH 24 PARGANAS', 'SUKANYA HOME', 'Government', 1, 'Female', 50, 'AQ-15, SECTOR-V, SALT LAKE CITY, KOLKATA-700091, WB', '0', 'Children Home'),
('CCI_218', 'NORTH 24 PARGANAS', 'SUKANYA HOME', 'Government', 2, 'Female', 50, 'AQ-15, SECTOR-V, SALT LAKE CITY, KOLKATA-700091, WB', '0', 'Children Home'),
('CCI_221', 'PASCHIM BARDHAMAN', 'Durgapur Indira Pragati Society', 'Non-Government Organisation', 1, 'Combined', 10, 'Gopal Math, Kamala Kutir, PO- Oyaria, Durgapur', '713217', 'Specialized Adoption Agency'),
('CCI_222', 'PASCHIM MEDINIPUR', 'Benai Bijoy Krishna Rural Developmentn Society', 'Non-Government Organisation', 1, 'Male', 50, 'Vill Uttarbar, PO Kheput Block Daspur II, Dist Paschim Medinipur', '721148', 'Children Home CWSN'),
('CCI_223', 'PASCHIM MEDINIPUR', 'Benai Bijoy Krishna Rural Developmentn Society', 'Non-Government Organisation', 2, 'Male', 50, 'Vill Uttarbar, PO Kheput Block Daspur II, Dist Paschim Medinipur', '721148', 'Children Home'),
('CCI_224', 'PASCHIM MEDINIPUR', 'Chakkumar Association for Social Service', 'Non-Government Organisation', 1, 'Male', 50, 'Vill Chakkumar, PO Debra Bazar, Debra, Dist Paschim Medinipur', '721126', 'Observation Home'),
('CCI_225', 'PASCHIM MEDINIPUR', 'Chakkumar Association for Social Service', 'Non-Government Organisation', 2, 'Male', 50, 'Vill Chakkumar, PO Debra Bazar, Debra, Dist Paschim Medinipur', '721126', 'Children Home'),
('CCI_226', 'PASCHIM MEDINIPUR', 'Dantan Manav Kalyan Kendra', 'Non-Government Organisation', 1, 'Female', 50, 'Krishnapur, PO Dantan, Dist Paschim Medinipur', '721426', 'Children Home CWSN'),
('CCI_228', 'PASCHIM MEDINIPUR', 'Motherchak Naboday Kishalay Sangha', 'Non-Government Organisation', 1, 'Female', 50, 'Vill Gokulpur, PO Bargokulpur, PS Kharagpur Local, Dist Paschim Medinipur', '721301', 'Children Home CWSN'),
('CCI_229', 'PASCHIM MEDINIPUR', 'Motherchak Naboday Kishalay Sangha', 'Non-Government Organisation', 2, 'Female', 50, 'Vill Gokulpur, PO Bargokulpur, PS Kharagpur Local, Dist Paschim Medinipur', '721301', 'Children Home CWSN'),
('CCI_230', 'PASCHIM MEDINIPUR', 'VIDYASAGAR BALIKA BHAVAN', 'Government', 1, 'Combined', 10, 'PO- GOPE, DIST- PASCHIM MEDINIPUR, WB', '0', 'Specialized Adoption Agency'),
('CCI_231', 'PASCHIM MEDINIPUR', 'VIDYASAGAR BALIKA BHAVAN', 'Government', 1, 'Female', 50, 'PO- GOPE, DIST- PASCHIM MEDINIPUR, WB', '0', 'Children Home'),
('CCI_232', 'PASCHIM MEDINIPUR', 'VIDYASAGAR BALIKA BHAVAN', 'Government', 2, 'Female', 50, 'PO- GOPE, DIST- PASCHIM MEDINIPUR, WB', '0', 'Children Home'),
('CCI_233', 'PASCHIM MEDINIPUR', 'VIDYASAGAR BALIKA BHAVAN', 'Government', 3, 'Female', 50, 'PO-GOPE, DIST- PASCHIM MEDINIPUR, WB', '0', 'Children Home'),
('CCI_234', 'PASCHIM MEDINIPUR', 'VIDYASAGAR BALIKA BHAVAN', 'Government', 4, 'Female', 50, 'PO- GOPE, DIST- PASCHIM MEDINIPUR, WB', '0', 'Children Home'),
('CCI_235', 'PASCHIM MEDINIPUR', 'VIDYASAGAR BALIKA BHAVAN', 'Government', 5, 'Female', 50, 'PO-GOPE, DIST- PASCHIM MEDINIPUR, WB', '0', 'Children Home'),
('CCI_236', 'PASCHIM MEDINIPUR', 'VIDYASAGAR BALIKA BHAVAN', 'Government', 6, 'Female', 50, 'PO- GOPE, DIST- PASCHIM MEDINIPUR', '0', 'Children Home'),
('CCI_237', 'PASCHIM MEDINIPUR', 'VIDYASAGAR BALIKA BHAVAN', 'Government', 7, 'Female', 50, 'PO- GOPE, DIST- PASCHIM MEDINIPUR, WB', '0', 'Children Home'),
('CCI_238', 'PASCHIM MEDINIPUR', 'VIDYASAGAR BALIKA BHAVAN', 'Government', 8, 'Female', 50, 'PO- GOPE, DIST- PASCHIM MEDINIPUR. WB', '0', 'Children Home'),
('CCI_239', 'PASCHIM MEDINIPUR', 'VIDYASAGAR BALIKA BHAVAN', 'Government', 9, 'Female', 50, 'PO- GOPE, DIST- PASCHIM MEDINIPUR, WB', '0', 'Children Home'),
('CCI_240', 'PURBA BARDHAMAN', 'Asansol Burdwan Seva Kendra', 'Non-Government Organisation', 1, 'Combined', 10, 'Chetana Community Care Centre, Viii- Jhinguti, P.0- Phagupur', '713102', 'Specialized Adoption Agency'),
('CCI_241', 'PURBA BARDHAMAN', 'Asansol Burdwan Seva Kendra, Chetan, Community Care Centre', 'Non-Government Organisation', 1, 'Female', 50, 'Vill Jhinguti, PO Phagupur, Dist Purba Bardhaman', '713102', 'Children Home CWSN'),
('CCI_243', 'PURBA BARDHAMAN', 'CHILDREN HOME FOR GIRLS', 'Government', 1, 'Combined', 10, 'BAMCHANDAIPUR, JOTERAM, PS- SAKTIGARH, PURBA BARDHAMAN, PIN-713104', '0', 'Specialized Adoption Agency'),
('CCI_244', 'PURBA BARDHAMAN', 'CHILDREN HOME FOR GIRLS', 'Government', 2, 'Combined', 10, 'BAMCHANDAIPUR, JOTERAM, PS- SAKTIGARH, PURBA BARDHAMAN, PIN-713104', '0', 'Specialized Adoption Agency'),
('CCI_245', 'PURBA BARDHAMAN', 'CHILDREN HOME FOR GIRLS, PURBA BURDWAN', 'Government', 1, 'Female', 50, 'B L HATI ROAD, WEST OF DHALDIGHI, RADHANAGAR, PO+DIST-PURBA BURDWAN, WB', '0', 'Children Home'),
('CCI_246', 'PURBA BARDHAMAN', 'CHILDREN HOME FOR GIRLS, PURBA BURDWAN', 'Government', 2, 'Female', 50, 'B L HATI ROAD, WEST OF DHALDIGHI, RADHANAGAR, PO+DIST-PURBA BURDWAN, WB', '0', 'Children Home'),
('CCI_247', 'PURBA BARDHAMAN', 'Society for Mental Health Care Anandaniketan', 'Non-Government Organisation', 1, 'Female', 50, 'Vill & PO Khajurdihi, PS Katwa, Dist Purba Bardhaman', '713150', 'Children Home CWSN'),
('CCI_248', 'PURBA BARDHAMAN', 'Society for Mental Health Care Anandaniketan', 'Non-Government Organisation', 2, 'Female', 50, 'Vill & PO Khajurdihi, PS Katwa, Dist Purba Bardhaman', '713150', 'Children Home CWSN'),
('CCI_249', 'PURBA BARDHAMAN', 'Society for Mental Health Care Anandaniketan', 'Non-Government Organisation', 3, 'Male', 50, 'Vill & PO Khajurdihi, PS Katwa, Dist Purba Bardhaman', '713150', 'Children Home CWSN'),
('CCI_250', 'PURBA BARDHAMAN', 'Society for Mental Health Care Anandaniketan', 'Non-Government Organisation', 4, 'Male', 50, 'Vill & PO Khajurdihi, PS Katwa, Dist Purba Bardhaman', '713150', 'Children Home CWSN'),
('CCI_251', 'Purba Bardhaman', 'SPEED (Open Shelter) \"Muktabihanga\"', 'Non-Government Organisation', 1, 'Male', 25, 'Radhanagarpara, MD Kayem Lane, Purba Bardhaman, Pin-713101', '713101', 'Open Shelter'),
('CCI_252', 'PURBA MEDINIPUR', 'Antyodoy Anath Ashram - Snehachhaya home', 'Non-Government Organisation', 1, 'Female', 50, 'Vill+PO-Paushi, PS-BHupatinagar, Purba Medinipur, WB', '721444', 'Children Home'),
('CCI_253', 'PURBA MEDINIPUR', 'Bodhodaya Home run by Vivekananda Loksiksha Niketan', 'Non-Government Organisation', 1, 'Male', 50, 'Vill Faridpur, PO Dakshin Dauki, PS Junput Coastal, Dist Purba Medinipur', '721450', 'Children Home CWSN'),
('CCI_254', 'PURBA MEDINIPUR', 'Dakshin Gholepukuria Sonali Sangha O Pathagar', 'Non-Government Organisation', 1, 'Female', 50, 'Vill & PO Gholepukuria, Block Nandigram II, PS Nandigram, Dist Purba Medinipur', '721650', 'Children Home CWSN'),
('CCI_256', 'PURBA MEDINIPUR', 'Nimtouri Tamluk Unnayan Samity (Sishu Greha)', 'Non-Government Organisation', 1, 'Combined', 10, 'Vill. Chalk Srikrishnapur, Po-Kulberia, P.S-Tamluk', '721649', 'Specialized Adoption Agency'),
('CCI_258', 'PURBA MEDINIPUR', 'Snehanir run by Nimtouri Tamluk Unnayan Samity', 'Non-Government Organisation', 1, 'Female', 50, 'Vill Chaksrikrishnapur, PO Kulberia, PS Tamluk, Dist Purba Medinipur', '721649', 'Children Home CWSN'),
('CCI_259', 'PURBA MEDINIPUR', 'Swamiji Observation Home run by Amar Seva Sangha', 'Non-Government Organisation', 1, 'Male', 50, 'Vill & PO Raine, PS Kolaghat, Dist Purba Medinipur', '721130', 'Observation Home'),
('CCI_260', 'PURBA MEDINIPUR', 'Tapoban Sishu Abas run by Kajla Janakalyan Samity', 'Non-Government Organisation', 1, 'Male', 50, 'Vill & PO Sarada, Via Deulbard, PS Contai, Dist Purba Medinipur', '721427', 'Children Home'),
('CCI_261', 'PURBA MEDINIPUR', 'The Sister Nivedita Home for Girls run by Naba Kishore Sangha', 'Non-Government Organisation', 1, 'Female', 50, 'Vill & PO Bargodagodar, PS Nandakumar, Dist Purba Medinipur', '721652', 'Children Home'),
('CCI_262', 'PURBA MEDINIPUR', 'Unmesh UNIT I run by Haldia Samaj Kalyan Parshad', 'Non-Government Organisation', 1, 'Male', 50, 'Vill Basudevpur, PO Khanjanchak, PS Durgachak, Dist Purba Medinipur', '721602', 'Children Home CWSN'),
('CCI_263', 'PURBA MEDINIPUR', 'Unmesh UNIT II run by Haldia Samaj Kalyan Parshad', 'Non-Government Organisation', 2, 'Male', 50, 'Vill Basudevpur, PO Khanjanchak, PS Durgachak, Dist Purba Medinipur', '721602', 'Children Home CWSN'),
('CCI_264', 'PURBA MEDINIPUR', 'Uttaran run by CINI Moyna Rural Health Development Centre', 'Non-Government Organisation', 1, 'Male', 50, 'Vill & PO Paschim Naichanpur, PS Moyna, Dist Purba Medinipur', '721642', 'Children Home'),
('CCI_265', 'PURBA MEDINIPUR', 'Vivekananda Loksiksha Niketan (Sneha Kutir)', 'Non-Government Organisation', 1, 'Combined', 10, 'Vill-Faridpur, Po-Dakshin Dauki, Ps-Junput Coastal', '721450', 'Specialized Adoption Agency'),
('CCI_266', 'PURBA MEDINIPUR', 'Vivekananda Loksiksha Niketan (Sneha Kutir)', 'Non-Government Organisation', 2, '', 10, 'Vill-Faridpur, Po-Dakshin Dauki, Ps-Junput Coastal', '721450', 'Specialized Adoption Agency'),
('CCI_267', 'Purba Medinipur', 'Vivekananda Loksiksha Niketan Muktaneer for boys', 'Non-Government Organisation', 1, 'Male', 25, 'Dharmadas Barh, Ward no 20, PO+PS- Contai, PIN- 721401', '721401', 'Open Shelter'),
('CCI_268', 'PURULIA', 'ANANDAMATH (F)', 'Government', 1, 'Combined', 10, 'PO-SIMULIA, DIST-PURULIA, WB', '0', 'Specialized Adoption Agency'),
('CCI_269', 'PURULIA', 'ANANDAMATH (F)', 'Government', 1, 'Female', 50, 'PO- SIMILIA, DIST- PURULIA, WB', '0', 'Children Home'),
('CCI_270', 'PURULIA', 'ANANDAMATH (F)', 'Government', 2, 'Female', 50, 'PO- SIMILIA, DIST- PURULIA', '0', 'Children Home'),
('CCI_271', 'PURULIA', 'Manipur Leprosy Rehabilitation Centre', 'Non-Government Organisation', 1, 'Male', 50, 'Vill Manipur Colony, PO & PS Adra, Dist Purulia', '723121', 'Children Home'),
('CCI_274', 'SOUTH 24 PARGANAS', 'Asha Bhawan Centre', 'Non-Government Organisation', 1, 'Female', 50, 'Vill Keoradanga, PO Betberia, PS Bishnupur, Dist South 24 Parganas', '743503', 'Children Home CWSN'),
('CCI_277', 'SOUTH 24 PARGANAS', 'Digambarpur Angikar', 'Non-Government Organisation', 1, 'Male', 50, 'Vill & PO Digambarpur, Via Kashinagar, Block Pathar Pratima, PS Dholahat, Dist South 24 Parganas', '743349', 'Children Home'),
('CCI_278', 'SOUTH 24 PARGANAS', 'Digambarpur Angikar', 'Non-Government Organisation', 1, 'Combined', 10, 'Vill & PO Digambarpur, Via Kashinagar, Block Pathar Pratima, PS Dholahat, Dist South 24 Parganas', '743349', 'Specialized Adoption Agency'),
('CCI_279', 'SOUTH 24 PARGANAS', 'Digambarpur Angikar', 'Non-Government Organisation', 2, 'Male', 50, 'Vill & PO Digambarpur, Via Kashinagar, Block Pathar Pratima, PS Dholahat, Dist South 24 Parganas', '743349', 'Children Home CWSN'),
('CCI_280', 'SOUTH 24 PARGANAS', 'Digambarpur Angikar', 'Non-Government Organisation', 3, 'Female', 50, 'Vill & PO Digambarpur, Via Kashinagar, Block Pathar Pratima, PS Dholahat, Dist South 24 Parganas', '743349', 'Children Home CWSN'),
('CCI_281', 'SOUTH 24 PARGANAS', 'Digambarpur Angikar', 'Non-Government Organisation', 4, 'Female', 50, 'Vill & PO Digambarpur, Via Kashinagar, Block Pathar Pratima, PS Dholahat, Dist South 24 Parganas', '743349', 'Children Home'),
('CCI_282', 'SOUTH 24 PARGANAS', 'Digambarpur Angikar', 'Non-Government Organisation', 5, 'Female', 50, 'Vill & PO Digambarpur, Via Kashinagar, Block Pathar Pratima, PS Dholahat, Dist South 24 Parganas', '743349', 'Children Home'),
('CCI_285', 'SOUTH 24 PARGANAS', 'Nava Diganta Home, Indian Society for Sponsorship and Adoption', 'Non-Government Organisation', 1, 'Female', 50, '70, Jugipara Road, Baishali Park, PO Rajpur, PS Sonarpur, Dist South 24 Parganas', '700149', 'Children Home'),
('CCI_286', 'SOUTH 24 PARGANAS', 'New Age Society for All', 'Non-Government Organisation', 1, 'Male', 50, 'Sitakundu Main Road, PO Sitakundu, PS Baruipur, Dist South 24 Parganas', '700144', 'Children Home CWSN'),
('CCI_287', 'SOUTH 24 PARGANAS', 'Noor Ali Memorial Society', 'Non-Government Organisation', 1, 'Male', 50, 'Vill Sodpukur, PO Ramchandra Nagar, PS Dholahat, Block Kakdwip, Dist South 24 Parganas', '743339', 'Children Home'),
('CCI_292', 'South 24 Parganas', 'Sahara Health & Education Society (Open Shelter for Boys)', 'Non-Government Organisation', 1, 'Male', 25, 'F4/ 42, Defence Park, Moynagarh, Kolkata-700141', '700141', 'Open Shelter'),
('CCI_293', 'SOUTH 24 PARGANAS', 'Sanlaap', 'Non-Government Organisation', 1, 'Female', 50, 'Sneha, 52, Nalini Mitra Road, Vill. Elachi, PO. Narendrapur, PS. Sonarpur', '700103', 'Children Home'),
('CCI_297', 'UTTAR DINAJPUR', 'Bharat Sevashram Sangha', 'Non-Government Organisation', 1, 'Male', 50, 'Vill Kunor, PO & PS Kaliyaganj, Dist South 24 Parganas', '733252', 'Children Home'),
('CCI_298', 'UTTAR DINAJPUR', 'Purba Netaji Pally Rural Development Society', 'Non-Government Organisation', 1, 'Combined', 10, 'Rabindra Sarani, Raiganj', '733134', 'Specialized Adoption Agency'),
('CCI_299', 'UTTAR DINAJPUR', 'St. John Ambulance Association', 'Non-Government Organisation', 1, 'Female', 50, 'Vill & PO Debinagar, PS Raiganj, Dist Uttar Dinajpur', '733123', 'Children Home'),
('CCI_300', 'UTTAR DINAJPUR', 'St. John Ambulance Association', 'Non-Government Organisation', 2, 'Male', 50, 'Vill & PO Debinagar, PS Raiganj, Dist Uttar Dinajpur', '733123', 'Observation Home'),
('CCI_301', 'UTTAR DINAJPUR', 'SURYADAYA CHILDREN HOME FOR DEAF AND DUMB BOYS AND GIRLS', 'Government', 1, 'Male', 50, 'PO-KARANJORA, PIN-733130, DIST- UTTAR DINAJPUR, WB', '0', 'Children Home CWSN'),
('CCI_302', 'UTTAR DINAJPUR', 'SURYADAYA CHILDREN HOME FOR DEAF AND DUMB BOYS AND GIRLS', 'Government', 2, 'Female', 50, 'PO- KARANJORA, DIST-UTTAR DINAJPUR, WB, PIN-733130', '0', 'Children Home CWSN');

-- --------------------------------------------------------

--
-- Table structure for table `fund_release`
--

CREATE TABLE `fund_release` (
  `id` int(11) NOT NULL,
  `cci_id` varchar(255) NOT NULL,
  `fy_id` varchar(255) NOT NULL,
  `children_days` int(11) DEFAULT NULL,
  `cwsn_child_days` int(11) NOT NULL,
  `amnt_released` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fy_quarter`
--

CREATE TABLE `fy_quarter` (
  `fy_id` varchar(10) NOT NULL,
  `fy` varchar(7) NOT NULL,
  `quarter` varchar(255) NOT NULL,
  `locked` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `fy_quarter`
--

INSERT INTO `fy_quarter` (`fy_id`, `fy`, `quarter`, `locked`) VALUES
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
-- Indexes for table `fy_quarter`
--
ALTER TABLE `fy_quarter`
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
