-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jan 04, 2025 at 07:49 PM
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
-- Database: `missionvatsalya`
--

-- --------------------------------------------------------

--
-- Table structure for table `cci`
--

CREATE TABLE `cci` (
  `id` varchar(255) NOT NULL,
  `district` varchar(255) DEFAULT NULL,
  `cci_name` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `pin` int(11) DEFAULT 0,
  `run_by` varchar(255) DEFAULT NULL,
  `cci_unit_no` smallint(6) DEFAULT 0,
  `cci_unit_gender` varchar(255) DEFAULT NULL,
  `cci_unit_strength` int(11) DEFAULT 0,
  `is_pab_approved` tinyint(1) DEFAULT 0,
  `reg_no` varchar(255) DEFAULT NULL,
  `reg_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `reg_valid_upto` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `reg_status` double DEFAULT NULL,
  `contact_name` varchar(255) DEFAULT NULL,
  `contact_desg` varchar(255) DEFAULT NULL,
  `contact_phno` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cci`
--

INSERT INTO `cci` (`id`, `district`, `cci_name`, `address`, `pin`, `run_by`, `cci_unit_no`, `cci_unit_gender`, `cci_unit_strength`, `is_pab_approved`, `reg_no`, `reg_date`, `reg_valid_upto`, `reg_status`, `contact_name`, `contact_desg`, `contact_phno`) VALUES
('CCI_001', 'ALIPURDUAR', 'ALIPURDUAR GOVT RUN SPECIALIZED ADOPTION AGENCY', 'SUFAL BANGLA BUILDING 1ST FLOOR, NEAR SUB DIVISIONAL OFFICER\'S OFFICE, ALIPURDUAR MUNICIPALITY, PO- ALIPURDUAR COURT, PIN- 736122', 0, 'Government', 1, 'Combined', 10, 1, 'WB/JJ/ALI/05/03/0007', '2022-01-04 18:30:00', '2027-01-03 18:30:00', 5, NULL, NULL, 0),
('CCI_002', 'ALIPURDUAR', 'Khagrabari Rural Energy Development Association (KREDA)', 'Vill-Madhya Kamakhyaguri, P.O. Kamakhaguri, Kumargram, Alipurduar', 706202, 'Non-Government Organisation', 1, 'Male', 50, 1, 'WB/JJ/ALI/01/01/0143 ', '2021-03-31 18:30:00', '2026-03-30 18:30:00', 0, '', '', 0),
('CCI_003', 'ALIPURDUAR', 'Khagrabari Rural Energy Development Association (KREDA)', 'Vill-Madhya Kamakhyaguri, P.O. Kamakhaguri, Kumargram, Alipurduar', 706202, 'Non-Government Organisation', 2, 'Female', 50, 1, 'WB/JJ/ALI/01/02/0145', '2021-01-03 18:30:00', '2026-03-30 18:30:00', 0, '', '', 0),
('CCI_004', 'BANKURA', 'Chamtagara Adibasi Mahila Samity', 'Vill– Chamtagara, PO-  Chamtagara, PS – Chhatna', 722137, 'Non-Government Organisation', 1, 'Combined', 10, 1, 'WB/JJ/BAN/02/03/0021', '2022-03-31 18:30:00', '2027-03-30 18:30:00', 5, '', '', 0),
('CCI_005', 'BANKURA', 'SUMANGALAM HOME FOR BOYS', 'KHARIKASULI, PO- MORAR, DIST- BANKURA', 0, 'Government', 1, 'Male', 50, 1, 'JJ/Reg./Gov./012/1', '2023-01-27 18:30:00', '2028-01-26 18:30:00', 5, NULL, NULL, 0),
('CCI_006', 'BANKURA', 'SUMANGALAM HOME FOR BOYS', 'KHARIKASULI, PO- MORAR, DIST- BANKURA, WB', 0, 'Government', 2, 'Male', 50, 1, 'JJ/Reg./Gov./012/2', '2023-01-27 18:30:00', '2028-01-26 18:30:00', 5, '', '', 0),
('CCI_007', 'BIRBHUM', 'NAVEENA HOME FOR GIRLS run by ELMHIRST INSTITUTE OF COMMUNITY STUDIES', 'Andrew Palli Santiniketan', 731235, 'Non-Government Organisation', 1, 'Female', 50, 1, '2906-SW/O/JJA-60/16', '2015-03-31 18:30:00', '2017-03-30 18:30:00', 4, '', '', 0),
('CCI_008', 'BIRBHUM', 'RAMPURHAT SPASTICS AND HANDICAPPED SOCIETY (CWSN BOYS)', 'Chandmari Uttar Pally, Ward No.13, PO+PS-Rampurhat', 731224, 'Non-Government Organisation', 1, 'Male', 50, 1, 'PROV/WB/JJ/0022', '2017-12-25 18:30:00', '2018-06-24 18:30:00', 4, '', '', 0),
('CCI_009', 'BIRBHUM', 'Suri Center for Child Welfare', 'Sova Bazar,Rabindra pally,P.O-Suiri', 731101, 'Non-Government Organisation', 1, 'Combined', 10, 1, 'WB/JJ/BIR/02/03/0028/1', '2022-03-31 18:30:00', '2027-03-30 18:30:00', 5, '', '', 0),
('CCI_010', 'COOCHBIHAR', 'CHILDREN HOME FOR BLIND BOYS', 'PO+DIST- COOHBEHAR,PIN-736101', NULL, 'Government', 1, 'Male', 50, 1, 'JJ/Reg./Gov./015/1', '2023-01-27 18:30:00', '2028-01-26 18:30:00', 5, NULL, NULL, 0),
('CCI_011', 'COOCHBIHAR', 'CHILDREN HOME FOR BLIND BOYS', 'PO+DIST- COOCHBEHAR, PIN 736101, WB-736101', NULL, 'Government', 2, 'Male', 50, 1, 'JJ/Reg./Gov./015/2', '2023-01-27 18:30:00', '2028-01-26 18:30:00', 5, NULL, NULL, 0),
('CCI_012', 'COOCHBIHAR', 'New Bharti Club', 'Vill+PO-Baneswar,P.S. Kotwali', 736133, 'Non-Government Organisation', 1, 'Combined', 10, 1, 'WB/JJ/COO/02/03/0060', '2022-03-31 18:30:00', '2027-03-30 18:30:00', 5, '', '', 0),
('CCI_013', 'COOCHBIHAR', 'SAHID BANDANA SMRITI BALIKA ABAS', 'PO+DIST- COOCH BEHAR, PIN -736101, WB', 0, 'Government', 1, 'Combined', 10, 1, 'WB/JJ/COO/05/03/004', '2020-07-01 18:30:00', '2025-06-30 18:30:00', 5, NULL, NULL, 0),
('CCI_014', 'COOCHBIHAR', 'SAHID BANDANA SMRITI BALIKA ABAS', 'PO+DIST- COOCH BEHAR', 736101, 'Government', 1, 'Female', 50, 1, 'JJ/Reg./Gov./005/1', '2023-01-27 18:30:00', '2028-01-26 18:30:00', 5, '', '', 0),
('CCI_015', 'COOCHBIHAR', 'SAHID BANDANA SMRITI BALIKA ABAS', 'PO+DIST- COOCHBEHAR, PIN-736101', 0, 'Government', 2, 'Female', 50, 1, 'JJ/Reg./Gov./005/2', '2023-01-27 18:30:00', '2028-01-26 18:30:00', 5, NULL, NULL, 0),
('CCI_016', 'COOCHBIHAR', 'SAHID BANDANA SMRITI BALIKA ABAS', 'PO+DIST-COOCHBEHAR, PIN-736101', 0, 'Government', 3, 'Female', 50, 1, 'JJ/Reg./Gov./005/3', '2023-01-27 18:30:00', '2028-01-26 18:30:00', 5, NULL, NULL, 0),
('CCI_017', 'DAKSHIN DINAJPUR', 'Nowpara Teor Samaj Kalyan Samity', 'Vill- RainagarNear Hili Hospital,P.O+P.S-Hili', 733126, 'Non-Government Organisation', 1, 'Combined', 10, 1, 'WB/JJ/DIN(S)/02/03/0037', '2019-01-15 18:30:00', '2024-01-14 18:30:00', 5, '', '', 0),
('CCI_018', 'DAKSHIN DINAJPUR', 'SUVAYAN HOME (M)', 'VILL-HOSSIERPUR, PO-BELTALA PARK, BALURGHAT, DIST- DAKSHIN DINAJPUR', 0, 'Government', 1, 'Male', 50, 1, 'JJ/Reg./Gov./010/1', '2023-01-27 18:30:00', '2028-01-26 18:30:00', 5, NULL, NULL, 0),
('CCI_019', 'DAKSHIN DINAJPUR', 'SUVAYAN HOME (M)', 'VILL- HOSSIERPUR, PO- BELTALA PARK, BALURGHAT, DAKSHIN DINAJPUR, WB', 0, 'Government', 2, 'Male', 50, 1, 'JJ/Reg./Gov./010/2', '2023-01-27 18:30:00', '2028-01-26 18:30:00', 5, NULL, NULL, 0),
('CCI_020', 'DARJEELING', 'All India Women\'s Conference Open Shelter', 'H.D Lama Road, near Satthi Sedi, PO+ Dist- Darjeeling', NULL, 'Non-Government Organisation', 1, 'Female', 25, 0, NULL, '2025-01-04 12:32:07', '2025-01-04 12:32:07', 6, NULL, NULL, NULL),
('CCI_021', 'DARJEELING', 'Calvary International Biblical Academy for Boys, Phansidewa', 'Phansidewa, Siliguri, Pin. 734435', NULL, 'Non-Government Organisation', 1, 'Male', NULL, 0, 'PROV/WB/JJ/0102', '2017-12-28 18:30:00', '2018-06-27 18:30:00', 6, NULL, NULL, NULL),
('CCI_022', 'DARJEELING', 'Calvary International Biblical Academy for Girls, Phansidewa', 'Phansidewa, Siliguri, Pin. 734435', NULL, 'Non-Government Organisation', 1, 'Female', NULL, 0, 'PROV/WB/JJ/0101', '2017-12-28 18:30:00', '2018-06-27 18:30:00', 6, NULL, NULL, NULL),
('CCI_023', 'DARJEELING', 'Child in Need Institution (Open Shelter for girls)', 'Meghnad Sarani, Hakim Para, Po+Ps-Siliguri, 734001', 734001, 'Non-Government Organisation', 1, 'Female', 25, 1, 'WB/JJ/DAR/03/02/0050', '2018-06-20 18:30:00', '2023-06-19 18:30:00', NULL, NULL, NULL, NULL),
('CCI_024', 'DARJEELING', 'Edith Wilkins Street Children Trust Foundation (Ewsctf) Children Home for Boys', '8th Jawahar Road, East Holmden, Lower Hermitage, Darjeeling, Pin-734101', NULL, 'Non-Government Organisation', 1, 'Male', NULL, 0, 'PROV/WB/JJ/0125', '2017-12-28 18:30:00', '2018-06-27 18:30:00', 2, NULL, NULL, NULL),
('CCI_025', 'DARJEELING', 'Edith Wilkins Street Children Trust Foundation Home for Girls', '8th Jawahar Road, East Holmden, Lower Hermitage', 734101, 'Non-Government Organisation', 1, 'Female', 50, 1, '1948-SW/O/JJA-49/16', '2016-05-23 18:30:00', '2021-03-30 18:30:00', 2, '', '', 0),
('CCI_026', 'DARJEELING', 'First Love Children Home for Boys', 'Devidangabazar, PO. Champasari, PS. Pradhannagar, Siliguri, Pin. 734003', NULL, 'Non-Government Organisation', 1, 'Male', NULL, 0, 'PROV/WB/JJ/0145', '2017-12-28 18:30:00', '2018-06-27 18:30:00', 2, NULL, NULL, NULL),
('CCI_027', 'DARJEELING', 'First Love Children Home for Girls ', 'Devidangabazar, PO. Champasari, PS. Pradhannagar, Siliguri, Pin. 734003', NULL, 'Non-Government Organisation', 1, 'Female', NULL, 0, 'WB/JJ/DAR/01/02/0058', '2018-06-28 18:30:00', '2023-06-27 18:30:00', 5, NULL, NULL, NULL),
('CCI_028', 'DARJEELING', 'Flame of Hope, Siliguri(Girls)', 'Tarijoti sivmandir, New rongia, Dist-Darjeeling, 734013,', NULL, 'Non-Government Organisation', 1, 'Female', NULL, 0, '371-SW/O/JJA-11/17', '2016-03-31 18:30:00', '2021-03-30 18:30:00', 4, NULL, NULL, NULL),
('CCI_029', 'DARJEELING', 'GOVT. RUN CHILDREN\'S HOME FOR GIRLS', 'BAIRATISHAL, MATIGARA, SILIGURI, DIST-DARJEELING, WB', 0, 'Government', 1, 'Female', 50, 1, 'JJ/Reg./Gov./020', '2023-05-09 18:30:00', '2028-05-08 18:30:00', 5, NULL, NULL, 0),
('CCI_030', 'DARJEELING', 'Grace Children Home for Boys, Karmatar, Bijanbari', 'Gokibazar, Pulbazar, Karmatarbusty, PS. Pulbazar, Pin. 734201', NULL, 'Non-Government Organisation', 1, 'Male', NULL, 0, 'WB/JJ/DAR/01/01/0075', '2018-06-28 18:30:00', '2023-06-27 18:30:00', 6, NULL, NULL, NULL),
('CCI_031', 'DARJEELING', 'Grace Children Home for Girls, Karmatar, Bijanbari', 'Gokibazar, Pulbazar, Karmatarbusty, PS. Pulbazar, Pin. 734201', NULL, 'Non-Government Organisation', 1, 'Female', NULL, 0, 'PROV/WB/JJ/0138', '2017-12-28 18:30:00', '2018-06-27 18:30:00', 6, NULL, NULL, NULL),
('CCI_032', 'DARJEELING', 'Himalaya Children Home for Boys, Siliguri', 'Vivekananda Pally, Kadamtala, Siliguri-734011', NULL, 'Non-Government Organisation', 1, 'Male', NULL, 0, 'PROV/WB/JJ/0434', '2017-12-28 18:30:00', '2018-06-27 18:30:00', 6, NULL, NULL, NULL),
('CCI_033', 'DARJEELING', 'Himalaya Children Home for Girls, Siliguri', 'Vivekananda Pally, Kadamtala, Siliguri-734011', NULL, 'Non-Government Organisation', 1, 'Female', NULL, 0, 'PROV/WB/JJ/0074', '2017-12-28 18:30:00', '2018-06-27 18:30:00', 6, NULL, NULL, NULL),
('CCI_034', 'DARJEELING', 'Kiwanis Noora Home for Girls, Rangbull run by Hossana Covenant Trust', ' Rangbull, Near Gramin Bank, PO. Rangbull, PS. Jorebungla, Pin. 734123', NULL, 'Non-Government Organisation', 1, 'Female', NULL, 0, 'PROV/WB/JJ/0081', '2017-12-28 18:30:00', '2018-06-27 18:30:00', 2, NULL, NULL, NULL),
('CCI_035', 'DARJEELING', 'LAMP (Open Shelter for boys)', 'Natun Para Jalpai More , Ward no-5, Siliguri, Pin-734005', NULL, 'Non-Government Organisation', 1, 'Male', 25, 0, 'PROV/WB/JJ/0044', '2017-12-28 18:30:00', '2018-06-27 18:30:00', 6, NULL, NULL, NULL),
('CCI_036', 'DARJEELING', 'Mercy Home for Boys', 'Near Aat Gallery, Chamling Nivas, Darjeeling -734101', NULL, 'Non-Government Organisation', 1, 'Male', NULL, 0, 'PROV/WB/JJ/0139', '2017-12-28 18:30:00', '2018-06-27 18:30:00', 6, NULL, NULL, NULL),
('CCI_037', 'DARJEELING', 'Mercy Home for Girls ', 'Armadale Compound, Ava Art Gallery, Darjeeling, Pin-734101', NULL, 'Non-Government Organisation', 1, 'Female', NULL, 0, 'WB/JJ/DAR/01/02/077', '2018-06-28 18:30:00', '2023-06-27 18:30:00', 6, NULL, NULL, NULL),
('CCI_038', 'DARJEELING', 'Sano Diyo, Siliguri(Girls)', 'New rongia, Via NBU, Bairatisal, Siliguri-734013', NULL, 'Non-Government Organisation', 1, 'Female', NULL, 0, 'PROV/WB/JJ/0128', '2017-12-28 18:30:00', '2018-06-27 18:30:00', 6, NULL, NULL, NULL),
('CCI_039', 'HOOGHLY', 'CHILDREN HOME FOR GIRLS, UTTARPARA', '7, RAJMOHAN ROAD, UTTARPARA, PIN-712258', 0, 'Government', 1, 'Female', 50, 1, 'JJ/Reg./Gov./002/1', '2023-01-27 18:30:00', '2028-01-26 18:30:00', 5, NULL, NULL, 0),
('CCI_040', 'HOOGHLY', 'CHILDREN HOME FOR GIRLS, UTTARPARA', '7, RAJMOHAN ROAD, UTTARPARA, DIST- HOOGHLY, WB, PIN-712258', 0, 'Government', 1, 'Combined', 10, 1, 'WB/JJ/HOO/05/03/0003', '2019-12-04 18:30:00', '2024-12-03 18:30:00', 5, NULL, NULL, 0),
('CCI_041', 'HOOGHLY', 'CHILDREN HOME FOR GIRLS, UTTARPARA', '7, RAJMOHAN ROAD, UTTARPARA, PIN-712258', 0, 'Government', 2, 'Female', 50, 1, 'JJ/Reg./Gov./002/2', '2023-01-27 18:30:00', '2028-01-26 18:30:00', 5, NULL, NULL, 0),
('CCI_042', 'HOOGHLY', 'CHILDREN HOME FOR GIRLS, UTTARPARA', '7, RAJMOHAN ROAD, UTTARPARA, PIN-712258', 0, 'Government', 3, 'Female', 50, 1, 'JJ/Reg./Gov./002/3', '2023-01-27 18:30:00', '2028-01-26 18:30:00', 5, NULL, NULL, 0),
('CCI_043', 'HOOGHLY', 'Gopalnagar Nivedita Welfare Society ', 'Vill-Gopalnagar, PO Harharia (Singur),', 712409, 'Non-Government Organisation', 1, 'Male', 50, 1, 'WB/JJ/01/01/0062', '2018-06-28 18:30:00', '2023-06-27 18:30:00', 0, '', '', 0),
('CCI_044', 'HOOGHLY', 'Jana Siksha Prochar Kendra', 'Vill & PO Baganda, PS Jangipara, Hooghly', 0, 'Non-Government Organisation', 1, 'Female', 50, 1, 'JJ/Reg/NGO-11', '2013-02-12 18:30:00', '2015-03-30 18:30:00', 0, '', '', 0),
('CCI_045', 'HOOGHLY', 'Kalyan Bharati Observation Home for Boys', 'Kamarkundu', 712407, 'Non-Government Organisation', 1, 'Male', 25, 1, 'WB/JJ/HOO/01/01/0151', '2019-09-30 18:30:00', '2024-09-29 18:30:00', 5, '', '', 0),
('CCI_046', 'HOOGHLY', 'Khanyan Dr. B. R. Ambedkar Seva Samity, ( CWSN Home for Girls)Panduah', 'Vill-Khanyan (Station Bazar) , PO. Khanyan, PS. Pandua, Hooghly, Pin-712147', NULL, 'Non-Government Organisation', 1, 'Female', NULL, 0, 'PROV/WB/JJ/0162', '2017-12-28 18:30:00', '2018-06-27 18:30:00', 4, NULL, NULL, NULL),
('CCI_047', 'HOOGHLY', 'Khanyan Dr. B.R. Ambedkar Seba Samity', 'Vill & PO Mogra, PS Mogra, Block Chinsura Mogra, Hooghly', 712148, 'Non-Government Organisation', 1, 'Male', 50, 1, 'WB/JJ/Hoo/01/01/0154', '2018-06-28 18:30:00', '2023-06-27 18:30:00', 0, '', '', 0),
('CCI_048', 'HOOGHLY', 'Nabadiganta OpenShelter for 25 Boys', 'Bandel Hooghly', NULL, 'Non-Government Organisation', 1, 'Male', 25, 0, NULL, '2025-01-04 12:32:07', '2025-01-04 12:32:07', 4, NULL, NULL, NULL),
('CCI_049', 'HOOGHLY', 'Prabartak Seva Niketan', 'Sarkarpara Lane, Boraichanditala, PO & PS Chandannagar, Hooghly', 712136, 'Non-Government Organisation', 1, 'Female', 50, 1, 'WB/JJ/HOO/01/02/0159', '2020-03-31 18:30:00', '2025-03-30 18:30:00', 0, '', '', 0),
('CCI_050', 'HOOGHLY', 'Satya Bharti', '28 Vidyasagar Road,PO-Nabagram, Kornagar', 712246, 'Non-Government Organisation', 1, 'Combined', 10, 1, 'WB/JJ/HOO/02/03/0113', '2020-01-18 18:30:00', '2025-01-17 18:30:00', 5, '', '', 0),
('CCI_051', 'HOOGHLY', 'Taraknath Social Welfare', 'Tarakeswar ,jyotashmbul Po-Tarakeswar, Hooghly PIN-712410', 712410, 'Non-Government Organisation', 1, 'Male', 25, 1, 'WB/JJ/HOO/03/01/0160', '2023-06-18 18:30:00', '2028-06-17 18:30:00', NULL, NULL, NULL, NULL),
('CCI_052', 'HOWRAH', 'Akshay Nagar Pallisiri Sangha, Girls (Open Shelter)', 'Vill-Sahebbagan, PO-Samabay Palli, Nischinda, Howrah, Pin-711205', 711205, 'Non-Government Organisation', 1, 'Female', 25, 1, 'PROV/WB/JJ/0078', '2017-12-28 18:30:00', '2018-06-27 18:30:00', NULL, NULL, NULL, NULL),
('CCI_053', 'HOWRAH', 'Asha Bhavan Centre', 'Uluberia Kathila PO Banitabala, PS Uluberia, Howrah', NULL, 'Non-Government Organisation', 1, 'Female', 25, 1, 'PROV/WB/JJ0028', '2017-12-25 18:30:00', '2018-06-24 18:30:00', NULL, NULL, NULL, NULL),
('CCI_054', 'HOWRAH', 'Asha Bhavan Centre', 'Vill Kathila, PO Banitabla, PS Uluberia, Howrah', 711316, 'Non-Government Organisation', 1, 'Female', 50, 1, 'WB/JJ/HOW/01/02/0011/1', '2022-03-31 18:30:00', '2027-03-30 18:30:00', 0, '', '', 0),
('CCI_055', 'HOWRAH', 'Asha Bhavan Centre', 'Vill Kathila, PO Banitabla, PS Uluberia, Howrah', 711316, 'Non-Government Organisation', 2, 'Female', 50, 1, 'WB/JJ/HOW/01/02/0011/2', '2022-03-31 18:30:00', '2027-03-30 18:30:00', 0, '', '', 0),
('CCI_056', 'HOWRAH', 'Asha Bhavan Centre', 'Vill Kathila, PO Banitabla, PS Uluberia, Howrah', 711316, 'Non-Government Organisation', 3, 'Female', 50, 1, 'WB/JJ/HOW/01/02/0011/3', '2022-03-31 18:30:00', '2027-03-30 18:30:00', 0, '', '', 0),
('CCI_057', 'HOWRAH', 'Chiranabin', 'Vill Parbakshi, PO Bakshi, PS Joypur, Howrah', 711303, 'Non-Government Organisation', 1, 'Male', 50, 1, 'WB/JJ/HOW/01/01/0144', '2021-03-31 18:30:00', '2026-03-30 18:30:00', 0, '', '', 0),
('CCI_058', 'HOWRAH', 'Chiranabin', 'Vill Parbakshi, PO Bakshi, PS Joypur, Howrah', 711303, 'Non-Government Organisation', 2, 'Female', 50, 1, 'WB/JJ/HOW/01/02/0146', '2021-03-31 18:30:00', '2026-03-30 18:30:00', 0, '', '', 0),
('CCI_059', 'HOWRAH', 'Chiranabin', 'Vill Parbakshi, PO Bakshi, PS Joypur, Howrah', 711303, 'Non-Government Organisation', 3, 'Female', 50, 1, 'WB/JJ/HOW/01/02/0146/2', '2021-03-31 18:30:00', '2026-03-30 18:30:00', 0, '', '', 0),
('CCI_060', 'HOWRAH', 'Chiranabin', 'Vill Parbakshi, PO Bakshi, PS Joypur, Howrah', 711303, 'Non-Government Organisation', 4, 'Female', 50, 1, 'WB/JJ/HOW/01/02/0146/3', '2021-03-31 18:30:00', '2026-03-30 18:30:00', 0, '', '', 0),
('CCI_061', 'HOWRAH', 'Hijli Kalyan Kendra, Boys (Open Shelter)', 'Kaminipara, Thana Makua, Panchanantala, Bakultala, P.O.-Danesh Sk. Lane, PS-Sankrail, Howrah-711109', 711109, 'Non-Government Organisation', 1, 'Male', 25, 1, 'WB/JJ/HOW/03/02/0157', '2023-06-21 18:30:00', '2028-06-20 18:30:00', NULL, NULL, NULL, NULL),
('CCI_062', 'HOWRAH', 'Howrah Central Supravat, Boys (Open Shelter)', 'Ghanshyam Apartment, Gt. Floor, Chunavati, P.O.-Podra, Sankrail, Howrah-711109', 711109, 'Non-Government Organisation', 1, 'Male', 25, 1, 'WB/JJ/MID(W)/ 03/01/0004', '2022-07-31 18:30:00', '2027-07-30 18:30:00', NULL, NULL, NULL, NULL),
('CCI_063', 'HOWRAH', 'Howrah South Point - Lalkuthi Home for Girls', '83/1 Dakshin Baksara, 1st bye lane, Howrah-711109', NULL, 'Non-Government Organisation', 1, 'Female', NULL, 0, 'WB/JJ/HOW/01/02/0093', '2018-06-28 18:30:00', '2023-06-27 18:30:00', 5, NULL, NULL, NULL),
('CCI_064', 'HOWRAH', 'Itinda Community Development Society', 'Vill Bhooyarah, PO Mugkalyan, Howrah ', 711312, 'Non-Government Organisation', 1, 'Male', 50, 1, 'WB/JJ/HOW/01/01/0043', '2022-03-31 18:30:00', '2027-03-30 18:30:00', 0, '', '', 0),
('CCI_065', 'HOWRAH', 'Itinda Community Development Society', 'Vill Bhooyarah, PO Mugkalyan, Howrah ', 711312, 'Non-Government Organisation', 2, 'Male', 50, 1, 'WB/JJ/HOW/01/01/0134', '2021-03-31 18:30:00', '2026-03-30 18:30:00', 0, '', '', 0),
('CCI_066', 'HOWRAH', 'Keuti Purba Dharani Biplabi Sangha', '43, Sailendra (nath) Bose Road, P.S. Golabari,  Dist-Howrah', 711106, 'Non-Government Organisation', 1, 'Combined', 10, 1, 'WB/JJ/HOW/02/03/0031', '2022-03-31 18:30:00', '2027-03-30 18:30:00', 5, '', '', 0),
('CCI_067', 'HOWRAH', 'Khardah Public Cultural & Welfare Association (Open Shelter)', 'Vill-Khardah, PO-Tulshiberia, Dist-Howrah, Pin-711401', 711401, 'Non-Government Organisation', 1, 'Male', 25, 1, 'WB/JJ/HOW/03/01/0001', '2022-06-30 18:30:00', '2027-06-29 18:30:00', NULL, NULL, NULL, NULL),
('CCI_068', 'HOWRAH', 'SUNDARIBAI MULCHAND MAHATTA HOME (SMM HOME)', '8, STARK ROAD, LILUAH, PO- HOWRAH, PIN-711101, DIST- HOWRAH, WB', 0, 'Government', 1, 'Female', 50, 1, 'JJ/Reg./Gov/001/1', '2023-01-27 18:30:00', '2028-01-26 18:30:00', 5, NULL, NULL, 0),
('CCI_069', 'HOWRAH', 'SUNDARIBAI MULCHAND MAHATTA HOME (SMM HOME)', '8, STARK ROAD , LILUAH, PO+DIST- HOWRAH, PIN-711101', 0, 'Government', 1, 'Combined', 10, 1, 'WB/JJ/HOW/05/03/0006/1', '2022-03-31 18:30:00', '2026-12-15 18:30:00', 5, NULL, NULL, 0),
('CCI_070', 'HOWRAH', 'SUNDARIBAI MULCHAND MAHATTA HOME (SMM HOME)', '8, STARK ROAD, LILUAH, PO- HOWRAH, PIN- 711101, DIST- HOWRAH, WB', 0, 'Government', 2, 'Female', 50, 1, 'JJ/Reg./Gov./001/2', '2023-01-27 18:30:00', '2028-01-26 18:30:00', 5, NULL, NULL, 0),
('CCI_071', 'HOWRAH', 'SUNDARIBAI MULCHAND MAHATTA HOME (SMM HOME)', '8, STARK ROAD, LILUAH, PO+DIST- HOWRAH, PIN-711101', 0, 'Government', 2, 'Combined', 10, 1, 'WB/JJ/HOW/05/03/0006/2', '2022-03-31 18:30:00', '2026-12-15 18:30:00', 5, NULL, NULL, 0),
('CCI_072', 'HOWRAH', 'SUNDARIBAI MULCHAND MAHATTA HOME (SMM HOME)', '8, STARK ROAD, LILUAH, PO- HOWRAH, DIST- HOWRAH, PIN- 711101', 0, 'Government', 3, 'Female', 50, 1, 'JJ/Reg./Gov./001/3', '2023-01-27 18:30:00', '2028-01-26 18:30:00', 5, NULL, NULL, 0),
('CCI_073', 'HOWRAH', 'SUNDARIBAI MULCHAND MAHATTA HOME (SMM HOME)', '8, STARK ROAD, LILUAH, PO+DIST- HOWRAH, PIN-711101', 0, 'Government', 4, 'Female', 50, 1, 'JJ/Reg./Gov./001/4', '2023-01-27 18:30:00', '2028-01-26 18:30:00', 5, NULL, NULL, 0),
('CCI_074', 'HOWRAH', 'SUNDARIBAI MULCHAND MAHATTA HOME (SMM HOME)', '8, STARK ROAD, LILUAH PO+DIST- HOWRAH, PIN- 711101', 0, 'Government', 5, 'Female', 50, 1, 'JJ/Reg/Gov./001/5', '2023-01-27 18:30:00', '2028-01-26 18:30:00', 5, NULL, NULL, 0),
('CCI_075', 'HOWRAH', 'SUNDARIBAI MULCHAND MAHATTA HOME (SMM HOME)', '8, STARK ROAD, LILUAH, PO+DIST- HOWRAH, PIN-711101', 0, 'Government', 6, 'Female', 50, 1, 'JJ/Reg./Gov./001/6', '2023-01-27 18:30:00', '2028-01-26 18:30:00', 5, NULL, NULL, 0),
('CCI_076', 'HOWRAH', 'SUNDARIBAI MULCHAND MAHATTA HOME (SMM HOME)', '8, STARK ROAD,  LILUAH PO+DIST- HOWRAH, PIN-711101', 0, 'Government', 7, 'Female', 50, 1, 'JJ/Reg./Gov./001/7', '2023-01-27 18:30:00', '2028-01-26 18:30:00', 5, NULL, NULL, 0),
('CCI_077', 'HOWRAH', 'Youth Welfare and Cultural Society, (Open Shelter for Boys)', 'Amriya, PO-Kolorah, Domjur, Howrah, Pin-711411', 711411, 'Non-Government Organisation', 1, 'Male', 25, 1, 'WB/JJ/KOL/03/01/0015', '2023-06-28 18:30:00', '2028-06-27 18:30:00', NULL, NULL, NULL, NULL),
('CCI_078', 'JALPAIGURI', 'Anubhab run by Jalpaiguri Mahila Kalyan Sangha', 'New Town Bose Para, PO & Dist Jalpaiguri', 735101, 'Non-Government Organisation', 1, 'Female', 50, 1, 'WB/JJ/JAL/01/02/0054', '2022-03-31 18:30:00', '2027-03-30 18:30:00', 0, '', '', 0),
('CCI_079', 'JALPAIGURI', 'Howrah South Point, Bakuabari, CWSN girls', ',P.O,- Mohitnagar, Pin Code 735102, Dist -  Jalpaiguri', NULL, 'Non-Government Organisation', 1, 'Female', NULL, 0, 'WB/JJ/JAL/01/02/0139', '2018-06-28 18:30:00', '2023-06-27 18:30:00', 6, NULL, NULL, NULL),
('CCI_080', 'JALPAIGURI', 'Howrah South Point, Mogradangi, CWSN boys', 'Mogradangi,P.O- Payachari, Pin Code 735135, Dist -  Jalpaiguri', NULL, 'Non-Government Organisation', 1, 'Male', NULL, 0, 'WB/JJ/JAL/01/01/0119', '2018-06-28 18:30:00', '2023-06-27 18:30:00', 6, NULL, NULL, NULL),
('CCI_081', 'JALPAIGURI', 'Howrah South Point, Mohitnagar, CWSN boys', 'Jalpaiguri Branch,P.O- Mohitnagar, Pin Code 735102, Dist -  Jalpaiguri', NULL, 'Non-Government Organisation', 1, 'Male', NULL, 0, '3172/SW/O/JJA-71/16', '2016-03-31 18:30:00', '2021-03-30 18:30:00', 6, NULL, NULL, NULL),
('CCI_082', 'JALPAIGURI', 'KORAK CHILDREN HOME FOR BOYS', 'RACE COURSE, DIST- JALPAIGURI, WB', 0, 'Government', 1, 'Male', 50, 1, 'JJ/Reg./Gov./009/1', '2023-01-27 18:30:00', '2028-01-26 18:30:00', 5, NULL, NULL, 0),
('CCI_083', 'JALPAIGURI', 'KORAK CHILDREN HOME FOR BOYS', 'RACE COURSE, DIST-JALPAIGURI, WB', 0, 'Government', 2, 'Male', 50, 1, 'JJ/Reg/Gov./009/2', '2023-01-27 18:30:00', '2028-01-26 18:30:00', 5, NULL, NULL, 0),
('CCI_084', 'JALPAIGURI', 'KOROK CHILDREN HOME FOR BOYS', NULL, 0, 'Government', 1, 'Combined', 10, 1, 'WB/JJ/JAL/05/03/0005', '2021-12-08 18:30:00', '2026-12-07 18:30:00', 5, NULL, NULL, 0),
('CCI_085', 'JALPAIGURI', 'Nijoloy Children Home for Girls (Womens Interlink Foundation)', 'Pandapara Battola, PO Pandapara Kalibari, Jalpaiguri', 735132, 'Non-Government Organisation', 1, 'Female', 50, 1, 'WB/JJ/JAL/01/02/0148', '2018-03-31 18:30:00', '2023-03-30 18:30:00', 0, '', '', 0),
('CCI_086', 'JALPAIGURI', 'Swapnatoron\n(25 boys)', 'Senpara, Ward No-2, P.O & Dist. Jalpaiguri, PIN-735101', NULL, 'Non-Government Organisation', 1, 'Male', 25, 0, NULL, '2025-01-04 12:32:07', '2025-01-04 12:32:07', 6, NULL, NULL, NULL),
('CCI_087', 'JHARGRAM', 'Nivedita Gramin Karma Mandir', 'PO-Manikpara, Dist-Jhargram', 721513, 'Non-Government Organisation', 1, 'Combined', 10, 1, 'WB/JJ/JHA/02/03/0135', '2021-03-31 18:30:00', '2026-03-30 18:30:00', 5, '', '', 0),
('CCI_088', 'KALIMPONG', 'Apostolic Convent Fellowship Welfare Society (Boys)', 'Dr. B. L. Dixit Road, Pin. 734301', NULL, 'Non-Government Organisation', 1, 'Male', NULL, 0, 'PROV/WB/JJ/0105', '2017-12-28 18:30:00', '2018-06-27 18:30:00', 4, NULL, NULL, NULL),
('CCI_089', 'KALIMPONG', 'Apostolic Convent Fellowship Welfare Society (Girls)', 'Dr. B. L. Dixit Road, Pin. 734301', NULL, 'Non-Government Organisation', 1, 'Female', NULL, 0, 'PROV/WB/JJ/0106', '2017-12-28 18:30:00', '2018-06-27 18:30:00', 4, NULL, NULL, NULL),
('CCI_090', 'KALIMPONG', 'Bal Suraksha Abhiyan Trust (Ashadeep) for boys', 'Risi road, 8th mile, Po+Ps- Kalimpong, 734301', NULL, 'Non-Government Organisation', 1, 'Male', NULL, 0, 'WB/JJ/KAL/01/01/0051', '2018-06-28 18:30:00', '2023-06-27 18:30:00', 6, NULL, NULL, NULL),
('CCI_091', 'KALIMPONG', 'Bal Suraksha Abhiyan Trust (Ashadeep) for Girls', 'Risi road, 8th mile, Po+Ps- Kalimpong, 734301', NULL, 'Non-Government Organisation', 1, 'Female', NULL, 0, 'WB/JJ/KAL/01/02/0053', '2018-06-28 18:30:00', '2023-06-27 18:30:00', 5, NULL, NULL, NULL),
('CCI_092', 'KALIMPONG', 'Hope Family Trust ', 'Primtam Road, kalimpong, Pin-734301', NULL, 'Non-Government Organisation', 1, 'Female', NULL, 0, 'PROV/WB/JJ/0091', '2017-12-28 18:30:00', '2018-06-27 18:30:00', 2, NULL, NULL, NULL),
('CCI_093', 'KALIMPONG', 'Hosanna Covenant Charitable Trust \n(25 boys)', 'Adhikari gaon, lower bong busty, Opp. Bajla floor mill, Kalimpong', NULL, 'Non-Government Organisation', 1, 'Male', 25, 0, 'WB/JJ/KAL/01/01/0126', '2022-07-17 18:30:00', '2027-07-16 18:30:00', 5, NULL, NULL, NULL),
('CCI_094', 'KOLKATA', 'All Bengal Womens Union ', '89, Elliot Road, Kolkata', 700017, 'Non-Government Organisation', 1, 'Female', 50, 1, 'JJ/Reg/NGO-004', '2013-06-20 18:30:00', '2015-03-30 18:30:00', 0, '', '', 0),
('CCI_095', 'KOLKATA', 'All Bengal Womens Union ', '89, Elliot Road, Kolkata', 700017, 'Non-Government Organisation', 2, 'Female', 50, 1, 'JJ/Reg/NGO-004', '2013-03-31 18:30:00', '2015-03-30 18:30:00', 0, '', '', 0),
('CCI_096', 'KOLKATA', 'Amader Bari Child In Need Institute (CINI)', '63, Rafi Ahmed Kidwai Road, Kolkata', 700016, 'Non-Government Organisation', 1, 'Female', 50, 1, 'WB/JJ/KOL/01/02/0066', '2022-03-31 18:30:00', '2027-03-30 18:30:00', 0, '', '', 0),
('CCI_097', 'Kolkata', 'Amader Padakhep Open Shelter', '75, Purba Phulbagan near Sahid Bedi, PS-Patuli, Kolkata-700086', 700086, 'Non-Government Organisation', 1, 'Male', 25, 1, 'WB/JJ/HOW/03/01/0052', '2023-06-28 18:30:00', '2028-06-27 18:30:00', NULL, NULL, NULL, NULL),
('CCI_098', 'KOLKATA', 'Anandaloy Home for Boys run by Emanuel ministries', '28 B Creek Row, Kolkata- 700014', NULL, 'Non-Government Organisation', 1, 'Male', NULL, 0, 'WB/JJ/KOL/01/01/0121', '2022-06-26 18:30:00', '2027-06-25 18:30:00', 5, NULL, NULL, NULL),
('CCI_099', 'Kolkata', 'Bengal Service Society Open Shelter', '196F/2A/1 Picnic Garden Road , Kol-39', 700039, 'Non-Government Organisation', 1, 'Male', 25, 1, 'WB/JJ/KOL/03/01/0003', '2022-07-31 18:30:00', '2027-07-30 18:30:00', NULL, NULL, NULL, NULL),
('CCI_100', 'Kolkata', 'Calcutta Social Project Open Shelter for Boys', '1/4 , Monoharpukur Road, Kolkata- 700029', 700029, 'Non-Government Organisation', 1, 'Male', 25, 1, 'WB/JJ/KOL/03/01/0105', '2018-06-25 18:30:00', '2023-06-24 18:30:00', NULL, NULL, NULL, NULL),
('CCI_101', 'Kolkata', 'Calcutta Social Project Open Shelter for Girls', '1/4 , Monoharpukur Road, Kolkata- 700029', 700029, 'Non-Government Organisation', 1, 'Female', 25, 1, 'WB/JJ/KOL/03/01/0010', '2022-12-31 18:30:00', '2027-12-30 18:30:00', NULL, NULL, NULL, NULL),
('CCI_102', 'Kolkata', 'Child in Need Institute (CINI)', 'Chaitanya Library 4/1 Dani Ghosh Sarani, Bedon Street, Kolkata 6', 700006, 'Non-Government Organisation', 1, 'Male', 25, 1, 'WB/JJ/MID(E )/03/01/0136', '2023-06-25 18:30:00', '2028-06-24 18:30:00', NULL, NULL, NULL, NULL),
('CCI_103', 'Kolkata', 'Child in need Institute (CINI) Urban Unit, Hamara Ghar, Open Shelter', '37 Pottery Road, Kolkata - 700015', 700015, 'Non-Government Organisation', 1, 'Male', 25, 1, 'WB/JJ/KOL/03/02/0013', '2023-06-20 18:30:00', '2028-06-19 18:30:00', NULL, NULL, NULL, NULL),
('CCI_104', 'Kolkata', 'Child in need Institute (CINI) Urban Unit-II,', 'Sealdah Carshed', NULL, 'Non-Government Organisation', 1, 'Male', 25, 1, NULL, '2025-01-04 12:32:07', '2025-01-04 12:32:07', NULL, NULL, NULL, NULL),
('CCI_105', 'KOLKATA', 'Childlife Preserve Shishur Sevay \n(25 girls)', '17/2/7 Sahapur Main Road, Kolkata-700038.', NULL, 'Non-Government Organisation', 1, 'Female', 25, 0, 'WB/JJ/KOL/01/02/0116', '2022-06-16 18:30:00', '2027-06-15 18:30:00', 5, NULL, NULL, NULL),
('CCI_106', 'KOLKATA', 'Children Home for Boys UNIT I run by Future Hope', '1/8 Rowland Road', 700020, 'Non-Government Organisation', 1, 'Male', 25, 1, 'WB/JJ/KOL/01/01/0088', '2023-06-28 18:30:00', '2028-06-27 18:30:00', 0, '', '', 0),
('CCI_107', 'KOLKATA', 'Children Home for Boys UNIT II run by Future Hope', '200/2D Rashbehari Avenue', 700029, 'Non-Government Organisation', 1, 'Male', 25, 1, 'WB/JJ/KOL/01/01/0115', '2023-05-11 18:30:00', '2028-05-10 18:30:00', 0, NULL, NULL, 0),
('CCI_108', 'KOLKATA', 'Children Home for Boys UNIT III run by Future Hope', '6, Bompass Road', 700029, 'Non-Government Organisation', 1, 'Male', 25, 1, 'WB/JJ/KOL/01/01/0120', '2022-06-09 18:30:00', '2027-06-08 18:30:00', 0, NULL, NULL, 0),
('CCI_109', 'KOLKATA', 'Children Home for Girls run by Future Hope', '32 A and B Old, Ballygunge 2nd Lane', 700019, 'Non-Government Organisation', 1, 'Female', 50, 1, 'WB/JJ/KOL/01/02/0063', '2018-06-28 18:30:00', '2023-06-27 18:30:00', 0, '', '', 0),
('CCI_110', 'KOLKATA', 'Free to be Kids Children Home for Girls', '17/3 Srijoni, Joka, Thakurpukur, PS-Haridevpur, Kol-104', NULL, 'Non-Government Organisation', 1, 'Female', NULL, 0, 'PROV/WB/JJ/0055', '2019-12-28 18:30:00', '2020-06-27 18:30:00', 6, NULL, NULL, NULL),
('CCI_111', 'KOLKATA', 'Future Hope (Children Home for Little Girls)', '1/12, Rowland Road, Kolkata - 700020', NULL, 'Non-Government Organisation', 1, 'Female', NULL, 0, 'PROV/WB/JJ/0132', '2017-12-28 18:30:00', '2018-06-27 18:30:00', 6, NULL, NULL, NULL),
('CCI_112', 'Kolkata', 'Gana Unyan Parshad Open Shelter for Boys', '28/1B/1, Bospukur Road, Kolkata- 700045', 700045, 'Non-Government Organisation', 1, 'Male', 25, 1, 'WB/JJ/KOL/03/01/0019', '2023-06-20 18:30:00', '2028-06-19 18:30:00', NULL, NULL, NULL, NULL),
('CCI_113', 'Kolkata', 'Gandhi Peace Foundation (Open Shelter for Girls)', 'West Chowbaga, Kolkata-', 700105, 'Non-Government Organisation', 1, 'Female', 25, 1, 'WB/JJ/KOL/03/01/0014', '2023-06-20 18:30:00', '2028-06-19 18:30:00', NULL, NULL, NULL, NULL),
('CCI_114', 'Kolkata', 'Garden Reach Alif Nagar Development Organisation (Open Shelter)', 'G-352/1 Alif Nagar (Garden Reach), Kolkata-700024', 700024, 'Non-Government Organisation', 1, 'Male', 25, 1, 'PROV/WB/JJ/0012', '2017-12-20 18:30:00', '2018-06-19 18:30:00', NULL, NULL, NULL, NULL),
('CCI_115', 'Kolkata', 'Garden Reach Bangla Bustee (Open Shelter)', 'G-38, Bangla Basti, Garden Reach Road, Kolkata-700024', 700024, 'Non-Government Organisation', 1, 'Male', 25, 1, 'WB/JJ/KOL/03/01/0098', '2018-06-20 18:30:00', '2023-06-19 18:30:00', NULL, NULL, NULL, NULL),
('CCI_116', 'Kolkata', 'Garden Reach Slum Development (Open Shelter)', 'P-229 Tikia Para 1st Lane, Garfden Reach, Kolkata-700024', 700024, 'Non-Government Organisation', 1, 'Female', 25, 1, 'PROV/WB/JJ/0023', '2017-12-25 18:30:00', '2018-06-24 18:30:00', NULL, NULL, NULL, NULL),
('CCI_117', 'KOLKATA', 'Hamara Ghar Child In Need Institute (CINI)', '37, Pottery Road, Tangra, Kolkata', 700015, 'Non-Government Organisation', 1, 'Male', 50, 1, 'WB/JJ/KOL/01/01/0086', '2023-03-31 18:30:00', '2028-03-30 18:30:00', 0, '', '', 0),
('CCI_118', 'KOLKATA', 'Hope Kolkata Foundation  (Crisis Interventation Center) Children Home for Girls', '60 A/4 Bosepukur road, Kolkata 700042', NULL, 'Non-Government Organisation', 1, 'Female', NULL, 0, 'WB/JJ/KOL/01/02/0110', '2018-06-28 18:30:00', '2023-06-27 18:30:00', 5, NULL, NULL, NULL),
('CCI_119', 'KOLKATA', 'Hope Kolkata Foundation (Be kind Children Home for Boys)', 'EF-55, 901, Rajdanga Main Road, Kolkata 700107', NULL, 'Non-Government Organisation', 1, 'Male', NULL, 0, 'WB/JJ/KOL/01/01/0111', '2018-06-28 18:30:00', '2023-06-27 18:30:00', 5, NULL, NULL, NULL),
('CCI_120', 'KOLKATA', 'Hope Kolkata Foundation (Crisis Interventation Center) Children Home for Boys', '42, Russo Road, PS. Jadavpur, Kolkata 700033', NULL, 'Non-Government Organisation', 1, 'Male', NULL, 0, 'WB/JJ/KOL/01/01/0109', '2018-06-28 18:30:00', '2023-06-27 18:30:00', 5, NULL, NULL, NULL),
('CCI_121', 'KOLKATA', 'Hope Kolkata Foundation (Punarjiban Home for Addicted Children) (Boys)', '16, Dr. Radha Gobina Nath Sarani, Kolkata 700033', NULL, 'Non-Government Organisation', 1, 'Male', NULL, 0, 'WB/JJ/KOL/01/01/0097', '2018-06-28 18:30:00', '2023-06-27 18:30:00', 5, NULL, NULL, NULL),
('CCI_122', 'KOLKATA', 'Hope Kolkata Foundation Ashar Alo (Children Home for Girls) (Unit I)', '1/2/1B/1, Dharmatala Road, Kolkata - 700042', NULL, 'Non-Government Organisation', 1, 'Female', NULL, 0, '2305-SW/O/JJA-45/16', '2016-03-31 18:30:00', '2021-03-30 18:30:00', 4, NULL, NULL, NULL),
('CCI_123', 'KOLKATA', 'Hope Kolkata Foundation(Ashirbad Home)(Boys)', '39, Panditiya Place, Kolkata- 700029', NULL, 'Non-Government Organisation', 1, 'Male', NULL, 0, '2389-SW/O/JJA-45/16', '2016-03-31 18:30:00', '2021-03-30 18:30:00', 4, NULL, NULL, NULL),
('CCI_124', 'KOLKATA', 'Hope Kolkata Foundation(Kasba Girls Home) (Unit II) (Girls)', '1/2/1B/1, Dharmatala Road, Kolkata - 700042', NULL, 'Non-Government Organisation', 1, 'Female', NULL, 0, '2316-SW/O/JJA-52/16', '2016-03-31 18:30:00', '2021-03-30 18:30:00', 4, NULL, NULL, NULL),
('CCI_125', 'Kolkata', 'Humanity Association (Open Shelter for boys)', '226, B.B. Ganguly Street, Kolkata -12', 700012, 'Non-Government Organisation', 1, 'Male', 25, 1, 'WB/JJ/KOL/03/01/0005', '2022-07-31 18:30:00', '2027-07-30 18:30:00', NULL, NULL, NULL, NULL),
('CCI_126', 'KOLKATA', 'Indian Society for Rehabilitations of Children', '9B, lake View Road', 700029, 'Non-Government Organisation', 1, 'Combined', 10, 1, 'WB/JJ/KOL/02/03/0047', '2022-03-31 18:30:00', '2027-03-30 18:30:00', 5, '', '', 0),
('CCI_127', 'KOLKATA', 'Indian Society for Rehabilitations of Children', '9B, lake View Road', 700029, 'Non-Government Organisation', 2, 'Combined', 10, 1, '0', '2023-12-06 18:30:00', '2023-12-06 18:30:00', 1, '', '', 0),
('CCI_128', 'Kolkata', 'Institute of Psychological & Educational Research (IPER)(Open Shelter)', 'P 39/1 , Prince Anwar Shah Road, Kolkata - 700045', 700045, 'Non-Government Organisation', 1, 'Female', 25, 1, 'WB/JJ/KOL/03/01/0020', '2023-06-20 18:30:00', '2028-06-19 18:30:00', NULL, NULL, NULL, NULL),
('CCI_129', 'KOLKATA', 'Jatiyo Kristiyo Prochar Samity (Children Home for girls)(Mahima Umang)', '88/14, Bhattacharjee Para, Kolkata - 700063', NULL, 'Non-Government Organisation', 1, 'Female', NULL, 0, 'WB/JJ/KOL/01/02/0103', '2021-03-31 18:30:00', '2026-03-30 18:30:00', 5, NULL, NULL, NULL),
('CCI_130', 'KOLKATA', 'Jatiyo Kristiyo Prochar Samity (Children Home for Girls)(MAHIMA Umeed )', '18/4, M. G. Road, Balaka, Joka - II, Kolkata 700104', NULL, 'Non-Government Organisation', 1, 'Female', NULL, 0, 'WB/JJ/KOL/01/02/0108', '2021-03-31 18:30:00', '2026-03-30 18:30:00', 5, NULL, NULL, NULL),
('CCI_131', 'KOLKATA', 'Keertika Protection Home Children Home for Girls', '91 A/69, BL Saha Road, Kolkata - 700053', NULL, 'Non-Government Organisation', 1, 'Female', NULL, 0, 'Wb/JJ/KOL/01/02/0044', '2018-06-28 18:30:00', '2023-06-27 18:30:00', 5, NULL, NULL, NULL),
('CCI_132', 'Kolkata', 'Liberal Association for Movement of People (LAMP) (Open Shelter)', '66,Surya Sen Street, Kol.- 09', 700009, 'Non-Government Organisation', 1, 'Female', 25, 1, 'WB/JJ/KOL/03/02/0006', '2017-07-31 18:30:00', '2022-07-30 18:30:00', NULL, NULL, NULL, NULL),
('CCI_133', 'Kolkata', 'Lutheran World Service India Trust', '33/7 Murari Pukur Road, Kolkata 10', 700010, 'Non-Government Organisation', 1, 'Female', 25, 1, 'PROV/WB/JJ/0036', '2017-12-26 18:30:00', '2018-06-25 18:30:00', NULL, NULL, NULL, NULL),
('CCI_134', 'KOLKATA', 'Missionaries of Charity (Daya Dan Children Home for Boys)', '58/1, Nimtala Ghat Street, Kolkata - 700006.', NULL, 'Non-Government Organisation', 1, 'Male', NULL, 0, 'WB/JJ/KOL/01/01/0038', '2018-06-28 18:30:00', '2023-06-27 18:30:00', 5, NULL, NULL, NULL),
('CCI_135', 'KOLKATA', 'Missionaries of Charity (Daya Dan Children Home for Girls)', '58/1, Nimtala Ghat Street, Kolkata - 700006.', NULL, 'Non-Government Organisation', 1, 'Female', NULL, 0, 'WB/JJ/KOL/01/02/0042', '2018-06-28 18:30:00', '2023-06-27 18:30:00', 6, NULL, NULL, NULL),
('CCI_136', 'Kolkata', 'National Council for Women in India Child and Welfare Section (NCWI) (Open Shelter)', 'Bosumati Bhavan, 166, BB Ganguly Street, Kolkata- 700012', 700012, 'Non-Government Organisation', 1, 'Female', 25, 1, 'PROV/WB/JJ/0084', '2017-12-28 18:30:00', '2018-06-27 18:30:00', NULL, NULL, NULL, NULL),
('CCI_137', 'KOLKATA', 'Nirmala Sishu Bhawan (Children Home for CWSN Girls)', '78, AJC Bose Road, Kolkata - 700014', NULL, 'Non-Government Organisation', 1, 'Female', NULL, 0, 'WB/JJ/KOL/01/02/0083', '2018-12-28 18:30:00', '2023-06-27 18:30:00', 5, NULL, NULL, NULL),
('CCI_138', 'KOLKATA', 'Pouline Home for Girl run by Emanuel ministries', '56A Prince Gulam Hussain Shah Road. Jadavpur. Kolkata-700032', NULL, 'Non-Government Organisation', 1, 'Female', NULL, 0, 'WB/JJ/KOL/01/02/0124', '2022-06-12 18:30:00', '2027-06-11 18:30:00', 5, NULL, NULL, NULL),
('CCI_139', 'KOLKATA', 'Prerona run by Paschim Banga Krira -o- Janakalyan Parishad (Children Home for Girls)', '29 Biren Roy Road, Kolkata 700008 ', NULL, 'Non-Government Organisation', 1, 'Female', NULL, 0, 'WB/JJ/KOL/01/02/0131', '2021-03-31 18:30:00', '2026-03-30 18:30:00', 5, NULL, NULL, NULL),
('CCI_140', 'Kolkata', 'Shafkat Alam Centre Tiljala SHED (Open Shelter)', '52 Tiljala Road, Kolkata- 700046', 700046, 'Non-Government Organisation', 1, 'Male', 25, 1, 'WB/JJ/KOL/03/02/0061', '2023-06-27 18:30:00', '2028-06-26 18:30:00', NULL, NULL, NULL, NULL),
('CCI_141', 'KOLKATA', 'Society for Indian Childrens Welfare', '20 & 22 Col. Biswas Road, Beckbagan', 700019, 'Non-Government Organisation', 1, 'Combined', 10, 1, 'WB/JJ/KOL/02/03/0041', '2022-03-31 18:30:00', '2027-03-30 18:30:00', 5, '', '', 0),
('CCI_142', 'KOLKATA', 'Society for Indian Childrens Welfare', '20 & 22 Col. Biswas Road, Beckbagan', 700019, 'Non-Government Organisation', 2, 'Combined', 10, 1, 'WB/JJ/KOL/02/03/0041/1', '2022-03-31 18:30:00', '2027-03-30 18:30:00', 5, '', '', 0),
('CCI_143', 'KOLKATA', 'Society for Indian Childrens Welfare', '20 & 22 Col. Biswas Road, Beckbagan', 700019, 'Non-Government Organisation', 3, 'Combined', 10, 1, 'WB/JJ/KOL/02/03/0041/3', '2022-03-31 18:30:00', '2027-03-30 18:30:00', 5, '', '', 0),
('CCI_144', 'KOLKATA', 'The Indian Society for Sponsorship and Adoption', '1, Palace Court, 1, Kyd Street, Kolkata- 700016  Home: P-41, Sector -A Metropolitan Co- operative Society', 700105, 'Non-Government Organisation', 1, 'Combined', 10, 1, 'WB/JJ/KOL/02/03/0071/1', '2022-03-31 18:30:00', '2027-03-30 18:30:00', 5, '', '', 0),
('CCI_145', 'KOLKATA', 'The Indian Society for Sponsorship and Adoption', '1, Palace Court, 1, Kyd Street, Kolkata- 700016  Home: P-41, Sector -A Metropolitan Co- operative Society', 700105, 'Non-Government Organisation', 2, 'Combined', 10, 1, 'WB/JJ/KOL/02/03/0071/2', '2022-03-31 18:30:00', '2027-03-30 18:30:00', 5, '', '', 0),
('CCI_146', 'KOLKATA', 'The Indian Society for Sponsorship and Adoption', '1, Palace Court, 1, Kyd Street, Kolkata- 700016  Home: P-41, Sector -A Metropolitan Co- operative Society', 700105, 'Non-Government Organisation', 3, 'Combined', 10, 1, 'WB/JJ/KOL/02/03/0071/3', '2022-03-31 18:30:00', '2027-03-30 18:30:00', 5, '', '', 0),
('CCI_147', 'KOLKATA', 'The Indian Society for Sponsorship and Adoption', '1, Palace Court, 1, Kyd Street, Kolkata- 700016  Home: P-41, Sector -A Metropolitan Co- operative Society', 700105, 'Non-Government Organisation', 4, 'Combined', 10, 1, 'WB/JJ/KOL/02/03/0071/4', '2022-03-31 18:30:00', '2027-03-30 18:30:00', 5, '', '', 0),
('CCI_148', 'Kolkata', 'TRINITA Society for Social & Health Research (Open Shelter)', '30 B Radhamadhab Dutta Garden Lane, Kolkata-10', 700010, 'Non-Government Organisation', 1, 'Male', 25, 1, 'WB/JJ/BAR(E )/03/01/0107', '2018-06-20 18:30:00', '2023-06-19 18:30:00', NULL, NULL, NULL, NULL),
('CCI_149', 'Kolkata', 'TRINITA Society for Social & Health Research (Open Shelter)', '32/3, Tapsia Road, (South), Kolkata- 700046 (forth Floor)', 700046, 'Non-Government Organisation', 1, 'Male', 25, 1, 'WB/JJ/KOL/03/02/0158', '2023-06-26 18:30:00', '2028-06-25 18:30:00', NULL, NULL, NULL, NULL),
('CCI_150', 'Kolkata', 'United Bustee Development Association (UBDA) (Open Shelter)', '22/E, Gorachand Road, Kolkata - 700014', 700014, 'Non-Government Organisation', 1, 'Male', 25, 1, 'WB/JJ/KOL/03/02/0074', '2023-06-25 18:30:00', '2028-06-24 18:30:00', NULL, NULL, NULL, NULL),
('CCI_151', 'Kolkata', 'West Bengal Council for Child Welfare (WBCCW) (Open Shelter)', '42, Ramesh Mitra Road, Kolkata-700025', 700025, 'Non-Government Organisation', 1, 'Female', 25, 1, 'WB/JJ/KOL/03/01/0065', '2018-06-20 18:30:00', '2023-06-19 18:30:00', NULL, NULL, NULL, NULL),
('CCI_152', 'MALDAH', 'CHILDREN HOME FOR GIRLS, MALDA (SHAISHALI SISHU KANYA ABAS)', 'SARBOMANGALA ROAD, PO+DIST- MALDA, WB', 0, 'Government', 1, 'Female', 50, 1, 'JJ/Reg./Gov./017/1', '2023-01-27 18:30:00', '2028-01-26 18:30:00', 5, NULL, NULL, 0),
('CCI_153', 'MALDAH', 'CHILDREN HOME FOR GIRLS, MALDA (SHAISHALI SISHU KANYA ABAS)', 'SARBOMANGALA ROAD, PO+DIST-MALDA, WB', 0, 'Government', 2, 'Female', 50, 1, 'JJ/Reg./Gov./017/2', '2023-01-27 18:30:00', '2028-01-26 18:30:00', 5, NULL, NULL, 0),
('CCI_154', 'MALDAH', 'Sunitee Sishu Griha run by Haiderpur Shelter of Malda', 'Maheshmati (West) Behind Bikram Club', 732101, 'Non-Government Organisation', 1, 'Combined', 10, 1, 'WB/JJ/MAL/02/03/0027', '2022-03-31 18:30:00', '2027-03-30 18:30:00', 5, '', '', 0),
('CCI_155', 'MURSHIDABAD', 'ANANDA ASHRAM HOME (M)', 'K.N.ROAD, PO- BERHAMPORE, DIST- MURSHIDABAD, WB', 0, 'Government', 1, 'Male', 50, 1, 'JJ/Reg./Gov./ 013/1', '2023-01-27 18:30:00', '2028-01-26 18:30:00', 5, NULL, NULL, 0),
('CCI_156', 'MURSHIDABAD', 'ANANDA ASHRAM HOME (M)', 'K.N.ROAD, PO- BERHAMPORE, DIST- MURSHIDABAD', 0, 'Government', 2, 'Male', 50, 1, 'JJ/Reg./Gov./013/2', '2023-01-27 18:30:00', '2028-01-26 18:30:00', 5, NULL, NULL, 0),
('CCI_157', 'MURSHIDABAD', 'Beldanga Bhagirathi Seva Sadan', 'Maheshmati (West) Behind Bikram Club', 732101, 'Non-Government Organisation', 1, 'Combined', 10, 1, 'WB/JJ/MUR/02/03/0025', '2019-08-24 18:30:00', '2024-08-23 18:30:00', 5, '', '', 0),
('CCI_158', 'MURSHIDABAD', 'Domkal Vikas Kendra', 'Vill-+PO-Domkal, PS-Domkal', 742302, 'Non-Government Organisation', 1, 'Combined', 10, 1, 'WB/JJ/MUR/02/03/0033', '2022-03-31 18:30:00', '2027-03-30 18:30:00', 5, '', '', 0),
('CCI_159', 'MURSHIDABAD', 'Haripur Dr. Ambedkar Janaseba Mission', 'Vill & PO Nagar, PS Khargram, Murshidabad', 742159, 'Non-Government Organisation', 1, 'Female', 50, 1, 'WB/JJ/MUR/01/02/0106', '2021-03-31 18:30:00', '2026-03-30 18:30:00', 0, '', '', 0),
('CCI_160', 'MURSHIDABAD', 'Haripur Dr. Ambedkar Janasevba Mission. Home for boys', 'Vill+Po- Nagara. P.s -Khargram. Murshidabad, PIN742122', NULL, 'Non-Government Organisation', 1, 'Male', NULL, 0, NULL, '2025-01-04 12:32:07', '2025-01-04 12:32:07', 2, NULL, NULL, NULL),
('CCI_161', 'MURSHIDABAD', 'KAZI NAZRUL ISLAM CHILDRENS HOME (DESTITUTE HOME)', 'KADAI(M). KADAI, PO- BERHAMPORE, DIST- MURSHIDABAD', 0, 'Government', 2, 'Male', 50, 1, 'JJ/Reg.Gov./016/2', '2023-01-27 18:30:00', '2028-01-26 18:30:00', 5, NULL, NULL, 0),
('CCI_162', 'MURSHIDABAD', 'KAZI NAZRUL ISLAM CHILDRENS HOME(DESTITUTE HOME)', 'KADAI (M), KADAI, PO- BERHAMPORE, DIST- MURSHIDABAD, WB', 0, 'Government', 1, 'Male', 50, 1, 'JJ/Reg./Gov./016/1', '2023-01-27 18:30:00', '2028-01-26 18:30:00', 5, NULL, NULL, 0),
('CCI_163', 'MURSHIDABAD', 'SHILAYAN HOME FOR GIRLS', 'BABULBONA ROAD, BISHNUPUR, PO- BERHAMPORE, PIN-742101, DIST- MURSHIDABAD', 0, 'Government', 1, 'Female', 50, 1, 'JJ/Reg./Gov./006/1', '2023-01-27 18:30:00', '2028-01-26 18:30:00', 5, NULL, NULL, 0),
('CCI_164', 'MURSHIDABAD', 'SHILAYAN HOME FOR GIRLS', 'BABULBONA ROAD, BISHNUPUR, PO- BERHAMPORE, PIN-742101, DIST- MURSHIDABAD', 0, 'Government', 1, 'Combined', 10, 1, '0', '2023-12-05 18:30:00', '2023-12-05 18:30:00', 2, '', '', 0),
('CCI_165', 'MURSHIDABAD', 'SHILAYAN HOME FOR GIRLS', 'BABULBONA ROAD, BISHNUPUR, PO- BERHAMPORE, DIST- MURSHIDABAD, PIN-742101', 0, 'Government', 2, 'Female', 50, 1, 'JJ/Reg./Gov./006/2', '2023-01-27 18:30:00', '2028-01-26 18:30:00', 5, NULL, NULL, 0),
('CCI_166', 'MURSHIDABAD', 'SHILAYAN HOME FOR GIRLS', 'BABULBONA ROAD, BISHNUPUR, PO- BERHAMPORE, DIST- MURSHIDABAD, PIN-742101', 0, 'Government', 3, 'Female', 50, 1, 'JJ/Reg./Gov./006/3', '2023-01-27 18:30:00', '2028-01-26 18:30:00', 5, NULL, NULL, 0),
('CCI_167', 'MURSHIDABAD', 'SHILAYAN HOME FOR GIRLS', 'BABULBONA ROAD, BISHNUPUR, PO- BERHAMPORE, DIST- MURSHIDABAD, PIN-742101', 0, 'Government', 4, 'Female', 50, 1, 'JJ/Reg./Gov./006/4', '2023-01-27 18:30:00', '2028-01-26 18:30:00', 5, NULL, NULL, 0),
('CCI_168', 'MURSHIDABAD', 'SHILAYAN HOME FOR GIRLS', 'BABULBONA ROAD, BISHNUPUR, PO- BERHAMPORE, DIST- MURSHIDABAD', NULL, 'Government', 5, 'Female', 50, 1, ' JJ/Reg./Gov./006/5', '2023-01-27 18:30:00', '2028-01-26 18:30:00', 5, NULL, NULL, 0),
('CCI_169', 'MURSHIDABAD', 'SHILAYAN HOME FOR GIRLS', 'BABULBONA ROAD, BISHNUPUR, PO- BERHAMPORE, DIST- MURSHIDABAD', 0, 'Government', 6, 'Female', 50, 1, 'JJ/Reg./Gov./006/6', '2023-01-27 18:30:00', '2028-01-26 18:30:00', 5, NULL, NULL, 0),
('CCI_170', 'NADIA', 'CHILDREN HOME FOR GIRLS, NADIA', 'NAGENDRANAGAR, 3RD LANE, PO- KRISHNANAGAR, DIST- NADIA, WB', 0, 'Government', 1, 'Female', 50, 1, 'JJ/Reg./Gov./018/1', '2023-01-27 18:30:00', '2028-01-26 18:30:00', 5, NULL, NULL, 0),
('CCI_171', 'NADIA', 'Karimpur Social Welfare Society', 'Pattabuka More, PO Natna Pattabuka, PS Karimpur, Nadia', 741122, 'Non-Government Organisation', 1, 'Male', 50, 1, 'WB/JJ/NAD/01/01/0089', '2020-07-24 18:30:00', '2025-07-23 18:30:00', 0, '', '', 0),
('CCI_172', 'NADIA', 'Karimpur Social Welfare Society', 'Pattabuka More, PO Natna Pattabuka, PS Karimpur, Nadia', 741122, 'Non-Government Organisation', 2, 'Male', 50, 1, 'PROV/WB/JJ/0260', '2020-01-24 18:30:00', '2020-07-23 18:30:00', 0, '', '', 0),
('CCI_173', 'NADIA', 'Maa Sarada Sishu Tirtha (Children Home for Girls)', 'Vill. Harishpur, PO. Krishnagar, Dist. Nadia, Pin. 741101', NULL, 'Non-Government Organisation', 1, 'Female', NULL, 0, 'PROV/WB/JJ/0122', '2017-12-28 18:30:00', '2018-06-27 18:30:00', 6, NULL, NULL, NULL),
('CCI_174', 'NADIA', 'Madrashatul Bannat Aiyshatussidqara \n(25 girls)', 'village: Jhitkipota, P.S-Kotwali. Dist: Nadia, W.B, PIN-741102', NULL, 'Non-Government Organisation', 1, 'Female', 25, 0, NULL, '2025-01-04 12:32:07', '2025-01-04 12:32:07', 6, NULL, NULL, NULL),
('CCI_175', 'NADIA', 'Nakashipara Nirmal Hriday Samity', 'Vill Galaidaripara, PO Badbillwagram, PS Nakashipara, Nadia', 741126, 'Non-Government Organisation', 1, 'Male', 50, 1, 'WB/JJ/NAD/01/01/0078', '2018-05-31 18:30:00', '2023-05-30 18:30:00', 0, '', '', 0),
('CCI_176', 'NADIA', 'Nirmalnagar Prantik Janabikash Kendra\n(50 bos)[Swami Pranabananada Seva Nikatan]', 'Ukilnara, PO- Pritinagar, PS- Ranaghat, Dist- Nadia, PIN-741247', NULL, 'Non-Government Organisation', 1, 'Male', 50, 0, 'WB/JJ/NAD/01/01/0099', '2022-02-17 18:30:00', '2027-02-16 18:30:00', 5, NULL, NULL, NULL),
('CCI_177', 'NADIA', 'Ranaghat Lions Trust', 'Biswaspara, PO-Ranaghat', 741201, 'Non-Government Organisation', 1, 'Combined', 10, 1, 'WB/JJ/NAD/02/03/0091', '2021-03-31 18:30:00', '2026-03-30 18:30:00', 5, '', '', 0),
('CCI_178', 'NORTH 24 PARGANAS', 'Adyapeeth Balakashram (Children Home for Boys) ', '50 – D.D. Mondal Ghat road, P.O. dashineswar, P.S.- Belghoria Pin Code -700076', NULL, 'Non-Government Organisation', 1, 'Male', NULL, 0, '3137-SW/O/JJA-63/16', '2016-03-31 18:30:00', '2021-03-30 18:30:00', 6, NULL, NULL, NULL),
('CCI_179', 'North 24 Parganas', 'Aradhana Social Development Organisation (Open shelter for Boys)', 'Sailen Moullick Sarani, PO-Hridaypur, North 24 Parganas, Pin-700127', 700127, 'Non-Government Organisation', 1, 'Male', 25, 1, 'WB/JJ/KOL/03/01/0155', '2018-06-20 18:30:00', '2023-06-19 18:30:00', NULL, NULL, NULL, NULL),
('CCI_180', 'NORTH 24 PARGANAS', 'Asian Sahojogi Sanstha India ', 'Kestopur, Chandberia, PS. New Town, Pin. 700102', NULL, 'Non-Government Organisation', 1, 'Male', NULL, 0, 'WB/JJ/24Pgs(N)01/01/0009', '2017-08-31 18:30:00', '2022-08-30 18:30:00', 4, NULL, NULL, NULL),
('CCI_181', 'NORTH 24 PARGANAS', 'Barrackpore Avenue Women\'s Cultural & social Welfare Society (Bachpan Boys Home 1)', '93, Charnok Road, Barrackpore Cantonment, Unique Lodge, Barrackpore, Kolkata-700120', NULL, 'Non-Government Organisation', 1, 'Male', NULL, 0, 'WB/JJ/24 PGS (N)/ 01/01/0102', '2018-06-28 18:30:00', '2023-06-27 18:30:00', 5, NULL, NULL, NULL),
('CCI_182', 'NORTH 24 PARGANAS', 'Barrackpore Avenue Women\'s Cultural & social Welfare Society (Boys Home)', '10 Sukanta Sarani, Nona Chandanpukur, Barrackpore, PIN700122', NULL, 'Non-Government Organisation', 1, 'Male', NULL, 0, 'WB/JJ/24PGS(N)/01/01/0117', '2018-06-28 18:30:00', '2023-06-27 18:30:00', 5, NULL, NULL, NULL),
('CCI_183', 'NORTH 24 PARGANAS', 'Barrackpore Avenue Women\'s Cultural & social Welfare Society (Girls Home)', '640/D, B. T. Road, Bash Bagan, Barrackpore, Pin-700120', NULL, 'Non-Government Organisation', 1, 'Female', NULL, 0, 'WB/JJ/24 PGS (N)/01/02/0094', '2018-06-28 18:30:00', '2023-06-27 18:30:00', 5, NULL, NULL, NULL),
('CCI_184', 'North 24 Parganas', 'Bengal Mass Education Society (Open Shelter for Boys)', 'E/15/D ADRASHA NAGAR BELGHORIA, P.O-NIMTA, KOL-49', 700049, 'Non-Government Organisation', 1, 'Male', 25, 1, 'WB/JJ/KOL/03/01/0150', '2023-05-30 18:30:00', '2028-05-29 18:30:00', NULL, NULL, NULL, NULL),
('CCI_185', 'NORTH 24 PARGANAS', 'Bhoruka Public Welfare Trust - Snehaneer Home', '63, Rafi Ahmed Kidwai Road, Kolkata', 700157, 'Non-Government Organisation', 1, 'Female', 19, 0, 'WB/JJ/24PGS(N)/01/02/0164', '2018-06-28 18:30:00', '2023-06-27 18:30:00', 0, '', '', 0),
('CCI_186', 'North 24 Parganas', 'Bikash Bharati Welfare Society Open Shelter', '23/1, Deshbondhu Road, Kolkata- 700035', 700035, 'Non-Government Organisation', 1, 'Male', 25, 1, 'WB/JJ/KOL/03/01/0067', '2018-06-20 18:30:00', '2023-06-19 18:30:00', NULL, NULL, NULL, NULL),
('CCI_187', 'NORTH 24 PARGANAS', 'Bodhana Home', 'Chakpachuria, PO Chakpachuria, PS Technocity, North 24 Parganas', 700160, 'Non-Government Organisation', 1, 'Male', 50, 1, 'WB/JJ/24 PGS (N)/01/01/0162/1', '2021-09-30 18:30:00', '2026-09-29 18:30:00', 0, '', '', 0),
('CCI_188', 'NORTH 24 PARGANAS', 'Bodhana Home', 'Chakpachuria, PO Chakpachuria, PS Technocity, North 24 Parganas', 700160, 'Non-Government Organisation', 2, 'Male', 50, 1, 'WB/JJ/24 PGS (N)/01/01/0162/2', '2021-09-30 18:30:00', '2026-09-29 18:30:00', 0, '', '', 0),
('CCI_189', 'NORTH 24 PARGANAS', 'Bodhi Peet Home', 'AQ-16, Sector-V, Saltlake', 700091, 'Non-Government Organisation', 1, 'Female', 25, 1, 'WB/JJ/KOL/01/02/0132', '2022-07-28 18:30:00', '2027-07-27 18:30:00', 5, '', '', 0),
('CCI_190', 'NORTH 24 PARGANAS', 'Child Care Home run by WIF', 'Sukantanagar, Saltlake,Sector-IV', 700098, 'Non-Government Organisation', 1, 'Female', 50, 1, 'JJ/REG/NGO/005', '2010-11-01 18:30:00', '2015-10-31 18:30:00', 4, '', '', 0);
INSERT INTO `cci` (`id`, `district`, `cci_name`, `address`, `pin`, `run_by`, `cci_unit_no`, `cci_unit_gender`, `cci_unit_strength`, `is_pab_approved`, `reg_no`, `reg_date`, `reg_valid_upto`, `reg_status`, `contact_name`, `contact_desg`, `contact_phno`) VALUES
('CCI_191', 'NORTH 24 PARGANAS', 'Deepika Social Welfare Society (Girls)', '16/7, Srikrishnapur Road, Taki Road, PO. Badu, PS. Barasat, Kolkata-700124', NULL, 'Non-Government Organisation', 1, 'Female', NULL, 0, 'PROV/WB/JJ/0096', '2017-12-28 18:30:00', '2018-06-25 18:30:00', 2, NULL, NULL, NULL),
('CCI_192', 'NORTH 24 PARGANAS', 'DHRUBASHRAM HOME', '30, SRI GOPAL MULLICK ROAD, KOLKATA-700057', 0, 'Government', 1, 'Male', 50, 1, 'JJ/Reg./Gov./014/1', '2023-01-27 18:30:00', '2023-01-26 18:30:00', 5, NULL, NULL, 0),
('CCI_193', 'NORTH 24 PARGANAS', 'DHRUBASHRAM HOME', '30, SRI GOPAL MULLICK ROAD, KOLKATA-700057', 0, 'Government', 2, 'Male', 50, 1, 'JJ/Reg./Gov./014/2', '2023-01-27 18:30:00', '2028-01-26 18:30:00', 5, NULL, NULL, 0),
('CCI_194', 'NORTH 24 PARGANAS', 'Durgapur Handicapped Happy Home', '7th Street Harshabardhan Road, A- Zone, Durgapur-4, Dist- Paschim Bardhaman, PIN- 713204', NULL, 'Non-Government Organisation', 1, 'Combined', NULL, 0, NULL, '2025-01-04 12:32:07', '2025-01-04 12:32:07', 6, NULL, NULL, NULL),
('CCI_195', 'NORTH 24 PARGANAS', 'Embassy Of Hope', 'Dasadrone, Mandir Bagan, PO- Rajarhat, Gopalpur, PS- Baguihati, Dist- North 24 Parganas', NULL, 'Non-Government Organisation', 1, 'Combined', NULL, 0, NULL, '2025-01-04 12:32:07', '2025-01-04 12:32:07', 6, NULL, NULL, NULL),
('CCI_196', 'NORTH 24 PARGANAS', 'Happy Home, Choto Jirakpur(Girls)', 'CK-6, Salt Lake, Sec-II, Kolkata – 91.', NULL, 'Non-Government Organisation', 1, 'Female', NULL, 0, 'WB/JJ/24PGS(N)/01/02/0085', '2018-06-28 18:30:00', '2023-06-27 18:30:00', 8, NULL, NULL, NULL),
('CCI_197', 'NORTH 24 PARGANAS', 'Hasi Sengupta Orphanage Home for 25 Boys', 'Vill+ P.O- Shikra. Kulingram Pin-743428', NULL, 'Non-Government Organisation', 1, 'Male', 25, 0, NULL, '2025-01-04 12:32:07', '2025-01-04 12:32:07', 4, NULL, NULL, NULL),
('CCI_198', 'NORTH 24 PARGANAS', 'Ichapur Brahmaputra Silpa Niketan Open Shelter for 25 boys', 'Bramhanpara, Ichapur, PO- Nawabganj, PIN- 743144', NULL, 'Non-Government Organisation', 1, 'Male', 25, 0, NULL, '2025-01-04 12:32:07', '2025-01-04 12:32:07', 8, NULL, NULL, NULL),
('CCI_199', 'North 24 Parganas', 'Janasiksha Prochar Kendra (Open Shelter)', 'CK-6, Salt Lake, Sec-II, Kolkata – 91.', 700091, 'Non-Government Organisation', 1, 'Female', 25, 1, 'WB/JJ/KOL/03/02/0104', '2018-06-21 18:30:00', '2023-06-20 18:30:00', NULL, NULL, NULL, NULL),
('CCI_200', 'NORTH 24 PARGANAS', 'Kaleb Happy Home', 'Joypul, Baishnab para, Duttapukur, PIN- 743234', NULL, 'Non-Government Organisation', 1, 'Combined', NULL, 0, NULL, '2025-01-04 12:32:07', '2025-01-04 12:32:07', 4, NULL, NULL, NULL),
('CCI_201', 'NORTH 24 PARGANAS', 'Kamakhya Balak Ashram for boys', 'Debipore, Kathore Road, PO. Badu, PS. Barasat, Pin. 700128', NULL, 'Non-Government Organisation', 1, 'Male', NULL, 0, 'PROV/WB/JJ/0085', '2017-12-28 18:30:00', '2018-06-27 18:30:00', 2, NULL, NULL, NULL),
('CCI_202', 'NORTH 24 PARGANAS', 'Kamakhya Balak Ashram for Girls', 'Debipore, Kathore Road, PO. Badu, PS. Barasat, Pin. 700128', NULL, 'Non-Government Organisation', 1, 'Female', NULL, 0, 'PROV/WB/JJ/0121', '2017-12-28 18:30:00', '2018-06-27 18:30:00', 4, NULL, NULL, NULL),
('CCI_203', 'NORTH 24 PARGANAS', 'Khelaghar (Girls)', 'Vill.+PO. Badu Dhalipara Road, PS. Barasat, Kolkata-700124', NULL, 'Non-Government Organisation', 1, 'Female', NULL, 0, 'WB/JJ/24 PGS N/01/02/0084', '2018-06-28 18:30:00', '2023-06-25 18:30:00', 5, NULL, NULL, NULL),
('CCI_204', 'NORTH 24 PARGANAS', 'KISHALAYA HOME', 'PO-BARASAT, DIST-NORTH 24 PARGANAS, WB', 0, 'Government', 1, 'Male', 50, 1, 'JJ/Reg./Gov./008/1', '2023-01-27 18:30:00', '2028-01-26 18:30:00', 5, NULL, NULL, 0),
('CCI_205', 'NORTH 24 PARGANAS', 'KISHALAYA HOME', 'PO- BARASAT, DIST- NORTH 24 PARGANAS, WB', 0, 'Government', 2, 'Male', 50, 1, 'JJ/Reg./Gov./008/2', '2023-01-27 18:30:00', '2028-01-26 18:30:00', 5, NULL, NULL, 0),
('CCI_206', 'NORTH 24 PARGANAS', 'MUKTI Rehabilitatin Centre', 'Ramkrishna Pally,Dashadrone,  P.O-Rajarhat Gopalpur', 700136, 'Non-Government Organisation', 1, 'Combined', 10, 1, 'WB/JJ/24 PGS (N)/02/03/0024', '2023-06-28 18:30:00', '2028-06-27 18:30:00', 5, '', '', 0),
('CCI_207', 'North 24 Parganas', 'MUKTI Rehabilitatin Centre (Open Shelter)', 'Ramkrishnapally, Dahadrone, PO-Rajarhat, North 24 Pgs, Pin-700136', 700136, 'Non-Government Organisation', 1, 'Male', 25, 1, 'WB/JJ/24 PGS(N)/03/01/0012', '2022-12-31 18:30:00', '2027-12-30 18:30:00', NULL, NULL, NULL, NULL),
('CCI_208', 'North 24 Parganas', 'Naihati New Life Society (Open Shelter for Girls)', '172, Talpukur Road, Deulpara, PO. Naihati, North 24 Parganas-743165', 743165, 'Non-Government Organisation', 1, 'Female', 25, 1, 'WB/JJ/KOL/03/01/0049', '2018-06-26 18:30:00', '2023-06-25 18:30:00', NULL, NULL, NULL, NULL),
('CCI_209', 'NORTH 24 PARGANAS', 'Nijoloy Women s Interlink Foundation', 'Sukanta Sarani, Doltala More, Methopara, Ganganagar, Madhyamgram', 700132, 'Non-Government Organisation', 1, 'Female', 50, 1, 'WB/JJ/24 PGS (N)/01/02/0168', '2019-12-07 18:30:00', '2024-12-06 18:30:00', 0, '', '', 0),
('CCI_210', 'NORTH 24 PARGANAS', 'Ramkrishna Vivekananda Mission', '20, Riverside Road, Barrackpore', 700120, 'Non-Government Organisation', 1, 'Male', 50, 1, 'WB/JJ/24 PGS (N)/01/01/0048', '2017-03-31 18:30:00', '2022-03-30 18:30:00', 0, '', '', 0),
('CCI_211', 'North 24 Parganas', 'Ramkrishna Vivekananda Mission (Open shelter for girls)', 'Agarpara Branch, 3, B.T. Road, Kolkata – 58', 700058, 'Non-Government Organisation', 1, 'Female', 25, 1, 'WB/JJ/KOL/03/01/0018', '2018-06-20 18:30:00', '2023-06-19 18:30:00', NULL, NULL, NULL, NULL),
('CCI_212', 'NORTH 24 PARGANAS', 'Rupayan Children Home for boys', 'Block KE, Bulding No. AG-663/10-06, Kaikhali Biman Nagar, PO+PS. Airport, Kolkata - 700052', NULL, 'Non-Government Organisation', 1, 'Male', NULL, 0, 'WB/JJ/24 PGS N/01/01/0064', '2018-06-28 18:30:00', '2023-06-27 18:30:00', 5, NULL, NULL, NULL),
('CCI_213', 'NORTH 24 PARGANAS', 'Snehaneer Home for Girls run by Bhoruka Public Welfare Trust', 'Jhowtala Road, Hatiara, Rajarhat, Kolkata - 700157', NULL, 'Non-Government Organisation', 1, 'Female', NULL, 0, 'PROV/WB/JJ/0050', '2017-12-28 18:30:00', '2018-06-25 18:30:00', 4, NULL, NULL, NULL),
('CCI_214', 'NORTH 24 PARGANAS', 'Society for Equitable Voluntary Action(SEVA)', 'Vill+PO. Atghara, PS. Baduria, North 24 Parganas, Pin-731204', NULL, 'Non-Government Organisation', 1, 'Female', NULL, 0, 'PROV/WB/JJ/0090', '2017-12-28 18:30:00', '2018-06-27 18:30:00', 2, NULL, NULL, NULL),
('CCI_215', 'NORTH 24 PARGANAS', 'SOS Children Village', 'Block -BK, Sector-II, Bidhannaga, Kolkata-700091', NULL, 'Non-Government Organisation', 1, 'Combined', NULL, 0, '3386-SW/O/JJA-74/16', '2016-03-31 18:30:00', '2021-03-30 18:30:00', 4, NULL, NULL, NULL),
('CCI_216', 'NORTH 24 PARGANAS', 'Sree Gouranga Goudiya Mission Sevashram', 'Muragacha, PO. Jugberia, North 24 Parganas-700111', NULL, 'Non-Government Organisation', 1, 'Male', NULL, 0, 'WB/JJ/24PGS (N)/01/02/0059', '2018-06-28 18:30:00', '2023-06-27 18:30:00', 5, NULL, NULL, NULL),
('CCI_217', 'NORTH 24 PARGANAS', 'SUKANYA HOME', 'AQ-15, SECTOR-V, SALT LAKE CITY, KOLKATA-700091, WB', 0, 'Government', 1, 'Female', 50, 1, 'JJ/Reg./Gov./007/1', '2023-01-27 18:30:00', '2028-01-26 18:30:00', 5, NULL, NULL, 0),
('CCI_218', 'NORTH 24 PARGANAS', 'SUKANYA HOME', 'AQ-15, SECTOR-V, SALT LAKE CITY, KOLKATA-700091, WB', 0, 'Government', 2, 'Female', 50, 1, 'JJ/Reg./Gov./007/2', '2023-01-27 18:30:00', '2028-01-26 18:30:00', 5, NULL, NULL, 0),
('CCI_219', 'NORTH 24 PARGANAS', 'UDAYAN (Boys)', 'Vill+PO. Sewali, Telinipara, Barrackpore, Pin. 700121', NULL, 'Non-Government Organisation', 1, 'Male', NULL, 0, 'PROV/WB/JJ/0137', '2017-12-28 18:30:00', '2018-06-27 18:30:00', 2, NULL, NULL, NULL),
('CCI_220', 'NORTH 24 PARGANAS', 'UDAYAN (Girls)', 'Vill+PO. Sewali, Telinipara, Barrackpore, Pin. 700121', NULL, 'Non-Government Organisation', 1, 'Female', NULL, 0, 'PROV/WB/JJ/0127', '2017-12-28 18:30:00', '2018-06-25 18:30:00', 2, NULL, NULL, NULL),
('CCI_221', 'PASCHIM BARDHAMAN', 'Durgapur Indira Pragati Society', 'Gopal Math, Kamala Kutir, PO- Oyaria, Durgapur', 713217, 'Non-Government Organisation', 1, 'Combined', 10, 1, 'WB/JJ/BAR(W)/02/03/0034', '2019-07-13 18:30:00', '2024-07-12 18:30:00', 5, '', '', 0),
('CCI_222', 'PASCHIM MEDINIPUR', 'Benai Bijoy Krishna Rural Developmentn Society', 'Vill Uttarbar, PO Kheput Block Daspur II, Dist Paschim Medinipur', 721148, 'Non-Government Organisation', 1, 'Male', 50, 1, 'WB/JJ/MID(W)/01/01/0161', '2023-06-13 18:30:00', '2028-06-12 18:30:00', 0, '', '', 0),
('CCI_223', 'PASCHIM MEDINIPUR', 'Benai Bijoy Krishna Rural Developmentn Society', 'Vill Uttarbar, PO Kheput Block Daspur II, Dist Paschim Medinipur', 721148, 'Non-Government Organisation', 2, 'Male', 50, 1, 'WB/JJ/MID(W)/01/01/0046', '2021-03-31 18:30:00', '2026-03-30 18:30:00', 0, '', '', 0),
('CCI_224', 'PASCHIM MEDINIPUR', 'Chakkumar Association for Social Service', 'Vill Chakkumar, PO Debra Bazar, Debra, Dist Paschim Medinipur', 721126, 'Non-Government Organisation', 1, 'Male', 50, 1, 'WB/JJ/MID(W)/01/01/0152', '2023-06-01 18:30:00', '2028-05-31 18:30:00', 0, '', '', 0),
('CCI_225', 'PASCHIM MEDINIPUR', 'Chakkumar Association for Social Service', 'Vill Chakkumar, PO Debra Bazar, Debra, Dist Paschim Medinipur', 721126, 'Non-Government Organisation', 2, 'Male', 50, 1, 'WB/JJ/MID(W)/01/01/0153', '2023-06-07 18:30:00', '2023-06-06 18:30:00', 0, '', '', 0),
('CCI_226', 'PASCHIM MEDINIPUR', 'Dantan Manav Kalyan Kendra', 'Krishnapur, PO Dantan, Dist Paschim Medinipur', 721426, 'Non-Government Organisation', 1, 'Female', 50, 1, 'WB/JJ/MID(W)/01/02/0036', '2019-06-25 18:30:00', '2024-06-24 18:30:00', 0, '', '', 0),
('CCI_227', 'PASCHIM MEDINIPUR', 'Missionaries of Charity, ', 'Vill- Kearchand, P.O- Ronbonia, P.S- Keshariya, Paschim Medinipur', NULL, 'Non-Government Organisation', 1, 'Female', NULL, 0, NULL, '2025-01-04 12:32:07', '2025-01-04 12:32:07', 4, NULL, NULL, NULL),
('CCI_228', 'PASCHIM MEDINIPUR', 'Motherchak Naboday Kishalay Sangha', 'Vill Gokulpur, PO Bargokulpur, PS Kharagpur Local, Dist Paschim Medinipur', 721301, 'Non-Government Organisation', 1, 'Female', 50, 1, 'WB/JJ/MID(W)/01/02/0149', '2023-05-28 18:30:00', '2028-05-27 18:30:00', 0, '', '', 0),
('CCI_229', 'PASCHIM MEDINIPUR', 'Motherchak Naboday Kishalay Sangha', 'Vill Gokulpur, PO Bargokulpur, PS Kharagpur Local, Dist Paschim Medinipur', 721301, 'Non-Government Organisation', 2, 'Female', 50, 1, 'WB/JJ/MID(W)/01/02/0125', '2021-03-31 18:30:00', '2026-03-30 18:30:00', 0, '', '', 0),
('CCI_230', 'PASCHIM MEDINIPUR', 'VIDYASAGAR BALIKA BHAVAN', 'PO- GOPE, DIST- PASCHIM MEDINIPUR, WB', 0, 'Government', 1, 'Combined', 10, 1, 'WB/JJ/MID(W)/05/03/001', '2023-01-27 18:30:00', '2028-01-26 18:30:00', 5, NULL, NULL, 0),
('CCI_231', 'PASCHIM MEDINIPUR', 'VIDYASAGAR BALIKA BHAVAN', 'PO- GOPE, DIST- PASCHIM MEDINIPUR, WB', 0, 'Government', 1, 'Female', 50, 1, 'JJ/Reg./Gov./003/1', '2023-01-27 18:30:00', '2028-01-26 18:30:00', 5, NULL, NULL, 0),
('CCI_232', 'PASCHIM MEDINIPUR', 'VIDYASAGAR BALIKA BHAVAN', 'PO- GOPE, DIST- PASCHIM MEDINIPUR, WB', 0, 'Government', 2, 'Female', 50, 1, 'JJ/Reg./Gov./003/2', '2023-01-27 18:30:00', '2028-01-26 18:30:00', 5, NULL, NULL, 0),
('CCI_233', 'PASCHIM MEDINIPUR', 'VIDYASAGAR BALIKA BHAVAN', 'PO-GOPE, DIST- PASCHIM MEDINIPUR, WB', 0, 'Government', 3, 'Female', 50, 1, 'JJ/Reg./Gov./003/3', '2023-01-27 18:30:00', '2028-01-26 18:30:00', 5, NULL, NULL, 0),
('CCI_234', 'PASCHIM MEDINIPUR', 'VIDYASAGAR BALIKA BHAVAN', 'PO- GOPE, DIST- PASCHIM MEDINIPUR, WB', 0, 'Government', 4, 'Female', 50, 1, 'JJ/Reg./Gov./003/4', '2023-01-27 18:30:00', '2028-01-26 18:30:00', 5, NULL, NULL, 0),
('CCI_235', 'PASCHIM MEDINIPUR', 'VIDYASAGAR BALIKA BHAVAN', 'PO-GOPE, DIST- PASCHIM MEDINIPUR, WB', 0, 'Government', 5, 'Female', 50, 1, 'JJ/Reg./Gov./003/5', '2023-01-27 18:30:00', '2028-01-26 18:30:00', 5, NULL, NULL, 0),
('CCI_236', 'PASCHIM MEDINIPUR', 'VIDYASAGAR BALIKA BHAVAN', 'PO- GOPE, DIST- PASCHIM MEDINIPUR', 0, 'Government', 6, 'Female', 50, 1, 'JJ/Reg./Gov./003/6', '2023-01-27 18:30:00', '2028-01-26 18:30:00', 5, NULL, NULL, 0),
('CCI_237', 'PASCHIM MEDINIPUR', 'VIDYASAGAR BALIKA BHAVAN', 'PO- GOPE, DIST- PASCHIM MEDINIPUR, WB', 0, 'Government', 7, 'Female', 50, 1, 'JJ/Reg./Gov./003/7', '2023-01-27 18:30:00', '2028-01-26 18:30:00', 5, NULL, NULL, 0),
('CCI_238', 'PASCHIM MEDINIPUR', 'VIDYASAGAR BALIKA BHAVAN', 'PO- GOPE, DIST- PASCHIM MEDINIPUR. WB', 0, 'Government', 8, 'Female', 50, 1, 'JJ/Reg./Gov./003/8', '2023-01-27 18:30:00', '2028-01-26 18:30:00', 5, NULL, NULL, 0),
('CCI_239', 'PASCHIM MEDINIPUR', 'VIDYASAGAR BALIKA BHAVAN', 'PO- GOPE, DIST- PASCHIM MEDINIPUR, WB', 0, 'Government', 9, 'Female', 50, 1, 'JJ/Reg./Gov./003/9', '2023-01-27 18:30:00', '2028-01-26 18:30:00', 5, NULL, NULL, 0),
('CCI_240', 'PURBA BARDHAMAN', 'Asansol Burdwan Seva Kendra', 'Chetana Community Care Centre, Viii- Jhinguti, P.0- Phagupur', 713102, 'Non-Government Organisation', 1, 'Combined', 10, 1, 'WB/JJ/BAR(E)/02/03/0040', '2022-03-31 18:30:00', '2027-03-30 18:30:00', 5, '', '', 0),
('CCI_241', 'PURBA BARDHAMAN', 'Asansol Burdwan Seva Kendra, Chetan, Community Care Centre', 'Vill Jhinguti, PO Phagupur, Dist Purba Bardhaman', 713102, 'Non-Government Organisation', 1, 'Female', 50, 1, 'WB/JJ/BAR(E)/01/02/0123', '2018-06-25 18:30:00', '2023-06-24 18:30:00', 0, '', '', 0),
('CCI_242', 'PURBA BARDHAMAN', 'Barendra Paramanda Seva Kendra (Children Home for Boys)', 'Vill. Barenda , P.O. – Billeswar, P.S. – Ketugram , sub Dividion – Katwa, Dist – Burdwan, Pin Code - 713150', NULL, 'Non-Government Organisation', 1, 'Male', NULL, 0, '3611-SW/O/JJA-77/16', '2016-03-31 18:30:00', '2021-03-30 18:30:00', 6, NULL, NULL, NULL),
('CCI_243', 'PURBA BARDHAMAN', 'CHILDREN HOME FOR GIRLS', 'BAMCHANDAIPUR, JOTERAM, PS- SAKTIGARH, PURBA BARDHAMAN, PIN-713104', 0, 'Government', 1, 'Combined', 10, 1, 'WB/JJ/BAR( E)/05/03/0008/1', '2022-03-31 18:30:00', '2027-01-03 18:30:00', 5, NULL, NULL, 0),
('CCI_244', 'PURBA BARDHAMAN', 'CHILDREN HOME FOR GIRLS', 'BAMCHANDAIPUR, JOTERAM, PS- SAKTIGARH, PURBA BARDHAMAN, PIN-713104', 0, 'Government', 2, 'Combined', 10, 1, 'WB/JJ/BAR( E)/05/03/0008/2', '2022-03-31 18:30:00', '2027-01-03 18:30:00', 5, NULL, NULL, 0),
('CCI_245', 'PURBA BARDHAMAN', 'CHILDREN HOME FOR GIRLS, PURBA BURDWAN', 'B L HATI ROAD, WEST OF DHALDIGHI, RADHANAGAR, PO+DIST-PURBA BURDWAN, WB', 0, 'Government', 1, 'Female', 50, 1, 'JJ/Reg./Gov./019/1', '2023-01-27 18:30:00', '2028-01-26 18:30:00', 5, NULL, NULL, 0),
('CCI_246', 'PURBA BARDHAMAN', 'CHILDREN HOME FOR GIRLS, PURBA BURDWAN', 'B L HATI ROAD, WEST OF DHALDIGHI, RADHANAGAR, PO+DIST-PURBA BURDWAN, WB', 0, 'Government', 2, 'Female', 50, 1, 'JJ/Reg./Gov./019/2', '2023-01-27 18:30:00', '2028-01-26 18:30:00', 5, NULL, NULL, 0),
('CCI_247', 'PURBA BARDHAMAN', 'Society for Mental Health Care Anandaniketan', 'Vill & PO Khajurdihi, PS Katwa, Dist Purba Bardhaman', 713150, 'Non-Government Organisation', 1, 'Female', 50, 1, 'WB/JJ/BAR(E)/01/02/0030/1', '2022-03-31 18:30:00', '2027-02-28 18:30:00', 0, '', '', 0),
('CCI_248', 'PURBA BARDHAMAN', 'Society for Mental Health Care Anandaniketan', 'Vill & PO Khajurdihi, PS Katwa, Dist Purba Bardhaman', 713150, 'Non-Government Organisation', 2, 'Female', 50, 1, 'WB/JJ/BAR(E)/01/02/0030/2', '2022-03-31 18:30:00', '2027-03-30 18:30:00', 0, '', '', 0),
('CCI_249', 'PURBA BARDHAMAN', 'Society for Mental Health Care Anandaniketan', 'Vill & PO Khajurdihi, PS Katwa, Dist Purba Bardhaman', 713150, 'Non-Government Organisation', 3, 'Male', 50, 1, 'WB/JJ/BAR(E)/01/01/0029/1', '2022-03-31 18:30:00', '2027-03-30 18:30:00', 0, '', '', 0),
('CCI_250', 'PURBA BARDHAMAN', 'Society for Mental Health Care Anandaniketan', 'Vill & PO Khajurdihi, PS Katwa, Dist Purba Bardhaman', 713150, 'Non-Government Organisation', 4, 'Male', 50, 1, 'WB/JJ/BAR(E)/01/01/0029/2', '2022-03-31 18:30:00', '2027-03-30 18:30:00', 0, '', '', 0),
('CCI_251', 'Purba Bardhaman', 'SPEED (Open Shelter) \"Muktabihanga\"', 'Radhanagarpara, MD Kayem Lane, Purba Bardhaman, Pin-713101', 713101, 'Non-Government Organisation', 1, 'Male', 25, 1, 'PROV/WB/JJ/0015', '2017-12-25 18:30:00', '2018-06-24 18:30:00', NULL, NULL, NULL, NULL),
('CCI_252', 'PURBA MEDINIPUR', 'Antyodoy Anath Ashram - Snehachhaya home', 'Vill+PO-Paushi, PS-BHupatinagar, Purba Medinipur, WB', 721444, 'Non-Government Organisation', 1, 'Female', 50, 1, 'WB/JJ/MID(E)/01/02/2023', '2023-06-25 18:30:00', '2028-06-24 18:30:00', 0, '', '', 0),
('CCI_253', 'PURBA MEDINIPUR', 'Bodhodaya Home run by Vivekananda Loksiksha Niketan', 'Vill Faridpur, PO Dakshin Dauki, PS Junput Coastal, Dist Purba Medinipur', 721450, 'Non-Government Organisation', 1, 'Male', 50, 1, 'WB/JJ/MID(E)/01/01/0114', '2022-06-07 18:30:00', '2027-06-06 18:30:00', 0, '', '', 0),
('CCI_254', 'PURBA MEDINIPUR', 'Dakshin Gholepukuria Sonali Sangha O Pathagar', 'Vill & PO Gholepukuria, Block Nandigram II, PS Nandigram, Dist Purba Medinipur', 721650, 'Non-Government Organisation', 1, 'Female', 50, 1, 'WB/JJ/MID(E)/01/02/0122', '2021-03-31 18:30:00', '2026-03-30 18:30:00', 0, '', '', 0),
('CCI_255', 'PURBA MEDINIPUR', 'Deulpota Seva Samity Home for 50 boys', 'Vill+PO- Deulpota, PS- mahishadal, PIN-721670', NULL, 'Non-Government Organisation', 1, 'Male', 50, 0, NULL, '2025-01-04 12:32:07', '2025-01-04 12:32:07', 4, NULL, NULL, NULL),
('CCI_256', 'PURBA MEDINIPUR', 'Nimtouri Tamluk Unnayan Samity (Sishu Greha)', 'Vill. Chalk Srikrishnapur, Po-Kulberia, P.S-Tamluk', 721649, 'Non-Government Organisation', 1, 'Combined', 10, 1, 'WB/JJ/MID(E)/02/03/0072', '2022-03-31 18:30:00', '2027-03-30 18:30:00', 5, '', '', 0),
('CCI_257', 'PURBA MEDINIPUR', 'Ramnagar Vivekananda Seva Ashram', 'Vill- Dakshin Basulipat, PO+PS-Ramnagar, Dist- Purba Medinipur, PIN- 721441', NULL, 'Non-Government Organisation', 1, 'Male', NULL, 0, '3558-SW/O/JJA-76/16', '2016-03-31 18:30:00', '2021-03-30 18:30:00', 1, NULL, NULL, NULL),
('CCI_258', 'PURBA MEDINIPUR', 'Snehanir run by Nimtouri Tamluk Unnayan Samity', 'Vill Chaksrikrishnapur, PO Kulberia, PS Tamluk, Dist Purba Medinipur', 721649, 'Non-Government Organisation', 1, 'Female', 50, 1, 'WB/JJ/MID(E)/01/02/0128', '2022-03-31 18:30:00', '2027-03-30 18:30:00', 0, '', '', 0),
('CCI_259', 'PURBA MEDINIPUR', 'Swamiji Observation Home run by Amar Seva Sangha', 'Vill & PO Raine, PS Kolaghat, Dist Purba Medinipur', 721130, 'Non-Government Organisation', 1, 'Male', 50, 1, 'WB/JJ/MID(E)/01/01/0035', '2022-03-31 18:30:00', '2027-02-28 18:30:00', 0, '', '', 0),
('CCI_260', 'PURBA MEDINIPUR', 'Tapoban Sishu Abas run by Kajla Janakalyan Samity', 'Vill & PO Sarada, Via Deulbard, PS Contai, Dist Purba Medinipur', 721427, 'Non-Government Organisation', 1, 'Male', 50, 1, 'WB/JJ/MID(E)/01/01/0007', '2022-08-31 18:30:00', '2027-08-30 18:30:00', 0, '', '', 0),
('CCI_261', 'PURBA MEDINIPUR', 'The Sister Nivedita Home for Girls run by Naba Kishore Sangha', 'Vill & PO Bargodagodar, PS Nandakumar, Dist Purba Medinipur', 721652, 'Non-Government Organisation', 1, 'Female', 50, 1, 'WB/JJ/MID(E)/01/02/0032', '2022-03-31 18:30:00', '2027-03-30 18:30:00', 0, '', '', 0),
('CCI_262', 'PURBA MEDINIPUR', 'Unmesh UNIT I run by Haldia Samaj Kalyan Parshad', 'Vill Basudevpur, PO Khanjanchak, PS Durgachak, Dist Purba Medinipur', 721602, 'Non-Government Organisation', 1, 'Male', 50, 1, 'WB/JJ/MID(E)/01/01/0079', '2022-03-31 18:30:00', '2027-03-30 18:30:00', 0, '', '', 0),
('CCI_263', 'PURBA MEDINIPUR', 'Unmesh UNIT II run by Haldia Samaj Kalyan Parshad', 'Vill Basudevpur, PO Khanjanchak, PS Durgachak, Dist Purba Medinipur', 721602, 'Non-Government Organisation', 2, 'Male', 50, 1, 'WB/JJ/MID(E)/01/01/0080', '2021-03-14 18:30:00', '2026-03-13 18:30:00', 0, '', '', 0),
('CCI_264', 'PURBA MEDINIPUR', 'Uttaran run by CINI Moyna Rural Health Development Centre', 'Vill & PO Paschim Naichanpur, PS Moyna, Dist Purba Medinipur', 721642, 'Non-Government Organisation', 1, 'Male', 50, 1, 'WB/JJ/MID(E)/01/01/0076', '2022-06-08 18:30:00', '2027-06-07 18:30:00', 0, '', '', 0),
('CCI_265', 'PURBA MEDINIPUR', 'Vivekananda Loksiksha Niketan (Sneha Kutir)', 'Vill-Faridpur, Po-Dakshin Dauki, Ps-Junput Coastal', 721450, 'Non-Government Organisation', 1, 'Combined', 10, 1, 'WB/JJ/MID(E)/02/03/0016/1', '2022-03-31 18:30:00', '2027-03-30 18:30:00', 5, '', '', 0),
('CCI_266', 'PURBA MEDINIPUR', 'Vivekananda Loksiksha Niketan (Sneha Kutir)', 'Vill-Faridpur, Po-Dakshin Dauki, Ps-Junput Coastal', 721450, 'Non-Government Organisation', 2, '', 10, 1, 'WB/JJ/MID(E)/02/03/0016/2', '2022-03-31 18:30:00', '2027-03-30 18:30:00', 5, '', '', 0),
('CCI_267', 'Purba Medinipur', 'Vivekananda Loksiksha Niketan Muktaneer for boys', 'Dharmadas Barh, Ward no 20, PO+PS- Contai, PIN- 721401', 721401, 'Non-Government Organisation', 1, 'Male', 25, 1, 'WB/JJ/24 PGS(N)/03/01/0002', '2022-06-30 18:30:00', '2027-06-29 18:30:00', NULL, NULL, NULL, NULL),
('CCI_268', 'PURULIA', 'ANANDAMATH (F)', 'PO-SIMULIA, DIST-PURULIA, WB', 0, 'Government', 1, 'Combined', 10, 1, 'WB/JJ/PUR/05/03/0002', '2025-01-04 12:32:07', '2025-01-04 12:32:07', 5, NULL, NULL, 0),
('CCI_269', 'PURULIA', 'ANANDAMATH (F)', 'PO- SIMILIA, DIST- PURULIA, WB', 0, 'Government', 1, 'Female', 50, 1, 'JJ/Reg./Gov./004/1', '2023-01-27 18:30:00', '2028-01-26 18:30:00', 5, NULL, NULL, 0),
('CCI_270', 'PURULIA', 'ANANDAMATH (F)', 'PO- SIMILIA, DIST- PURULIA', 0, 'Government', 2, 'Female', 50, 1, 'JJ/Reg./Gov./004/2', '2023-01-27 18:30:00', '2028-01-26 18:30:00', 5, NULL, NULL, 0),
('CCI_271', 'PURULIA', 'Manipur Leprosy Rehabilitation Centre', 'Vill Manipur Colony, PO & PS Adra, Dist Purulia', 723121, 'Non-Government Organisation', 1, 'Male', 50, 1, '622-SW/O/JJA-15/16', '2015-03-31 18:30:00', '2017-03-30 18:30:00', 0, '', '', 0),
('CCI_272', 'SOUTH 24 PARGANAS', 'Ambedkar Social Welfare Mission (Children Home for Boys)', 'Bidya Roy More, PO. Nimpith, PS. Jaynagar, Dist. South 24 Parganas, Pin-743338', NULL, 'Non-Government Organisation', 1, 'Male', NULL, 0, 'PROV/WB/JJ/0082', '2017-12-28 18:30:00', '2018-06-27 18:30:00', 4, NULL, NULL, NULL),
('CCI_273', 'SOUTH 24 PARGANAS', 'Anataralok unit of voice of the world', 'Vill. Nandabhaga, PO. Kanganberia, PS. Bishnupur Dist. South 24 Parganas, Pin-743503', NULL, 'Non-Government Organisation', 1, 'Male', NULL, 0, 'PROV/WB/JJ/0126', '2017-12-28 18:30:00', '2018-06-27 18:30:00', 4, NULL, NULL, NULL),
('CCI_274', 'SOUTH 24 PARGANAS', 'Asha Bhawan Centre', 'Vill Keoradanga, PO Betberia, PS Bishnupur, Dist South 24 Parganas', 743503, 'Non-Government Organisation', 1, 'Female', 50, 1, 'WB/JJ/HOW01/02/0039', '2023-06-28 18:30:00', '2028-06-27 18:30:00', 0, '', '', 0),
('CCI_275', 'SOUTH 24 PARGANAS', 'Baruipur Sitakundu Sneh Kunja CNCP boys', 'Fultala, Beliaghata, Piyali town, PIN-743387', NULL, 'Non-Government Organisation', 1, 'Male', NULL, 0, 'WB/JJ/24 PGS (S)/01/01/0112', '2022-06-16 18:30:00', '2027-06-15 18:30:00', 5, NULL, NULL, NULL),
('CCI_276', 'SOUTH 24 PARGANAS', 'Chandpiri Sree Ramkrishna Ashram', 'Vill+PO. Chandpiri, PS. Namkhana, Pin. 743357', NULL, 'Non-Government Organisation', 1, 'Male', NULL, 0, 'PROV/WB/JJ/0067', '2017-12-28 18:30:00', '2018-06-27 18:30:00', 4, NULL, NULL, NULL),
('CCI_277', 'SOUTH 24 PARGANAS', 'Digambarpur Angikar', 'Vill & PO Digambarpur, Via Kashinagar, Block Pathar Pratima, PS Dholahat, Dist South 24 Parganas', 743349, 'Non-Government Organisation', 1, 'Male', 50, 1, 'WB/JJ/24 PGS (S)/01/01/0130', '2022-07-24 18:30:00', '2027-07-23 18:30:00', 0, '', '', 0),
('CCI_278', 'SOUTH 24 PARGANAS', 'Digambarpur Angikar', 'Vill & PO Digambarpur, Via Kashinagar, Block Pathar Pratima, PS Dholahat, Dist South 24 Parganas', 743349, 'Non-Government Organisation', 1, 'Combined', 10, 1, 'WB/JJ/ 24 PGS (S)/02/03/0127', '2022-07-19 18:30:00', '2027-07-18 18:30:00', 5, '', '', 0),
('CCI_279', 'SOUTH 24 PARGANAS', 'Digambarpur Angikar', 'Vill & PO Digambarpur, Via Kashinagar, Block Pathar Pratima, PS Dholahat, Dist South 24 Parganas', 743349, 'Non-Government Organisation', 2, 'Male', 50, 1, 'WB/JJ/24 PGS (S)/01/01/0129', '2022-07-25 18:30:00', '2027-07-24 18:30:00', 0, '', '', 0),
('CCI_280', 'SOUTH 24 PARGANAS', 'Digambarpur Angikar', 'Vill & PO Digambarpur, Via Kashinagar, Block Pathar Pratima, PS Dholahat, Dist South 24 Parganas', 743349, 'Non-Government Organisation', 3, 'Female', 50, 1, 'WB/JJ/24 PGS (S)/01/02/0026', '2016-05-28 18:30:00', '2021-05-27 18:30:00', 0, '', '', 0),
('CCI_281', 'SOUTH 24 PARGANAS', 'Digambarpur Angikar', 'Vill & PO Digambarpur, Via Kashinagar, Block Pathar Pratima, PS Dholahat, Dist South 24 Parganas', 743349, 'Non-Government Organisation', 4, 'Female', 50, 1, 'WB/JJ/24 Pgs (S)/01/02/0057', '2018-06-28 18:30:00', '2023-06-27 18:30:00', 0, '', '', 0),
('CCI_282', 'SOUTH 24 PARGANAS', 'Digambarpur Angikar', 'Vill & PO Digambarpur, Via Kashinagar, Block Pathar Pratima, PS Dholahat, Dist South 24 Parganas', 743349, 'Non-Government Organisation', 5, 'Female', 50, 1, 'WB/JJ/24 PGS (S)/01/02/0156', '2023-06-29 18:30:00', '2028-06-28 18:30:00', 0, '', '', 0),
('CCI_283', 'SOUTH 24 PARGANAS', 'Mahima Premamnanda run by jatiyo Kristo prochar samity', 'Vill- Sajua Sardarpara, Bakhrahat, PIN-743377', NULL, 'Non-Government Organisation', 1, 'Male', NULL, 0, 'WB/JJ/24 PGS(S)/01/01/0138', '2022-09-01 18:30:00', '2027-08-31 18:30:00', 6, NULL, NULL, NULL),
('CCI_284', 'SOUTH 24 PARGANAS', 'Mahima Upasana run by jatiyo Kristo prochar samity', 'Vill- Sajua Sardarpara, Bakhrahat, PIN-743377', NULL, 'Non-Government Organisation', 1, 'Male', NULL, 0, 'WB/JJ/24 PGS(S)/01/02/0137', '2022-08-21 18:30:00', '2027-08-20 18:30:00', 5, NULL, NULL, NULL),
('CCI_285', 'SOUTH 24 PARGANAS', 'Nava Diganta Home, Indian Society for Sponsorship and Adoption', '70, Jugipara Road, Baishali Park, PO Rajpur, PS Sonarpur, Dist South 24 Parganas', 700149, 'Non-Government Organisation', 1, 'Female', 50, 1, 'WB/JJ/24 PGS (S)/01/02/0167', '2020-03-31 18:30:00', '2025-03-30 18:30:00', 0, '', '', 0),
('CCI_286', 'SOUTH 24 PARGANAS', 'New Age Society for All', 'Sitakundu Main Road, PO Sitakundu, PS Baruipur, Dist South 24 Parganas', 700144, 'Non-Government Organisation', 1, 'Male', 50, 1, 'WB/JJ/24 PGS (S)/01/01/0081', '2021-03-22 18:30:00', '2026-03-21 18:30:00', 0, '', '', 0),
('CCI_287', 'SOUTH 24 PARGANAS', 'Noor Ali Memorial Society', 'Vill Sodpukur, PO Ramchandra Nagar, PS Dholahat, Block Kakdwip, Dist South 24 Parganas', 743339, 'Non-Government Organisation', 1, 'Male', 50, 1, 'WB/JJ/24 PGS (S)/01/01/0140', '2019-06-25 18:30:00', '2024-06-24 18:30:00', 0, '', '0', 0),
('CCI_288', 'SOUTH 24 PARGANAS', 'OFFER (Anandaghar -CNCP Boys)', 'Jangipara Road, South Gobindapur, PS. Sonarpur, Pin. 700145', NULL, 'Non-Government Organisation', 1, 'Male', NULL, 0, 'WB/JJ/24 PGS (S)/ 01/01/0087', '2018-06-28 18:30:00', '2023-06-27 18:30:00', 5, NULL, NULL, NULL),
('CCI_289', 'SOUTH 24 PARGANAS', 'OFFER (Anandaghar -CNCP Girls)', 'Jugipara Road, South Gobindapur, PS. Sonarpur, Pin. 700145', NULL, 'Non-Government Organisation', 1, 'Female', NULL, 0, 'WB/JJ/24 PGS (S)/01/02/0095', '2018-06-28 18:30:00', '2023-06-27 18:30:00', 5, NULL, NULL, NULL),
('CCI_290', 'SOUTH 24 PARGANAS', 'OFFER -Apanjan (CWSN - Boys)', 'Jugipara Road, South Gobindapur, PS. Sonarpur, Pin. 700145', NULL, 'Non-Government Organisation', 1, 'Male', NULL, 0, 'WB/JJ/24 PGS (S)/01/01/0100', '2018-06-28 18:30:00', '2023-06-27 18:30:00', 5, NULL, NULL, NULL),
('CCI_291', 'SOUTH 24 PARGANAS', 'OFFER -Apanjan (CWSN - Girls)', 'Jugipara Road, South Gobindapur, PS. Sonarpur, Pin. 700145', NULL, 'Non-Government Organisation', 1, 'Female', NULL, 0, 'WB/JJ/24 PGS (S)/01/02/0096', '2018-06-28 18:30:00', '2023-06-27 18:30:00', 6, NULL, NULL, NULL),
('CCI_292', 'South 24 Parganas', 'Sahara Health & Education Society (Open Shelter for Boys)', 'F4/ 42, Defence Park, Moynagarh, Kolkata-700141', 700141, 'Non-Government Organisation', 1, 'Male', 25, 1, 'WB/JJ/24 PGS(N)/03/02/0055', '2023-06-21 18:30:00', '2028-06-20 18:30:00', NULL, NULL, NULL, NULL),
('CCI_293', 'SOUTH 24 PARGANAS', 'Sanlaap', 'Sneha, 52, Nalini Mitra Road, Vill. Elachi, PO. Narendrapur, PS. Sonarpur', 700103, 'Non-Government Organisation', 1, 'Female', 50, 1, 'JJ/Reg./NGO/007', '2001-03-29 18:30:00', '2006-03-28 18:30:00', 4, '', '', 0),
('CCI_294', 'SOUTH 24 PARGANAS', 'Soumyalok Biswaseva Niketan  CNCP 50 girls', 'Katya-yanitala Street, Chakroborty para, Dakshin Jagaddal Rajpur PIN-700151', NULL, 'Non-Government Organisation', 1, 'Female', 50, 0, NULL, '2025-01-04 12:32:07', '2025-01-04 12:32:07', 4, NULL, NULL, NULL),
('CCI_295', 'SOUTH 24 PARGANAS', 'Tiljala Shed Children Home for Boys', 'Asra Sadan, Moulimukundo, PS. Bhangar, Dist. South 24 Parganas, Pin-743502', NULL, 'Non-Government Organisation', 1, 'Male', NULL, 0, 'PROV/WB/JJ/0095', '2017-12-28 18:30:00', '2018-06-25 18:30:00', 6, NULL, NULL, NULL),
('CCI_296', 'SOUTH 24 PARGANAS', 'UDAAN run by Ved vignan mahavidyapeeth', 'Janpriyapark, Swabhumi, Amgachiya, Pailan, Bisnupur I, PIN-700104', NULL, 'Non-Government Organisation', 1, 'Female', NULL, 0, 'WB/JJ/24 PGS (S)/01/02/0092', '2022-04-21 18:30:00', '2027-04-20 18:30:00', 5, NULL, NULL, NULL),
('CCI_297', 'UTTAR DINAJPUR', 'Bharat Sevashram Sangha', 'Vill Kunor, PO & PS Kaliyaganj, Dist South 24 Parganas', 733252, 'Non-Government Organisation', 1, 'Male', 50, 1, 'WB/JJ/DIN(N)/01/01/0141', '2019-10-20 18:30:00', '2024-10-19 18:30:00', 0, '', '', 0),
('CCI_298', 'UTTAR DINAJPUR', 'Purba Netaji Pally Rural Development Society', 'Rabindra Sarani, Raiganj', 733134, 'Non-Government Organisation', 1, 'Combined', 10, 1, 'WB/JJ/UDIN/02/03/0022', '2019-01-14 18:30:00', '2024-01-13 18:30:00', 5, '', '', 0),
('CCI_299', 'UTTAR DINAJPUR', 'St. John Ambulance Association', 'Vill & PO Debinagar, PS Raiganj, Dist Uttar Dinajpur', 733123, 'Non-Government Organisation', 1, 'Female', 50, 1, '3953-SW/O/JJA/94/16', '2016-03-31 18:30:00', '2021-03-30 18:30:00', 0, '', '', 0),
('CCI_300', 'UTTAR DINAJPUR', 'St. John Ambulance Association', 'Vill & PO Debinagar, PS Raiganj, Dist Uttar Dinajpur', 733123, 'Non-Government Organisation', 2, 'Male', 50, 1, 'WB/JJ/DIN(N)/01/01/0118', '2020-03-31 18:30:00', '2025-03-30 18:30:00', 0, '', '', 0),
('CCI_301', 'UTTAR DINAJPUR', 'SURYADAYA CHILDREN HOME FOR DEAF AND DUMB BOYS AND GIRLS', 'PO-KARANJORA, PIN-733130, DIST- UTTAR DINAJPUR, WB', 0, 'Government', 1, 'Male', 50, 1, 'JJ/Reg./Gov./011/1', '2023-01-27 18:30:00', '2028-01-26 18:30:00', 5, NULL, NULL, 0),
('CCI_302', 'UTTAR DINAJPUR', 'SURYADAYA CHILDREN HOME FOR DEAF AND DUMB BOYS AND GIRLS', 'PO- KARANJORA, DIST-UTTAR DINAJPUR, WB, PIN-733130', 0, 'Government', 2, 'Female', 50, 1, 'JJ/Reg./Gov./011/2', '2023-01-27 18:30:00', '2028-01-27 18:30:00', 5, NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `cci_bkup`
--

CREATE TABLE `cci_bkup` (
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
-- Dumping data for table `cci_bkup`
--

INSERT INTO `cci_bkup` (`id`, `district`, `cci_name`, `cci_run_by`, `cci_unit_no`, `cci_gender`, `strength`, `cci_addr`, `cci_pin`, `category`) VALUES
('CCI_001', 'ALIPURDUAR', 'ALIPURDUAR GOVT RUN SPECIALIZED ADOPTION AGENCY', 'Government', 1, 'Combined', 10, 'SUFAL BANGLA BUILDING 1ST FLOOR, NEAR SUB DIVISIONAL OFFICER\'S OFFICE, ALIPURDUAR MUNICIPALITY, PO- ALIPURDUAR COURT, PIN- 736122', '0', 'Specialized Adoption Agency'),
('CCI_002', 'ALIPURDUAR', 'KHAGRABARI RURAL ENERGY DEVELOPMENT ASSOCIATION (KREDA)', 'Non-Government Organisation', 1, 'Male', 50, 'Vill-Madhya Kamakhyaguri, P.O. Kamakhaguri, Kumargram, Alipurduar', '706202', 'Children Home CWSN'),
('CCI_003', 'ALIPURDUAR', 'KHAGRABARI RURAL ENERGY DEVELOPMENT ASSOCIATION (KREDA)', 'Non-Government Organisation', 2, 'Female', 50, 'Vill-Madhya Kamakhyaguri, P.O. Kamakhaguri, Kumargram, Alipurduar', '706202', 'Children Home CWSN'),
('CCI_004', 'BANKURA', 'CHAMTAGARA ADIBASI MAHILA SAMITY', 'Non-Government Organisation', 1, 'Combined', 10, 'Vill- Chamtagara, PO-  Chamtagara, PS - Chhatna', '722137', 'Specialized Adoption Agency'),
('CCI_005', 'BANKURA', 'SUMANGALAM HOME FOR BOYS', 'Government', 1, 'Male', 50, 'KHARIKASULI, PO- MORAR, DIST- BANKURA', '0', 'Children Home'),
('CCI_006', 'BANKURA', 'SUMANGALAM HOME FOR BOYS', 'Government', 2, 'Male', 50, 'KHARIKASULI, PO- MORAR, DIST- BANKURA, WB', '0', 'Children Home'),
('CCI_007', 'BIRBHUM', 'NAVEENA HOME FOR GIRLS RUN BY ELMHIRST INSTITUTE OF COMMUNITY STUDIES', 'Non-Government Organisation', 1, 'Female', 50, 'Andrew Palli Santiniketan', '731235', 'Children Home'),
('CCI_008', 'BIRBHUM', 'RAMPURHAT SPASTICS AND HANDICAPPED SOCIETY (CWSN BOYS)', 'Non-Government Organisation', 1, 'Male', 50, 'Chandmari Uttar Pally, Ward No.13, PO+PS-Rampurhat', '731224', 'Children Home CWSN'),
('CCI_009', 'BIRBHUM', 'SURI CENTER FOR CHILD WELFARE', 'Non-Government Organisation', 1, 'Combined', 10, 'Sova Bazar,Rabindra pally,P.O-Suiri', '731101', 'Specialized Adoption Agency'),
('CCI_010', 'COOCHBIHAR', 'CHILDREN HOME FOR BLIND BOYS', 'Government', 1, 'Male', 50, 'PO+DIST- COOHBEHAR,PIN-736101', '', 'Children Home CWSN'),
('CCI_011', 'COOCHBIHAR', 'CHILDREN HOME FOR BLIND BOYS', 'Government', 2, 'Male', 50, 'PO+DIST- COOCHBEHAR, PIN 736101, WB-736101', '', 'Children Home CWSN'),
('CCI_012', 'COOCHBIHAR', 'NEW BHARTI CLUB', 'Non-Government Organisation', 1, 'Combined', 10, 'Vill+PO-Baneswar,P.S. Kotwali', '736133', 'Specialized Adoption Agency'),
('CCI_013', 'COOCHBIHAR', 'SAHID BANDANA SMRITI BALIKA ABAS', 'Government', 1, 'Combined', 10, 'PO+DIST- COOCH BEHAR, PIN -736101, WB', '0', 'Specialized Adoption Agency'),
('CCI_014', 'COOCHBIHAR', 'SAHID BANDANA SMRITI BALIKA ABAS', 'Government', 1, 'Female', 50, 'PO+DIST- COOCH BEHAR', '736101', 'Children Home'),
('CCI_015', 'COOCHBIHAR', 'SAHID BANDANA SMRITI BALIKA ABAS', 'Government', 2, 'Female', 50, 'PO+DIST- COOCHBEHAR, PIN-736101', '0', 'Children Home'),
('CCI_016', 'COOCHBIHAR', 'SAHID BANDANA SMRITI BALIKA ABAS', 'Government', 3, 'Female', 50, 'PO+DIST-COOCHBEHAR, PIN-736101', '0', 'Observation Home'),
('CCI_017', 'DAKSHIN DINAJPUR', 'NOWPARA TEOR SAMAJ KALYAN SAMITY', 'Non-Government Organisation', 1, 'Combined', 10, 'Vill- RainagarNear Hili Hospital,P.O+P.S-Hili', '733126', 'Specialized Adoption Agency'),
('CCI_018', 'DAKSHIN DINAJPUR', 'SUVAYAN HOME (M)', 'Government', 1, 'Male', 50, 'VILL-HOSSIERPUR, PO-BELTALA PARK, BALURGHAT, DIST- DAKSHIN DINAJPUR', '0', 'Children Home'),
('CCI_019', 'DAKSHIN DINAJPUR', 'SUVAYAN HOME (M)', 'Government', 2, 'Male', 50, 'VILL- HOSSIERPUR, PO- BELTALA PARK, BALURGHAT, DAKSHIN DINAJPUR, WB', '0', 'Children Home'),
('CCI_023', 'DARJEELING', 'CHILD IN NEED INSTITUTION (OPEN SHELTER FOR GIRLS)', 'Non-Government Organisation', 1, 'Female', 25, 'Meghnad Sarani, Hakim Para, Po+Ps-Siliguri, 734001', '734001', 'Open Shelter'),
('CCI_025', 'DARJEELING', 'EDITH WILKINS STREET CHILDREN TRUST FOUNDATION HOME FOR GIRLS', 'Non-Government Organisation', 1, 'Female', 50, '8th Jawahar Road, East Holmden, Lower Hermitage', '734101', 'Children Home'),
('CCI_029', 'DARJEELING', 'GOVT. RUN CHILDREN\'S HOME FOR GIRLS', 'Government', 1, 'Female', 50, 'BAIRATISHAL, MATIGARA, SILIGURI, DIST-DARJEELING, WB', '0', 'Children Home'),
('CCI_039', 'HOOGHLY', 'CHILDREN HOME FOR GIRLS, UTTARPARA', 'Government', 1, 'Female', 50, '7, RAJMOHAN ROAD, UTTARPARA, PIN-712258', '0', 'Children Home'),
('CCI_040', 'HOOGHLY', 'CHILDREN HOME FOR GIRLS, UTTARPARA', 'Government', 1, 'Combined', 10, '7, RAJMOHAN ROAD, UTTARPARA, DIST- HOOGHLY, WB, PIN-712258', '0', 'Specialized Adoption Agency'),
('CCI_041', 'HOOGHLY', 'CHILDREN HOME FOR GIRLS, UTTARPARA', 'Government', 2, 'Female', 50, '7, RAJMOHAN ROAD, UTTARPARA, PIN-712258', '0', 'Children Home'),
('CCI_042', 'HOOGHLY', 'CHILDREN HOME FOR GIRLS, UTTARPARA', 'Government', 3, 'Female', 50, '7, RAJMOHAN ROAD, UTTARPARA, PIN-712258', '0', 'Children Home'),
('CCI_043', 'HOOGHLY', 'GOPALNAGAR NIVEDITA WELFARE SOCIETY ', 'Non-Government Organisation', 1, 'Male', 50, 'Vill-Gopalnagar, PO Harharia (Singur),', '712409', 'Children Home'),
('CCI_044', 'HOOGHLY', 'JANA SIKSHA PROCHAR KENDRA', 'Non-Government Organisation', 1, 'Female', 50, 'Vill & PO Baganda, PS Jangipara, Hooghly', '0', 'Children Home'),
('CCI_045', 'HOOGHLY', 'KALYAN BHARATI OBSERVATION HOME FOR BOYS', 'Non-Government Organisation', 1, 'Male', 25, 'Kamarkundu', '712407', 'Observation Home'),
('CCI_047', 'HOOGHLY', 'KHANYAN DR. B.R. AMBEDKAR SEBA SAMITY', 'Non-Government Organisation', 1, 'Male', 50, 'Vill & PO Mogra, PS Mogra, Block Chinsura Mogra, Hooghly', '712148', 'Children Home CWSN'),
('CCI_049', 'HOOGHLY', 'PRABARTAK SEVA NIKETAN', 'Non-Government Organisation', 1, 'Female', 50, 'Sarkarpara Lane, Boraichanditala, PO & PS Chandannagar, Hooghly', '712136', 'Children Home'),
('CCI_050', 'HOOGHLY', 'SATYA BHARTI', 'Non-Government Organisation', 1, 'Combined', 10, '28 Vidyasagar Road,PO-Nabagram, Kornagar', '712246', 'Specialized Adoption Agency'),
('CCI_051', 'HOOGHLY', 'TARAKNATH SOCIAL WELFARE', 'Non-Government Organisation', 1, 'Male', 25, 'Tarakeswar ,jyotashmbul Po-Tarakeswar, Hooghly PIN-712410', '712410', 'Open Shelter'),
('CCI_052', 'HOWRAH', 'AKSHAY NAGAR PALLISIRI SANGHA, GIRLS (OPEN SHELTER)', 'Non-Government Organisation', 1, 'Female', 25, 'Vill-Sahebbagan, PO-Samabay Palli, Nischinda, Howrah, Pin-711205', '711205', 'Open Shelter'),
('CCI_053', 'HOWRAH', 'ASHA BHAVAN CENTRE', 'Non-Government Organisation', 1, 'Female', 25, 'Uluberia Kathila PO Banitabala, PS Uluberia, Howrah', '', 'Open Shelter'),
('CCI_054', 'HOWRAH', 'ASHA BHAVAN CENTRE', 'Non-Government Organisation', 1, 'Female', 50, 'Vill Kathila, PO Banitabla, PS Uluberia, Howrah', '711316', 'Children Home CWSN'),
('CCI_055', 'HOWRAH', 'ASHA BHAVAN CENTRE', 'Non-Government Organisation', 2, 'Female', 50, 'Vill Kathila, PO Banitabla, PS Uluberia, Howrah', '711316', 'Children Home CWSN'),
('CCI_056', 'HOWRAH', 'ASHA BHAVAN CENTRE', 'Non-Government Organisation', 3, 'Female', 50, 'Vill Kathila, PO Banitabla, PS Uluberia, Howrah', '711316', 'Children Home CWSN'),
('CCI_057', 'HOWRAH', 'CHIRANABIN', 'Non-Government Organisation', 1, 'Male', 50, 'Vill Parbakshi, PO Bakshi, PS Joypur, Howrah', '711303', 'Observation Home'),
('CCI_058', 'HOWRAH', 'CHIRANABIN', 'Non-Government Organisation', 2, 'Female', 50, 'Vill Parbakshi, PO Bakshi, PS Joypur, Howrah', '711303', 'Children Home CWSN'),
('CCI_059', 'HOWRAH', 'CHIRANABIN', 'Non-Government Organisation', 3, 'Female', 50, 'Vill Parbakshi, PO Bakshi, PS Joypur, Howrah', '711303', 'Children Home CWSN'),
('CCI_060', 'HOWRAH', 'CHIRANABIN', 'Non-Government Organisation', 4, 'Female', 50, 'Vill Parbakshi, PO Bakshi, PS Joypur, Howrah', '711303', 'Children Home CWSN'),
('CCI_061', 'HOWRAH', 'HIJLI KALYAN KENDRA, BOYS (OPEN SHELTER)', 'Non-Government Organisation', 1, 'Male', 25, 'Kaminipara, Thana Makua, Panchanantala, Bakultala, P.O.-Danesh Sk. Lane, PS-Sankrail, Howrah-711109', '711109', 'Open Shelter'),
('CCI_062', 'HOWRAH', 'HOWRAH CENTRAL SUPRAVAT, BOYS (OPEN SHELTER)', 'Non-Government Organisation', 1, 'Male', 25, 'Ghanshyam Apartment, Gt. Floor, Chunavati, P.O.-Podra, Sankrail, Howrah-711109', '711109', 'Open Shelter'),
('CCI_064', 'HOWRAH', 'ITINDA COMMUNITY DEVELOPMENT SOCIETY', 'Non-Government Organisation', 1, 'Male', 50, 'Vill Bhooyarah, PO Mugkalyan, Howrah ', '711312', 'Children Home'),
('CCI_065', 'HOWRAH', 'ITINDA COMMUNITY DEVELOPMENT SOCIETY', 'Non-Government Organisation', 2, 'Male', 50, 'Vill Bhooyarah, PO Mugkalyan, Howrah ', '711312', 'Children Home'),
('CCI_066', 'HOWRAH', 'KEUTI PURBA DHARANI BIPLABI SANGHA', 'Non-Government Organisation', 1, 'Combined', 10, '43, Sailendra (nath) Bose Road, P.S. Golabari,  Dist-Howrah', '711106', 'Specialized Adoption Agency'),
('CCI_067', 'HOWRAH', 'KHARDAH PUBLIC CULTURAL & WELFARE ASSOCIATION (OPEN SHELTER)', 'Non-Government Organisation', 1, 'Male', 25, 'Vill-Khardah, PO-Tulshiberia, Dist-Howrah, Pin-711401', '711401', 'Open Shelter'),
('CCI_068', 'HOWRAH', 'SUNDARIBAI MULCHAND MAHATTA HOME (SMM HOME)', 'Government', 1, 'Female', 50, '8, STARK ROAD, LILUAH, PO- HOWRAH, PIN-711101, DIST- HOWRAH, WB', '0', 'Children Home'),
('CCI_069', 'HOWRAH', 'SUNDARIBAI MULCHAND MAHATTA HOME (SMM HOME)', 'Government', 1, 'Combined', 10, '8, STARK ROAD , LILUAH, PO+DIST- HOWRAH, PIN-711101', '0', 'Specialized Adoption Agency'),
('CCI_070', 'HOWRAH', 'SUNDARIBAI MULCHAND MAHATTA HOME (SMM HOME)', 'Government', 2, 'Female', 50, '8, STARK ROAD, LILUAH, PO- HOWRAH, PIN- 711101, DIST- HOWRAH, WB', '0', 'Children Home'),
('CCI_071', 'HOWRAH', 'SUNDARIBAI MULCHAND MAHATTA HOME (SMM HOME)', 'Government', 2, 'Combined', 10, '8, STARK ROAD, LILUAH, PO+DIST- HOWRAH, PIN-711101', '0', 'Specialized Adoption Agency'),
('CCI_072', 'HOWRAH', 'SUNDARIBAI MULCHAND MAHATTA HOME (SMM HOME)', 'Government', 3, 'Female', 50, '8, STARK ROAD, LILUAH, PO- HOWRAH, DIST- HOWRAH, PIN- 711101', '0', 'Children Home'),
('CCI_073', 'HOWRAH', 'SUNDARIBAI MULCHAND MAHATTA HOME (SMM HOME)', 'Government', 4, 'Female', 50, '8, STARK ROAD, LILUAH, PO+DIST- HOWRAH, PIN-711101', '0', 'Children Home'),
('CCI_074', 'HOWRAH', 'SUNDARIBAI MULCHAND MAHATTA HOME (SMM HOME)', 'Government', 5, 'Female', 50, '8, STARK ROAD, LILUAH PO+DIST- HOWRAH, PIN- 711101', '0', 'Children Home'),
('CCI_075', 'HOWRAH', 'SUNDARIBAI MULCHAND MAHATTA HOME (SMM HOME)', 'Government', 6, 'Female', 50, '8, STARK ROAD, LILUAH, PO+DIST- HOWRAH, PIN-711101', '0', 'Children Home'),
('CCI_076', 'HOWRAH', 'SUNDARIBAI MULCHAND MAHATTA HOME (SMM HOME)', 'Government', 7, 'Female', 50, '8, STARK ROAD,  LILUAH PO+DIST- HOWRAH, PIN-711101', '0', 'Observation Home'),
('CCI_077', 'HOWRAH', 'YOUTH WELFARE AND CULTURAL SOCIETY, (OPEN SHELTER FOR BOYS)', 'Non-Government Organisation', 1, 'Male', 25, 'Amriya, PO-Kolorah, Domjur, Howrah, Pin-711411', '711411', 'Open Shelter'),
('CCI_078', 'JALPAIGURI', 'ANUBHAB RUN BY JALPAIGURI MAHILA KALYAN SANGHA', 'Non-Government Organisation', 1, 'Female', 50, 'New Town Bose Para, PO & Dist Jalpaiguri', '735101', 'Children Home'),
('CCI_082', 'JALPAIGURI', 'KORAK CHILDREN HOME FOR BOYS', 'Government', 1, 'Male', 50, 'RACE COURSE, DIST- JALPAIGURI, WB', '0', 'Children Home'),
('CCI_083', 'JALPAIGURI', 'KORAK CHILDREN HOME FOR BOYS', 'Government', 2, 'Male', 50, 'RACE COURSE, DIST-JALPAIGURI, WB', '0', 'Observation Home'),
('CCI_084', 'JALPAIGURI', 'KOROK CHILDREN HOME FOR BOYS', 'Government', 1, 'Combined', 10, '', '0', 'Specialized Adoption Agency'),
('CCI_085', 'JALPAIGURI', 'NIJOLOY CHILDREN HOME FOR GIRLS (WOMENS INTERLINK FOUNDATION)', 'Non-Government Organisation', 1, 'Female', 50, 'Pandapara Battola, PO Pandapara Kalibari, Jalpaiguri', '735132', 'Children Home'),
('CCI_087', 'JHARGRAM', 'NIVEDITA GRAMIN KARMA MANDIR', 'Non-Government Organisation', 1, 'Combined', 10, 'PO-Manikpara, Dist-Jhargram', '721513', 'Specialized Adoption Agency'),
('CCI_094', 'KOLKATA', 'ALL BENGAL WOMENS UNION ', 'Non-Government Organisation', 1, 'Female', 50, '89, Elliot Road, Kolkata', '700017', 'Children Home'),
('CCI_095', 'KOLKATA', 'ALL BENGAL WOMENS UNION ', 'Non-Government Organisation', 2, 'Female', 50, '89, Elliot Road, Kolkata', '700017', 'Children Home'),
('CCI_096', 'KOLKATA', 'AMADER BARI CHILD IN NEED INSTITUTE (CINI)', 'Non-Government Organisation', 1, 'Female', 50, '63, Rafi Ahmed Kidwai Road, Kolkata', '700016', 'Children Home'),
('CCI_097', 'KOLKATA', 'AMADER PADAKHEP OPEN SHELTER', 'Non-Government Organisation', 1, 'Male', 25, '75, Purba Phulbagan near Sahid Bedi, PS-Patuli, Kolkata-700086', '700086', 'Open Shelter'),
('CCI_099', 'KOLKATA', 'BENGAL SERVICE SOCIETY OPEN SHELTER', 'Non-Government Organisation', 1, 'Male', 25, '196F/2A/1 Picnic Garden Road , Kol-39', '700039', 'Open Shelter'),
('CCI_100', 'KOLKATA', 'CALCUTTA SOCIAL PROJECT OPEN SHELTER FOR BOYS', 'Non-Government Organisation', 1, 'Male', 25, '1/4 , Monoharpukur Road, Kolkata- 700029', '700029', 'Open Shelter'),
('CCI_101', 'KOLKATA', 'CALCUTTA SOCIAL PROJECT OPEN SHELTER FOR GIRLS', 'Non-Government Organisation', 1, 'Female', 25, '1/4 , Monoharpukur Road, Kolkata- 700029', '700029', 'Open Shelter'),
('CCI_102', 'KOLKATA', 'CHILD IN NEED INSTITUTE (CINI)', 'Non-Government Organisation', 1, 'Male', 25, 'Chaitanya Library 4/1 Dani Ghosh Sarani, Bedon Street, Kolkata 6', '700006', 'Open Shelter'),
('CCI_103', 'KOLKATA', 'CHILD IN NEED INSTITUTE (CINI) URBAN UNIT, HAMARA GHAR, OPEN SHELTER', 'Non-Government Organisation', 1, 'Male', 25, '37 Pottery Road, Kolkata - 700015', '700015', 'Open Shelter'),
('CCI_104', 'KOLKATA', 'CHILD IN NEED INSTITUTE (CINI) URBAN UNIT-II,', 'Non-Government Organisation', 1, 'Male', 25, 'Sealdah Carshed', '', 'Open Shelter'),
('CCI_106', 'KOLKATA', 'CHILDREN HOME FOR BOYS UNIT I RUN BY FUTURE HOPE', 'Non-Government Organisation', 1, 'Male', 25, '1/8 Rowland Road', '700020', 'Children Home'),
('CCI_107', 'KOLKATA', 'CHILDREN HOME FOR BOYS UNIT II RUN BY FUTURE HOPE', 'Non-Government Organisation', 1, 'Male', 25, '200/2D Rashbehari Avenue', '700029', 'Children Home'),
('CCI_108', 'KOLKATA', 'CHILDREN HOME FOR BOYS UNIT III RUN BY FUTURE HOPE', 'Non-Government Organisation', 1, 'Male', 25, '6, Bompass Road', '700029', 'Children Home'),
('CCI_109', 'KOLKATA', 'CHILDREN HOME FOR GIRLS RUN BY FUTURE HOPE', 'Non-Government Organisation', 1, 'Female', 50, '32 A and B Old, Ballygunge 2nd Lane', '700019', 'Children Home'),
('CCI_112', 'KOLKATA', 'GANA UNYAN PARSHAD OPEN SHELTER FOR BOYS', 'Non-Government Organisation', 1, 'Male', 25, '28/1B/1, Bospukur Road, Kolkata- 700045', '700045', 'Open Shelter'),
('CCI_113', 'KOLKATA', 'GANDHI PEACE FOUNDATION (OPEN SHELTER FOR GIRLS)', 'Non-Government Organisation', 1, 'Female', 25, 'West Chowbaga, Kolkata-', '700105', 'Open Shelter'),
('CCI_114', 'KOLKATA', 'GARDEN REACH ALIF NAGAR DEVELOPMENT ORGANISATION (OPEN SHELTER)', 'Non-Government Organisation', 1, 'Male', 25, 'G-352/1 Alif Nagar (Garden Reach), Kolkata-700024', '700024', 'Open Shelter'),
('CCI_115', 'KOLKATA', 'GARDEN REACH BANGLA BUSTEE (OPEN SHELTER)', 'Non-Government Organisation', 1, 'Male', 25, 'G-38, Bangla Basti, Garden Reach Road, Kolkata-700024', '700024', 'Open Shelter'),
('CCI_116', 'KOLKATA', 'GARDEN REACH SLUM DEVELOPMENT (OPEN SHELTER)', 'Non-Government Organisation', 1, 'Female', 25, 'P-229 Tikia Para 1st Lane, Garfden Reach, Kolkata-700024', '700024', 'Open Shelter'),
('CCI_117', 'KOLKATA', 'HAMARA GHAR CHILD IN NEED INSTITUTE (CINI)', 'Non-Government Organisation', 1, 'Male', 50, '37, Pottery Road, Tangra, Kolkata', '700015', 'Children Home'),
('CCI_125', 'KOLKATA', 'HUMANITY ASSOCIATION (OPEN SHELTER FOR BOYS)', 'Non-Government Organisation', 1, 'Male', 25, '226, B.B. Ganguly Street, Kolkata -12', '700012', 'Open Shelter'),
('CCI_126', 'KOLKATA', 'INDIAN SOCIETY FOR REHABILITATIONS OF CHILDREN', 'Non-Government Organisation', 1, 'Combined', 10, '9B, lake View Road', '700029', 'Specialized Adoption Agency'),
('CCI_127', 'KOLKATA', 'INDIAN SOCIETY FOR REHABILITATIONS OF CHILDREN', 'Non-Government Organisation', 2, 'Combined', 10, '9B, lake View Road', '700029', 'Specialized Adoption Agency'),
('CCI_128', 'KOLKATA', 'INSTITUTE OF PSYCHOLOGICAL & EDUCATIONAL RESEARCH (IPER)(OPEN SHELTER)', 'Non-Government Organisation', 1, 'Female', 25, 'P 39/1 , Prince Anwar Shah Road, Kolkata - 700045', '700045', 'Open Shelter'),
('CCI_132', 'KOLKATA', 'LIBERAL ASSOCIATION FOR MOVEMENT OF PEOPLE (LAMP) (OPEN SHELTER)', 'Non-Government Organisation', 1, 'Female', 25, '66,Surya Sen Street, Kol.- 09', '700009', 'Open Shelter'),
('CCI_133', 'KOLKATA', 'LUTHERAN WORLD SERVICE INDIA TRUST', 'Non-Government Organisation', 1, 'Female', 25, '33/7 Murari Pukur Road, Kolkata 10', '700010', 'Open Shelter'),
('CCI_136', 'KOLKATA', 'NATIONAL COUNCIL FOR WOMEN IN INDIA CHILD AND WELFARE SECTION (NCWI) (OPEN SHELTER)', 'Non-Government Organisation', 1, 'Female', 25, 'Bosumati Bhavan, 166, BB Ganguly Street, Kolkata- 700012', '700012', 'Open Shelter'),
('CCI_140', 'KOLKATA', 'SHAFKAT ALAM CENTRE TILJALA SHED (OPEN SHELTER)', 'Non-Government Organisation', 1, 'Male', 25, '52 Tiljala Road, Kolkata- 700046', '700046', 'Open Shelter'),
('CCI_141', 'KOLKATA', 'SOCIETY FOR INDIAN CHILDRENS WELFARE', 'Non-Government Organisation', 1, 'Combined', 10, '20 & 22 Col. Biswas Road, Beckbagan', '700019', 'Specialized Adoption Agency'),
('CCI_142', 'KOLKATA', 'SOCIETY FOR INDIAN CHILDRENS WELFARE', 'Non-Government Organisation', 2, 'Combined', 10, '20 & 22 Col. Biswas Road, Beckbagan', '700019', 'Specialized Adoption Agency'),
('CCI_143', 'KOLKATA', 'SOCIETY FOR INDIAN CHILDRENS WELFARE', 'Non-Government Organisation', 3, 'Combined', 10, '20 & 22 Col. Biswas Road, Beckbagan', '700019', 'Specialized Adoption Agency'),
('CCI_144', 'KOLKATA', 'THE INDIAN SOCIETY FOR SPONSORSHIP AND ADOPTION', 'Non-Government Organisation', 1, 'Combined', 10, '1, Palace Court, 1, Kyd Street, Kolkata- 700016  Home: P-41, Sector -A Metropolitan Co- operative Society', '700105', 'Specialized Adoption Agency'),
('CCI_145', 'KOLKATA', 'THE INDIAN SOCIETY FOR SPONSORSHIP AND ADOPTION', 'Non-Government Organisation', 2, 'Combined', 10, '1, Palace Court, 1, Kyd Street, Kolkata- 700016  Home: P-41, Sector -A Metropolitan Co- operative Society', '700105', 'Specialized Adoption Agency'),
('CCI_146', 'KOLKATA', 'THE INDIAN SOCIETY FOR SPONSORSHIP AND ADOPTION', 'Non-Government Organisation', 3, 'Combined', 10, '1, Palace Court, 1, Kyd Street, Kolkata- 700016  Home: P-41, Sector -A Metropolitan Co- operative Society', '700105', 'Specialized Adoption Agency'),
('CCI_147', 'KOLKATA', 'THE INDIAN SOCIETY FOR SPONSORSHIP AND ADOPTION', 'Non-Government Organisation', 4, 'Combined', 10, '1, Palace Court, 1, Kyd Street, Kolkata- 700016  Home: P-41, Sector -A Metropolitan Co- operative Society', '700105', 'Specialized Adoption Agency'),
('CCI_148', 'KOLKATA', 'TRINITA SOCIETY FOR SOCIAL & HEALTH RESEARCH (OPEN SHELTER)', 'Non-Government Organisation', 1, 'Male', 25, '30 B Radhamadhab Dutta Garden Lane, Kolkata-10', '700010', 'Open Shelter'),
('CCI_149', 'KOLKATA', 'TRINITA SOCIETY FOR SOCIAL & HEALTH RESEARCH (OPEN SHELTER)', 'Non-Government Organisation', 1, 'Male', 25, '32/3, Tapsia Road, (South), Kolkata- 700046 (forth Floor)', '700046', 'Open Shelter'),
('CCI_150', 'KOLKATA', 'UNITED BUSTEE DEVELOPMENT ASSOCIATION (UBDA) (OPEN SHELTER)', 'Non-Government Organisation', 1, 'Male', 25, '22/E, Gorachand Road, Kolkata - 700014', '700014', 'Open Shelter'),
('CCI_151', 'KOLKATA', 'WEST BENGAL COUNCIL FOR CHILD WELFARE (WBCCW) (OPEN SHELTER)', 'Non-Government Organisation', 1, 'Female', 25, '42, Ramesh Mitra Road, Kolkata-700025', '700025', 'Open Shelter'),
('CCI_152', 'MALDAH', 'CHILDREN HOME FOR GIRLS, MALDA (SHAISHALI SISHU KANYA ABAS)', 'Government', 1, 'Female', 50, 'SARBOMANGALA ROAD, PO+DIST- MALDA, WB', '0', 'Children Home'),
('CCI_153', 'MALDAH', 'CHILDREN HOME FOR GIRLS, MALDA (SHAISHALI SISHU KANYA ABAS)', 'Government', 2, 'Female', 50, 'SARBOMANGALA ROAD, PO+DIST-MALDA, WB', '0', 'Children Home'),
('CCI_154', 'MALDAH', 'SUNITEE SISHU GRIHA RUN BY HAIDERPUR SHELTER OF MALDA', 'Non-Government Organisation', 1, 'Combined', 10, 'Maheshmati (West) Behind Bikram Club', '732101', 'Specialized Adoption Agency'),
('CCI_155', 'MURSHIDABAD', 'ANANDA ASHRAM HOME (M)', 'Government', 1, 'Male', 50, 'K.N.ROAD, PO- BERHAMPORE, DIST- MURSHIDABAD, WB', '0', 'Observation Home'),
('CCI_156', 'MURSHIDABAD', 'ANANDA ASHRAM HOME (M)', 'Government', 2, 'Male', 50, 'K.N.ROAD, PO- BERHAMPORE, DIST- MURSHIDABAD', '0', 'Observation Home'),
('CCI_157', 'MURSHIDABAD', 'BELDANGA BHAGIRATHI SEVA SADAN', 'Non-Government Organisation', 1, 'Combined', 10, 'Maheshmati (West) Behind Bikram Club', '732101', 'Specialized Adoption Agency'),
('CCI_158', 'MURSHIDABAD', 'DOMKAL VIKAS KENDRA', 'Non-Government Organisation', 1, 'Combined', 10, 'Vill-+PO-Domkal, PS-Domkal', '742302', 'Specialized Adoption Agency'),
('CCI_159', 'MURSHIDABAD', 'HARIPUR DR. AMBEDKAR JANASEBA MISSION', 'Non-Government Organisation', 1, 'Female', 50, 'Vill & PO Nagar, PS Khargram, Murshidabad', '742159', 'Children Home CWSN'),
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
('CCI_171', 'NADIA', 'KARIMPUR SOCIAL WELFARE SOCIETY', 'Non-Government Organisation', 1, 'Male', 50, 'Pattabuka More, PO Natna Pattabuka, PS Karimpur, Nadia', '741122', 'Children Home'),
('CCI_172', 'NADIA', 'KARIMPUR SOCIAL WELFARE SOCIETY', 'Non-Government Organisation', 2, 'Male', 50, 'Pattabuka More, PO Natna Pattabuka, PS Karimpur, Nadia', '741122', 'Observation Home'),
('CCI_175', 'NADIA', 'NAKASHIPARA NIRMAL HRIDAY SAMITY', 'Non-Government Organisation', 1, 'Male', 50, 'Vill Galaidaripara, PO Badbillwagram, PS Nakashipara, Nadia', '741126', 'Children Home CWSN'),
('CCI_177', 'NADIA', 'RANAGHAT LIONS TRUST', 'Non-Government Organisation', 1, 'Combined', 10, 'Biswaspara, PO-Ranaghat', '741201', 'Specialized Adoption Agency'),
('CCI_179', 'NORTH 24 PARGANAS', 'ARADHANA SOCIAL DEVELOPMENT ORGANISATION (OPEN SHELTER FOR BOYS)', 'Non-Government Organisation', 1, 'Male', 25, 'Sailen Moullick Sarani, PO-Hridaypur, North 24 Parganas, Pin-700127', '700127', 'Open Shelter'),
('CCI_184', 'NORTH 24 PARGANAS', 'BENGAL MASS EDUCATION SOCIETY (OPEN SHELTER FOR BOYS)', 'Non-Government Organisation', 1, 'Male', 25, 'E/15/D ADRASHA NAGAR BELGHORIA, P.O-NIMTA, KOL-49', '700049', 'Open Shelter'),
('CCI_186', 'NORTH 24 PARGANAS', 'BIKASH BHARATI WELFARE SOCIETY OPEN SHELTER', 'Non-Government Organisation', 1, 'Male', 25, '23/1, Deshbondhu Road, Kolkata- 700035', '700035', 'Open Shelter'),
('CCI_187', 'NORTH 24 PARGANAS', 'BODHANA HOME', 'Non-Government Organisation', 1, 'Male', 50, 'Chakpachuria, PO Chakpachuria, PS Technocity, North 24 Parganas', '700160', 'Children Home CWSN'),
('CCI_188', 'NORTH 24 PARGANAS', 'BODHANA HOME', 'Non-Government Organisation', 2, 'Male', 50, 'Chakpachuria, PO Chakpachuria, PS Technocity, North 24 Parganas', '700160', 'Children Home CWSN'),
('CCI_189', 'NORTH 24 PARGANAS', 'BODHI PEET HOME', 'Non-Government Organisation', 1, 'Female', 25, 'AQ-16, Sector-V, Saltlake', '700091', 'Children Home CWSN'),
('CCI_190', 'NORTH 24 PARGANAS', 'CHILD CARE HOME RUN BY WIF', 'Non-Government Organisation', 1, 'Female', 50, 'Sukantanagar, Saltlake,Sector-IV', '700098', 'Children Home'),
('CCI_192', 'NORTH 24 PARGANAS', 'DHRUBASHRAM HOME', 'Government', 1, 'Male', 50, '30, SRI GOPAL MULLICK ROAD, KOLKATA-700057', '0', 'Observation Home'),
('CCI_193', 'NORTH 24 PARGANAS', 'DHRUBASHRAM HOME', 'Government', 2, 'Male', 50, '30, SRI GOPAL MULLICK ROAD, KOLKATA-700057', '0', 'Observation Home'),
('CCI_199', 'NORTH 24 PARGANAS', 'JANASIKSHA PROCHAR KENDRA (OPEN SHELTER)', 'Non-Government Organisation', 1, 'Female', 25, 'CK-6, Salt Lake, Sec-II, Kolkata - 91.', '700091', 'Open Shelter'),
('CCI_204', 'NORTH 24 PARGANAS', 'KISHALAYA HOME', 'Government', 1, 'Male', 50, 'PO-BARASAT, DIST-NORTH 24 PARGANAS, WB', '0', 'Children Home'),
('CCI_205', 'NORTH 24 PARGANAS', 'KISHALAYA HOME', 'Government', 2, 'Male', 50, 'PO- BARASAT, DIST- NORTH 24 PARGANAS, WB', '0', 'Children Home'),
('CCI_206', 'NORTH 24 PARGANAS', 'MUKTI REHABILITATIN CENTRE', 'Non-Government Organisation', 1, 'Combined', 10, 'Ramkrishna Pally,Dashadrone,  P.O-Rajarhat Gopalpur', '700136', 'Specialized Adoption Agency'),
('CCI_207', 'NORTH 24 PARGANAS', 'MUKTI REHABILITATIN CENTRE (OPEN SHELTER)', 'Non-Government Organisation', 1, 'Male', 25, 'Ramkrishnapally, Dahadrone, PO-Rajarhat, North 24 Pgs, Pin-700136', '700136', 'Open Shelter'),
('CCI_208', 'NORTH 24 PARGANAS', 'NAIHATI NEW LIFE SOCIETY (OPEN SHELTER FOR GIRLS)', 'Non-Government Organisation', 1, 'Female', 25, '172, Talpukur Road, Deulpara, PO. Naihati, North 24 Parganas-743165', '743165', 'Open Shelter'),
('CCI_209', 'NORTH 24 PARGANAS', 'NIJOLOY WOMEN S INTERLINK FOUNDATION', 'Non-Government Organisation', 1, 'Female', 50, 'Sukanta Sarani, Doltala More, Methopara, Ganganagar, Madhyamgram', '700132', 'Children Home'),
('CCI_210', 'NORTH 24 PARGANAS', 'RAMKRISHNA VIVEKANANDA MISSION', 'Non-Government Organisation', 1, 'Male', 50, '20, Riverside Road, Barrackpore', '700120', 'Children Home'),
('CCI_211', 'NORTH 24 PARGANAS', 'RAMKRISHNA VIVEKANANDA MISSION (OPEN SHELTER FOR GIRLS)', 'Non-Government Organisation', 1, 'Female', 25, 'Agarpara Branch, 3, B.T. Road, Kolkata - 58', '700058', 'Open Shelter'),
('CCI_217', 'NORTH 24 PARGANAS', 'SUKANYA HOME', 'Government', 1, 'Female', 50, 'AQ-15, SECTOR-V, SALT LAKE CITY, KOLKATA-700091, WB', '0', 'Children Home'),
('CCI_218', 'NORTH 24 PARGANAS', 'SUKANYA HOME', 'Government', 2, 'Female', 50, 'AQ-15, SECTOR-V, SALT LAKE CITY, KOLKATA-700091, WB', '0', 'Children Home'),
('CCI_221', 'PASCHIM BARDHAMAN', 'DURGAPUR INDIRA PRAGATI SOCIETY', 'Non-Government Organisation', 1, 'Combined', 10, 'Gopal Math, Kamala Kutir, PO- Oyaria, Durgapur', '713217', 'Specialized Adoption Agency'),
('CCI_222', 'PASCHIM MEDINIPUR', 'BENAI BIJOY KRISHNA RURAL DEVELOPMENTN SOCIETY', 'Non-Government Organisation', 1, 'Male', 50, 'Vill Uttarbar, PO Kheput Block Daspur II, Dist Paschim Medinipur', '721148', 'Children Home CWSN'),
('CCI_223', 'PASCHIM MEDINIPUR', 'BENAI BIJOY KRISHNA RURAL DEVELOPMENTN SOCIETY', 'Non-Government Organisation', 2, 'Male', 50, 'Vill Uttarbar, PO Kheput Block Daspur II, Dist Paschim Medinipur', '721148', 'Children Home'),
('CCI_224', 'PASCHIM MEDINIPUR', 'CHAKKUMAR ASSOCIATION FOR SOCIAL SERVICE', 'Non-Government Organisation', 1, 'Male', 50, 'Vill Chakkumar, PO Debra Bazar, Debra, Dist Paschim Medinipur', '721126', 'Observation Home'),
('CCI_225', 'PASCHIM MEDINIPUR', 'CHAKKUMAR ASSOCIATION FOR SOCIAL SERVICE', 'Non-Government Organisation', 2, 'Male', 50, 'Vill Chakkumar, PO Debra Bazar, Debra, Dist Paschim Medinipur', '721126', 'Children Home'),
('CCI_226', 'PASCHIM MEDINIPUR', 'DANTAN MANAV KALYAN KENDRA', 'Non-Government Organisation', 1, 'Female', 50, 'Krishnapur, PO Dantan, Dist Paschim Medinipur', '721426', 'Children Home CWSN'),
('CCI_228', 'PASCHIM MEDINIPUR', 'MOTHERCHAK NABODAY KISHALAY SANGHA', 'Non-Government Organisation', 1, 'Female', 50, 'Vill Gokulpur, PO Bargokulpur, PS Kharagpur Local, Dist Paschim Medinipur', '721301', 'Children Home CWSN'),
('CCI_229', 'PASCHIM MEDINIPUR', 'MOTHERCHAK NABODAY KISHALAY SANGHA', 'Non-Government Organisation', 2, 'Female', 50, 'Vill Gokulpur, PO Bargokulpur, PS Kharagpur Local, Dist Paschim Medinipur', '721301', 'Children Home CWSN'),
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
('CCI_240', 'PURBA BARDHAMAN', 'ASANSOL BURDWAN SEVA KENDRA', 'Non-Government Organisation', 1, 'Combined', 10, 'Chetana Community Care Centre, Viii- Jhinguti, P.0- Phagupur', '713102', 'Specialized Adoption Agency'),
('CCI_241', 'PURBA BARDHAMAN', 'ASANSOL BURDWAN SEVA KENDRA, CHETAN, COMMUNITY CARE CENTRE', 'Non-Government Organisation', 1, 'Female', 50, 'Vill Jhinguti, PO Phagupur, Dist Purba Bardhaman', '713102', 'Children Home CWSN'),
('CCI_243', 'PURBA BARDHAMAN', 'CHILDREN HOME FOR GIRLS', 'Government', 1, 'Combined', 10, 'BAMCHANDAIPUR, JOTERAM, PS- SAKTIGARH, PURBA BARDHAMAN, PIN-713104', '0', 'Specialized Adoption Agency'),
('CCI_244', 'PURBA BARDHAMAN', 'CHILDREN HOME FOR GIRLS', 'Government', 2, 'Combined', 10, 'BAMCHANDAIPUR, JOTERAM, PS- SAKTIGARH, PURBA BARDHAMAN, PIN-713104', '0', 'Specialized Adoption Agency'),
('CCI_245', 'PURBA BARDHAMAN', 'CHILDREN HOME FOR GIRLS, PURBA BURDWAN', 'Government', 1, 'Female', 50, 'B L HATI ROAD, WEST OF DHALDIGHI, RADHANAGAR, PO+DIST-PURBA BURDWAN, WB', '0', 'Children Home'),
('CCI_246', 'PURBA BARDHAMAN', 'CHILDREN HOME FOR GIRLS, PURBA BURDWAN', 'Government', 2, 'Female', 50, 'B L HATI ROAD, WEST OF DHALDIGHI, RADHANAGAR, PO+DIST-PURBA BURDWAN, WB', '0', 'Children Home'),
('CCI_247', 'PURBA BARDHAMAN', 'SOCIETY FOR MENTAL HEALTH CARE ANANDANIKETAN', 'Non-Government Organisation', 1, 'Female', 50, 'Vill & PO Khajurdihi, PS Katwa, Dist Purba Bardhaman', '713150', 'Children Home CWSN'),
('CCI_248', 'PURBA BARDHAMAN', 'SOCIETY FOR MENTAL HEALTH CARE ANANDANIKETAN', 'Non-Government Organisation', 2, 'Female', 50, 'Vill & PO Khajurdihi, PS Katwa, Dist Purba Bardhaman', '713150', 'Children Home CWSN'),
('CCI_249', 'PURBA BARDHAMAN', 'SOCIETY FOR MENTAL HEALTH CARE ANANDANIKETAN', 'Non-Government Organisation', 3, 'Male', 50, 'Vill & PO Khajurdihi, PS Katwa, Dist Purba Bardhaman', '713150', 'Children Home CWSN'),
('CCI_250', 'PURBA BARDHAMAN', 'SOCIETY FOR MENTAL HEALTH CARE ANANDANIKETAN', 'Non-Government Organisation', 4, 'Male', 50, 'Vill & PO Khajurdihi, PS Katwa, Dist Purba Bardhaman', '713150', 'Children Home CWSN'),
('CCI_251', 'PURBA BARDHAMAN', 'SPEED (OPEN SHELTER) \"MUKTABIHANGA\"', 'Non-Government Organisation', 1, 'Male', 25, 'Radhanagarpara, MD Kayem Lane, Purba Bardhaman, Pin-713101', '713101', 'Open Shelter'),
('CCI_252', 'PURBA MEDINIPUR', 'ANTYODOY ANATH ASHRAM - SNEHACHHAYA HOME', 'Non-Government Organisation', 1, 'Female', 50, 'Vill+PO-Paushi, PS-BHupatinagar, Purba Medinipur, WB', '721444', 'Children Home'),
('CCI_253', 'PURBA MEDINIPUR', 'BODHODAYA HOME RUN BY VIVEKANANDA LOKSIKSHA NIKETAN', 'Non-Government Organisation', 1, 'Male', 50, 'Vill Faridpur, PO Dakshin Dauki, PS Junput Coastal, Dist Purba Medinipur', '721450', 'Children Home CWSN'),
('CCI_254', 'PURBA MEDINIPUR', 'DAKSHIN GHOLEPUKURIA SONALI SANGHA O PATHAGAR', 'Non-Government Organisation', 1, 'Female', 50, 'Vill & PO Gholepukuria, Block Nandigram II, PS Nandigram, Dist Purba Medinipur', '721650', 'Children Home CWSN'),
('CCI_256', 'PURBA MEDINIPUR', 'NIMTOURI TAMLUK UNNAYAN SAMITY (SISHU GREHA)', 'Non-Government Organisation', 1, 'Combined', 10, 'Vill. Chalk Srikrishnapur, Po-Kulberia, P.S-Tamluk', '721649', 'Specialized Adoption Agency'),
('CCI_258', 'PURBA MEDINIPUR', 'SNEHANIR RUN BY NIMTOURI TAMLUK UNNAYAN SAMITY', 'Non-Government Organisation', 1, 'Female', 50, 'Vill Chaksrikrishnapur, PO Kulberia, PS Tamluk, Dist Purba Medinipur', '721649', 'Children Home CWSN'),
('CCI_259', 'PURBA MEDINIPUR', 'SWAMIJI OBSERVATION HOME RUN BY AMAR SEVA SANGHA', 'Non-Government Organisation', 1, 'Male', 50, 'Vill & PO Raine, PS Kolaghat, Dist Purba Medinipur', '721130', 'Observation Home'),
('CCI_260', 'PURBA MEDINIPUR', 'TAPOBAN SISHU ABAS RUN BY KAJLA JANAKALYAN SAMITY', 'Non-Government Organisation', 1, 'Male', 50, 'Vill & PO Sarada, Via Deulbard, PS Contai, Dist Purba Medinipur', '721427', 'Children Home'),
('CCI_261', 'PURBA MEDINIPUR', 'THE SISTER NIVEDITA HOME FOR GIRLS RUN BY NABA KISHORE SANGHA', 'Non-Government Organisation', 1, 'Female', 50, 'Vill & PO Bargodagodar, PS Nandakumar, Dist Purba Medinipur', '721652', 'Children Home'),
('CCI_262', 'PURBA MEDINIPUR', 'UNMESH UNIT I RUN BY HALDIA SAMAJ KALYAN PARSHAD', 'Non-Government Organisation', 1, 'Male', 50, 'Vill Basudevpur, PO Khanjanchak, PS Durgachak, Dist Purba Medinipur', '721602', 'Children Home CWSN'),
('CCI_263', 'PURBA MEDINIPUR', 'UNMESH UNIT II RUN BY HALDIA SAMAJ KALYAN PARSHAD', 'Non-Government Organisation', 2, 'Male', 50, 'Vill Basudevpur, PO Khanjanchak, PS Durgachak, Dist Purba Medinipur', '721602', 'Children Home CWSN'),
('CCI_264', 'PURBA MEDINIPUR', 'UTTARAN RUN BY CINI MOYNA RURAL HEALTH DEVELOPMENT CENTRE', 'Non-Government Organisation', 1, 'Male', 50, 'Vill & PO Paschim Naichanpur, PS Moyna, Dist Purba Medinipur', '721642', 'Children Home'),
('CCI_265', 'PURBA MEDINIPUR', 'VIVEKANANDA LOKSIKSHA NIKETAN (SNEHA KUTIR)', 'Non-Government Organisation', 1, 'Combined', 10, 'Vill-Faridpur, Po-Dakshin Dauki, Ps-Junput Coastal', '721450', 'Specialized Adoption Agency'),
('CCI_266', 'PURBA MEDINIPUR', 'VIVEKANANDA LOKSIKSHA NIKETAN (SNEHA KUTIR)', 'Non-Government Organisation', 2, '', 10, 'Vill-Faridpur, Po-Dakshin Dauki, Ps-Junput Coastal', '721450', 'Specialized Adoption Agency'),
('CCI_267', 'PURBA MEDINIPUR', 'VIVEKANANDA LOKSIKSHA NIKETAN MUKTANEER FOR BOYS', 'Non-Government Organisation', 1, 'Male', 25, 'Dharmadas Barh, Ward no 20, PO+PS- Contai, PIN- 721401', '721401', 'Open Shelter'),
('CCI_268', 'PURULIA', 'ANANDAMATH (F)', 'Government', 1, 'Combined', 10, 'PO-SIMULIA, DIST-PURULIA, WB', '0', 'Specialized Adoption Agency'),
('CCI_269', 'PURULIA', 'ANANDAMATH (F)', 'Government', 1, 'Female', 50, 'PO- SIMILIA, DIST- PURULIA, WB', '0', 'Children Home'),
('CCI_270', 'PURULIA', 'ANANDAMATH (F)', 'Government', 2, 'Female', 50, 'PO- SIMILIA, DIST- PURULIA', '0', 'Children Home'),
('CCI_271', 'PURULIA', 'MANIPUR LEPROSY REHABILITATION CENTRE', 'Non-Government Organisation', 1, 'Male', 50, 'Vill Manipur Colony, PO & PS Adra, Dist Purulia', '723121', 'Children Home'),
('CCI_274', 'SOUTH 24 PARGANAS', 'ASHA BHAWAN CENTRE', 'Non-Government Organisation', 1, 'Female', 50, 'Vill Keoradanga, PO Betberia, PS Bishnupur, Dist South 24 Parganas', '743503', 'Children Home CWSN'),
('CCI_277', 'SOUTH 24 PARGANAS', 'DIGAMBARPUR ANGIKAR', 'Non-Government Organisation', 1, 'Male', 50, 'Vill & PO Digambarpur, Via Kashinagar, Block Pathar Pratima, PS Dholahat, Dist South 24 Parganas', '743349', 'Children Home'),
('CCI_278', 'SOUTH 24 PARGANAS', 'DIGAMBARPUR ANGIKAR', 'Non-Government Organisation', 1, 'Combined', 10, 'Vill & PO Digambarpur, Via Kashinagar, Block Pathar Pratima, PS Dholahat, Dist South 24 Parganas', '743349', 'Specialized Adoption Agency'),
('CCI_279', 'SOUTH 24 PARGANAS', 'DIGAMBARPUR ANGIKAR', 'Non-Government Organisation', 2, 'Male', 50, 'Vill & PO Digambarpur, Via Kashinagar, Block Pathar Pratima, PS Dholahat, Dist South 24 Parganas', '743349', 'Children Home CWSN'),
('CCI_280', 'SOUTH 24 PARGANAS', 'DIGAMBARPUR ANGIKAR', 'Non-Government Organisation', 3, 'Female', 50, 'Vill & PO Digambarpur, Via Kashinagar, Block Pathar Pratima, PS Dholahat, Dist South 24 Parganas', '743349', 'Children Home CWSN'),
('CCI_281', 'SOUTH 24 PARGANAS', 'DIGAMBARPUR ANGIKAR', 'Non-Government Organisation', 4, 'Female', 50, 'Vill & PO Digambarpur, Via Kashinagar, Block Pathar Pratima, PS Dholahat, Dist South 24 Parganas', '743349', 'Children Home'),
('CCI_282', 'SOUTH 24 PARGANAS', 'DIGAMBARPUR ANGIKAR', 'Non-Government Organisation', 5, 'Female', 50, 'Vill & PO Digambarpur, Via Kashinagar, Block Pathar Pratima, PS Dholahat, Dist South 24 Parganas', '743349', 'Children Home'),
('CCI_285', 'SOUTH 24 PARGANAS', 'NAVA DIGANTA HOME, INDIAN SOCIETY FOR SPONSORSHIP AND ADOPTION', 'Non-Government Organisation', 1, 'Female', 50, '70, Jugipara Road, Baishali Park, PO Rajpur, PS Sonarpur, Dist South 24 Parganas', '700149', 'Children Home'),
('CCI_286', 'SOUTH 24 PARGANAS', 'NEW AGE SOCIETY FOR ALL', 'Non-Government Organisation', 1, 'Male', 50, 'Sitakundu Main Road, PO Sitakundu, PS Baruipur, Dist South 24 Parganas', '700144', 'Children Home CWSN'),
('CCI_287', 'SOUTH 24 PARGANAS', 'NOOR ALI MEMORIAL SOCIETY', 'Non-Government Organisation', 1, 'Male', 50, 'Vill Sodpukur, PO Ramchandra Nagar, PS Dholahat, Block Kakdwip, Dist South 24 Parganas', '743339', 'Children Home'),
('CCI_292', 'SOUTH 24 PARGANAS', 'SAHARA HEALTH & EDUCATION SOCIETY (OPEN SHELTER FOR BOYS)', 'Non-Government Organisation', 1, 'Male', 25, 'F4/ 42, Defence Park, Moynagarh, Kolkata-700141', '700141', 'Open Shelter'),
('CCI_293', 'SOUTH 24 PARGANAS', 'SANLAAP', 'Non-Government Organisation', 1, 'Female', 50, 'Sneha, 52, Nalini Mitra Road, Vill. Elachi, PO. Narendrapur, PS. Sonarpur', '700103', 'Children Home'),
('CCI_297', 'UTTAR DINAJPUR', 'BHARAT SEVASHRAM SANGHA', 'Non-Government Organisation', 1, 'Male', 50, 'Vill Kunor, PO & PS Kaliyaganj, Dist South 24 Parganas', '733252', 'Children Home'),
('CCI_298', 'UTTAR DINAJPUR', 'PURBA NETAJI PALLY RURAL DEVELOPMENT SOCIETY', 'Non-Government Organisation', 1, 'Combined', 10, 'Rabindra Sarani, Raiganj', '733134', 'Specialized Adoption Agency'),
('CCI_299', 'UTTAR DINAJPUR', 'ST. JOHN AMBULANCE ASSOCIATION', 'Non-Government Organisation', 1, 'Female', 50, 'Vill & PO Debinagar, PS Raiganj, Dist Uttar Dinajpur', '733123', 'Children Home'),
('CCI_300', 'UTTAR DINAJPUR', 'ST. JOHN AMBULANCE ASSOCIATION', 'Non-Government Organisation', 2, 'Male', 50, 'Vill & PO Debinagar, PS Raiganj, Dist Uttar Dinajpur', '733123', 'Observation Home'),
('CCI_301', 'UTTAR DINAJPUR', 'SURYADAYA CHILDREN HOME FOR DEAF AND DUMB BOYS AND GIRLS', 'Government', 1, 'Male', 50, 'PO-KARANJORA, PIN-733130, DIST- UTTAR DINAJPUR, WB', '0', 'Children Home CWSN'),
('CCI_302', 'UTTAR DINAJPUR', 'SURYADAYA CHILDREN HOME FOR DEAF AND DUMB BOYS AND GIRLS', 'Government', 2, 'Female', 50, 'PO- KARANJORA, DIST-UTTAR DINAJPUR, WB, PIN-733130', '0', 'Children Home CWSN');

-- --------------------------------------------------------

--
-- Table structure for table `cci_recurring_exp`
--

CREATE TABLE `cci_recurring_exp` (
  `id` varchar(7) NOT NULL,
  `strength` int(2) DEFAULT NULL,
  `category` varchar(27) DEFAULT NULL,
  `maintenance_cost` double(10,2) NOT NULL,
  `bedding_cost` double(10,2) NOT NULL,
  `admin_expenses` double(10,2) NOT NULL,
  `cwsn_equip` double(10,2) NOT NULL,
  `cwsn_addl_grant` double(10,2) NOT NULL,
  `cwsn_medical` double(10,2) NOT NULL,
  `staff_sal` double(10,2) NOT NULL,
  `cwsn_staff_sal` double(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `cci_recurring_exp`
--

INSERT INTO `cci_recurring_exp` (`id`, `strength`, `category`, `maintenance_cost`, `bedding_cost`, `admin_expenses`, `cwsn_equip`, `cwsn_addl_grant`, `cwsn_medical`, `staff_sal`, `cwsn_staff_sal`) VALUES
('CCI_001', 10, 'Specialized Adoption Agency', 2500.00, 0.00, 56250.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_002', 50, 'Children Home CWSN', 3000.00, 250.00, 250000.00, 100000.00, 400.00, 4000.00, 0.00, 0.00),
('CCI_003', 50, 'Children Home CWSN', 3000.00, 250.00, 250000.00, 100000.00, 400.00, 4000.00, 0.00, 0.00),
('CCI_004', 10, 'Specialized Adoption Agency', 2500.00, 0.00, 56250.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_005', 50, 'Children Home', 3000.00, 250.00, 250000.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_006', 50, 'Children Home', 3000.00, 250.00, 250000.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_007', 50, 'Children Home', 3000.00, 250.00, 250000.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_008', 50, 'Children Home CWSN', 3000.00, 250.00, 250000.00, 100000.00, 400.00, 4000.00, 0.00, 0.00),
('CCI_009', 10, 'Specialized Adoption Agency', 2500.00, 0.00, 56250.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_010', 50, 'Children Home CWSN', 3000.00, 250.00, 250000.00, 100000.00, 400.00, 4000.00, 0.00, 0.00),
('CCI_011', 50, 'Children Home CWSN', 3000.00, 250.00, 250000.00, 100000.00, 400.00, 4000.00, 0.00, 0.00),
('CCI_012', 10, 'Specialized Adoption Agency', 2500.00, 0.00, 56250.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_013', 10, 'Specialized Adoption Agency', 2500.00, 0.00, 56250.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_014', 50, 'Children Home', 3000.00, 250.00, 250000.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_015', 50, 'Children Home', 3000.00, 250.00, 250000.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_016', 50, 'Observation Home', 3000.00, 250.00, 250000.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_017', 10, 'Specialized Adoption Agency', 2500.00, 0.00, 56250.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_018', 50, 'Children Home', 3000.00, 250.00, 250000.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_019', 50, 'Children Home', 3000.00, 250.00, 250000.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_023', 25, 'Open Shelter', 2500.00, 0.00, 125000.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_025', 50, 'Children Home', 3000.00, 250.00, 250000.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_029', 50, 'Children Home', 3000.00, 250.00, 250000.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_039', 50, 'Children Home', 3000.00, 250.00, 250000.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_040', 10, 'Specialized Adoption Agency', 2500.00, 0.00, 56250.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_041', 50, 'Children Home', 3000.00, 250.00, 250000.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_042', 50, 'Children Home', 3000.00, 250.00, 250000.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_043', 50, 'Children Home', 3000.00, 250.00, 250000.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_044', 50, 'Children Home', 3000.00, 250.00, 250000.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_045', 25, 'Observation Home', 3000.00, 250.00, 150000.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_047', 50, 'Children Home CWSN', 3000.00, 250.00, 250000.00, 100000.00, 400.00, 4000.00, 0.00, 0.00),
('CCI_049', 50, 'Children Home', 3000.00, 250.00, 250000.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_050', 10, 'Specialized Adoption Agency', 2500.00, 0.00, 56250.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_051', 25, 'Open Shelter', 2500.00, 0.00, 125000.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_052', 25, 'Open Shelter', 2500.00, 0.00, 125000.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_053', 25, 'Open Shelter', 2500.00, 0.00, 125000.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_054', 50, 'Children Home CWSN', 3000.00, 250.00, 250000.00, 100000.00, 400.00, 4000.00, 0.00, 0.00),
('CCI_055', 50, 'Children Home CWSN', 3000.00, 250.00, 250000.00, 100000.00, 400.00, 4000.00, 0.00, 0.00),
('CCI_056', 50, 'Children Home CWSN', 3000.00, 250.00, 250000.00, 100000.00, 400.00, 4000.00, 0.00, 0.00),
('CCI_057', 50, 'Observation Home', 3000.00, 250.00, 250000.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_058', 50, 'Children Home CWSN', 3000.00, 250.00, 250000.00, 100000.00, 400.00, 4000.00, 0.00, 0.00),
('CCI_059', 50, 'Children Home CWSN', 3000.00, 250.00, 250000.00, 100000.00, 400.00, 4000.00, 0.00, 0.00),
('CCI_060', 50, 'Children Home CWSN', 3000.00, 250.00, 250000.00, 100000.00, 400.00, 4000.00, 0.00, 0.00),
('CCI_061', 25, 'Open Shelter', 2500.00, 0.00, 125000.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_062', 25, 'Open Shelter', 2500.00, 0.00, 125000.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_064', 50, 'Children Home', 3000.00, 250.00, 250000.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_065', 50, 'Children Home', 3000.00, 250.00, 250000.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_066', 10, 'Specialized Adoption Agency', 2500.00, 0.00, 56250.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_067', 25, 'Open Shelter', 2500.00, 0.00, 125000.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_068', 50, 'Children Home', 3000.00, 250.00, 250000.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_069', 10, 'Specialized Adoption Agency', 2500.00, 0.00, 56250.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_070', 50, 'Children Home', 3000.00, 250.00, 250000.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_071', 10, 'Specialized Adoption Agency', 2500.00, 0.00, 56250.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_072', 50, 'Children Home', 3000.00, 250.00, 250000.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_073', 50, 'Children Home', 3000.00, 250.00, 250000.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_074', 50, 'Children Home', 3000.00, 250.00, 250000.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_075', 50, 'Children Home', 3000.00, 250.00, 250000.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_076', 50, 'Observation Home', 3000.00, 250.00, 250000.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_077', 25, 'Open Shelter', 2500.00, 0.00, 125000.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_078', 50, 'Children Home', 3000.00, 250.00, 250000.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_082', 50, 'Children Home', 3000.00, 250.00, 250000.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_083', 50, 'Observation Home', 3000.00, 250.00, 250000.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_084', 10, 'Specialized Adoption Agency', 2500.00, 0.00, 56250.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_085', 50, 'Children Home', 3000.00, 250.00, 250000.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_087', 10, 'Specialized Adoption Agency', 2500.00, 0.00, 56250.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_094', 50, 'Children Home', 3000.00, 250.00, 250000.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_095', 50, 'Children Home', 3000.00, 250.00, 250000.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_096', 50, 'Children Home', 3000.00, 250.00, 250000.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_097', 25, 'Open Shelter', 2500.00, 0.00, 125000.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_099', 25, 'Open Shelter', 2500.00, 0.00, 125000.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_100', 25, 'Open Shelter', 2500.00, 0.00, 125000.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_101', 25, 'Open Shelter', 2500.00, 0.00, 125000.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_102', 25, 'Open Shelter', 2500.00, 0.00, 125000.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_103', 25, 'Open Shelter', 2500.00, 0.00, 125000.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_104', 25, 'Open Shelter', 2500.00, 0.00, 125000.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_106', 25, 'Children Home', 3000.00, 250.00, 150000.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_107', 25, 'Children Home', 3000.00, 250.00, 150000.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_108', 25, 'Children Home', 3000.00, 250.00, 150000.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_109', 50, 'Children Home', 3000.00, 250.00, 250000.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_112', 25, 'Open Shelter', 2500.00, 0.00, 125000.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_113', 25, 'Open Shelter', 2500.00, 0.00, 125000.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_114', 25, 'Open Shelter', 2500.00, 0.00, 125000.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_115', 25, 'Open Shelter', 2500.00, 0.00, 125000.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_116', 25, 'Open Shelter', 2500.00, 0.00, 125000.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_117', 50, 'Children Home', 3000.00, 250.00, 250000.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_125', 25, 'Open Shelter', 2500.00, 0.00, 125000.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_126', 10, 'Specialized Adoption Agency', 2500.00, 0.00, 56250.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_127', 10, 'Specialized Adoption Agency', 2500.00, 0.00, 56250.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_128', 25, 'Open Shelter', 2500.00, 0.00, 125000.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_132', 25, 'Open Shelter', 2500.00, 0.00, 125000.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_133', 25, 'Open Shelter', 2500.00, 0.00, 125000.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_136', 25, 'Open Shelter', 2500.00, 0.00, 125000.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_140', 25, 'Open Shelter', 2500.00, 0.00, 125000.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_141', 10, 'Specialized Adoption Agency', 2500.00, 0.00, 56250.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_142', 10, 'Specialized Adoption Agency', 2500.00, 0.00, 56250.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_143', 10, 'Specialized Adoption Agency', 2500.00, 0.00, 56250.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_144', 10, 'Specialized Adoption Agency', 2500.00, 0.00, 56250.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_145', 10, 'Specialized Adoption Agency', 2500.00, 0.00, 56250.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_146', 10, 'Specialized Adoption Agency', 2500.00, 0.00, 56250.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_147', 10, 'Specialized Adoption Agency', 2500.00, 0.00, 56250.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_148', 25, 'Open Shelter', 2500.00, 0.00, 125000.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_149', 25, 'Open Shelter', 2500.00, 0.00, 125000.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_150', 25, 'Open Shelter', 2500.00, 0.00, 125000.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_151', 25, 'Open Shelter', 2500.00, 0.00, 125000.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_152', 50, 'Children Home', 3000.00, 250.00, 250000.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_153', 50, 'Children Home', 3000.00, 250.00, 250000.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_154', 10, 'Specialized Adoption Agency', 2500.00, 0.00, 56250.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_155', 50, 'Observation Home', 3000.00, 250.00, 250000.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_156', 50, 'Observation Home', 3000.00, 250.00, 250000.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_157', 10, 'Specialized Adoption Agency', 2500.00, 0.00, 56250.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_158', 10, 'Specialized Adoption Agency', 2500.00, 0.00, 56250.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_159', 50, 'Children Home CWSN', 3000.00, 250.00, 250000.00, 100000.00, 400.00, 4000.00, 0.00, 0.00),
('CCI_161', 50, 'Children Home', 3000.00, 250.00, 250000.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_162', 50, 'Children Home', 3000.00, 250.00, 250000.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_163', 50, 'Children Home', 3000.00, 250.00, 250000.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_164', 10, 'Specialized Adoption Agency', 2500.00, 0.00, 56250.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_165', 50, 'Children Home', 3000.00, 250.00, 250000.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_166', 50, 'Children Home', 3000.00, 250.00, 250000.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_167', 50, 'Children Home', 3000.00, 250.00, 250000.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_168', 50, 'Observation Home', 3000.00, 250.00, 250000.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_169', 50, 'Children Home', 3000.00, 250.00, 250000.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_170', 50, 'Children Home', 3000.00, 250.00, 250000.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_171', 50, 'Children Home', 3000.00, 250.00, 250000.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_172', 50, 'Observation Home', 3000.00, 250.00, 250000.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_175', 50, 'Children Home CWSN', 3000.00, 250.00, 250000.00, 100000.00, 400.00, 4000.00, 0.00, 0.00),
('CCI_177', 10, 'Specialized Adoption Agency', 2500.00, 0.00, 56250.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_179', 25, 'Open Shelter', 2500.00, 0.00, 125000.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_184', 25, 'Open Shelter', 2500.00, 0.00, 125000.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_186', 25, 'Open Shelter', 2500.00, 0.00, 125000.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_187', 50, 'Children Home CWSN', 3000.00, 250.00, 250000.00, 100000.00, 400.00, 4000.00, 0.00, 0.00),
('CCI_188', 50, 'Children Home CWSN', 3000.00, 250.00, 250000.00, 100000.00, 400.00, 4000.00, 0.00, 0.00),
('CCI_189', 25, 'Children Home CWSN', 3000.00, 250.00, 150000.00, 50000.00, 400.00, 4000.00, 0.00, 0.00),
('CCI_190', 50, 'Children Home', 3000.00, 250.00, 250000.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_192', 50, 'Observation Home', 3000.00, 250.00, 250000.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_193', 50, 'Observation Home', 3000.00, 250.00, 250000.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_199', 25, 'Open Shelter', 2500.00, 0.00, 125000.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_204', 50, 'Children Home', 3000.00, 250.00, 250000.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_205', 50, 'Children Home', 3000.00, 250.00, 250000.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_206', 10, 'Specialized Adoption Agency', 2500.00, 0.00, 56250.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_207', 25, 'Open Shelter', 2500.00, 0.00, 125000.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_208', 25, 'Open Shelter', 2500.00, 0.00, 125000.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_209', 50, 'Children Home', 3000.00, 250.00, 250000.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_210', 50, 'Children Home', 3000.00, 250.00, 250000.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_211', 25, 'Open Shelter', 2500.00, 0.00, 125000.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_217', 50, 'Children Home', 3000.00, 250.00, 250000.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_218', 50, 'Children Home', 3000.00, 250.00, 250000.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_221', 10, 'Specialized Adoption Agency', 2500.00, 0.00, 56250.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_222', 50, 'Children Home CWSN', 3000.00, 250.00, 250000.00, 100000.00, 400.00, 4000.00, 0.00, 0.00),
('CCI_223', 50, 'Children Home', 3000.00, 250.00, 250000.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_224', 50, 'Observation Home', 3000.00, 250.00, 250000.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_225', 50, 'Children Home', 3000.00, 250.00, 250000.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_226', 50, 'Children Home CWSN', 3000.00, 250.00, 250000.00, 100000.00, 400.00, 4000.00, 0.00, 0.00),
('CCI_228', 50, 'Children Home CWSN', 3000.00, 250.00, 250000.00, 100000.00, 400.00, 4000.00, 0.00, 0.00),
('CCI_229', 50, 'Children Home CWSN', 3000.00, 250.00, 250000.00, 100000.00, 400.00, 4000.00, 0.00, 0.00),
('CCI_230', 10, 'Specialized Adoption Agency', 2500.00, 0.00, 56250.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_231', 50, 'Children Home', 3000.00, 250.00, 250000.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_232', 50, 'Children Home', 3000.00, 250.00, 250000.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_233', 50, 'Children Home', 3000.00, 250.00, 250000.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_234', 50, 'Children Home', 3000.00, 250.00, 250000.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_235', 50, 'Children Home', 3000.00, 250.00, 250000.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_236', 50, 'Children Home', 3000.00, 250.00, 250000.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_237', 50, 'Children Home', 3000.00, 250.00, 250000.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_238', 50, 'Children Home', 3000.00, 250.00, 250000.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_239', 50, 'Children Home', 3000.00, 250.00, 250000.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_240', 10, 'Specialized Adoption Agency', 2500.00, 0.00, 56250.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_241', 50, 'Children Home CWSN', 3000.00, 250.00, 250000.00, 100000.00, 400.00, 4000.00, 0.00, 0.00),
('CCI_243', 10, 'Specialized Adoption Agency', 2500.00, 0.00, 56250.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_244', 10, 'Specialized Adoption Agency', 2500.00, 0.00, 56250.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_245', 50, 'Children Home', 3000.00, 250.00, 250000.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_246', 50, 'Children Home', 3000.00, 250.00, 250000.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_247', 50, 'Children Home CWSN', 3000.00, 250.00, 250000.00, 100000.00, 400.00, 4000.00, 0.00, 0.00),
('CCI_248', 50, 'Children Home CWSN', 3000.00, 250.00, 250000.00, 100000.00, 400.00, 4000.00, 0.00, 0.00),
('CCI_249', 50, 'Children Home CWSN', 3000.00, 250.00, 250000.00, 100000.00, 400.00, 4000.00, 0.00, 0.00),
('CCI_250', 50, 'Children Home CWSN', 3000.00, 250.00, 250000.00, 100000.00, 400.00, 4000.00, 0.00, 0.00),
('CCI_251', 25, 'Open Shelter', 2500.00, 0.00, 125000.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_252', 50, 'Children Home', 3000.00, 250.00, 250000.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_253', 50, 'Children Home CWSN', 3000.00, 250.00, 250000.00, 100000.00, 400.00, 4000.00, 0.00, 0.00),
('CCI_254', 50, 'Children Home CWSN', 3000.00, 250.00, 250000.00, 100000.00, 400.00, 4000.00, 0.00, 0.00),
('CCI_256', 10, 'Specialized Adoption Agency', 2500.00, 0.00, 56250.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_258', 50, 'Children Home CWSN', 3000.00, 250.00, 250000.00, 100000.00, 400.00, 4000.00, 0.00, 0.00),
('CCI_259', 50, 'Observation Home', 3000.00, 250.00, 250000.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_260', 50, 'Children Home', 3000.00, 250.00, 250000.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_261', 50, 'Children Home', 3000.00, 250.00, 250000.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_262', 50, 'Children Home CWSN', 3000.00, 250.00, 250000.00, 100000.00, 400.00, 4000.00, 0.00, 0.00),
('CCI_263', 50, 'Children Home CWSN', 3000.00, 250.00, 250000.00, 100000.00, 400.00, 4000.00, 0.00, 0.00),
('CCI_264', 50, 'Children Home', 3000.00, 250.00, 250000.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_265', 10, 'Specialized Adoption Agency', 2500.00, 0.00, 56250.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_266', 10, 'Specialized Adoption Agency', 2500.00, 0.00, 56250.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_267', 25, 'Open Shelter', 2500.00, 0.00, 125000.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_268', 10, 'Specialized Adoption Agency', 2500.00, 0.00, 56250.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_269', 50, 'Children Home', 3000.00, 250.00, 250000.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_270', 50, 'Children Home', 3000.00, 250.00, 250000.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_271', 50, 'Children Home', 3000.00, 250.00, 250000.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_274', 50, 'Children Home CWSN', 3000.00, 250.00, 250000.00, 100000.00, 400.00, 4000.00, 0.00, 0.00),
('CCI_277', 50, 'Children Home', 3000.00, 250.00, 250000.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_278', 10, 'Specialized Adoption Agency', 2500.00, 0.00, 56250.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_279', 50, 'Children Home CWSN', 3000.00, 250.00, 250000.00, 100000.00, 400.00, 4000.00, 0.00, 0.00),
('CCI_280', 50, 'Children Home CWSN', 3000.00, 250.00, 250000.00, 100000.00, 400.00, 4000.00, 0.00, 0.00),
('CCI_281', 50, 'Children Home', 3000.00, 250.00, 250000.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_282', 50, 'Children Home', 3000.00, 250.00, 250000.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_285', 50, 'Children Home', 3000.00, 250.00, 250000.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_286', 50, 'Children Home CWSN', 3000.00, 250.00, 250000.00, 100000.00, 400.00, 4000.00, 0.00, 0.00),
('CCI_287', 50, 'Children Home', 3000.00, 250.00, 250000.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_292', 25, 'Open Shelter', 2500.00, 0.00, 125000.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_293', 50, 'Children Home', 3000.00, 250.00, 250000.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_297', 50, 'Children Home', 3000.00, 250.00, 250000.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_298', 10, 'Specialized Adoption Agency', 2500.00, 0.00, 56250.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_299', 50, 'Children Home', 3000.00, 250.00, 250000.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_300', 50, 'Observation Home', 3000.00, 250.00, 250000.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_301', 50, 'Children Home CWSN', 3000.00, 250.00, 250000.00, 100000.00, 400.00, 4000.00, 0.00, 0.00),
('CCI_302', 50, 'Children Home CWSN', 3000.00, 250.00, 250000.00, 100000.00, 400.00, 4000.00, 0.00, 0.00);

-- --------------------------------------------------------

--
-- Table structure for table `cci_staff_positions`
--

CREATE TABLE `cci_staff_positions` (
  `id` varchar(10) NOT NULL,
  `position` varchar(255) NOT NULL,
  `for_cwsn` tinyint(1) NOT NULL,
  `base_remuneration` double(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cci_staff_positions`
--

INSERT INTO `cci_staff_positions` (`id`, `position`, `for_cwsn`, `base_remuneration`) VALUES
('CPOS_001', 'Officer - in - Charge/ Superintendent', 0, 33100.00),
('CPOS_002', 'Counsellor', 0, 23170.00),
('CPOS_003', 'Probation Officer/ Child Welfare Officer/ Case Worker', 0, 23170.00),
('CPOS_004', 'House Mother/ Father', 0, 14564.00),
('CPOS_005', 'Paramedical Staff', 0, 11916.00),
('CPOS_006', 'Store-keeper cum Accountant', 0, 18536.00),
('CPOS_007', 'Educator', 0, 10000.00),
('CPOS_008', 'Art & Craft cum Music Teacher', 0, 10000.00),
('CPOS_009', 'PT Instructor cum Yoga Trainer', 0, 10000.00),
('CPOS_010', 'Cook', 0, 9930.00),
('CPOS_011', 'Helper cum Night Watchman', 0, 7944.00),
('CPOS_012', 'Housekeeper', 0, 7944.00),
('CPOS_013', 'Special Educator/ Therapist', 1, 23170.00),
('CPOS_014', 'Nurse', 1, 13240.00),
('CPOS_015', 'Care Taker cum Vocational Instructor', 1, 9930.00);

-- --------------------------------------------------------

--
-- Table structure for table `cci_unit_types`
--

CREATE TABLE `cci_unit_types` (
  `id` int(11) NOT NULL DEFAULT 0,
  `category` varchar(255) DEFAULT NULL,
  `type_of_child` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cci_unit_types`
--

INSERT INTO `cci_unit_types` (`id`, `category`, `type_of_child`) VALUES
(1, 'Children Home', 'CNCP'),
(2, 'Children Home CWSN', 'CNCP-CWSN'),
(3, 'Observation Home', 'CCL'),
(4, 'Special Home', 'CCL'),
(5, 'Place of Safety', 'CCL'),
(6, 'After Care Home', 'CNCP-ACH'),
(7, 'Specialized Adoption Agency', 'SAA'),
(8, 'Open Shelter', 'OS');

-- --------------------------------------------------------

--
-- Table structure for table `fund_release`
--

CREATE TABLE `fund_release` (
  `cci_id` varchar(255) NOT NULL,
  `fy_id` varchar(255) NOT NULL,
  `n_months` int(11) NOT NULL,
  `children_days` int(11) NOT NULL,
  `cwsn_child_days` int(11) NOT NULL,
  `maintenance_cost` double(10,2) NOT NULL,
  `bedding_cost` double(10,2) NOT NULL,
  `admin_expenses` double(10,2) NOT NULL,
  `cwsn_equip` double(10,2) NOT NULL,
  `cwsn_addl_grant` double(10,2) NOT NULL,
  `cwsn_medical` double(10,2) NOT NULL,
  `staff_sal` double(10,2) NOT NULL,
  `cwsn_staff_sal` double(10,2) NOT NULL,
  `amnt_adjstmnt` double(10,2) NOT NULL,
  `dist_recommendation` double(10,2) NOT NULL,
  `amnt_released` double(10,2) NOT NULL,
  `init_dt` date NOT NULL,
  `remarks` varchar(255) DEFAULT NULL,
  `at_user` int(11) DEFAULT NULL,
  `verified_by` int(1) DEFAULT NULL,
  `apprvl_dt` date DEFAULT NULL,
  `finalized` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fy_quarter`
--

CREATE TABLE `fy_quarter` (
  `fy_id` varchar(10) NOT NULL,
  `fy` varchar(7) NOT NULL,
  `quarter` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `fy_quarter`
--

INSERT INTO `fy_quarter` (`fy_id`, `fy`, `quarter`) VALUES
('2324Q4', '2023-24', 'January 2024 - March 2024'),
('2425Q1', '2024-25', 'April 2024 - June 2024');

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
(3, 'DD DCRT', '12345');

-- --------------------------------------------------------

--
-- Table structure for table `os_staff_positions`
--

CREATE TABLE `os_staff_positions` (
  `id` varchar(10) NOT NULL,
  `position` varchar(255) NOT NULL,
  `base_remuneration` double(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `os_staff_positions`
--

INSERT INTO `os_staff_positions` (`id`, `position`, `base_remuneration`) VALUES
('OPOS_001', 'Project Coordinator cum Counsellor', 23170.00),
('OPOS_002', 'Social Worker', 18536.00),
('OPOS_003', 'Care Givers cum Bridge Course Educators', 11916.00),
('OPOS_004', 'Outreach Workers', 10592.00),
('OPOS_005', 'Helpers', 7944.00);

-- --------------------------------------------------------

--
-- Table structure for table `saa_staff_positions`
--

CREATE TABLE `saa_staff_positions` (
  `id` varchar(10) NOT NULL,
  `position` varchar(255) NOT NULL,
  `base_remuneration` double(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `saa_staff_positions`
--

INSERT INTO `saa_staff_positions` (`id`, `position`, `base_remuneration`) VALUES
('SPOS_001', 'Manager/ Coordinator', 23170.00),
('SPOS_002', 'Social Worker-cum-Early Childhood Educator', 18536.00),
('SPOS_003', 'Nurse', 11916.00),
('SPOS_004', 'Doctor (Part time) ', 9930.00),
('SPOS_005', 'Ayahs', 7944.00),
('SPOS_006', 'Chowkidar', 7944.00);

-- --------------------------------------------------------

--
-- Table structure for table `unit_types`
--

CREATE TABLE `unit_types` (
  `id` int(11) NOT NULL,
  `cci_id` varchar(255) NOT NULL,
  `type_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `unit_types`
--

INSERT INTO `unit_types` (`id`, `cci_id`, `type_id`) VALUES
(1, 'CCI_005', 1),
(2, 'CCI_006', 1),
(3, 'CCI_010', 2),
(4, 'CCI_011', 2),
(5, 'CCI_014', 1),
(6, 'CCI_015', 1),
(7, 'CCI_016', 3),
(8, 'CCI_018', 1),
(9, 'CCI_019', 1),
(10, 'CCI_039', 1),
(11, 'CCI_041', 1),
(12, 'CCI_042', 1),
(13, 'CCI_068', 1),
(14, 'CCI_070', 1),
(15, 'CCI_072', 1),
(16, 'CCI_073', 1),
(17, 'CCI_074', 1),
(18, 'CCI_075', 1),
(19, 'CCI_076', 3),
(20, 'CCI_082', 1),
(21, 'CCI_083', 3),
(22, 'CCI_152', 1),
(23, 'CCI_153', 1),
(24, 'CCI_155', 3),
(25, 'CCI_156', 3),
(26, 'CCI_162', 1),
(27, 'CCI_161', 1),
(28, 'CCI_163', 1),
(29, 'CCI_165', 1),
(30, 'CCI_166', 1),
(31, 'CCI_167', 1),
(32, 'CCI_168', 3),
(33, 'CCI_169', 1),
(34, 'CCI_170', 1),
(35, 'CCI_192', 3),
(36, 'CCI_193', 3),
(37, 'CCI_204', 1),
(38, 'CCI_205', 1),
(39, 'CCI_217', 1),
(40, 'CCI_218', 1),
(41, 'CCI_231', 1),
(42, 'CCI_232', 1),
(43, 'CCI_233', 1),
(44, 'CCI_234', 1),
(45, 'CCI_235', 1),
(46, 'CCI_236', 1),
(47, 'CCI_237', 1),
(48, 'CCI_238', 1),
(49, 'CCI_239', 1),
(50, 'CCI_245', 1),
(51, 'CCI_246', 1),
(52, 'CCI_269', 1),
(53, 'CCI_270', 1),
(54, 'CCI_301', 2),
(55, 'CCI_302', 2),
(56, 'CCI_029', 1),
(57, 'CCI_230', 7),
(58, 'CCI_013', 7),
(59, 'CCI_040', 7),
(60, 'CCI_001', 7),
(61, 'CCI_069', 7),
(62, 'CCI_071', 7),
(63, 'CCI_084', 7),
(64, 'CCI_243', 7),
(65, 'CCI_244', 7),
(66, 'CCI_268', 7),
(67, 'CCI_252', 1),
(68, 'CCI_185', 1),
(69, 'CCI_002', 2),
(70, 'CCI_003', 2),
(71, 'CCI_043', 1),
(72, 'CCI_044', 1),
(73, 'CCI_047', 2),
(74, 'CCI_049', 1),
(75, 'CCI_054', 2),
(76, 'CCI_055', 2),
(77, 'CCI_057', 3),
(78, 'CCI_058', 2),
(79, 'CCI_059', 2),
(80, 'CCI_060', 2),
(81, 'CCI_064', 1),
(82, 'CCI_065', 1),
(83, 'CCI_078', 1),
(84, 'CCI_085', 1),
(85, 'CCI_094', 1),
(86, 'CCI_095', 1),
(87, 'CCI_096', 1),
(88, 'CCI_117', 1),
(89, 'CCI_159', 2),
(90, 'CCI_171', 1),
(91, 'CCI_172', 3),
(92, 'CCI_175', 2),
(93, 'CCI_187', 2),
(94, 'CCI_188', 2),
(95, 'CCI_209', 1),
(96, 'CCI_210', 1),
(97, 'CCI_222', 2),
(98, 'CCI_223', 1),
(99, 'CCI_226', 2),
(100, 'CCI_228', 2),
(101, 'CCI_229', 2),
(102, 'CCI_224', 3),
(103, 'CCI_225', 1),
(104, 'CCI_247', 2),
(105, 'CCI_248', 2),
(106, 'CCI_249', 2),
(107, 'CCI_250', 2),
(108, 'CCI_241', 2),
(109, 'CCI_259', 3),
(110, 'CCI_264', 1),
(111, 'CCI_254', 2),
(112, 'CCI_262', 2),
(113, 'CCI_263', 2),
(114, 'CCI_260', 1),
(115, 'CCI_261', 1),
(116, 'CCI_258', 2),
(117, 'CCI_253', 2),
(118, 'CCI_271', 1),
(119, 'CCI_274', 2),
(120, 'CCI_277', 1),
(121, 'CCI_279', 2),
(122, 'CCI_280', 2),
(123, 'CCI_281', 1),
(124, 'CCI_282', 1),
(125, 'CCI_285', 1),
(126, 'CCI_286', 2),
(127, 'CCI_287', 1),
(128, 'CCI_297', 1),
(129, 'CCI_299', 1),
(130, 'CCI_300', 3),
(131, 'CCI_056', 2),
(132, 'CCI_109', 1),
(133, 'CCI_106', 1),
(134, 'CCI_066', 7),
(135, 'CCI_007', 1),
(136, 'CCI_008', 2),
(137, 'CCI_025', 1),
(138, 'CCI_107', 1),
(139, 'CCI_108', 1),
(140, 'CCI_190', 1),
(141, 'CCI_189', 2),
(142, 'CCI_087', 7),
(143, 'CCI_293', 1),
(144, 'CCI_164', 7),
(145, 'CCI_045', 3),
(146, 'CCI_035', 8),
(147, 'CCI_028', 1),
(148, 'CCI_081', 2),
(149, 'CCI_130', 1),
(150, 'CCI_129', 1),
(151, 'CCI_139', 1),
(152, 'CCI_178', 1),
(153, 'CCI_180', 1),
(154, 'CCI_215', 1),
(155, 'CCI_242', 1),
(156, 'CCI_021', 1),
(157, 'CCI_022', 1),
(158, 'CCI_024', 1),
(159, 'CCI_026', 1),
(160, 'CCI_027', 1),
(161, 'CCI_030', 1),
(162, 'CCI_031', 1),
(163, 'CCI_032', 1),
(164, 'CCI_033', 1),
(165, 'CCI_034', 1),
(166, 'CCI_036', 1),
(167, 'CCI_037', 1),
(168, 'CCI_038', 1),
(169, 'CCI_046', 2),
(170, 'CCI_063', 1),
(171, 'CCI_079', 2),
(172, 'CCI_080', 2),
(173, 'CCI_088', 1),
(174, 'CCI_089', 1),
(175, 'CCI_091', 1),
(176, 'CCI_090', 1),
(177, 'CCI_092', 1),
(178, 'CCI_110', 1),
(179, 'CCI_111', 1),
(180, 'CCI_119', 1),
(181, 'CCI_120', 1),
(182, 'CCI_118', 1),
(183, 'CCI_121', 1),
(184, 'CCI_131', 1),
(185, 'CCI_134', 1),
(186, 'CCI_135', 1),
(187, 'CCI_137', 2),
(188, 'CCI_173', 1),
(189, 'CCI_182', 1),
(190, 'CCI_181', 1),
(191, 'CCI_183', 1),
(192, 'CCI_191', 1),
(193, 'CCI_196', 1),
(194, 'CCI_201', 1),
(195, 'CCI_202', 1),
(196, 'CCI_203', 1),
(197, 'CCI_212', 1),
(198, 'CCI_213', 1),
(199, 'CCI_214', 1),
(200, 'CCI_216', 1),
(201, 'CCI_219', 1),
(202, 'CCI_220', 1),
(203, 'CCI_272', 1),
(204, 'CCI_273', 1),
(205, 'CCI_276', 1),
(206, 'CCI_288', 1),
(207, 'CCI_289', 1),
(208, 'CCI_290', 2),
(209, 'CCI_291', 2),
(210, 'CCI_295', 1),
(211, 'CCI_122', 1),
(212, 'CCI_105', 1),
(213, 'CCI_174', 1),
(214, 'CCI_227', 1),
(215, 'CCI_086', 1),
(216, 'CCI_093', 1),
(217, 'CCI_176', 1),
(218, 'CCI_160', 1),
(219, 'CCI_197', 1),
(220, 'CCI_048', 8),
(221, 'CCI_138', 1),
(222, 'CCI_098', 1),
(223, 'CCI_200', 2),
(224, 'CCI_198', 8),
(225, 'CCI_255', 1),
(226, 'CCI_294', 1),
(227, 'CCI_020', 8),
(228, 'CCI_195', 2),
(229, 'CCI_194', 2),
(230, 'CCI_123', 1),
(231, 'CCI_124', 1),
(232, 'CCI_296', 1),
(233, 'CCI_275', 1),
(234, 'CCI_284', 1),
(235, 'CCI_283', 1),
(236, 'CCI_257', 1),
(237, 'CCI_004', 7),
(238, 'CCI_009', 7),
(239, 'CCI_012', 7),
(240, 'CCI_017', 7),
(241, 'CCI_050', 7),
(242, 'CCI_126', 7),
(243, 'CCI_127', 7),
(244, 'CCI_141', 7),
(245, 'CCI_144', 7),
(246, 'CCI_145', 7),
(247, 'CCI_146', 7),
(248, 'CCI_147', 7),
(249, 'CCI_142', 7),
(250, 'CCI_143', 7),
(251, 'CCI_154', 7),
(252, 'CCI_157', 7),
(253, 'CCI_158', 7),
(254, 'CCI_177', 7),
(255, 'CCI_206', 7),
(256, 'CCI_221', 7),
(257, 'CCI_240', 7),
(258, 'CCI_256', 7),
(259, 'CCI_265', 7),
(260, 'CCI_266', 7),
(261, 'CCI_278', 7),
(262, 'CCI_298', 7),
(263, 'CCI_023', 8),
(264, 'CCI_051', 8),
(265, 'CCI_052', 8),
(266, 'CCI_061', 8),
(267, 'CCI_062', 8),
(268, 'CCI_067', 8),
(269, 'CCI_077', 8),
(270, 'CCI_097', 8),
(271, 'CCI_099', 8),
(272, 'CCI_100', 8),
(273, 'CCI_101', 8),
(274, 'CCI_103', 8),
(275, 'CCI_104', 8),
(276, 'CCI_112', 8),
(277, 'CCI_113', 8),
(278, 'CCI_114', 8),
(279, 'CCI_116', 8),
(280, 'CCI_125', 8),
(281, 'CCI_128', 8),
(282, 'CCI_132', 8),
(283, 'CCI_136', 8),
(284, 'CCI_140', 8),
(285, 'CCI_115', 8),
(286, 'CCI_149', 8),
(287, 'CCI_150', 8),
(288, 'CCI_151', 8),
(289, 'CCI_179', 8),
(290, 'CCI_184', 8),
(291, 'CCI_186', 8),
(292, 'CCI_199', 8),
(293, 'CCI_207', 8),
(294, 'CCI_208', 8),
(295, 'CCI_211', 8),
(296, 'CCI_251', 8),
(297, 'CCI_267', 8),
(298, 'CCI_292', 8),
(299, 'CCI_133', 8),
(300, 'CCI_148', 8),
(301, 'CCI_102', 8),
(302, 'CCI_053', 8);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cci`
--
ALTER TABLE `cci`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cci_bkup`
--
ALTER TABLE `cci_bkup`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cci_recurring_exp`
--
ALTER TABLE `cci_recurring_exp`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cci_staff_positions`
--
ALTER TABLE `cci_staff_positions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cci_unit_types`
--
ALTER TABLE `cci_unit_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fund_release`
--
ALTER TABLE `fund_release`
  ADD PRIMARY KEY (`cci_id`,`fy_id`);

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
-- Indexes for table `os_staff_positions`
--
ALTER TABLE `os_staff_positions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `saa_staff_positions`
--
ALTER TABLE `saa_staff_positions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `unit_types`
--
ALTER TABLE `unit_types`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `unit_types`
--
ALTER TABLE `unit_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=303;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
