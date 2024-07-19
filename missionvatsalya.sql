-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jul 19, 2024 at 06:57 PM
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
('CCI_001', 10, 'Specialized Adoption Agency', 2500.00, 0.00, 56250.00, 0.00, 0.00, 0.00, 368204.00, 0.00),
('CCI_002', 50, 'Children Home CWSN', 3000.00, 250.00, 250000.00, 100000.00, 400.00, 4000.00, 657280.00, 143191.00),
('CCI_003', 50, 'Children Home CWSN', 3000.00, 250.00, 250000.00, 100000.00, 400.00, 4000.00, 657280.00, 143191.00),
('CCI_004', 10, 'Specialized Adoption Agency', 2500.00, 0.00, 56250.00, 0.00, 0.00, 0.00, 368204.00, 0.00),
('CCI_005', 50, 'Children Home', 3000.00, 250.00, 250000.00, 0.00, 0.00, 0.00, 657280.00, 0.00),
('CCI_006', 50, 'Children Home', 3000.00, 250.00, 250000.00, 0.00, 0.00, 0.00, 657280.00, 0.00),
('CCI_007', 50, 'Children Home', 3000.00, 250.00, 250000.00, 0.00, 0.00, 0.00, 657280.00, 0.00),
('CCI_008', 50, 'Children Home CWSN', 3000.00, 250.00, 250000.00, 100000.00, 400.00, 4000.00, 657280.00, 143191.00),
('CCI_009', 10, 'Specialized Adoption Agency', 2500.00, 0.00, 56250.00, 0.00, 0.00, 0.00, 368204.00, 0.00),
('CCI_010', 50, 'Children Home CWSN', 3000.00, 250.00, 250000.00, 100000.00, 400.00, 4000.00, 657280.00, 143191.00),
('CCI_011', 50, 'Children Home CWSN', 3000.00, 250.00, 250000.00, 100000.00, 400.00, 4000.00, 657280.00, 143191.00),
('CCI_012', 10, 'Specialized Adoption Agency', 2500.00, 0.00, 56250.00, 0.00, 0.00, 0.00, 368204.00, 0.00),
('CCI_013', 10, 'Specialized Adoption Agency', 2500.00, 0.00, 56250.00, 0.00, 0.00, 0.00, 368204.00, 0.00),
('CCI_014', 50, 'Children Home', 3000.00, 250.00, 250000.00, 0.00, 0.00, 0.00, 657280.00, 0.00),
('CCI_015', 50, 'Children Home', 3000.00, 250.00, 250000.00, 0.00, 0.00, 0.00, 657280.00, 0.00),
('CCI_016', 50, 'Observation Home', 3000.00, 250.00, 250000.00, 0.00, 0.00, 0.00, 657280.00, 0.00),
('CCI_017', 10, 'Specialized Adoption Agency', 2500.00, 0.00, 56250.00, 0.00, 0.00, 0.00, 368204.00, 0.00),
('CCI_018', 50, 'Children Home', 3000.00, 250.00, 250000.00, 0.00, 0.00, 0.00, 657280.00, 0.00),
('CCI_019', 50, 'Children Home', 3000.00, 250.00, 250000.00, 0.00, 0.00, 0.00, 657280.00, 0.00),
('CCI_023', 25, 'Open Shelter', 2500.00, 0.00, 125000.00, 0.00, 0.00, 0.00, 325247.00, 0.00),
('CCI_025', 50, 'Children Home', 3000.00, 250.00, 250000.00, 0.00, 0.00, 0.00, 657280.00, 0.00),
('CCI_029', 50, 'Children Home', 3000.00, 250.00, 250000.00, 0.00, 0.00, 0.00, 657280.00, 0.00),
('CCI_039', 50, 'Children Home', 3000.00, 250.00, 250000.00, 0.00, 0.00, 0.00, 657280.00, 0.00),
('CCI_040', 10, 'Specialized Adoption Agency', 2500.00, 0.00, 56250.00, 0.00, 0.00, 0.00, 368204.00, 0.00),
('CCI_041', 50, 'Children Home', 3000.00, 250.00, 250000.00, 0.00, 0.00, 0.00, 657280.00, 0.00),
('CCI_042', 50, 'Children Home', 3000.00, 250.00, 250000.00, 0.00, 0.00, 0.00, 657280.00, 0.00),
('CCI_043', 50, 'Children Home', 3000.00, 250.00, 250000.00, 0.00, 0.00, 0.00, 657280.00, 0.00),
('CCI_044', 50, 'Children Home', 3000.00, 250.00, 250000.00, 0.00, 0.00, 0.00, 657280.00, 0.00),
('CCI_045', 25, 'Observation Home', 3000.00, 250.00, 150000.00, 0.00, 0.00, 0.00, 495247.00, 0.00),
('CCI_047', 50, 'Children Home CWSN', 3000.00, 250.00, 250000.00, 100000.00, 400.00, 4000.00, 657280.00, 143191.00),
('CCI_049', 50, 'Children Home', 3000.00, 250.00, 250000.00, 0.00, 0.00, 0.00, 657280.00, 0.00),
('CCI_050', 10, 'Specialized Adoption Agency', 2500.00, 0.00, 56250.00, 0.00, 0.00, 0.00, 368204.00, 0.00),
('CCI_051', 25, 'Open Shelter', 2500.00, 0.00, 125000.00, 0.00, 0.00, 0.00, 325247.00, 0.00),
('CCI_052', 25, 'Open Shelter', 2500.00, 0.00, 125000.00, 0.00, 0.00, 0.00, 325247.00, 0.00),
('CCI_053', 25, 'Open Shelter', 2500.00, 0.00, 125000.00, 0.00, 0.00, 0.00, 325247.00, 0.00),
('CCI_054', 50, 'Children Home CWSN', 3000.00, 250.00, 250000.00, 100000.00, 400.00, 4000.00, 657280.00, 143191.00),
('CCI_055', 50, 'Children Home CWSN', 3000.00, 250.00, 250000.00, 100000.00, 400.00, 4000.00, 657280.00, 143191.00),
('CCI_056', 50, 'Children Home CWSN', 3000.00, 250.00, 250000.00, 100000.00, 400.00, 4000.00, 657280.00, 143191.00),
('CCI_057', 50, 'Observation Home', 3000.00, 250.00, 250000.00, 0.00, 0.00, 0.00, 657280.00, 0.00),
('CCI_058', 50, 'Children Home CWSN', 3000.00, 250.00, 250000.00, 100000.00, 400.00, 4000.00, 657280.00, 143191.00),
('CCI_059', 50, 'Children Home CWSN', 3000.00, 250.00, 250000.00, 100000.00, 400.00, 4000.00, 657280.00, 143191.00),
('CCI_060', 50, 'Children Home CWSN', 3000.00, 250.00, 250000.00, 100000.00, 400.00, 4000.00, 657280.00, 143191.00),
('CCI_061', 25, 'Open Shelter', 2500.00, 0.00, 125000.00, 0.00, 0.00, 0.00, 325247.00, 0.00),
('CCI_062', 25, 'Open Shelter', 2500.00, 0.00, 125000.00, 0.00, 0.00, 0.00, 325247.00, 0.00),
('CCI_064', 50, 'Children Home', 3000.00, 250.00, 250000.00, 0.00, 0.00, 0.00, 657280.00, 0.00),
('CCI_065', 50, 'Children Home', 3000.00, 250.00, 250000.00, 0.00, 0.00, 0.00, 657280.00, 0.00),
('CCI_066', 10, 'Specialized Adoption Agency', 2500.00, 0.00, 56250.00, 0.00, 0.00, 0.00, 368204.00, 0.00),
('CCI_067', 25, 'Open Shelter', 2500.00, 0.00, 125000.00, 0.00, 0.00, 0.00, 325247.00, 0.00),
('CCI_068', 50, 'Children Home', 3000.00, 250.00, 250000.00, 0.00, 0.00, 0.00, 657280.00, 0.00),
('CCI_069', 10, 'Specialized Adoption Agency', 2500.00, 0.00, 56250.00, 0.00, 0.00, 0.00, 368204.00, 0.00),
('CCI_070', 50, 'Children Home', 3000.00, 250.00, 250000.00, 0.00, 0.00, 0.00, 657280.00, 0.00),
('CCI_071', 10, 'Specialized Adoption Agency', 2500.00, 0.00, 56250.00, 0.00, 0.00, 0.00, 368204.00, 0.00),
('CCI_072', 50, 'Children Home', 3000.00, 250.00, 250000.00, 0.00, 0.00, 0.00, 657280.00, 0.00),
('CCI_073', 50, 'Children Home', 3000.00, 250.00, 250000.00, 0.00, 0.00, 0.00, 657280.00, 0.00),
('CCI_074', 50, 'Children Home', 3000.00, 250.00, 250000.00, 0.00, 0.00, 0.00, 657280.00, 0.00),
('CCI_075', 50, 'Children Home', 3000.00, 250.00, 250000.00, 0.00, 0.00, 0.00, 657280.00, 0.00),
('CCI_076', 50, 'Observation Home', 3000.00, 250.00, 250000.00, 0.00, 0.00, 0.00, 657280.00, 0.00),
('CCI_077', 25, 'Open Shelter', 2500.00, 0.00, 125000.00, 0.00, 0.00, 0.00, 325247.00, 0.00),
('CCI_078', 50, 'Children Home', 3000.00, 250.00, 250000.00, 0.00, 0.00, 0.00, 657280.00, 0.00),
('CCI_082', 50, 'Children Home', 3000.00, 250.00, 250000.00, 0.00, 0.00, 0.00, 657280.00, 0.00),
('CCI_083', 50, 'Observation Home', 3000.00, 250.00, 250000.00, 0.00, 0.00, 0.00, 657280.00, 0.00),
('CCI_084', 10, 'Specialized Adoption Agency', 2500.00, 0.00, 56250.00, 0.00, 0.00, 0.00, 368204.00, 0.00),
('CCI_085', 50, 'Children Home', 3000.00, 250.00, 250000.00, 0.00, 0.00, 0.00, 657280.00, 0.00),
('CCI_087', 10, 'Specialized Adoption Agency', 2500.00, 0.00, 56250.00, 0.00, 0.00, 0.00, 368204.00, 0.00),
('CCI_094', 50, 'Children Home', 3000.00, 250.00, 250000.00, 0.00, 0.00, 0.00, 657280.00, 0.00),
('CCI_095', 50, 'Children Home', 3000.00, 250.00, 250000.00, 0.00, 0.00, 0.00, 657280.00, 0.00),
('CCI_096', 50, 'Children Home', 3000.00, 250.00, 250000.00, 0.00, 0.00, 0.00, 657280.00, 0.00),
('CCI_097', 25, 'Open Shelter', 2500.00, 0.00, 125000.00, 0.00, 0.00, 0.00, 325247.00, 0.00),
('CCI_099', 25, 'Open Shelter', 2500.00, 0.00, 125000.00, 0.00, 0.00, 0.00, 325247.00, 0.00),
('CCI_100', 25, 'Open Shelter', 2500.00, 0.00, 125000.00, 0.00, 0.00, 0.00, 325247.00, 0.00),
('CCI_101', 25, 'Open Shelter', 2500.00, 0.00, 125000.00, 0.00, 0.00, 0.00, 325247.00, 0.00),
('CCI_102', 25, 'Open Shelter', 2500.00, 0.00, 125000.00, 0.00, 0.00, 0.00, 325247.00, 0.00),
('CCI_103', 25, 'Open Shelter', 2500.00, 0.00, 125000.00, 0.00, 0.00, 0.00, 325247.00, 0.00),
('CCI_104', 25, 'Open Shelter', 2500.00, 0.00, 125000.00, 0.00, 0.00, 0.00, 325247.00, 0.00),
('CCI_106', 25, 'Children Home', 3000.00, 250.00, 150000.00, 0.00, 0.00, 0.00, 495247.00, 0.00),
('CCI_107', 25, 'Children Home', 3000.00, 250.00, 150000.00, 0.00, 0.00, 0.00, 495247.00, 0.00),
('CCI_108', 25, 'Children Home', 3000.00, 250.00, 150000.00, 0.00, 0.00, 0.00, 495247.00, 0.00),
('CCI_109', 50, 'Children Home', 3000.00, 250.00, 250000.00, 0.00, 0.00, 0.00, 657280.00, 0.00),
('CCI_112', 25, 'Open Shelter', 2500.00, 0.00, 125000.00, 0.00, 0.00, 0.00, 325247.00, 0.00),
('CCI_113', 25, 'Open Shelter', 2500.00, 0.00, 125000.00, 0.00, 0.00, 0.00, 325247.00, 0.00),
('CCI_114', 25, 'Open Shelter', 2500.00, 0.00, 125000.00, 0.00, 0.00, 0.00, 325247.00, 0.00),
('CCI_115', 25, 'Open Shelter', 2500.00, 0.00, 125000.00, 0.00, 0.00, 0.00, 325247.00, 0.00),
('CCI_116', 25, 'Open Shelter', 2500.00, 0.00, 125000.00, 0.00, 0.00, 0.00, 325247.00, 0.00),
('CCI_117', 50, 'Children Home', 3000.00, 250.00, 250000.00, 0.00, 0.00, 0.00, 657280.00, 0.00),
('CCI_125', 25, 'Open Shelter', 2500.00, 0.00, 125000.00, 0.00, 0.00, 0.00, 325247.00, 0.00),
('CCI_126', 10, 'Specialized Adoption Agency', 2500.00, 0.00, 56250.00, 0.00, 0.00, 0.00, 368204.00, 0.00),
('CCI_127', 10, 'Specialized Adoption Agency', 2500.00, 0.00, 56250.00, 0.00, 0.00, 0.00, 368204.00, 0.00),
('CCI_128', 25, 'Open Shelter', 2500.00, 0.00, 125000.00, 0.00, 0.00, 0.00, 325247.00, 0.00),
('CCI_132', 25, 'Open Shelter', 2500.00, 0.00, 125000.00, 0.00, 0.00, 0.00, 325247.00, 0.00),
('CCI_133', 25, 'Open Shelter', 2500.00, 0.00, 125000.00, 0.00, 0.00, 0.00, 325247.00, 0.00),
('CCI_136', 25, 'Open Shelter', 2500.00, 0.00, 125000.00, 0.00, 0.00, 0.00, 325247.00, 0.00),
('CCI_140', 25, 'Open Shelter', 2500.00, 0.00, 125000.00, 0.00, 0.00, 0.00, 325247.00, 0.00),
('CCI_141', 10, 'Specialized Adoption Agency', 2500.00, 0.00, 56250.00, 0.00, 0.00, 0.00, 368204.00, 0.00),
('CCI_142', 10, 'Specialized Adoption Agency', 2500.00, 0.00, 56250.00, 0.00, 0.00, 0.00, 368204.00, 0.00),
('CCI_143', 10, 'Specialized Adoption Agency', 2500.00, 0.00, 56250.00, 0.00, 0.00, 0.00, 368204.00, 0.00),
('CCI_144', 10, 'Specialized Adoption Agency', 2500.00, 0.00, 56250.00, 0.00, 0.00, 0.00, 368204.00, 0.00),
('CCI_145', 10, 'Specialized Adoption Agency', 2500.00, 0.00, 56250.00, 0.00, 0.00, 0.00, 368204.00, 0.00),
('CCI_146', 10, 'Specialized Adoption Agency', 2500.00, 0.00, 56250.00, 0.00, 0.00, 0.00, 368204.00, 0.00),
('CCI_147', 10, 'Specialized Adoption Agency', 2500.00, 0.00, 56250.00, 0.00, 0.00, 0.00, 368204.00, 0.00),
('CCI_148', 25, 'Open Shelter', 2500.00, 0.00, 125000.00, 0.00, 0.00, 0.00, 325247.00, 0.00),
('CCI_149', 25, 'Open Shelter', 2500.00, 0.00, 125000.00, 0.00, 0.00, 0.00, 325247.00, 0.00),
('CCI_150', 25, 'Open Shelter', 2500.00, 0.00, 125000.00, 0.00, 0.00, 0.00, 325247.00, 0.00),
('CCI_151', 25, 'Open Shelter', 2500.00, 0.00, 125000.00, 0.00, 0.00, 0.00, 325247.00, 0.00),
('CCI_152', 50, 'Children Home', 3000.00, 250.00, 250000.00, 0.00, 0.00, 0.00, 657280.00, 0.00),
('CCI_153', 50, 'Children Home', 3000.00, 250.00, 250000.00, 0.00, 0.00, 0.00, 657280.00, 0.00),
('CCI_154', 10, 'Specialized Adoption Agency', 2500.00, 0.00, 56250.00, 0.00, 0.00, 0.00, 368204.00, 0.00),
('CCI_155', 50, 'Observation Home', 3000.00, 250.00, 250000.00, 0.00, 0.00, 0.00, 657280.00, 0.00),
('CCI_156', 50, 'Observation Home', 3000.00, 250.00, 250000.00, 0.00, 0.00, 0.00, 657280.00, 0.00),
('CCI_157', 10, 'Specialized Adoption Agency', 2500.00, 0.00, 56250.00, 0.00, 0.00, 0.00, 368204.00, 0.00),
('CCI_158', 10, 'Specialized Adoption Agency', 2500.00, 0.00, 56250.00, 0.00, 0.00, 0.00, 368204.00, 0.00),
('CCI_159', 50, 'Children Home CWSN', 3000.00, 250.00, 250000.00, 100000.00, 400.00, 4000.00, 657280.00, 143191.00),
('CCI_161', 50, 'Children Home', 3000.00, 250.00, 250000.00, 0.00, 0.00, 0.00, 657280.00, 0.00),
('CCI_162', 50, 'Children Home', 3000.00, 250.00, 250000.00, 0.00, 0.00, 0.00, 657280.00, 0.00),
('CCI_163', 50, 'Children Home', 3000.00, 250.00, 250000.00, 0.00, 0.00, 0.00, 657280.00, 0.00),
('CCI_164', 10, 'Specialized Adoption Agency', 2500.00, 0.00, 56250.00, 0.00, 0.00, 0.00, 368204.00, 0.00),
('CCI_165', 50, 'Children Home', 3000.00, 250.00, 250000.00, 0.00, 0.00, 0.00, 657280.00, 0.00),
('CCI_166', 50, 'Children Home', 3000.00, 250.00, 250000.00, 0.00, 0.00, 0.00, 657280.00, 0.00),
('CCI_167', 50, 'Children Home', 3000.00, 250.00, 250000.00, 0.00, 0.00, 0.00, 657280.00, 0.00),
('CCI_168', 50, 'Observation Home', 3000.00, 250.00, 250000.00, 0.00, 0.00, 0.00, 657280.00, 0.00),
('CCI_169', 50, 'Children Home', 3000.00, 250.00, 250000.00, 0.00, 0.00, 0.00, 657280.00, 0.00),
('CCI_170', 50, 'Children Home', 3000.00, 250.00, 250000.00, 0.00, 0.00, 0.00, 657280.00, 0.00),
('CCI_171', 50, 'Children Home', 3000.00, 250.00, 250000.00, 0.00, 0.00, 0.00, 657280.00, 0.00),
('CCI_172', 50, 'Observation Home', 3000.00, 250.00, 250000.00, 0.00, 0.00, 0.00, 657280.00, 0.00),
('CCI_175', 50, 'Children Home CWSN', 3000.00, 250.00, 250000.00, 100000.00, 400.00, 4000.00, 657280.00, 143191.00),
('CCI_177', 10, 'Specialized Adoption Agency', 2500.00, 0.00, 56250.00, 0.00, 0.00, 0.00, 368204.00, 0.00),
('CCI_179', 25, 'Open Shelter', 2500.00, 0.00, 125000.00, 0.00, 0.00, 0.00, 325247.00, 0.00),
('CCI_184', 25, 'Open Shelter', 2500.00, 0.00, 125000.00, 0.00, 0.00, 0.00, 325247.00, 0.00),
('CCI_186', 25, 'Open Shelter', 2500.00, 0.00, 125000.00, 0.00, 0.00, 0.00, 325247.00, 0.00),
('CCI_187', 50, 'Children Home CWSN', 3000.00, 250.00, 250000.00, 100000.00, 400.00, 4000.00, 657280.00, 143191.00),
('CCI_188', 50, 'Children Home CWSN', 3000.00, 250.00, 250000.00, 100000.00, 400.00, 4000.00, 657280.00, 143191.00),
('CCI_189', 25, 'Children Home CWSN', 3000.00, 250.00, 150000.00, 50000.00, 400.00, 4000.00, 495247.00, 0.00),
('CCI_190', 50, 'Children Home', 3000.00, 250.00, 250000.00, 0.00, 0.00, 0.00, 657280.00, 0.00),
('CCI_192', 50, 'Observation Home', 3000.00, 250.00, 250000.00, 0.00, 0.00, 0.00, 657280.00, 0.00),
('CCI_193', 50, 'Observation Home', 3000.00, 250.00, 250000.00, 0.00, 0.00, 0.00, 657280.00, 0.00),
('CCI_199', 25, 'Open Shelter', 2500.00, 0.00, 125000.00, 0.00, 0.00, 0.00, 325247.00, 0.00),
('CCI_204', 50, 'Children Home', 3000.00, 250.00, 250000.00, 0.00, 0.00, 0.00, 657280.00, 0.00),
('CCI_205', 50, 'Children Home', 3000.00, 250.00, 250000.00, 0.00, 0.00, 0.00, 657280.00, 0.00),
('CCI_206', 10, 'Specialized Adoption Agency', 2500.00, 0.00, 56250.00, 0.00, 0.00, 0.00, 368204.00, 0.00),
('CCI_207', 25, 'Open Shelter', 2500.00, 0.00, 125000.00, 0.00, 0.00, 0.00, 325247.00, 0.00),
('CCI_208', 25, 'Open Shelter', 2500.00, 0.00, 125000.00, 0.00, 0.00, 0.00, 325247.00, 0.00),
('CCI_209', 50, 'Children Home', 3000.00, 250.00, 250000.00, 0.00, 0.00, 0.00, 657280.00, 0.00),
('CCI_210', 50, 'Children Home', 3000.00, 250.00, 250000.00, 0.00, 0.00, 0.00, 657280.00, 0.00),
('CCI_211', 25, 'Open Shelter', 2500.00, 0.00, 125000.00, 0.00, 0.00, 0.00, 325247.00, 0.00),
('CCI_217', 50, 'Children Home', 3000.00, 250.00, 250000.00, 0.00, 0.00, 0.00, 657280.00, 0.00),
('CCI_218', 50, 'Children Home', 3000.00, 250.00, 250000.00, 0.00, 0.00, 0.00, 657280.00, 0.00),
('CCI_221', 10, 'Specialized Adoption Agency', 2500.00, 0.00, 56250.00, 0.00, 0.00, 0.00, 368204.00, 0.00),
('CCI_222', 50, 'Children Home CWSN', 3000.00, 250.00, 250000.00, 100000.00, 400.00, 4000.00, 657280.00, 143191.00),
('CCI_223', 50, 'Children Home', 3000.00, 250.00, 250000.00, 0.00, 0.00, 0.00, 657280.00, 0.00),
('CCI_224', 50, 'Observation Home', 3000.00, 250.00, 250000.00, 0.00, 0.00, 0.00, 657280.00, 0.00),
('CCI_225', 50, 'Children Home', 3000.00, 250.00, 250000.00, 0.00, 0.00, 0.00, 657280.00, 0.00),
('CCI_226', 50, 'Children Home CWSN', 3000.00, 250.00, 250000.00, 100000.00, 400.00, 4000.00, 657280.00, 143191.00),
('CCI_228', 50, 'Children Home CWSN', 3000.00, 250.00, 250000.00, 100000.00, 400.00, 4000.00, 657280.00, 143191.00),
('CCI_229', 50, 'Children Home CWSN', 3000.00, 250.00, 250000.00, 100000.00, 400.00, 4000.00, 657280.00, 143191.00),
('CCI_230', 10, 'Specialized Adoption Agency', 2500.00, 0.00, 56250.00, 0.00, 0.00, 0.00, 368204.00, 0.00),
('CCI_231', 50, 'Children Home', 3000.00, 250.00, 250000.00, 0.00, 0.00, 0.00, 657280.00, 0.00),
('CCI_232', 50, 'Children Home', 3000.00, 250.00, 250000.00, 0.00, 0.00, 0.00, 657280.00, 0.00),
('CCI_233', 50, 'Children Home', 3000.00, 250.00, 250000.00, 0.00, 0.00, 0.00, 657280.00, 0.00),
('CCI_234', 50, 'Children Home', 3000.00, 250.00, 250000.00, 0.00, 0.00, 0.00, 657280.00, 0.00),
('CCI_235', 50, 'Children Home', 3000.00, 250.00, 250000.00, 0.00, 0.00, 0.00, 657280.00, 0.00),
('CCI_236', 50, 'Children Home', 3000.00, 250.00, 250000.00, 0.00, 0.00, 0.00, 657280.00, 0.00),
('CCI_237', 50, 'Children Home', 3000.00, 250.00, 250000.00, 0.00, 0.00, 0.00, 657280.00, 0.00),
('CCI_238', 50, 'Children Home', 3000.00, 250.00, 250000.00, 0.00, 0.00, 0.00, 657280.00, 0.00),
('CCI_239', 50, 'Children Home', 3000.00, 250.00, 250000.00, 0.00, 0.00, 0.00, 657280.00, 0.00),
('CCI_240', 10, 'Specialized Adoption Agency', 2500.00, 0.00, 56250.00, 0.00, 0.00, 0.00, 368204.00, 0.00),
('CCI_241', 50, 'Children Home CWSN', 3000.00, 250.00, 250000.00, 100000.00, 400.00, 4000.00, 657280.00, 143191.00),
('CCI_243', 10, 'Specialized Adoption Agency', 2500.00, 0.00, 56250.00, 0.00, 0.00, 0.00, 368204.00, 0.00),
('CCI_244', 10, 'Specialized Adoption Agency', 2500.00, 0.00, 56250.00, 0.00, 0.00, 0.00, 368204.00, 0.00),
('CCI_245', 50, 'Children Home', 3000.00, 250.00, 250000.00, 0.00, 0.00, 0.00, 657280.00, 0.00),
('CCI_246', 50, 'Children Home', 3000.00, 250.00, 250000.00, 0.00, 0.00, 0.00, 657280.00, 0.00),
('CCI_247', 50, 'Children Home CWSN', 3000.00, 250.00, 250000.00, 100000.00, 400.00, 4000.00, 657280.00, 143191.00),
('CCI_248', 50, 'Children Home CWSN', 3000.00, 250.00, 250000.00, 100000.00, 400.00, 4000.00, 657280.00, 143191.00),
('CCI_249', 50, 'Children Home CWSN', 3000.00, 250.00, 250000.00, 100000.00, 400.00, 4000.00, 657280.00, 143191.00),
('CCI_250', 50, 'Children Home CWSN', 3000.00, 250.00, 250000.00, 100000.00, 400.00, 4000.00, 657280.00, 143191.00),
('CCI_251', 25, 'Open Shelter', 2500.00, 0.00, 125000.00, 0.00, 0.00, 0.00, 325247.00, 0.00),
('CCI_252', 50, 'Children Home', 3000.00, 250.00, 250000.00, 0.00, 0.00, 0.00, 657280.00, 0.00),
('CCI_253', 50, 'Children Home CWSN', 3000.00, 250.00, 250000.00, 100000.00, 400.00, 4000.00, 657280.00, 143191.00),
('CCI_254', 50, 'Children Home CWSN', 3000.00, 250.00, 250000.00, 100000.00, 400.00, 4000.00, 657280.00, 143191.00),
('CCI_256', 10, 'Specialized Adoption Agency', 2500.00, 0.00, 56250.00, 0.00, 0.00, 0.00, 368204.00, 0.00),
('CCI_258', 50, 'Children Home CWSN', 3000.00, 250.00, 250000.00, 100000.00, 400.00, 4000.00, 657280.00, 143191.00),
('CCI_259', 50, 'Observation Home', 3000.00, 250.00, 250000.00, 0.00, 0.00, 0.00, 657280.00, 0.00),
('CCI_260', 50, 'Children Home', 3000.00, 250.00, 250000.00, 0.00, 0.00, 0.00, 657280.00, 0.00),
('CCI_261', 50, 'Children Home', 3000.00, 250.00, 250000.00, 0.00, 0.00, 0.00, 657280.00, 0.00),
('CCI_262', 50, 'Children Home CWSN', 3000.00, 250.00, 250000.00, 100000.00, 400.00, 4000.00, 657280.00, 143191.00),
('CCI_263', 50, 'Children Home CWSN', 3000.00, 250.00, 250000.00, 100000.00, 400.00, 4000.00, 657280.00, 143191.00),
('CCI_264', 50, 'Children Home', 3000.00, 250.00, 250000.00, 0.00, 0.00, 0.00, 657280.00, 0.00),
('CCI_265', 10, 'Specialized Adoption Agency', 2500.00, 0.00, 56250.00, 0.00, 0.00, 0.00, 368204.00, 0.00),
('CCI_266', 10, 'Specialized Adoption Agency', 2500.00, 0.00, 56250.00, 0.00, 0.00, 0.00, 368204.00, 0.00),
('CCI_267', 25, 'Open Shelter', 2500.00, 0.00, 125000.00, 0.00, 0.00, 0.00, 325247.00, 0.00),
('CCI_268', 10, 'Specialized Adoption Agency', 2500.00, 0.00, 56250.00, 0.00, 0.00, 0.00, 368204.00, 0.00),
('CCI_269', 50, 'Children Home', 3000.00, 250.00, 250000.00, 0.00, 0.00, 0.00, 657280.00, 0.00),
('CCI_270', 50, 'Children Home', 3000.00, 250.00, 250000.00, 0.00, 0.00, 0.00, 657280.00, 0.00),
('CCI_271', 50, 'Children Home', 3000.00, 250.00, 250000.00, 0.00, 0.00, 0.00, 657280.00, 0.00),
('CCI_274', 50, 'Children Home CWSN', 3000.00, 250.00, 250000.00, 100000.00, 400.00, 4000.00, 657280.00, 143191.00),
('CCI_277', 50, 'Children Home', 3000.00, 250.00, 250000.00, 0.00, 0.00, 0.00, 657280.00, 0.00),
('CCI_278', 10, 'Specialized Adoption Agency', 2500.00, 0.00, 56250.00, 0.00, 0.00, 0.00, 368204.00, 0.00),
('CCI_279', 50, 'Children Home CWSN', 3000.00, 250.00, 250000.00, 100000.00, 400.00, 4000.00, 657280.00, 143191.00),
('CCI_280', 50, 'Children Home CWSN', 3000.00, 250.00, 250000.00, 100000.00, 400.00, 4000.00, 657280.00, 143191.00),
('CCI_281', 50, 'Children Home', 3000.00, 250.00, 250000.00, 0.00, 0.00, 0.00, 657280.00, 0.00),
('CCI_282', 50, 'Children Home', 3000.00, 250.00, 250000.00, 0.00, 0.00, 0.00, 657280.00, 0.00),
('CCI_285', 50, 'Children Home', 3000.00, 250.00, 250000.00, 0.00, 0.00, 0.00, 657280.00, 0.00),
('CCI_286', 50, 'Children Home CWSN', 3000.00, 250.00, 250000.00, 100000.00, 400.00, 4000.00, 657280.00, 143191.00),
('CCI_287', 50, 'Children Home', 3000.00, 250.00, 250000.00, 0.00, 0.00, 0.00, 657280.00, 0.00),
('CCI_292', 25, 'Open Shelter', 2500.00, 0.00, 125000.00, 0.00, 0.00, 0.00, 325247.00, 0.00),
('CCI_293', 50, 'Children Home', 3000.00, 250.00, 250000.00, 0.00, 0.00, 0.00, 657280.00, 0.00),
('CCI_297', 50, 'Children Home', 3000.00, 250.00, 250000.00, 0.00, 0.00, 0.00, 657280.00, 0.00),
('CCI_298', 10, 'Specialized Adoption Agency', 2500.00, 0.00, 56250.00, 0.00, 0.00, 0.00, 368204.00, 0.00),
('CCI_299', 50, 'Children Home', 3000.00, 250.00, 250000.00, 0.00, 0.00, 0.00, 657280.00, 0.00),
('CCI_300', 50, 'Observation Home', 3000.00, 250.00, 250000.00, 0.00, 0.00, 0.00, 657280.00, 0.00),
('CCI_301', 50, 'Children Home CWSN', 3000.00, 250.00, 250000.00, 100000.00, 400.00, 4000.00, 657280.00, 143191.00),
('CCI_302', 50, 'Children Home CWSN', 3000.00, 250.00, 250000.00, 100000.00, 400.00, 4000.00, 657280.00, 143191.00);

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
  `init_dt` date DEFAULT NULL,
  `remarks` varchar(255) DEFAULT NULL,
  `at_user` int(11) NOT NULL,
  `apprvl_dt` date DEFAULT NULL,
  `finalized` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `fund_release`
--

INSERT INTO `fund_release` (`cci_id`, `fy_id`, `n_months`, `children_days`, `cwsn_child_days`, `maintenance_cost`, `bedding_cost`, `admin_expenses`, `cwsn_equip`, `cwsn_addl_grant`, `cwsn_medical`, `staff_sal`, `cwsn_staff_sal`, `amnt_adjstmnt`, `dist_recommendation`, `amnt_released`, `init_dt`, `remarks`, `at_user`, `apprvl_dt`, `finalized`) VALUES
('CCI_002', '2324Q4', 3, 54, 54, 486000.00, 13500.00, 250000.00, 100000.00, 64800.00, 648000.00, 657280.00, 143191.00, 0.00, 3621815.00, 2362771.00, '2024-07-19', NULL, 2, NULL, NULL),
('CCI_003', '2324Q4', 3, 72, 72, 648000.00, 18000.00, 250000.00, 100000.00, 86400.00, 864000.00, 657280.00, 143191.00, 0.00, 3262615.00, 2766871.00, '2024-07-19', NULL, 2, NULL, NULL),
('CCI_025', '2324Q4', 3, 40, 0, 360000.00, 10000.00, 250000.00, 0.00, 0.00, 0.00, 657280.00, 0.00, 0.00, 1257276.00, 1257276.00, '2024-07-19', NULL, 2, NULL, NULL),
('CCI_051', '2324Q4', 3, 25, 0, 187500.00, 0.00, 125000.00, 0.00, 0.00, 0.00, 325247.00, 0.00, 0.00, 619730.00, 619730.00, '2024-07-19', NULL, 2, NULL, NULL),
('CCI_094', '2324Q4', 3, 34, 0, 306000.00, 8500.00, 250000.00, 0.00, 0.00, 0.00, 657280.00, 0.00, 0.00, 1631308.00, 1221780.00, '2024-07-19', NULL, 2, NULL, NULL),
('CCI_095', '2324Q4', 3, 34, 0, 306000.00, 8500.00, 250000.00, 0.00, 0.00, 0.00, 657280.00, 0.00, 0.00, 1631307.00, 1221780.00, '2024-07-19', NULL, 2, NULL, NULL),
('CCI_096', '2324Q4', 3, 37, 0, 333000.00, 9250.00, 250000.00, 0.00, 0.00, 0.00, 657280.00, 0.00, 0.00, 1143569.00, 1143569.00, '2024-07-19', NULL, 2, NULL, NULL),
('CCI_106', '2324Q4', 3, 22, 0, 198000.00, 5500.00, 150000.00, 0.00, 0.00, 0.00, 495247.00, 0.00, 0.00, 852827.00, 848747.00, '2024-07-19', NULL, 2, NULL, NULL),
('CCI_107', '2324Q4', 3, 18, 0, 162000.00, 4500.00, 150000.00, 0.00, 0.00, 0.00, 495247.00, 0.00, 0.00, 809351.00, 809351.00, '2024-07-19', NULL, 2, NULL, NULL),
('CCI_108', '2324Q4', 3, 16, 0, 144000.00, 4000.00, 150000.00, 0.00, 0.00, 0.00, 495247.00, 0.00, 0.00, 688348.00, 688348.00, '2024-07-19', NULL, 2, NULL, NULL),
('CCI_109', '2324Q4', 3, 50, 0, 450000.00, 12500.00, 250000.00, 0.00, 0.00, 0.00, 657280.00, 0.00, 0.00, 1350646.00, 1350646.00, '2024-07-19', NULL, 2, NULL, NULL),
('CCI_117', '2324Q4', 3, 36, 0, 324000.00, 9000.00, 250000.00, 0.00, 0.00, 0.00, 657280.00, 0.00, 0.00, 1196034.00, 1196034.00, '2024-07-19', NULL, 2, NULL, NULL),
('CCI_141', '2324Q4', 3, 10, 0, 75000.00, 0.00, 56250.00, 0.00, 0.00, 0.00, 368204.00, 0.00, 0.00, 409894.00, 409894.00, '2024-07-19', NULL, 2, NULL, NULL),
('CCI_142', '2324Q4', 3, 10, 0, 75000.00, 0.00, 56250.00, 0.00, 0.00, 0.00, 368204.00, 0.00, 0.00, 409894.00, 409894.00, '2024-07-19', NULL, 2, NULL, NULL),
('CCI_143', '2324Q4', 3, 9, 0, 67500.00, 0.00, 56250.00, 0.00, 0.00, 0.00, 368204.00, 0.00, 0.00, 409894.00, 409894.00, '2024-07-19', NULL, 2, NULL, NULL),
('CCI_144', '2324Q4', 3, 8, 0, 60000.00, 0.00, 56250.00, 0.00, 0.00, 0.00, 368204.00, 0.00, 0.00, 377508.00, 377508.00, '2024-07-19', NULL, 2, NULL, NULL),
('CCI_145', '2324Q4', 3, 7, 0, 52500.00, 0.00, 56250.00, 0.00, 0.00, 0.00, 368204.00, 0.00, 0.00, 377507.00, 377507.00, '2024-07-19', NULL, 2, NULL, NULL),
('CCI_146', '2324Q4', 3, 7, 0, 52500.00, 0.00, 56250.00, 0.00, 0.00, 0.00, 368204.00, 0.00, 0.00, 377507.00, 377507.00, '2024-07-19', NULL, 2, NULL, NULL),
('CCI_147', '2324Q4', 3, 7, 0, 52500.00, 0.00, 56250.00, 0.00, 0.00, 0.00, 368204.00, 0.00, 0.00, 377507.00, 377507.00, '2024-07-19', NULL, 2, NULL, NULL),
('CCI_243', '2324Q4', 3, 3, 0, 22500.00, 0.00, 56250.00, 0.00, 0.00, 0.00, 368204.00, 0.00, 0.00, 208436.00, 208436.00, '2024-07-19', NULL, 2, NULL, NULL),
('CCI_244', '2324Q4', 3, 3, 0, 22500.00, 0.00, 56250.00, 0.00, 0.00, 0.00, 368204.00, 0.00, 0.00, 208435.00, 208435.00, '2024-07-19', NULL, 2, NULL, NULL),
('CCI_245', '2324Q4', 3, 17, 1, 153000.00, 4250.00, 250000.00, 0.00, 0.00, 0.00, 657280.00, 0.00, 0.00, 427266.00, 427266.00, '2024-07-19', NULL, 2, NULL, NULL),
('CCI_246', '2324Q4', 3, 17, 1, 153000.00, 4250.00, 250000.00, 0.00, 0.00, 0.00, 657280.00, 0.00, 0.00, 427266.00, 427266.00, '2024-07-19', NULL, 2, NULL, NULL),
('CCI_267', '2324Q4', 3, 25, 0, 187500.00, 0.00, 125000.00, 0.00, 0.00, 0.00, 325247.00, 0.00, 0.00, 638154.00, 637747.00, '2024-07-19', NULL, 2, NULL, NULL);

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

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cci`
--
ALTER TABLE `cci`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cci_recurring_exp`
--
ALTER TABLE `cci_recurring_exp`
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
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
