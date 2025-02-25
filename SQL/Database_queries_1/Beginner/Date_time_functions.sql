 USE practice_problem;

CREATE TABLE IF NOT EXISTS employees_data
(emp_id INT PRIMARY KEY, 
first_name VARCHAR(25), 
last_name VARCHAR(25),
 salary DECIMAL(10,2), 
 birth_date DATE, 
 gender CHAR(2), 
 joining_date DATE,
 department VARCHAR(40)
 );

 INSERT INTO employees_data (emp_id, first_name, last_name, salary, birth_date, gender, joining_date, department) VALUES
(1, 'Grace', 'Miller', 112429.71, 19870419, 'M', '2022-01-26', 'Finance'),
(2, 'Jane', 'Miller', 81801.01, 19970810, 'M', '2018-03-15', 'Sales'),
(3, 'Frank', 'Rodriguez', 69352.43, 19920116, 'M', '2018-10-08', 'Marketing'),
(4, 'Bob', 'Brown', 90507.75, 19660427, 'M', '2017-07-07', 'Legal'),
(5, 'David', 'Williams', 133246.78, 19920507, 'M', '2010-05-27', 'Engineering'),
(6, 'Alice', 'Garcia', 90140.83, 19670811, 'M', '2018-11-24', 'Admin'),
(7, 'Grace', 'Williams', 145141.22, 19940517, 'M', '2015-05-03', 'Customer Support'),
(8, 'Hank', 'Johnson', 113014.79, 19980808, 'M', '2022-12-15', 'Legal'),
(9, 'David', 'Williams', 144838.7, 19920115, 'M', '2023-04-27', 'Engineering'),
(10, 'Frank', 'Garcia', 104344.13, 19660611, 'F', '2015-11-25', 'Finance'),
(11, 'Hank', 'Davis', 107371.18, 19890910, 'M', '2018-11-19', 'Customer Support'),
(12, 'Bob', 'Brown', 117794.73, 19700112, 'M', '2016-04-01', 'Marketing'),
(13, 'Hank', 'Davis', 74920.93, 19740622, 'F', '2014-08-07', 'IT'),
(14, 'Hank', 'Smith', 97611.85, 19651225, 'M', '2010-12-27', 'Admin'),
(15, 'Bob', 'Garcia', 50454.26, 19820702, 'M', '2012-04-25', 'IT'),
(16, 'Alice', 'Brown', 61349.46, 19690406, 'M', '2019-03-22', 'Admin'),
(17, 'Alice', 'Davis', 35134.99, 19750519, 'M', '2020-07-01', 'Sales'),
(18, 'Charlie', 'Smith', 95101.82, 19951113, 'F', '2018-07-23', 'Legal'),
(19, 'Alice', 'Miller', 42123.43, 19970408, 'M', '2020-06-12', 'Finance'),
(20, 'David', 'Martinez', 69896.42, 19660901, 'F', '2018-09-12', 'Finance'),
(21, 'Eve', 'Miller', 119969.42, 19880908, 'M', '2019-07-08', 'Finance'),
(22, 'Grace', 'Johnson', 72079.59, 19671227, 'M', '2020-01-02', 'IT'),
(23, 'Jane', 'Davis', 31264.93, 19740217, 'F', '2011-01-24', 'Legal'),
(24, 'Eve', 'Brown', 65772.73, 19801028, 'F', '2020-09-27', 'IT'),
(25, 'Bob', 'Garcia', 65034.14, 19970520, 'F', '2024-05-14', 'Legal'),
(26, 'Bob', 'Martinez', 88460.19, 19741103, 'F', '2023-11-22', 'Marketing'),
(27, 'Bob', 'Martinez', 80686.11, 19981119, 'F', '2024-04-13', 'IT'),
(28, 'Grace', 'Williams', 71380.97, 19741023, 'M', '2024-05-20', 'Legal'),
(29, 'Charlie', 'Miller', 47090.03, 19931227, 'M', '2019-02-24', 'Sales'),
(30, 'Alice', 'Garcia', 33082.45, 19871202, 'M', '2021-04-24', 'Customer Support'),
(31, 'Jane', 'Rodriguez', 46559.64, 19951202, 'M', '2013-06-24', 'HR'),
(32, 'John', 'Rodriguez', 119000.55, 19670116, 'F', '2014-09-28', 'Legal'),
(33, 'Hank', 'Smith', 113191.7, 19900423, 'F', '2015-07-17', 'Admin'),
(34, 'Eve', 'Garcia', 131609.89, 19990607, 'F', '2015-01-06', 'Customer Support'),
(35, 'Eve', 'Smith', 126149.72, 19931111, 'F', '2014-09-11', 'Customer Support'),
(36, 'Frank', 'Miller', 125882.62, 19761026, 'M', '2010-11-22', 'Operations'),
(37, 'David', 'Johnson', 101316.81, 19790813, 'M', '2013-10-26', 'IT'),
(38, 'Charlie', 'Smith', 44124.95, 19940513, 'F', '2023-01-21', 'Legal'),
(39, 'Charlie', 'Johnson', 42806.84, 19980719, 'M', '2011-09-03', 'Finance'),
(40, 'Grace', 'Davis', 49298.54, 19731201, 'M', '2011-08-25', 'Engineering'),
(41, 'John', 'Garcia', 37785.06, 19840315, 'M', '2022-08-22', 'IT'),
(42, 'Charlie', 'Jones', 86041.49, 19730513, 'M', '2024-07-08', 'Marketing'),
(43, 'Bob', 'Smith', 74440.57, 19800326, 'M', '2023-05-24', 'HR'),
(44, 'Bob', 'Davis', 77925.32, 19820107, 'F', '2011-06-25', 'Sales'),
(45, 'Alice', 'Garcia', 136925.08, 19800101, 'F', '2023-10-18', 'HR'),
(46, 'Hank', 'Martinez', 114275.6, 19950201, 'M', '2016-12-16', 'Admin'),
(47, 'Alice', 'Smith', 145400.74, 19780614, 'M', '2011-02-03', 'Operations'),
(48, 'John', 'Miller', 135649.78, 19790828, 'M', '2020-04-24', 'Customer Support'),
(49, 'John', 'Williams', 74245.5, 19900714, 'F', '2022-02-21', 'Finance'),
(50, 'Frank', 'Jones', 104502.36, 19950126, 'M', '2024-07-21', 'Legal'),
(51, 'Eve', 'Smith', 115476.42, 19670905, 'M', '2011-12-21', 'Marketing'),
(52, 'Jane', 'Garcia', 110297.25, 19740701, 'F', '2011-04-07', 'Admin'),
(53, 'Eve', 'Williams', 42425.6, 19651001, 'F', '2010-06-18', 'Legal'),
(54, 'David', 'Miller', 129620.78, 19830726, 'M', '2021-11-12', 'Sales'),
(55, 'Grace', 'Jones', 130643.72, 19660414, 'F', '2022-05-13', 'HR'),
(56, 'Jane', 'Smith', 129813.23, 19721218, 'F', '2024-06-15', 'Operations'),
(57, 'Frank', 'Miller', 47883.49, 19910525, 'F', '2021-08-04', 'Engineering'),
(58, 'Hank', 'Johnson', 137866.89, 19810815, 'M', '2023-10-03', 'IT'),
(59, 'Eve', 'Brown', 90686.67, 19650128, 'M', '2011-10-12', 'Engineering'),
(60, 'Alice', 'Garcia', 100326.46, 19670424, 'M', '2014-11-24', 'Marketing'),
(61, 'Eve', 'Smith', 132660.91, 19860609, 'M', '2017-09-21', 'Sales'),
(62, 'Grace', 'Jones', 70955.81, 19760304, 'F', '2016-02-15', 'Admin'),
(63, 'Bob', 'Garcia', 132114.81, 19920405, 'M', '2020-10-15', 'Customer Support'),
(64, 'John', 'Garcia', 94787.45, 19850523, 'M', '2021-06-21', 'Engineering'),
(65, 'Charlie', 'Brown', 82843.33, 19710223, 'F', '2019-06-08', 'Customer Support'),
(66, 'Alice', 'Miller', 82464.94, 19960519, 'F', '2015-11-06', 'IT'),
(67, 'Frank', 'Garcia', 133083.06, 19810715, 'M', '2015-04-04', 'Marketing'),
(68, 'Jane', 'Smith', 134748.47, 19881001, 'F', '2015-06-05', 'Sales'),
(69, 'Hank', 'Jones', 130467.22, 19730815, 'F', '2017-02-14', 'IT'),
(70, 'Eve', 'Rodriguez', 133012.53, 19651216, 'F', '2020-02-08', 'HR'),
(71, 'Frank', 'Jones', 145420.4, 19741126, 'F', '2011-05-27', 'Customer Support'),
(72, 'Alice', 'Johnson', 72300.31, 19851125, 'M', '2010-04-08', 'Marketing'),
(73, 'Bob', 'Johnson', 49446.72, 19880902, 'M', '2018-04-25', 'Engineering'),
(74, 'David', 'Martinez', 65617.21, 19681007, 'F', '2013-03-06', 'Finance'),
(75, 'Frank', 'Brown', 63525.85, 19850307, 'M', '2022-04-15', 'HR'),
(76, 'Eve', 'Rodriguez', 57518.38, 19740223, 'F', '2016-02-07', 'HR'),
(77, 'Frank', 'Davis', 109056.92, 19931013, 'M', '2019-04-22', 'IT'),
(78, 'John', 'Johnson', 97689.9, 19781121, 'M', '2016-07-23', 'Finance'),
(79, 'Charlie', 'Davis', 138680.45, 19850501, 'M', '2011-11-02', 'Sales'),
(80, 'Hank', 'Jones', 140783.79, 19831015, 'M', '2010-04-06', 'Finance'),
(81, 'Hank', 'Martinez', 82953.54, 19810804, 'F', '2015-10-15', 'Finance'),
(82, 'David', 'Johnson', 149843.93, 19831110, 'M', '2017-09-03', 'Marketing'),
(83, 'John', 'Davis', 74246.45, 19710628, 'M', '2021-06-22', 'Admin'),
(84, 'Eve', 'Brown', 63718.16, 19970411, 'M', '2024-03-10', 'Sales'),
(85, 'Hank', 'Davis', 60238.13, 19880524, 'M', '2015-04-09', 'Legal'),
(86, 'Charlie', 'Williams', 149738.27, 19990727, 'F', '2013-09-07', 'HR'),
(87, 'Hank', 'Brown', 48537.48, 19670816, 'F', '2021-08-13', 'Legal'),
(88, 'Eve', 'Garcia', 33730.84, 19670126, 'M', '2015-04-22', 'Engineering'),
(89, 'David', 'Williams', 62619.98, 19960523, 'F', '2020-04-15', 'Engineering'),
(90, 'John', 'Williams', 121374.32, 19901212, 'M', '2012-06-24', 'Customer Support'),
(91, 'Eve', 'Rodriguez', 135047.96, 19720414, 'F', '2013-01-10', 'IT'),
(92, 'Jane', 'Williams', 146043.91, 19930725, 'M', '2014-01-25', 'HR'),
(93, 'Grace', 'Williams', 125996.92, 19711219, 'F', '2022-11-21', 'Admin'),
(94, 'John', 'Garcia', 61449.9, 19770104, 'F', '2023-12-15', 'Legal'),
(95, 'John', 'Brown', 148368.84, 19700803, 'F', '2014-03-27', 'Engineering'),
(96, 'Charlie', 'Johnson', 64963.82, 19851107, 'F', '2020-02-26', 'Operations'),
(97, 'David', 'Garcia', 137020.54, 19791015, 'M', '2011-12-23', 'Legal'),
(98, 'Alice', 'Martinez', 62186.96, 19780322, 'F', '2010-11-22', 'Admin'),
(99, 'John', 'Williams', 100621.87, 19661012, 'M', '2021-04-08', 'Finance'),
(100, 'David', 'Davis', 32814.38, 19710422, 'F', '2017-06-28', 'Admin'),
(101, 'Alice', 'Davis', 118278.43, 19740117, 'F', '2020-04-22', 'IT'),
(102, 'Eve', 'Brown', 42463.12, 19650208, 'F', '2011-07-21', 'Admin'),
(103, 'Hank', 'Rodriguez', 77323.68, 19940311, 'F', '2019-11-15', 'Admin'),
(104, 'John', 'Rodriguez', 45758.93, 19760728, 'M', '2020-03-19', 'Operations'),
(105, 'Grace', 'Williams', 108010.84, 19700125, 'M', '2012-08-02', 'Legal'),
(106, 'Hank', 'Jones', 130013.69, 19710325, 'M', '2022-07-23', 'Operations'),
(107, 'Charlie', 'Davis', 100725.61, 19910220, 'M', '2021-04-24', 'Admin'),
(108, 'Grace', 'Rodriguez', 94645.02, 19930528, 'F', '2013-12-26', 'Engineering'),
(109, 'Charlie', 'Jones', 131099.48, 19811204, 'M', '2017-03-17', 'Legal'),
(110, 'Jane', 'Jones', 92346.12, 19991125, 'F', '2018-07-09', 'Finance'),
(111, 'David', 'Rodriguez', 99562.64, 19981222, 'F', '2022-06-13', 'IT'),
(112, 'Frank', 'Smith', 133184.51, 19950312, 'F', '2013-09-12', 'Operations'),
(113, 'Jane', 'Miller', 131465.12, 19971103, 'M', '2017-07-23', 'Finance'),
(114, 'Bob', 'Johnson', 111165.68, 19741015, 'F', '2018-03-10', 'Finance'),
(115, 'Grace', 'Brown', 99527.68, 19770427, 'F', '2020-11-01', 'Finance'),
(116, 'John', 'Smith', 143331.58, 19840402, 'M', '2010-06-07', 'IT'),
(117, 'Bob', 'Davis', 81115.12, 19930601, 'M', '2013-06-15', 'Customer Support'),
(118, 'Eve', 'Miller', 116379.79, 19690306, 'F', '2012-01-12', 'Sales'),
(119, 'John', 'Jones', 101056.96, 19990509, 'F', '2022-08-27', 'Sales'),
(120, 'David', 'Smith', 112733.44, 19771208, 'M', '2022-10-16', 'Finance'),
(121, 'Charlie', 'Smith', 132768.69, 19980313, 'M', '2024-02-27', 'Marketing'),
(122, 'Charlie', 'Williams', 129678.91, 19980713, 'M', '2022-09-13', 'Legal'),
(123, 'Jane', 'Smith', 48705.18, 19700805, 'M', '2019-02-25', 'Admin'),
(124, 'David', 'Martinez', 100245.66, 19650819, 'M', '2017-12-07', 'Admin'),
(125, 'Alice', 'Jones', 64581.84, 19970510, 'F', '2022-03-15', 'Sales'),
(126, 'Jane', 'Brown', 43698.18, 19710119, 'M', '2017-12-27', 'Sales'),
(127, 'Jane', 'Smith', 88602.25, 19941116, 'M', '2011-11-04', 'Sales'),
(128, 'Eve', 'Davis', 48472.43, 19681127, 'M', '2012-10-19', 'Engineering'),
(129, 'Bob', 'Martinez', 133266.12, 19990408, 'F', '2021-05-19', 'Sales'),
(130, 'David', 'Jones', 51955.2, 19720913, 'F', '2024-12-28', 'HR'),
(131, 'Grace', 'Jones', 58409.89, 19690105, 'F', '2011-12-24', 'Finance'),
(132, 'Charlie', 'Jones', 134816.96, 19990113, 'F', '2010-02-26', 'HR'),
(133, 'Charlie', 'Miller', 71030.78, 19710725, 'F', '2012-10-04', 'HR'),
(134, 'Hank', 'Davis', 43850.51, 19700106, 'M', '2024-10-27', 'Customer Support'),
(135, 'Charlie', 'Brown', 37272.41, 19840112, 'M', '2014-09-07', 'HR'),
(136, 'Alice', 'Rodriguez', 82204.14, 19870214, 'M', '2018-09-24', 'Operations'),
(137, 'Hank', 'Smith', 110629.94, 19790720, 'F', '2015-11-21', 'Admin'),
(138, 'Alice', 'Williams', 85309.19, 19920714, 'F', '2021-11-26', 'Engineering'),
(139, 'Jane', 'Garcia', 72647.01, 19821014, 'M', '2024-02-01', 'Customer Support'),
(140, 'Bob', 'Rodriguez', 32334.54, 19991022, 'F', '2021-01-03', 'Finance'),
(141, 'Hank', 'Williams', 44172.01, 19650416, 'M', '2019-09-10', 'Legal'),
(142, 'Jane', 'Brown', 114043.62, 19691107, 'F', '2018-10-01', 'Admin'),
(143, 'Jane', 'Davis', 95996.6, 19840819, 'M', '2012-04-24', 'Operations'),
(144, 'Eve', 'Brown', 36831.11, 19711021, 'F', '2010-07-21', 'Legal'),
(145, 'David', 'Brown', 91487.89, 19871017, 'M', '2010-11-09', 'IT'),
(146, 'Charlie', 'Jones', 130052.39, 19870708, 'M', '2014-11-23', 'Legal'),
(147, 'John', 'Rodriguez', 41846.39, 19860918, 'M', '2023-03-03', 'Engineering'),
(148, 'John', 'Rodriguez', 96570.63, 19831110, 'M', '2010-06-19', 'Customer Support'),
(149, 'John', 'Brown', 56481.25, 19920705, 'M', '2016-06-26', 'Customer Support'),
(150, 'Frank', 'Miller', 31440.54, 19820919, 'F', '2016-08-03', 'Sales'),
(151, 'Frank', 'Smith', 44285.65, 19821217, 'F', '2022-03-18', 'Engineering'),
(152, 'Frank', 'Smith', 136360.5, 19870812, 'M', '2014-08-25', 'Engineering'),
(153, 'Jane', 'Martinez', 111877.21, 19720718, 'M', '2017-01-15', 'Finance'),
(154, 'Grace', 'Martinez', 56539.17, 19670823, 'M', '2018-02-16', 'Admin'),
(155, 'Eve', 'Miller', 95287.8, 19770315, 'F', '2024-10-04', 'HR'),
(156, 'Alice', 'Martinez', 121231.77, 19830125, 'M', '2020-08-04', 'Legal'),
(157, 'Jane', 'Rodriguez', 114773.35, 19840610, 'M', '2012-12-27', 'IT'),
(158, 'David', 'Davis', 49728.41, 19680314, 'F', '2010-02-15', 'Finance'),
(159, 'Frank', 'Martinez', 47043.23, 19711015, 'F', '2013-06-05', 'Marketing'),
(160, 'Charlie', 'Davis', 111057.41, 19941125, 'M', '2017-11-10', 'HR'),
(161, 'Alice', 'Johnson', 70825.14, 19951222, 'M', '2010-08-16', 'Sales'),
(162, 'Jane', 'Martinez', 116530.03, 19780401, 'M', '2012-02-02', 'Legal'),
(163, 'Hank', 'Garcia', 107622.03, 19780820, 'F', '2024-12-04', 'Operations'),
(164, 'Charlie', 'Williams', 128265.0, 19670715, 'F', '2012-02-27', 'IT'),
(165, 'Alice', 'Davis', 49209.88, 19771220, 'F', '2017-02-22', 'Legal'),
(166, 'Jane', 'Rodriguez', 128240.3, 19700903, 'F', '2014-08-07', 'HR'),
(167, 'Eve', 'Williams', 133268.86, 19700415, 'F', '2024-09-10', 'Finance'),
(168, 'Grace', 'Williams', 124958.57, 19771127, 'F', '2017-07-27', 'Operations'),
(169, 'Frank', 'Smith', 99192.9, 19831107, 'M', '2022-07-21', 'Customer Support'),
(170, 'John', 'Miller', 85219.66, 19950722, 'M', '2021-01-25', 'Operations'),
(171, 'Frank', 'Davis', 90246.15, 19931201, 'F', '2017-11-09', 'Finance'),
(172, 'Frank', 'Johnson', 34037.56, 19790509, 'F', '2023-06-10', 'Operations'),
(173, 'Frank', 'Garcia', 141162.89, 19910324, 'F', '2022-01-27', 'Customer Support'),
(174, 'Grace', 'Johnson', 81796.91, 19750901, 'M', '2018-05-13', 'Legal'),
(175, 'Eve', 'Johnson', 102693.36, 19671110, 'F', '2015-02-08', 'Customer Support'),
(176, 'Alice', 'Davis', 88883.07, 19780819, 'M', '2018-02-03', 'Marketing'),
(177, 'Alice', 'Garcia', 57778.46, 19930614, 'M', '2023-12-04', 'IT'),
(178, 'John', 'Martinez', 72634.03, 19740608, 'M', '2018-02-15', 'Customer Support'),
(179, 'Bob', 'Garcia', 66149.52, 19940809, 'M', '2016-07-20', 'HR'),
(180, 'Hank', 'Miller', 35468.26, 19670701, 'F', '2017-03-08', 'HR'),
(181, 'Jane', 'Williams', 121999.84, 19970615, 'F', '2015-12-12', 'Legal'),
(182, 'Jane', 'Davis', 42721.8, 19891006, 'F', '2015-04-08', 'IT'),
(183, 'Hank', 'Brown', 67228.31, 19830113, 'F', '2015-09-20', 'Finance'),
(184, 'Grace', 'Williams', 54217.45, 19671108, 'M', '2019-02-23', 'Engineering'),
(185, 'Frank', 'Jones', 119696.55, 19901001, 'F', '2015-09-18', 'Engineering'),
(186, 'Hank', 'Jones', 45075.07, 19740826, 'F', '2022-06-19', 'HR'),
(187, 'Charlie', 'Brown', 59513.79, 19810904, 'M', '2022-09-28', 'IT'),
(188, 'Alice', 'Brown', 80271.46, 19760322, 'F', '2011-02-14', 'Engineering'),
(189, 'Hank', 'Jones', 116950.28, 19930824, 'M', '2021-03-04', 'Marketing'),
(190, 'John', 'Brown', 53209.64, 19890124, 'M', '2018-10-21', 'Marketing'),
(191, 'Grace', 'Johnson', 100164.72, 19890822, 'F', '2012-11-07', 'Admin'),
(192, 'Eve', 'Garcia', 113373.35, 19820703, 'M', '2018-11-07', 'IT'),
(193, 'Jane', 'Rodriguez', 55281.76, 19800606, 'F', '2016-02-25', 'Engineering'),
(194, 'Grace', 'Williams', 146781.43, 19650317, 'M', '2019-11-11', 'Marketing'),
(195, 'Bob', 'Williams', 149375.76, 19981015, 'F', '2016-09-25', 'IT'),
(196, 'John', 'Miller', 125882.94, 19840509, 'F', '2011-12-17', 'Operations'),
(197, 'Eve', 'Johnson', 57777.54, 19851207, 'F', '2023-12-13', 'Operations'),
(198, 'David', 'Davis', 68900.07, 20000914, 'M', '2021-11-05', 'Legal'),
(199, 'Hank', 'Brown', 113937.14, 19690522, 'F', '2018-12-26', 'Finance'),
(200, 'Charlie', 'Jones', 75735.94, 19970327, 'F', '2018-10-08', 'IT'),
(201, 'Jane', 'Davis', 124837.19, 19650127, 'F', '2013-12-06', 'Customer Support'),
(202, 'Alice', 'Davis', 108108.41, 19970502, 'M', '2019-08-16', 'HR'),
(203, 'Bob', 'Smith', 61062.22, 19770528, 'F', '2022-04-01', 'Customer Support'),
(204, 'David', 'Garcia', 63834.04, 20001210, 'F', '2012-03-18', 'HR'),
(205, 'Bob', 'Miller', 114352.51, 19980120, 'M', '2010-04-06', 'Finance'),
(206, 'Alice', 'Williams', 104164.23, 19770103, 'M', '2014-04-06', 'Operations'),
(207, 'Alice', 'Martinez', 39794.34, 19651204, 'M', '2024-11-07', 'Finance'),
(208, 'John', 'Miller', 117955.48, 19750923, 'M', '2017-01-08', 'HR'),
(209, 'John', 'Brown', 83297.05, 19650224, 'M', '2024-03-16', 'Operations'),
(210, 'John', 'Johnson', 70700.18, 19960107, 'M', '2022-01-21', 'Operations'),
(211, 'Hank', 'Martinez', 79654.23, 19941002, 'F', '2021-03-22', 'Engineering'),
(212, 'Bob', 'Miller', 94117.21, 19770803, 'F', '2024-03-07', 'Operations'),
(213, 'Charlie', 'Jones', 83477.18, 19710903, 'M', '2017-05-08', 'Admin'),
(214, 'Jane', 'Jones', 47770.11, 19820823, 'M', '2012-03-17', 'Engineering'),
(215, 'Alice', 'Martinez', 44176.49, 19980418, 'M', '2016-06-02', 'HR'),
(216, 'Jane', 'Martinez', 50425.62, 19720518, 'M', '2022-02-08', 'Engineering'),
(217, 'Charlie', 'Williams', 72919.32, 19890520, 'M', '2012-04-08', 'Engineering'),
(218, 'David', 'Miller', 49553.92, 19820805, 'F', '2021-01-15', 'Finance'),
(219, 'David', 'Jones', 93219.49, 19680909, 'F', '2017-01-11', 'Finance'),
(220, 'Grace', 'Garcia', 133381.18, 19760223, 'F', '2023-02-10', 'Admin'),
(221, 'John', 'Smith', 87349.62, 19750116, 'M', '2015-02-06', 'Operations'),
(222, 'Hank', 'Smith', 57474.48, 19891002, 'F', '2018-09-24', 'HR'),
(223, 'Charlie', 'Brown', 40620.46, 20000615, 'F', '2023-07-15', 'IT'),
(224, 'Alice', 'Miller', 57955.24, 19960118, 'F', '2012-01-17', 'Admin'),
(225, 'Bob', 'Williams', 100701.97, 19940525, 'F', '2010-10-10', 'Sales'),
(226, 'Grace', 'Garcia', 133767.94, 19930609, 'F', '2019-06-20', 'Sales'),
(227, 'Grace', 'Miller', 97603.12, 19790306, 'M', '2019-12-19', 'Operations'),
(228, 'Bob', 'Williams', 37429.73, 19730522, 'F', '2012-10-27', 'Marketing'),
(229, 'Bob', 'Miller', 131005.63, 19740626, 'F', '2023-05-02', 'HR'),
(230, 'Charlie', 'Brown', 94807.59, 19730627, 'M', '2018-12-17', 'Admin'),
(231, 'Bob', 'Brown', 98648.27, 19900901, 'M', '2020-11-15', 'Legal'),
(232, 'Grace', 'Williams', 36704.15, 19750516, 'M', '2024-11-15', 'Operations'),
(233, 'Alice', 'Davis', 116902.96, 19671126, 'M', '2017-09-15', 'IT'),
(234, 'Grace', 'Garcia', 47685.85, 20000408, 'M', '2021-12-15', 'Marketing'),
(235, 'Bob', 'Williams', 59670.51, 19911205, 'F', '2024-06-23', 'Engineering'),
(236, 'Jane', 'Williams', 69647.82, 19670320, 'M', '2019-11-09', 'Legal'),
(237, 'David', 'Smith', 91887.61, 19770709, 'M', '2012-06-23', 'Customer Support'),
(238, 'Hank', 'Miller', 62568.42, 19800916, 'F', '2018-04-23', 'Legal'),
(239, 'Bob', 'Garcia', 136819.76, 19970217, 'M', '2010-04-07', 'IT'),
(240, 'Frank', 'Garcia', 46802.94, 19701114, 'M', '2016-11-20', 'Customer Support'),
(241, 'Alice', 'Martinez', 76753.72, 19821113, 'M', '2016-07-22', 'IT'),
(242, 'Bob', 'Johnson', 30602.57, 19710413, 'F', '2010-11-01', 'HR'),
(243, 'Hank', 'Jones', 94501.96, 19950806, 'M', '2019-10-21', 'Engineering'),
(244, 'Charlie', 'Brown', 125079.43, 19821118, 'F', '2016-11-22', 'Legal'),
(245, 'Charlie', 'Miller', 129799.52, 19970410, 'F', '2018-07-06', 'Engineering'),
(246, 'David', 'Rodriguez', 113990.57, 19690909, 'F', '2024-01-07', 'Finance'),
(247, 'Charlie', 'Davis', 94900.35, 19720612, 'M', '2020-01-03', 'HR'),
(248, 'Bob', 'Jones', 87003.2, 19891225, 'F', '2014-01-01', 'IT'),
(249, 'David', 'Brown', 103651.36, 19870426, 'F', '2024-10-14', 'Marketing'),
(250, 'Alice', 'Brown', 95511.68, 19901015, 'M', '2016-01-25', 'IT'),
(251, 'Bob', 'Rodriguez', 140535.77, 19870911, 'F', '2020-11-12', 'IT'),
(252, 'Frank', 'Brown', 137715.23, 19750610, 'F', '2011-02-09', 'Sales'),
(253, 'John', 'Brown', 68319.66, 19961215, 'F', '2018-02-01', 'Sales'),
(254, 'David', 'Williams', 33152.07, 19760106, 'M', '2012-10-19', 'HR'),
(255, 'Frank', 'Davis', 72540.32, 19780224, 'M', '2010-06-10', 'HR'),
(256, 'John', 'Miller', 49445.41, 19881121, 'F', '2015-04-03', 'Legal'),
(257, 'Eve', 'Williams', 73275.28, 19670226, 'M', '2024-09-05', 'HR'),
(258, 'Jane', 'Miller', 63875.23, 19790617, 'F', '2015-10-26', 'Customer Support'),
(259, 'Eve', 'Johnson', 122278.63, 19770410, 'M', '2023-06-20', 'Customer Support'),
(260, 'Eve', 'Smith', 66367.32, 19951203, 'M', '2011-09-10', 'Legal'),
(261, 'Alice', 'Miller', 32943.54, 19661126, 'M', '2014-04-02', 'HR'),
(262, 'Hank', 'Williams', 49086.37, 19890224, 'M', '2020-08-06', 'Customer Support'),
(263, 'Hank', 'Martinez', 95855.2, 19680608, 'F', '2022-09-16', 'IT'),
(264, 'Frank', 'Garcia', 134562.45, 19880115, 'M', '2010-01-22', 'Sales'),
(265, 'Frank', 'Smith', 102838.33, 19670515, 'F', '2023-10-25', 'Legal'),
(266, 'Grace', 'Johnson', 141607.31, 19941128, 'M', '2020-09-24', 'Finance'),
(267, 'Alice', 'Brown', 51586.6, 19660605, 'F', '2019-09-16', 'Sales'),
(268, 'Hank', 'Miller', 34313.1, 20000904, 'F', '2020-03-27', 'Engineering'),
(269, 'Grace', 'Martinez', 148015.93, 19700908, 'F', '2016-11-25', 'Finance'),
(270, 'Bob', 'Williams', 42277.6, 19870410, 'M', '2011-04-16', 'HR'),
(271, 'Eve', 'Jones', 50331.71, 19690717, 'M', '2011-06-22', 'Marketing'),
(272, 'Jane', 'Rodriguez', 83608.34, 19780419, 'M', '2023-03-15', 'Legal'),
(273, 'Bob', 'Davis', 141108.52, 19950920, 'F', '2010-04-26', 'Marketing'),
(274, 'Eve', 'Garcia', 31310.29, 19961017, 'F', '2023-06-24', 'HR'),
(275, 'Jane', 'Smith', 70858.35, 19680419, 'F', '2013-05-11', 'Engineering'),
(276, 'Charlie', 'Davis', 143768.61, 19881215, 'F', '2013-03-13', 'Customer Support'),
(277, 'Frank', 'Miller', 126822.61, 19780420, 'M', '2020-11-06', 'Legal'),
(278, 'David', 'Jones', 81513.37, 19700425, 'F', '2019-02-26', 'IT'),
(279, 'Jane', 'Jones', 88058.72, 19740502, 'M', '2014-06-22', 'Admin'),
(280, 'Alice', 'Brown', 36603.65, 19650708, 'M', '2013-10-20', 'Operations'),
(281, 'Grace', 'Martinez', 45045.01, 19720101, 'F', '2013-02-24', 'IT'),
(282, 'Hank', 'Garcia', 71253.29, 19700108, 'M', '2017-02-22', 'HR'),
(283, 'Charlie', 'Jones', 71742.29, 19940424, 'F', '2022-06-16', 'Legal'),
(284, 'David', 'Martinez', 133503.68, 19750524, 'F', '2022-06-13', 'Operations'),
(285, 'Frank', 'Smith', 66312.76, 19680520, 'M', '2014-09-25', 'Customer Support'),
(286, 'Alice', 'Rodriguez', 128124.16, 19940422, 'M', '2016-01-15', 'Operations'),
(287, 'Alice', 'Davis', 147401.41, 19730414, 'M', '2022-11-08', 'Sales'),
(288, 'Hank', 'Rodriguez', 136454.49, 19821120, 'M', '2017-01-12', 'IT'),
(289, 'Alice', 'Williams', 32309.75, 19810810, 'M', '2016-08-07', 'Admin'),
(290, 'Alice', 'Williams', 115080.03, 19880310, 'M', '2013-01-24', 'Operations'),
(291, 'Bob', 'Rodriguez', 128463.51, 19870406, 'F', '2023-09-04', 'Sales'),
(292, 'Bob', 'Johnson', 71271.78, 19820706, 'M', '2022-06-04', 'Admin'),
(293, 'Hank', 'Smith', 55587.07, 19960418, 'F', '2018-10-27', 'Operations'),
(294, 'Charlie', 'Brown', 118919.54, 19970316, 'F', '2012-12-28', 'Engineering'),
(295, 'Bob', 'Rodriguez', 109502.6, 19871109, 'F', '2017-05-20', 'IT'),
(296, 'Eve', 'Miller', 45663.49, 19921124, 'F', '2013-03-01', 'IT'),
(297, 'Eve', 'Davis', 30371.68, 19830822, 'M', '2013-11-23', 'Customer Support'),
(298, 'David', 'Miller', 78790.28, 19780917, 'F', '2019-10-19', 'Sales'),
(299, 'Jane', 'Garcia', 107778.47, 19760812, 'M', '2012-06-21', 'Sales'),
(300, 'Jane', 'Smith', 93460.26, 19730122, 'M', '2016-12-28', 'Finance');






SELECT * FROM employees_data;

-- Get the current time (HH:MM:SS format)
SELECT CURRENT_TIME();

-- Get the current date (YYYY-MM-DD format)
SELECT CURRENT_DATE();

-- Get the current timestamp (YYYY-MM-DD HH:MM:SS format)
SELECT CURRENT_TIMESTAMP();

-- Extract the date portion from a datetime value
SELECT DATE('2025-04-13 18:34:50');  -- Output: '2025-04-13'

-- Extract the time portion from a datetime value
SELECT TIME('2025-04-13 18:34:50');  -- Output: '18:34:50'

-- Extract the year from a datetime value
SELECT YEAR('2025-04-13 18:34:50');  -- Output: 2025

-- Extract the month from a datetime value
SELECT MONTH('2025-04-13 18:34:50');  -- Output: 4 (April)

-- Extract the day from a datetime value
SELECT DAY('2025-04-13 18:34:50');  -- Output: 13

-- Extract the hour from a datetime value
SELECT HOUR('2025-04-13 18:34:50');  -- Output: 18

-- Extract the minute from a datetime value
SELECT MINUTE('2025-04-13 18:34:50');  -- Output: 34

-- Extract the second from a datetime value
SELECT SECOND('2025-04-13 18:34:50');  -- Output: 50

-- Get the difference in days between two dates
SELECT DATEDIFF('2025-04-13', '2024-04-13');  -- Output: 365

-- Get the difference in time between two timestamps
SELECT TIMEDIFF('18:34:50', '12:20:30');  -- Output: '06:14:20'

-- Extract a specific component from a datetime
SELECT EXTRACT(YEAR FROM '2025-04-13 18:34:50');  -- Output: 2025

-- Add a specific interval to a date
SELECT DATE_ADD('2025-04-13', INTERVAL 2 MONTH);  -- Output: '2025-06-13'

-- Subtract a specific interval from a date
SELECT DATE_SUB('2025-04-13', INTERVAL 5 DAY);  -- Output: '2025-04-08'

-- Format a date in a custom way
SELECT DATE_FORMAT('2025-04-13', '%W, %M %d, %Y');  -- Output: 'Sunday, April 13, 2025'

-- Additional Useful Date/Time Functions

-- Get the last day of the month for a given date
SELECT LAST_DAY('2025-04-13');  -- Output: '2025-04-30'

-- Get the weekday index (0 = Sunday, 6 = Saturday)
SELECT WEEKDAY('2025-04-13');  -- Output: 6 (Saturday)

-- Get the name of the day of the week
SELECT DAYNAME('2025-04-13');  -- Output: 'Sunday'

-- Get the name of the month
SELECT MONTHNAME('2025-04-13');  -- Output: 'April'

-- Get the quarter of the year (1, 2, 3, or 4)
SELECT QUARTER('2025-04-13');  -- Output: 2 (April is in Q2)

-- Get the week number of the year
SELECT WEEK('2025-04-13');  -- Output: 15 (April 13th falls in the 15th week of the year)

-- Get the number of days in the specified month
SELECT DAY(LAST_DAY('2025-02-13'));  -- Output: 28 (February 2025 has 28 days)


-- Questions

SELECT * FROM employees_data;

-- 1) Retrieve all employees who joined the company in the year 2021.

SELECT * FROM employees_data WHERE YEAR(joining_date) = '2021';

-- 2) Get emp_no, first name and joining date from employee table. Also
-- calculate the number of days between the joining date and the
-- current date for each employee as “day_worked”.

SELECT emp_id,first_name,joining_date,DATEDIFF(CURRENT_DATE(),joining_date) AS day_worked FROM employees_data;

-- 3) Retrieve all the employees who joined the company in the month of
-- June.

SELECT * FROM employees_data WHERE MONTHNAME(joining_date) = 'June';
SELECT * FROM employees_data WHERE MONTH(joining_date) = 6;

-- 4) Display the first name of the employees who were hired in the last 1
-- Year.
SELECT * FROM employees_data WHERE joining_date >= DATE_SUB(CURRENT_DATE(),INTERVAL 1 YEAR) ;

-- 5) Calculate the total number of employees hired in each year from the
-- employee table.

SELECT YEAR(joining_date) AS Joining_Year ,COUNT(*) AS Total_Hired
FROM employees_data
WHERE joining_date IS NOT NULL
GROUP BY Joining_Year
ORDER BY Joining_Year ASC;

-- 6) Find the employees who have been with the company for more than
-- 4 years.

SELECT * FROM employees_data 
WHERE (DATEDIFF(CURRENT_DATE(),joining_date))/365 > 4;


-- Calculate the total salary expenditure for each month in the year 2021. 

SELECT
 MONTH(joining_date) AS Hire_Month_Number,
 MONTHNAME(joining_date) AS Hire_Month,
 SUM(salary) AS Total_Expenditure
FROM employees_data
WHERE YEAR(joining_date) = 2021
GROUP BY Hire_Month_Number,Hire_Month
ORDER BY Hire_Month_Number ASC;


-- 8) Retrieve emp_no, first name, joining date from employee table who
-- has work experience less than 3 years in the company.

SELECT 
	emp_id,
    first_name,
    joining_date
FROM employees_data
WHERE DATEDIFF(CURRENT_DATE(),joining_date)/365 < 3;


-- 9) Change the format of current date into this (May 26, 2023) format as formatted_date.
 
SELECT DATE_FORMAT(CURRENT_DATE(),'%M %d, %Y') AS New_date_format;

-- 10)Change the format of current date into this (Friday, May 26, 2023)
-- format as formatted_date.

SELECT DATE_FORMAT(CURRENT_DATE(),'%W,%M %d,%Y') AS date_formated;


-- 11)Change the format of current date into this (YYYY/MM/DD) format.

SELECT DATE_FORMAT(CURRENT_DATE(),'%Y %M %D') AS new_data_format; 

-- 12)Display current time in 12-hour format with AM/PM inside
-- parenthesis (hh:mi:ss (AM/PM)) as formatted_time. Example -
-- 07:53:46 (PM).


SELECT DATE_FORMAT(CURRENT_TIME(),'%h:%i:%s (%p)') AS formatted_time;
 
 
--  13)Display current time in 24-hour format without seconds (HH:MM) as
-- formatted_time

SELECT DATE_FORMAT(CURRENT_TIME(),'%H:%i') AS formatted_time;

-- 14)Display the current timestamp with the day of the week, month, day,
-- year, and time in the format Day, Month DD, YYYY HH:MM:SS as
-- formatted_timestamp. Example- May 26, 2023 19:58:19 PM

SELECT DATE_FORMAT(CURRENT_TIMESTAMP(),'%M %d,%Y %H:%i:%s (%p)') AS formatted_timestamp; 