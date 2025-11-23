-- Generated INSERT statements for Users table
-- Total records: 2000
-- 100 accounts marked as deleted (5.0%)
-- Generated on: 2025-11-23 21:18:16

-- Ensure database exists and is in use
IF NOT EXISTS (SELECT name FROM sys.databases WHERE name = 'AKPayDB')
BEGIN
    RAISERROR('Database AKPayDB does not exist. Please run 001_initial_schema.sql first.', 16, 1);
    RETURN;
END
GO

USE AKPayDB;
GO

IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student1@lums.edu.pk' OR phone = '37351397488')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student1@lums.edu.pk', '37351397488', 'Kamran Zia', '0b14d501a594442a01c6859541bcb3e8164d183d32937b851835442f69d5c94e', 'teacher', '2024-12-22 02:12:20', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums2@lums.edu.pk' OR phone = '36375270167')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums2@lums.edu.pk', '36375270167', 'Farzana Yousaf', '6cf615d5bcaac778352a8f1f3360d23f02f34ec182e259897fd6ce485d7870d4', 'student', '2025-07-08 04:08:57', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '00003@lums.edu.pk' OR phone = '30775726485')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('00003@lums.edu.pk', '30775726485', 'Zain Latif', '5906ac361a137e2d286465cd6588ebb5ac3f5ae955001100bc41577c3d751764', NULL, '2024-03-15 09:06:42', 1, '2024-08-27 09:51:25');
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user4@lums.edu.pk' OR phone = '31062300904')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user4@lums.edu.pk', '31062300904', 'Rashid Qureshi', 'b97873a40f73abedd8d685a7cd5e5f85e4a9cfb83eac26886640a0813850122b', 'worker', '2025-01-02 11:01:58', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student5@lums.edu.pk' OR phone = '36455120925')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student5@lums.edu.pk', '36455120925', 'Hassan Haider', '8b2c86ea9cf2ea4eb517fd1e06b74f399e7fec0fef92e3b482a6cf2e2b092023', 'student', '2024-07-22 04:50:18', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '00006@lums.edu.pk' OR phone = '37007540088')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('00006@lums.edu.pk', '37007540088', 'Shakeel Aziz', '598a1a400c1dfdf36974e69d7e1bc98593f2e15015eed8e9b7e47a83b31693d5', 'student', '2025-01-07 00:08:33', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums7@lums.edu.pk' OR phone = '33910507664')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums7@lums.edu.pk', '33910507664', 'Naseem Waseem', '5860836e8f13fc9837539a597d4086bfc0299e54ad92148d54538b5c3feefb7c', NULL, '2025-07-30 22:11:23', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums8@lums.edu.pk' OR phone = '36680587628')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums8@lums.edu.pk', '36680587628', 'Anwar Hameed', '57f3ebab63f156fd8f776ba645a55d96360a15eeffc8b0e4afe4c05fa88219aa', 'worker', '2024-05-19 04:44:40', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student9@lums.edu.pk' OR phone = '30123643041')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student9@lums.edu.pk', '30123643041', 'Hira Ilyas', '9323dd6786ebcbf3ac87357cc78ba1abfda6cf5e55cd01097b90d4a286cac90e', 'worker', '2025-02-22 20:01:09', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user10@lums.edu.pk' OR phone = '38065801983')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user10@lums.edu.pk', '38065801983', 'Junaid Hassan', 'aa4a9ea03fcac15b5fc63c949ac34e7b0fd17906716ac3b8e58c599cdc5a52f0', NULL, '2024-12-05 11:32:52', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '00011@lums.edu.pk' OR phone = '37705626889')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('00011@lums.edu.pk', '37705626889', 'Zahid Qureshi', '53d453b0c08b6b38ae91515dc88d25fbecdd1d6001f022419629df844f8ba433', 'teacher', '2025-09-19 07:40:59', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student12@lums.edu.pk' OR phone = '36005004944')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student12@lums.edu.pk', '36005004944', 'Ahmed Mirza', 'b3d17ebbe4f2b75d27b6309cfaae1487b667301a73951e7d523a039cd2dfe110', 'admin', '2024-07-22 03:38:51', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user13@lums.edu.pk' OR phone = '39845460248')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user13@lums.edu.pk', '39845460248', 'Saad Tahir', '48caafb68583936afd0d78a7bfd7046d2492fad94f3c485915f74bb60128620d', 'admin', '2024-12-19 13:04:43', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user14@lums.edu.pk' OR phone = '33147242592')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user14@lums.edu.pk', '33147242592', 'Nadeem Anwar', 'c6863e1db9b396ed31a36988639513a1c73a065fab83681f4b77adb648fac3d6', 'student', '2023-12-10 07:22:48', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '00015@lums.edu.pk' OR phone = '34967977856')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('00015@lums.edu.pk', '34967977856', 'Uzma Latif', 'c63c2d34ebe84032ad47b87af194fedd17dacf8222b2ea7f4ebfee3dd6db2dfb', 'student', '2024-03-09 15:21:34', 1, '2025-05-30 10:53:42');
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums16@lums.edu.pk' OR phone = '39919054511')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums16@lums.edu.pk', '39919054511', 'Rabia Latif', '17a3379984b560dc311bb921b7a46b28aa5cb495667382f887a44a7fdbca7a7a', 'teacher', '2025-03-19 01:08:38', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student17@lums.edu.pk' OR phone = '37314102730')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student17@lums.edu.pk', '37314102730', 'Yusuf Mahmood', '69bfb918de05145fba9dcee9688dfb23f6115845885e48fa39945eebb99d8527', 'teacher', '2025-07-28 07:20:09', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums18@lums.edu.pk' OR phone = '37222715218')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums18@lums.edu.pk', '37222715218', 'Adnan Ghani', 'd2042d75a67922194c045da2600e1c92ff6d87e8fb6e0208606665f2d1dfa892', 'teacher', '2025-06-21 06:49:23', 1, '2025-11-19 13:35:33');
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student19@lums.edu.pk' OR phone = '30847838160')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student19@lums.edu.pk', '30847838160', 'Arslan Butt', '5790ac3d0b8ae8afc72c2c6fb97654f2b73651c328de0a3b74854ade562dd17a', 'admin', '2025-08-21 09:40:30', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '00020@lums.edu.pk' OR phone = '35262030543')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('00020@lums.edu.pk', '35262030543', 'Abdullah Haider', '7535d8f2d8c35d958995610f971287288ab5e8c82a3c4fdc2b6fb5d757a5b9f8', 'student', '2024-03-07 04:49:49', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '00021@lums.edu.pk' OR phone = '38949142355')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('00021@lums.edu.pk', '38949142355', 'Farzana Karim', '91a9ef3563010ea1af916083f9fb03a117d4d0d2a697f82368da1f737629f717', 'admin', '2025-06-23 10:36:09', 1, '2025-11-01 09:45:38');
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums22@lums.edu.pk' OR phone = '39655054318')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums22@lums.edu.pk', '39655054318', 'Shafiq Bashir', 'd23c1038532dc71d0a60a7fb3d330d7606b7520e9e5ee0ddcdb27ee1bd5bc0cd', 'student', '2024-06-19 06:06:24', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student23@lums.edu.pk' OR phone = '34723164372')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student23@lums.edu.pk', '34723164372', 'Omar Sheikh', '8b807aa0505a00b3ef49e26a2ade8e31fcd6c700d1a3aeee971b49d73da8e8ff', 'teacher', '2025-11-15 20:27:50', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student24@lums.edu.pk' OR phone = '32448400901')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student24@lums.edu.pk', '32448400901', 'Naseem Akhtar', 'fc8a9296208a0b281f84690423c5d77785e493f435e6292cc322840f543729d3', 'worker', '2024-08-13 20:26:42', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums25@lums.edu.pk' OR phone = '31828004204')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums25@lums.edu.pk', '31828004204', 'Aftab Ayub', '0b544d6d8da1d1af25318e97e0ac5f6bc70bba49919463dc0074ede01a49d381', 'teacher', '2024-03-26 05:44:11', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums26@lums.edu.pk' OR phone = '37756278961')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums26@lums.edu.pk', '37756278961', 'Arshad Ahmed', '869f2a98b0e3a6ea928ff0542330ea3c1e0ff8591801693350f1fc3f1e57e4c5', 'worker', '2024-12-04 22:55:16', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '00027@lums.edu.pk' OR phone = '39003077237')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('00027@lums.edu.pk', '39003077237', 'Asad Raza', '9c7568513b9c85e73f3650c8b00e3259501096ccee9d3dbdae6ff5e84aabe3af', 'teacher', '2025-03-14 12:00:39', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student28@lums.edu.pk' OR phone = '33145676724')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student28@lums.edu.pk', '33145676724', 'Fatima Ilyas', '6f5ea1c4acc7a563ea8cb3381a55f0183a2394d679ebb7db8312e047bbf87e0d', 'teacher', '2025-09-02 21:37:37', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums29@lums.edu.pk' OR phone = '36257188843')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums29@lums.edu.pk', '36257188843', 'Talha Hassan', '48a94846b2a7386432b90ad13bcf9c66f1efdd3a97e0e14968c262c412fe22c8', 'worker', '2025-10-29 05:12:10', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student30@lums.edu.pk' OR phone = '32106074500')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student30@lums.edu.pk', '32106074500', 'Usman Iqbal', '7c682dea8e934e04343374e3d25cd51edce9cbeb47f7034296052cb5cd6bed84', NULL, '2024-06-03 17:55:03', 1, '2024-08-07 23:44:11');
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student31@lums.edu.pk' OR phone = '32042407565')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student31@lums.edu.pk', '32042407565', 'Aisha Zia', 'a4239ae1725466d26621f102d58c1541c84ff1142f4341c7b66be92e32396d45', 'student', '2025-10-06 22:10:39', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student32@lums.edu.pk' OR phone = '31247285456')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student32@lums.edu.pk', '31247285456', 'Junaid Sadiq', '078aa4687601ab09b1f7581014674b3bf1a3aa68b12c346d01024f1f5206f94b', 'teacher', '2025-08-20 18:38:15', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums33@lums.edu.pk' OR phone = '30372448216')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums33@lums.edu.pk', '30372448216', 'Wasim Ghani', 'ee13b7d4c8c0595dcabf6016290d65d8a50163569368db690595d5acaa5a168b', 'teacher', '2025-05-02 11:39:33', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums34@lums.edu.pk' OR phone = '37500937842')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums34@lums.edu.pk', '37500937842', 'Yasmin Hameed', '72f1ffa2d7a9c9d60c2369fffce54372eea054d567c77f8a518f4f4c06b3856a', 'worker', '2024-09-14 04:28:12', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student35@lums.edu.pk' OR phone = '37586492533')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student35@lums.edu.pk', '37586492533', 'Omar Aslam', '5bd40f88c4a6b2c20256389878ec2b59515ca478eb3eb0f3673663273bcb639b', 'student', '2025-03-21 00:42:18', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums36@lums.edu.pk' OR phone = '38410504082')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums36@lums.edu.pk', '38410504082', 'Humaira Chaudhry', '9777509ca199ac591368c5cfa9ef92b4879ff99098b7e34865172a5ea983542e', NULL, '2025-07-31 07:21:29', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '00037@lums.edu.pk' OR phone = '38350053535')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('00037@lums.edu.pk', '38350053535', 'Rashid Qadir', 'ca02485287fd4f05de9540613f8ba982e99080b66f8452024cb4c4cc3de7042e', 'teacher', '2025-01-05 16:42:10', 1, '2025-07-07 08:00:56');
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '00038@lums.edu.pk' OR phone = '36975435239')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('00038@lums.edu.pk', '36975435239', 'Khadija Zaidi', '014d020993865f93b80ec587e171554db5b45a1a46a9101510de52e148aa184f', 'teacher', '2024-10-16 23:00:02', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student39@lums.edu.pk' OR phone = '38386752102')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student39@lums.edu.pk', '38386752102', 'Zaheer Ali', 'f245ffb6352c8c101b0f9ed1187104f11e0a64622cc5da7082aef963dea5a83f', 'admin', '2025-03-20 00:54:31', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user40@lums.edu.pk' OR phone = '35624269381')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user40@lums.edu.pk', '35624269381', 'Zaheer Haider', '825e233a9d192f81d3f6780cb8e181af518054a8d9c83381882e573eed014df2', 'teacher', '2025-02-28 00:32:34', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student41@lums.edu.pk' OR phone = '36589640709')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student41@lums.edu.pk', '36589640709', 'Saima Yousaf', 'a13b6ab0bb26b7d8bf31628b3b524efade4ac5b02712a95210c0abda5148ec85', 'admin', '2023-12-12 20:30:22', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums42@lums.edu.pk' OR phone = '31945557588')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums42@lums.edu.pk', '31945557588', 'Jamil Karim', 'fe404abb6785bd17ac4c937c2837d3ad6d6ac1ed17e099a89a9c5e18d1e936fe', 'admin', '2025-04-10 04:20:50', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user43@lums.edu.pk' OR phone = '30949835586')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user43@lums.edu.pk', '30949835586', 'Sami Abbas', 'fe4597a9d0a16c51ab5c8224dae83f170b69cede0f1a7f40f447f163dcbf9295', 'admin', '2024-09-27 06:35:05', 1, '2025-04-21 08:19:31');
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums44@lums.edu.pk' OR phone = '30618235480')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums44@lums.edu.pk', '30618235480', 'Naveed Zaidi', 'f9d07093d0de736c8881640c3e55714bebd5faf5d6ebbfb41e486e1660c8fc0e', 'teacher', '2025-11-08 12:56:52', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums45@lums.edu.pk' OR phone = '36892384561')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums45@lums.edu.pk', '36892384561', 'Arslan Haider', '0528d31561cee040ee92e2857a2d71a373605b91da87d09ae5359a0689c45e6c', 'admin', '2024-06-11 20:24:06', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user46@lums.edu.pk' OR phone = '35144513362')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user46@lums.edu.pk', '35144513362', 'Farzana Saeed', 'f7944ecca058c63c386de56353cddf278c98f3143bd4a00bb0b2015adb69ed39', 'student', '2025-03-29 12:21:16', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums47@lums.edu.pk' OR phone = '33953671411')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums47@lums.edu.pk', '33953671411', 'Nimra Hussain', '7ff9543ea5b226aeb9dcbf13672c32e62623e70edc4177512b169ec4e39846ea', 'admin', '2024-06-10 06:01:33', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '00048@lums.edu.pk' OR phone = '34933808866')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('00048@lums.edu.pk', '34933808866', 'Ahmed Ahmed', '172e362eecb6dff98dbeb4a7c42367109c1b288ecf45ff271fb79acd352ba8f9', 'worker', '2024-10-22 14:53:15', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student49@lums.edu.pk' OR phone = '34115256277')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student49@lums.edu.pk', '34115256277', 'Khalid Hameed', '3cd00931dd1de5d07fcafb463ba5c4d95d31dca8a35480cac4a2beb771cb90df', 'teacher', '2024-05-25 08:38:52', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '00050@lums.edu.pk' OR phone = '32481157004')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('00050@lums.edu.pk', '32481157004', 'Shazia Siddiqui', 'b5d966eb0c2845953fab12c306c906a3561162262115c3b6fc19aead8d142157', 'student', '2024-11-17 14:21:46', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '00051@lums.edu.pk' OR phone = '30238259032')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('00051@lums.edu.pk', '30238259032', 'Alina Sheikh', 'b799be36e0059d7867f1379a24171b2b09d91be5d2cac0a12d97c0302a6b07ce', 'teacher', '2024-12-09 17:23:40', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user52@lums.edu.pk' OR phone = '39920003131')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user52@lums.edu.pk', '39920003131', 'Anwar Tahir', '9626a29ac1d7006741337f6ebc6a5a41cfdc3aa65d2b10ff9cda937c6a7fd35b', 'teacher', '2025-05-01 05:08:03', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums53@lums.edu.pk' OR phone = '32773632061')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums53@lums.edu.pk', '32773632061', 'Fahad Zia', 'a60f6d009343ab015ee59fa2ff29e5aa12dd69aa7a7285f15e1fdec6ce7407d7', 'teacher', '2024-11-29 03:36:39', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '00054@lums.edu.pk' OR phone = '39300305991')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('00054@lums.edu.pk', '39300305991', 'Wasim Mirza', '49a9b3d96db1310ff79b9ae1cdb1e148b4d5995b7f889e5ad2b611f452fecf71', 'teacher', '2024-09-10 08:18:49', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '00055@lums.edu.pk' OR phone = '30717006129')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('00055@lums.edu.pk', '30717006129', 'Sadaf Ilyas', '92b32cbd4cc1b06d83ec4c305c52d651b9c125a7b12dbb7c6a1cf796f6e389e5', 'worker', '2024-06-23 05:37:21', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '00056@lums.edu.pk' OR phone = '34104468251')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('00056@lums.edu.pk', '34104468251', 'Yasmin Iqbal', '58bcc70c0e1ead10857a4b2deb02f167a42461fe5ff5b0040f93ef822b538c2c', 'admin', '2024-02-27 06:06:23', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student57@lums.edu.pk' OR phone = '32588501049')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student57@lums.edu.pk', '32588501049', 'Sidra Sheikh', '5436508fb28e193da4a51c675d96e1d412d5e2ab3e128e509a27efccff2a9240', 'student', '2023-12-04 16:39:13', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '00058@lums.edu.pk' OR phone = '32275713718')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('00058@lums.edu.pk', '32275713718', 'Tahira Nadeem', '5613bf613df8da20ca171ba2110c3b2558506e8e0af57891dcf0c056f41b7718', 'admin', '2024-10-08 17:55:38', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user59@lums.edu.pk' OR phone = '37667686069')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user59@lums.edu.pk', '37667686069', 'Fatima Ayub', 'fe38739fb81956f6064587c7a78565fa71448c44408b48012122e7e7ea83e1a6', 'student', '2024-09-07 01:53:23', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student60@lums.edu.pk' OR phone = '32911674152')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student60@lums.edu.pk', '32911674152', 'Nimra Zaidi', '25b30bd22b6218deda2022fccd2c726bd6da37b4b624ca72028b587bed7b8908', 'worker', '2025-03-14 16:53:39', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '00061@lums.edu.pk' OR phone = '32240007447')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('00061@lums.edu.pk', '32240007447', 'Yasmin Farooq', 'a94483aff86454580a66cf4794f417e1b406b6dde7de2e5796a4a0b3e07356b6', NULL, '2025-09-01 02:47:30', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user62@lums.edu.pk' OR phone = '34974944809')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user62@lums.edu.pk', '34974944809', 'Sami Ali', 'c1ce757c52862f31178c2e77cb391dc605735ea5416c50d2b68dd1c0f559049e', 'student', '2024-06-09 17:44:40', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student63@lums.edu.pk' OR phone = '31016752972')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student63@lums.edu.pk', '31016752972', 'Yusuf Hussain', '1d4a516ebe2acdffd5da7ab190d0c61871ba892df25f528915a84e787360a78f', 'student', '2024-09-14 23:42:38', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '00064@lums.edu.pk' OR phone = '33564020562')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('00064@lums.edu.pk', '33564020562', 'Kamran Latif', '863ecfd7228c0856c236ce48331bf756489d8faade33e7d8d8762c52841a4f58', 'admin', '2025-02-15 03:18:19', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums65@lums.edu.pk' OR phone = '38165359911')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums65@lums.edu.pk', '38165359911', 'Adnan Khan', '893f05cca9f0bdf66d78944a09e9cbe3a1ddc76838e329cae5d22a339b45e272', 'admin', '2025-10-13 22:29:27', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '00066@lums.edu.pk' OR phone = '36095507577')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('00066@lums.edu.pk', '36095507577', 'Naila Haider', '60dbb6453448c39993cdd41edf3451a7d5e0eaf298207ee001f110c4d7785c8c', 'admin', '2025-05-25 05:40:59', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums67@lums.edu.pk' OR phone = '38260214096')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums67@lums.edu.pk', '38260214096', 'Yusuf Zia', 'fb8a6ce5d0214341f9c78591b4e4ef31050cc952a56ef18c3a597fe0dcb3cd49', 'teacher', '2024-12-13 17:29:16', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student68@lums.edu.pk' OR phone = '35444822700')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student68@lums.edu.pk', '35444822700', 'Omar Rafiq', '88e43563eb048331cecc5f4f6823b2328bb482be858f5984ec8fe93e6bad1e78', 'admin', '2023-12-16 03:59:05', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student69@lums.edu.pk' OR phone = '31019417729')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student69@lums.edu.pk', '31019417729', 'Maryam Malik', '7109b84353bb31d935391d9294fe71155d9e618e1273b2f1531e912318610f60', 'worker', '2025-04-02 13:54:46', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user70@lums.edu.pk' OR phone = '32510246537')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user70@lums.edu.pk', '32510246537', 'Asad Tahir', '34fe23cf9636ea9d587823e90887a150c7e22e6f330dcae8ff5d3fa1bbc37852', 'worker', '2024-02-09 07:23:53', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user71@lums.edu.pk' OR phone = '38174449174')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user71@lums.edu.pk', '38174449174', 'Hamza Qureshi', 'c4f0ad5f4a97c4ba3bc11f6d661db99bcc08cd3121e329363c7155984a0c7328', 'worker', '2025-05-10 11:05:13', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student72@lums.edu.pk' OR phone = '36764766522')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student72@lums.edu.pk', '36764766522', 'Azhar Aslam', 'caf36247fd592c6b1812c628345b69b920ece1c8ea3e15242862befcc8707288', 'teacher', '2025-06-10 17:31:17', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '00073@lums.edu.pk' OR phone = '34632613737')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('00073@lums.edu.pk', '34632613737', 'Khadija Khan', 'e156770ced012a06461e24cd9a8318aae9a83acaab7b277ff104d4397e89be88', 'teacher', '2025-02-27 17:37:22', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '00074@lums.edu.pk' OR phone = '38034932846')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('00074@lums.edu.pk', '38034932846', 'Bushra Siddiqui', '866cd269d3ff5014cece938df15524672537b7253b659875c9a8531f2d8d169c', 'worker', '2024-03-02 07:17:36', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user75@lums.edu.pk' OR phone = '33368096886')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user75@lums.edu.pk', '33368096886', 'Salman Qureshi', 'd6afbbefeb937109f96b5f5421c8eb64694e8e2d4534cefffa5ba4a805f629f7', 'teacher', '2025-02-08 06:33:38', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums76@lums.edu.pk' OR phone = '32827343560')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums76@lums.edu.pk', '32827343560', 'Yasmin Karim', 'e57a2fc7529930d46edee4d20ee17e70001fd51a267c11768f9a0dc6dab2fdc1', 'student', '2025-02-17 13:41:24', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums77@lums.edu.pk' OR phone = '30963674249')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums77@lums.edu.pk', '30963674249', 'Talha Javed', '3ce2c52df9e92052d433b2449b5f33dd97c344aaeffd9f5e006a3ae933126a5a', 'worker', '2024-09-17 20:05:13', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '00078@lums.edu.pk' OR phone = '36893218569')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('00078@lums.edu.pk', '36893218569', 'Nimra Hussain', '98bbb2f3c8ffa8e403751db051f7b5a31498137940e50b01d237557a89bdd124', 'student', '2024-07-12 21:05:32', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums79@lums.edu.pk' OR phone = '31430084218')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums79@lums.edu.pk', '31430084218', 'Rashid Hussain', '2cc0d1f43b0e59cc929a49d62414227944658c64e5e449964efd054768e14173', 'admin', '2025-08-19 14:06:11', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums80@lums.edu.pk' OR phone = '37047542177')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums80@lums.edu.pk', '37047542177', 'Rashid Umar', '24069004ae289e583afeb41e969e0f2b8c1b7d80326dcf9be9ec7411698dd33b', 'worker', '2025-10-06 08:56:43', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums81@lums.edu.pk' OR phone = '30308115226')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums81@lums.edu.pk', '30308115226', 'Rubina Hameed', 'bef99eeb6e6389703b5318b99ea03d8d9187f9800374c466fd2a6ae64da3c8ee', 'admin', '2025-07-03 10:21:04', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user82@lums.edu.pk' OR phone = '30277443377')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user82@lums.edu.pk', '30277443377', 'Akram Sadiq', 'f3ea05e3c808ef144db4f1d98793db15f1d0f6a0b6e149bafa4d876e9d560f25', 'worker', '2024-03-08 12:37:07', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '00083@lums.edu.pk' OR phone = '30920534931')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('00083@lums.edu.pk', '30920534931', 'Asad Ayub', 'a716312b9827d16a1b61a468c1760d0d315ec621f6223f90abf85579e1f50c61', 'teacher', '2025-08-23 22:34:53', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user84@lums.edu.pk' OR phone = '31457523031')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user84@lums.edu.pk', '31457523031', 'Asad Latif', '408184fd8069021a6d8c87e0d8c7e94784051d9202d64dbc921e9b0541fb41a0', 'student', '2025-11-23 11:45:30', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user85@lums.edu.pk' OR phone = '33034882855')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user85@lums.edu.pk', '33034882855', 'Waqas Ali', '879fbfd675a34ad3b2724c4ec94988dc267c8e2492aa9dd8010964ca9c4c90fb', 'worker', '2024-10-02 13:12:11', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student86@lums.edu.pk' OR phone = '34674403113')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student86@lums.edu.pk', '34674403113', 'Waqas Qadir', 'a6ece1b636088887bed0d98612613b3700fe1425531d8726c5fc973a61e8dde3', 'student', '2024-09-08 05:25:48', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums87@lums.edu.pk' OR phone = '36471231965')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums87@lums.edu.pk', '36471231965', 'Rafiq Anwar', '0e3d1ff5111b4fe10af191b5bf69378159bd7ca6cba1eb7262a405c18088afe2', 'student', '2024-03-26 18:17:29', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user88@lums.edu.pk' OR phone = '37269607868')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user88@lums.edu.pk', '37269607868', 'Hira Shah', 'd40a16374040c8925cbef829db5fe9081e2b2e7fa968146b68a0555290ef0cb4', 'teacher', '2024-08-19 22:32:03', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums89@lums.edu.pk' OR phone = '34493601836')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums89@lums.edu.pk', '34493601836', 'Maryam Latif', 'e2498760a6015150f28936de701f73a4fc8797cfcdfdde37bfc5d2e1d377eef9', NULL, '2025-08-28 03:44:12', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student90@lums.edu.pk' OR phone = '37583204876')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student90@lums.edu.pk', '37583204876', 'Hamza Karim', 'a5536e54583b2a30f0a9048e0ac4be50d154e5c0b0b736ea23552154628f7142', 'student', '2025-09-12 18:15:59', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student91@lums.edu.pk' OR phone = '36205078228')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student91@lums.edu.pk', '36205078228', 'Kamran Butt', 'a008bcb423edd46dd39bf5633677d70d7e92f05295fa94ad86d67ad5a97fa4a7', 'student', '2025-08-26 11:27:28', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '00092@lums.edu.pk' OR phone = '37349457207')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('00092@lums.edu.pk', '37349457207', 'Sidra Hassan', '6a625e69e990b5f6a093a7b0acb4156ad7c8e705245f5b91e0aa740f90d1e173', 'worker', '2025-06-06 21:58:17', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '00093@lums.edu.pk' OR phone = '33292136079')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('00093@lums.edu.pk', '33292136079', 'Ibrahim Waseem', 'd7564185a138164df46bfd84a11627c0fdd37295b89ae7230afdd51c0c983b77', 'student', '2023-12-05 14:35:43', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums94@lums.edu.pk' OR phone = '37826200633')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums94@lums.edu.pk', '37826200633', 'Azhar Farooq', '639b2151255f1fadb444ef3fdcc9ade5fdb385395b338528746905ba8c52ba27', 'student', '2025-05-18 01:29:13', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '00095@lums.edu.pk' OR phone = '31835597139')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('00095@lums.edu.pk', '31835597139', 'Zain Saeed', 'ea1a2d06bbb09a6ea84f918fdb18ac17615365afa5ff09ac73eaf6e68cb5352f', 'worker', '2024-10-16 15:08:44', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user96@lums.edu.pk' OR phone = '34317141845')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user96@lums.edu.pk', '34317141845', 'Jamil Akbar', '7d1efd5e066097bb201fe40e651bea92f53b9a3e8c99cd76e15030f9d072c2d8', 'admin', '2024-07-29 08:35:17', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user97@lums.edu.pk' OR phone = '35241403272')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user97@lums.edu.pk', '35241403272', 'Azhar Bashir', '048a93fe25bed33f6e0d37f4ed4b53a39b2201ebe7dae0fad74eb52e7ce5c3bc', 'teacher', '2025-06-11 12:15:35', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums98@lums.edu.pk' OR phone = '35415387665')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums98@lums.edu.pk', '35415387665', 'Shahid Ali', '1a52ea1a2b0f7dbbc246387f37b6a1ee0bae2a7d3de65139e54dbd325a8cdf8d', 'admin', '2024-02-18 12:17:18', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '00099@lums.edu.pk' OR phone = '37772066149')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('00099@lums.edu.pk', '37772066149', 'Bilal Akhtar', '5f5b24ad65531525ddcccace0598dafaa386e30749babf12c7b0cda2af45c582', 'student', '2024-12-10 10:49:47', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '00100@lums.edu.pk' OR phone = '33262593834')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('00100@lums.edu.pk', '33262593834', 'Shazia Haider', 'b3351ed9be23d5ad99cc73bdc1aed73913503f064534ead302d7485b72b072fe', 'admin', '2024-07-23 19:17:34', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '00101@lums.edu.pk' OR phone = '31887014160')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('00101@lums.edu.pk', '31887014160', 'Wasim Mirza', '5c773b22ea79d367b38810e7e9ad108646ed62e231868cefb0b1280ea88ac4f0', 'teacher', '2025-09-22 20:22:40', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student102@lums.edu.pk' OR phone = '32567245063')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student102@lums.edu.pk', '32567245063', 'Shaista Umar', '3233c5e43b1a0d2a03c8a6fc981fe3bad46b9fee5ca59d53f6a531325cd3a433', NULL, '2025-06-26 14:58:17', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student103@lums.edu.pk' OR phone = '39332208217')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student103@lums.edu.pk', '39332208217', 'Aslam Abbas', 'c14883c02091c283d24d22edf9adbcbd13cc43e564e47e30d600033885c49af5', 'admin', '2024-08-19 02:41:11', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums104@lums.edu.pk' OR phone = '39808384216')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums104@lums.edu.pk', '39808384216', 'Talha Nadeem', '825242929f5adfd5c4b9318e95c1a83584367d888172d1453ef3a855ed704453', 'student', '2025-07-18 07:35:20', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums105@lums.edu.pk' OR phone = '34374316147')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums105@lums.edu.pk', '34374316147', 'Saima Javed', 'bb10f0c847be9e4cd43dca85e1e42763e357207c04598a082f276f8b7a36c8f7', 'teacher', '2024-06-09 05:22:12', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums106@lums.edu.pk' OR phone = '32103672988')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums106@lums.edu.pk', '32103672988', 'Asim Sheikh', '44130b0a209dc581fac72493a9dfc8ccf4b9078508af9380bfe77d04ecb23159', 'admin', '2023-12-26 15:35:24', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums107@lums.edu.pk' OR phone = '30992140052')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums107@lums.edu.pk', '30992140052', 'Shakeel Farooq', '3cd4e74734d6a5afbaf9587f8a912079652e9bc0487322799410f11dd11cb44a', 'worker', '2025-05-21 07:25:42', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student108@lums.edu.pk' OR phone = '39179491996')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student108@lums.edu.pk', '39179491996', 'Aftab Naqvi', '2f17420c172e9e934450105eb1c36dd2614eed322e5df28451bede05ad0f2e71', 'worker', '2024-09-10 10:58:51', 1, '2025-09-10 14:48:01');
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user109@lums.edu.pk' OR phone = '37203797620')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user109@lums.edu.pk', '37203797620', 'Talha Siddiqui', '1df0dc0efb2f08b28cac248f58cd53e7b2aedc52c077377502aff69f24c71b60', NULL, '2025-03-20 15:09:10', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums110@lums.edu.pk' OR phone = '39352142083')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums110@lums.edu.pk', '39352142083', 'Tahira Aziz', '95fb0af62545c323ad3da1c09717b417c9c5dbe4e2c9035432d0955116e287e9', 'student', '2024-04-19 18:36:31', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student111@lums.edu.pk' OR phone = '30883772510')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student111@lums.edu.pk', '30883772510', 'Kashif Chaudhry', '19cb0711df0a5c9915c57bc8209b23da7b9ecae22627bc957eb25bcf53182a81', 'student', '2024-02-29 00:53:40', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student112@lums.edu.pk' OR phone = '33145918120')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student112@lums.edu.pk', '33145918120', 'Saleem Yaqoob', 'd46b5cd9c1456e3059258a411faf8bbb0253c190cc5acb488f999e1b1421f83b', 'admin', '2025-03-04 17:16:27', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums113@lums.edu.pk' OR phone = '39055127114')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums113@lums.edu.pk', '39055127114', 'Maria Ghani', 'aea8daf3a148ce45e76153ed649274b763a59ca0ef9236215bdcf1cfce4f2038', 'teacher', '2024-05-26 23:32:22', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '00114@lums.edu.pk' OR phone = '39482489091')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('00114@lums.edu.pk', '39482489091', 'Abdullah Tariq', 'b9017426fea49b27d2d258db21d76dc99596b297493132bbe1829c98a4b33cc4', 'worker', '2025-05-09 12:05:28', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '00115@lums.edu.pk' OR phone = '33785151238')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('00115@lums.edu.pk', '33785151238', 'Hira Hameed', 'c5b0eb31b1858c5768899883986d251cef6edfc2555e231f0dec7a7d16fbfa99', 'worker', '2024-09-01 23:37:25', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user116@lums.edu.pk' OR phone = '37089214933')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user116@lums.edu.pk', '37089214933', 'Maryam Aziz', '252acd35e7485aa79b5d30daedd4b463e164f0b2fb403e770a5445a6dc046f3e', 'teacher', '2024-01-25 00:07:27', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user117@lums.edu.pk' OR phone = '36068335460')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user117@lums.edu.pk', '36068335460', 'Zahid Qadir', '8c64014ba541b903dfe05dbd56aa863f7b602b51eba38ecbe354dfdfe08076b7', 'worker', '2025-04-20 17:56:14', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums118@lums.edu.pk' OR phone = '39786041799')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums118@lums.edu.pk', '39786041799', 'Nimra Tariq', '922a94711d4fcb2c512ca1463393d75ad3cccd820493f66afa1165ee70f24ebb', 'teacher', '2024-05-14 00:53:57', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student119@lums.edu.pk' OR phone = '36888644026')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student119@lums.edu.pk', '36888644026', 'Ali Zia', '3a124b5ae21189adc66dfd33c32e90fec5cbbc825d8ae6672f5ed89a7fea407b', 'worker', '2025-10-23 11:48:05', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student120@lums.edu.pk' OR phone = '36852933417')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student120@lums.edu.pk', '36852933417', 'Raza Butt', '43d496703f53d1c01e3365c49d173c6130a00ff6a5d3e613c228bb5e7d23bec8', 'teacher', '2023-12-17 16:05:57', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '00121@lums.edu.pk' OR phone = '35051340123')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('00121@lums.edu.pk', '35051340123', 'Maria Ghani', '35b40e725f79eebee4d02e8faec9b81c683c5f9aa9ed4457d0cf0ee89ffb9c0c', 'student', '2025-10-25 22:07:24', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student122@lums.edu.pk' OR phone = '33562401934')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student122@lums.edu.pk', '33562401934', 'Shahid Jamil', 'c660725919c1c20945cca28ed9944edaf8f4c6a11310c1024e30bd528d0f6c13', 'worker', '2024-07-06 01:46:09', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums123@lums.edu.pk' OR phone = '36299450654')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums123@lums.edu.pk', '36299450654', 'Naveed Rasheed', 'ef92b778bafe771e89245b89ecbc08a44a4e166c06659911881f383d4473e94f', 'teacher', '2024-04-08 16:18:23', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user124@lums.edu.pk' OR phone = '39852501301')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user124@lums.edu.pk', '39852501301', 'Waqas Iqbal', '33631376724e5d5480fa397dfcf03b66ad47b934ab495174d7058c38f2bb0087', 'student', '2025-08-03 20:19:27', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user125@lums.edu.pk' OR phone = '37091977182')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user125@lums.edu.pk', '37091977182', 'Tahira Malik', 'f974ef14e161774091b3dd7350110d5a23b73e15d1fa68a69de0e6d981f76dac', 'student', '2024-10-27 18:45:07', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums126@lums.edu.pk' OR phone = '34832401211')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums126@lums.edu.pk', '34832401211', 'Kamran Khan', 'd42ba32b8703fe9bcffc5c16b6c5679363d595724c63a0ed111ac59a1d467070', 'student', '2025-10-30 03:19:16', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums127@lums.edu.pk' OR phone = '33670233252')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums127@lums.edu.pk', '33670233252', 'Aftab Malik', '4fa29f8e091719146327604cc5d6e112b1999134dbefbf05f991f5c0fd648017', 'worker', '2024-05-07 14:25:10', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '00128@lums.edu.pk' OR phone = '39848063939')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('00128@lums.edu.pk', '39848063939', 'Yusuf Anwar', 'f11026cad6ec0b7bbe12d040560218f64c02cd99d9b2b47838ba081f1f54f0d4', 'teacher', '2024-09-06 16:13:12', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums129@lums.edu.pk' OR phone = '34772033097')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums129@lums.edu.pk', '34772033097', 'Zahid Hassan', '1cf4314ed60f4e34ec6376a4f82ace4cd4faa7133552bd244bb129f73f3e4371', 'admin', '2024-07-05 16:01:04', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums130@lums.edu.pk' OR phone = '36125705739')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums130@lums.edu.pk', '36125705739', 'Alina Tahir', 'fdaf316691c0233b44908b805a61d61682233bcd8c3430cbc3a16d200ab908cd', 'admin', '2025-10-12 22:37:05', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student131@lums.edu.pk' OR phone = '31371692058')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student131@lums.edu.pk', '31371692058', 'Rafiq Waheed', '4b8a7c00cee5d73f6a094a7095fba692247d3de6a261df071ab59db42df78bf5', 'admin', '2024-08-16 20:38:53', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user132@lums.edu.pk' OR phone = '37095030479')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user132@lums.edu.pk', '37095030479', 'Muhammad Shah', '376cd0595988f48b61e91a47e1c7e78cb2e42f73aa984c49851baad93548789e', 'student', '2025-08-21 14:39:44', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '00133@lums.edu.pk' OR phone = '36096967466')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('00133@lums.edu.pk', '36096967466', 'Qamar Mahmood', '8ec4150249673d68cdde05f8d364578e69878cc21f98205024403e68df7809f5', 'worker', '2025-06-12 02:01:56', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '00134@lums.edu.pk' OR phone = '30778231138')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('00134@lums.edu.pk', '30778231138', 'Fatima Rafiq', '29974380eff53400aaecf88ef63c5db77631b6da40a36853b4a8ab592f2c7cee', 'student', '2025-07-30 04:58:11', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums135@lums.edu.pk' OR phone = '33808002285')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums135@lums.edu.pk', '33808002285', 'Arshad Masood', '41c52b123c21d057c0c940e03599bf91d66ff19f8aea217bc7519c39178bc748', 'worker', '2024-02-05 11:28:38', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user136@lums.edu.pk' OR phone = '31604030602')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user136@lums.edu.pk', '31604030602', 'Qamar Hassan', '6684f5edecf3ee57dee572b07e1fe5754b1636e52daa5e9ab5aad347b2f0b870', 'student', '2024-10-29 18:01:11', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user137@lums.edu.pk' OR phone = '30375339940')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user137@lums.edu.pk', '30375339940', 'Aslam Tahir', '5246cce8a20f2dd8b319bad141b67a3618d264fd8a1007410a94b15f3ea44df7', 'student', '2023-12-11 14:31:15', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '00138@lums.edu.pk' OR phone = '36875094805')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('00138@lums.edu.pk', '36875094805', 'Rubina Chaudhry', 'e91302d3e7967b6f929769177a2239136805d840984767f98be1adbd4c879da1', 'admin', '2024-06-11 13:29:10', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user139@lums.edu.pk' OR phone = '31418046869')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user139@lums.edu.pk', '31418046869', 'Azhar Yousaf', 'fd157624e9b66cea984775718a575eb50870e62afbdce868aed53f3c8e19f1f6', 'teacher', '2025-05-08 22:18:23', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums140@lums.edu.pk' OR phone = '37664763184')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums140@lums.edu.pk', '37664763184', 'Humaira Latif', 'e04a387e36bfe81fff02a09d9ef010c35466cc20ebd08b0c23be31a7f9bab368', 'worker', '2025-08-05 04:21:20', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums141@lums.edu.pk' OR phone = '34844359342')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums141@lums.edu.pk', '34844359342', 'Faisal Iqbal', '94bea607efe4e7435e1cac4a710e80ed915b722978463426d824d167da0fbf22', 'student', '2025-06-21 21:31:47', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '00142@lums.edu.pk' OR phone = '34612582369')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('00142@lums.edu.pk', '34612582369', 'Yusuf Shah', '404efa37375fa762663841baaa7a82310f8b9fd5ea9cb687ac977b9d62d39d36', NULL, '2024-04-09 01:27:11', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums143@lums.edu.pk' OR phone = '32480305356')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums143@lums.edu.pk', '32480305356', 'Aftab Khan', '4e7388c7dae5f47d4aaaad0f4dd6fc6eb80be023949efeaad42594d7a85e5673', 'admin', '2025-03-15 10:22:15', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '00144@lums.edu.pk' OR phone = '33811933832')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('00144@lums.edu.pk', '33811933832', 'Ali Siddiqui', 'ad6cd891ccf7d78ead86fb2788e8a32948d59b001706bce811750a9e77471060', 'admin', '2024-05-01 16:28:43', 1, '2025-11-21 11:01:15');
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user145@lums.edu.pk' OR phone = '37985423864')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user145@lums.edu.pk', '37985423864', 'Wasim Yaqoob', '03f7c686af0e3374975141ab84edb5a67b24fbff8f13df0cb808389138a8d360', 'worker', '2024-04-21 20:17:54', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user146@lums.edu.pk' OR phone = '37333873745')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user146@lums.edu.pk', '37333873745', 'Nazia Tariq', '4872a853626492ff72109012c9110e97f1100437e595100c74ca04cb4d6bf526', 'worker', '2025-03-20 03:22:03', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '00147@lums.edu.pk' OR phone = '37270960939')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('00147@lums.edu.pk', '37270960939', 'Asim Iqbal', 'd601d7629b263221dd541a3131d865a9bcb087e3edc702867143a996803307ab', NULL, '2024-04-13 05:43:29', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student148@lums.edu.pk' OR phone = '39752432765')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student148@lums.edu.pk', '39752432765', 'Nadeem Mirza', '0e810497cdad0ea5978e129e19ae8c288f1573f71669c50e1bd7968d1ee662dd', 'worker', '2024-09-27 20:01:15', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '00149@lums.edu.pk' OR phone = '38833810765')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('00149@lums.edu.pk', '38833810765', 'Hamza Qadir', 'da6a634892307a507197dbb469069547cb35e45d38b23e154197027afcde091f', 'admin', '2024-05-29 00:07:06', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums150@lums.edu.pk' OR phone = '35879448261')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums150@lums.edu.pk', '35879448261', 'Ali Karim', 'c2141786d5c40007fdda8d5cdf5b541213c82e3b408723b4fb0a80697123c002', NULL, '2024-04-13 00:32:29', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums151@lums.edu.pk' OR phone = '33253908272')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums151@lums.edu.pk', '33253908272', 'Saima Saeed', '9bbb50179d8b0770184054e69fc1693b0920694593c623fa98d1175448883d49', 'student', '2024-10-03 19:20:11', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums152@lums.edu.pk' OR phone = '34730697766')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums152@lums.edu.pk', '34730697766', 'Nadeem Yousaf', '5389dd6d1688b2f44a2a4c11ffe457b42e7b289e019d1df6d64287231eb6fa37', 'teacher', '2024-03-10 18:13:52', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums153@lums.edu.pk' OR phone = '36224776295')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums153@lums.edu.pk', '36224776295', 'Azhar Ahmed', '495fa1f7a3b546c9ac14ced6a612f70085c7cfdd0a0b80e8bcf2d46229669a17', NULL, '2024-01-11 19:10:29', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '00154@lums.edu.pk' OR phone = '36273281447')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('00154@lums.edu.pk', '36273281447', 'Raza Khan', 'f0f3e48732b78498f8184c0f848677df155e6e71aa16722650447e654511abb1', 'teacher', '2025-05-16 03:12:09', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums155@lums.edu.pk' OR phone = '37007476861')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums155@lums.edu.pk', '37007476861', 'Rafiq Bashir', 'a7200b31eeb58d8750480cf6bb58773ea94419b7d15e4c6fa63ead0f31d58388', 'teacher', '2024-03-06 19:30:18', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums156@lums.edu.pk' OR phone = '30791875067')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums156@lums.edu.pk', '30791875067', 'Shahzad Zaidi', 'be195fa37fdcb899887cab07f8e580a15f91a9faaa95297ca3217b103bcae285', NULL, '2025-06-05 12:06:33', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user157@lums.edu.pk' OR phone = '38560338874')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user157@lums.edu.pk', '38560338874', 'Raza Chaudhry', 'a330d64954e86d7bff4308548189dbebd937ad3fabc7d5ca4c9d7d9ec8ecb3f9', 'worker', '2025-04-15 10:11:20', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user158@lums.edu.pk' OR phone = '34320947305')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user158@lums.edu.pk', '34320947305', 'Farooq Masood', 'f31981caff7a925921ebfc00b5f1fc9355dc455504a86e3d85ea624dda77c097', 'teacher', '2025-06-03 04:21:58', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user159@lums.edu.pk' OR phone = '35927583176')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user159@lums.edu.pk', '35927583176', 'Humaira Farooq', '9be4dafaba88c5ac0c4109813438a86aa5fc2e0336d6b06739b1806f322e067c', 'worker', '2024-11-21 13:29:01', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user160@lums.edu.pk' OR phone = '35644864548')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user160@lums.edu.pk', '35644864548', 'Alina Saeed', '4b186aeeafafbe519e8dc8252785bee2569109e6fa42d10e3243a174dead5949', 'student', '2025-01-22 18:00:01', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums161@lums.edu.pk' OR phone = '37435815469')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums161@lums.edu.pk', '37435815469', 'Abdullah Zaidi', '05b06265bf413273a8f8e46f81550618e6fa3c2576d098c49000a77acd180649', 'teacher', '2024-07-02 07:56:49', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '00162@lums.edu.pk' OR phone = '37774170485')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('00162@lums.edu.pk', '37774170485', 'Hassan Zaidi', '1d5e797982553235906bb2798d893d390297ac13109f5183467e7f6532562087', 'worker', '2025-07-18 07:57:51', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums163@lums.edu.pk' OR phone = '32801230825')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums163@lums.edu.pk', '32801230825', 'Nadia Ghani', '3799dc1c28c7ab7e57696aa15c6415615bbafb33ecd9a184c68fa88a6c6d2e77', 'teacher', '2025-05-02 07:44:01', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums164@lums.edu.pk' OR phone = '34848303630')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums164@lums.edu.pk', '34848303630', 'Irfan Aslam', '47ff280e0bd430c979d828dd3a5a07749603b73233c5f0f418d6364b1431412f', 'worker', '2024-05-09 08:32:48', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student165@lums.edu.pk' OR phone = '34672165807')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student165@lums.edu.pk', '34672165807', 'Nimra Karim', '76be687ec273bc118d1e04a262aba9317d4e1bec72ce347625bab8826b80c62f', 'student', '2024-11-21 17:42:38', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student166@lums.edu.pk' OR phone = '30431837352')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student166@lums.edu.pk', '30431837352', 'Qamar Waheed', '4bd56a2f187ee54db088bdcbc7e573152d8be76de702da40f98400344da74f45', 'admin', '2024-11-27 17:46:02', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student167@lums.edu.pk' OR phone = '38275599337')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student167@lums.edu.pk', '38275599337', 'Majid Ali', '00cb62e42b8f2bbbf028ae9b3dee3ec4a9d4dfa8b87f1b0535f642eb3d40990f', 'teacher', '2025-01-03 08:54:07', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student168@lums.edu.pk' OR phone = '31607255082')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student168@lums.edu.pk', '31607255082', 'Azhar Javed', 'b82965828f5f2a8db739200213da6d77176ca8ec5dfcfb66d7ee3004dc9fc200', 'worker', '2025-06-01 01:31:33', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student169@lums.edu.pk' OR phone = '35905148954')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student169@lums.edu.pk', '35905148954', 'Akram Chaudhry', '9c7db31d09b8f1c9402e6a2c8c3d08a469425475d2fc6d80f8698061dae73d92', 'teacher', '2025-08-11 22:33:14', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '00170@lums.edu.pk' OR phone = '38607020343')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('00170@lums.edu.pk', '38607020343', 'Jamil Malik', '0949bd843003e28c2714d7404dc0177b607e5ed5e9c6273cb9fc4cd8fed8abbe', NULL, '2025-01-20 14:26:04', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums171@lums.edu.pk' OR phone = '31113392083')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums171@lums.edu.pk', '31113392083', 'Fahad Ahmed', 'e8470f49144e6d553cc6bc356fddd807a334b6ecced4b85f6846159dfe843af3', 'teacher', '2024-09-29 18:08:37', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '00172@lums.edu.pk' OR phone = '37829044891')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('00172@lums.edu.pk', '37829044891', 'Aslam Farooq', '5594588b81cd367e90ca5e4d6d882fa61f32badb098ee1ad557e1a7b57f17257', 'admin', '2024-08-09 05:43:00', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user173@lums.edu.pk' OR phone = '39576820333')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user173@lums.edu.pk', '39576820333', 'Farhan Waheed', '64dd501b7c8f70c466a854f0c905f6fbb96af29015b4e1c5d02df40c2ae84792', 'student', '2024-12-02 12:17:52', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user174@lums.edu.pk' OR phone = '30459920093')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user174@lums.edu.pk', '30459920093', 'Shafiq Mahmood', 'fac7bb2af1d3028c0f5b71e22fc2c54c84eef25dde1d81bcde02127921ffe58a', 'admin', '2025-01-10 13:29:43', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '00175@lums.edu.pk' OR phone = '39430542930')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('00175@lums.edu.pk', '39430542930', 'Saleem Akhtar', 'c67600c5faaad96fd06fe335beaf9d16d9bbc134b31ddbf2481ed320180c576a', 'worker', '2025-10-05 12:29:42', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student176@lums.edu.pk' OR phone = '39316846919')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student176@lums.edu.pk', '39316846919', 'Shamsa Ayub', '72d3f89ba93cb1e40a5811d2b6605bbd59d95bb046715f15ba8c1fc26219b4ce', 'student', '2024-02-24 18:26:49', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums177@lums.edu.pk' OR phone = '38315377878')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums177@lums.edu.pk', '38315377878', 'Hamza Yousaf', '3c378c9caf6bceb6cef4e8f0be4d0ed21f1abb2da4055540237b396ca22736ef', 'worker', '2025-10-16 06:13:56', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user178@lums.edu.pk' OR phone = '39845724430')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user178@lums.edu.pk', '39845724430', 'Parveen Hameed', '1d708582f753c5849445355e276afb64f5c1c309f23979d59c665f49fe13f9f0', 'admin', '2025-01-10 16:17:07', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user179@lums.edu.pk' OR phone = '36614332583')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user179@lums.edu.pk', '36614332583', 'Adnan Rafiq', '73bb8336af345d3f003b2c7cfeab3c5708bd33a141125fa50936ff28601a63ce', 'admin', '2025-05-04 05:22:19', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student180@lums.edu.pk' OR phone = '39683861145')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student180@lums.edu.pk', '39683861145', 'Shakeel Yaqoob', 'cddd0f946a214cce0bc200f9ec0b46936ed483e87acfbe505a2dfec0ad9cf27b', 'student', '2024-11-02 21:22:44', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '00181@lums.edu.pk' OR phone = '35565466033')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('00181@lums.edu.pk', '35565466033', 'Hanif Sadiq', 'db6fddcae96fed748492477e226594b3d7cbc091b2901cbdb496258f6017a8da', NULL, '2024-11-26 10:57:23', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student182@lums.edu.pk' OR phone = '37953521280')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student182@lums.edu.pk', '37953521280', 'Ibrahim Hussain', '60f456aa7b7093a0e31ad9c559bcedbedb5443e2effffbe4a30c7b1a91ca6202', 'admin', '2025-08-15 02:36:39', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '00183@lums.edu.pk' OR phone = '31149488361')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('00183@lums.edu.pk', '31149488361', 'Samina Farooq', 'd45c7de35a59d9145ea3fcc4a3b6e2a6aa6abe00f97ae843e32a554666ab3c2b', 'worker', '2024-05-29 11:54:21', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '00184@lums.edu.pk' OR phone = '34133863068')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('00184@lums.edu.pk', '34133863068', 'Shama Hassan', '4c30e7c4e70dd93bca87a16d9a09f7116aa0789037af27be7bc36b5927fe2f09', NULL, '2025-01-24 22:33:43', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student185@lums.edu.pk' OR phone = '31866708378')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student185@lums.edu.pk', '31866708378', 'Sana Yousaf', '815de4ef06543a0622dc70a859e50c52fa0f15bfc27da1d87c399dd077960bf0', 'teacher', '2023-12-06 02:11:22', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums186@lums.edu.pk' OR phone = '37689981273')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums186@lums.edu.pk', '37689981273', 'Hamza Mirza', 'b152fb0e61d328daa53519014576921b2bb7fca49bab8f6866f54cd950c9fccc', 'teacher', '2024-11-20 01:21:24', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user187@lums.edu.pk' OR phone = '34428403154')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user187@lums.edu.pk', '34428403154', 'Aslam Latif', '58952757fe382ed8fbf8dfa0ddeba6a7d9a46c67a442678658962661215886c0', 'admin', '2024-10-13 01:20:23', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student188@lums.edu.pk' OR phone = '35201896215')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student188@lums.edu.pk', '35201896215', 'Shama Khan', '1abe2e185971bb5ff83d5bcf730934bd29b8f94ca0cce14cf06755122a5f4f7e', 'worker', '2024-06-02 12:18:03', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student189@lums.edu.pk' OR phone = '38502331938')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student189@lums.edu.pk', '38502331938', 'Saleem Waheed', '9950f5f8048174b5ff67e58193c5b2deb271dc7b4253f13bf64667017b769b83', 'student', '2025-04-06 19:56:36', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums190@lums.edu.pk' OR phone = '34366533990')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums190@lums.edu.pk', '34366533990', 'Tariq Javed', '2ff69ea5a11144909b394342ed5f6cf5e73e062315bac91bc77a00605ed3bcf2', 'student', '2025-09-09 09:07:55', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums191@lums.edu.pk' OR phone = '39124696772')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums191@lums.edu.pk', '39124696772', 'Imran Siddiqui', '2643c17cade533e41409cbd5ada38df3b5490f14c54a53841e21e0113bb2c6c7', NULL, '2024-04-18 01:36:48', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user192@lums.edu.pk' OR phone = '35910662867')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user192@lums.edu.pk', '35910662867', 'Naseem Umar', '40d0cf3b61304e0ac3d5c3be5e10586912aa9a5c4d8abc8e4045c7b60ee59885', 'admin', '2025-03-31 06:56:28', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student193@lums.edu.pk' OR phone = '33811820277')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student193@lums.edu.pk', '33811820277', 'Shakeel Waheed', 'a30ce92dc2ed0edc9480b4e7978d63f9bbbf165fe4f99d5d73740c823cc605d7', 'student', '2024-09-14 22:51:12', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums194@lums.edu.pk' OR phone = '35958037788')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums194@lums.edu.pk', '35958037788', 'Tanvir Mirza', 'b76a25ba350dc599b72e66a4bff6ce4ddb55c9d78468794e22ce4cccce78d41b', 'worker', '2024-05-10 17:08:07', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '00195@lums.edu.pk' OR phone = '37324547323')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('00195@lums.edu.pk', '37324547323', 'Naila Iqbal', 'd01be9a8818019da9b962035f3de9e6aa1ec1b15c96a9044508a5cd2bd226286', 'student', '2024-06-22 08:02:36', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user196@lums.edu.pk' OR phone = '30962898825')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user196@lums.edu.pk', '30962898825', 'Uzma Ilyas', '5d3823fd47d5bebae10bb00fdf568b06ab81487581366b88ae2967e06d029b92', 'teacher', '2023-12-24 01:27:18', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '00197@lums.edu.pk' OR phone = '39395674578')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('00197@lums.edu.pk', '39395674578', 'Maria Tariq', 'e59e709de894de8d95bdf84f83f341778058a99dc3f147e5027fd4047b66742a', 'student', '2024-11-24 01:57:41', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '00198@lums.edu.pk' OR phone = '35123412909')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('00198@lums.edu.pk', '35123412909', 'Imran Hussain', 'ac865eea92919e90a7b00df59f08ecb59bb4efa29f175059f0338df27c775b6e', 'admin', '2025-10-02 04:35:40', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums199@lums.edu.pk' OR phone = '34513846646')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums199@lums.edu.pk', '34513846646', 'Uzma Sadiq', 'a33445c8fe65518e988b1df0fa190de986b4f8428e077ebc645e70804e27d39c', 'student', '2024-09-22 07:08:00', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums200@lums.edu.pk' OR phone = '31201477778')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums200@lums.edu.pk', '31201477778', 'Nadia Haider', 'e9a598c9884b2b4cc953d634b504b80692a42abbfda07e11f695582d58b04d1b', 'worker', '2024-11-15 12:51:14', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums201@lums.edu.pk' OR phone = '30822138334')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums201@lums.edu.pk', '30822138334', 'Amna Ayub', '4e697574c6e3693487942c34ff3279f02e9badfa8c7984a85b5da6e15500796f', 'student', '2024-10-22 21:17:10', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student202@lums.edu.pk' OR phone = '35614777446')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student202@lums.edu.pk', '35614777446', 'Kashif Zaidi', 'fca4836976e56c23b1aa03a2815aef685b33e9bb1838130eaa6d30533c90bee1', NULL, '2024-10-19 03:05:50', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums203@lums.edu.pk' OR phone = '34289097975')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums203@lums.edu.pk', '34289097975', 'Shazia Jamil', '92238160d01b5eb13c2068b95b9ee42d99aa3dae270fcd1a62dc64e874ad3642', 'teacher', '2024-01-23 03:16:48', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums204@lums.edu.pk' OR phone = '35708105577')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums204@lums.edu.pk', '35708105577', 'Uzma Ghani', '5781c91a7f022f6b146981a13b2e1db3e2681b6374af6215038bd54a38f9b44c', 'student', '2023-12-21 15:57:07', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student205@lums.edu.pk' OR phone = '30993411848')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student205@lums.edu.pk', '30993411848', 'Aslam Latif', '8a72fd92b00ad741fbb6d81043093ad52dc6e3935a7ce243b140a69c715b633d', 'admin', '2025-08-02 15:39:30', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student206@lums.edu.pk' OR phone = '38078073535')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student206@lums.edu.pk', '38078073535', 'Humaira Sadiq', '77a3e31211f30c72e0a2307172b93a4abd354f03862daabe24a50b6bc678a43f', 'student', '2024-02-29 13:08:49', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums207@lums.edu.pk' OR phone = '38669059120')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums207@lums.edu.pk', '38669059120', 'Saleem Waseem', 'be0b7cff1e179aec6628a376c80cc0a1c1de12bb16d49977c404c6d3e81e31e7', 'worker', '2024-12-05 09:15:53', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '00208@lums.edu.pk' OR phone = '39716386564')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('00208@lums.edu.pk', '39716386564', 'Abdullah Sadiq', 'a1d6b3ff0a92f6cd6d23fed3abaa996197d7b8465f255645d7f249e78c0fe1d0', 'worker', '2024-04-08 08:14:54', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums209@lums.edu.pk' OR phone = '36121375347')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums209@lums.edu.pk', '36121375347', 'Sadaf Malik', 'c24ededb604746f61e8df8f6bfdc08664c29f8aed0aab8e06414da6aae07e7df', 'worker', '2024-12-10 20:04:24', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums210@lums.edu.pk' OR phone = '35764263532')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums210@lums.edu.pk', '35764263532', 'Usman Hussain', 'a757439e315efad24e88de219c390f2f5f956243826af4c970005a4660fdba66', 'admin', '2024-08-17 07:13:43', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user211@lums.edu.pk' OR phone = '30402480757')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user211@lums.edu.pk', '30402480757', 'Saleem Ghani', '6e2c900e224a38be84df8b91da0e2e36f9d07fcde6fdf5bd7539970d536dbab0', 'admin', '2025-04-14 15:40:53', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums212@lums.edu.pk' OR phone = '35879463167')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums212@lums.edu.pk', '35879463167', 'Majid Butt', '644f72a3cc2b2729424618c7317594d4190928ff2150dff08c050d78ea59c779', 'admin', '2024-08-19 23:16:34', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '00213@lums.edu.pk' OR phone = '32321657063')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('00213@lums.edu.pk', '32321657063', 'Fouzia Waseem', '813b9b3bf8301f2a77d091f9e26b4ea05b7625ac3389e17456e16054a5ef052a', 'student', '2025-11-15 08:06:38', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '00214@lums.edu.pk' OR phone = '32846143102')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('00214@lums.edu.pk', '32846143102', 'Bushra Bashir', '6b09f691894c543ee6ef078bd9e5db9a51ed30e3debcc9c1d008b49dbc47efad', 'teacher', '2025-08-03 09:04:33', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums215@lums.edu.pk' OR phone = '35924113992')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums215@lums.edu.pk', '35924113992', 'Khalid Ghani', '90b6070389842f54157e6e4a48588a9cc41ddb4ade1e3f4dfb952d4fab255c85', NULL, '2024-08-16 03:57:09', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums216@lums.edu.pk' OR phone = '33290102770')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums216@lums.edu.pk', '33290102770', 'Asim Haider', '77d0972aa80957c6c650d7f5ded32b8f9f0dde09f1ff3078662198f3a281e7fa', 'student', '2024-05-14 12:08:50', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user217@lums.edu.pk' OR phone = '36416602589')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user217@lums.edu.pk', '36416602589', 'Kamran Raza', '02a6c8017999aa7f7d26abd074d9d95edcad0995817f779e85aea17df0958a9b', NULL, '2024-04-30 20:33:08', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student218@lums.edu.pk' OR phone = '30029032835')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student218@lums.edu.pk', '30029032835', 'Shaista Malik', '42beb967d02a59c6e72579ea3fa13a6b5b035e1c2f411c247b65358440f26fa7', NULL, '2024-10-28 20:20:37', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '00219@lums.edu.pk' OR phone = '39507147226')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('00219@lums.edu.pk', '39507147226', 'Usman Shah', 'bb3ad11b9f6d9216eefc0d9f487b2811934bfe59e85113cec9e8ae2c060261c2', NULL, '2025-06-06 22:24:21', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student220@lums.edu.pk' OR phone = '30865188692')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student220@lums.edu.pk', '30865188692', 'Kashif Rasheed', '1c75f4aac31e15b1396467bc13060150906e6fb1b997b121c4936f2e1a50f943', 'student', '2025-08-27 20:45:49', 1, '2025-10-13 10:27:13');
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student221@lums.edu.pk' OR phone = '39112528363')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student221@lums.edu.pk', '39112528363', 'Anwar Chaudhry', 'b9665b2b8959453eb7f2a9616584de471d8ad7b28fd9a61138bd468ad0a425a0', 'worker', '2025-03-05 18:00:37', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user222@lums.edu.pk' OR phone = '32916119166')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user222@lums.edu.pk', '32916119166', 'Farooq Waheed', 'facbd7953fa9ee64e1c57738eae96c5f32c415b370111de2b3cfa6b59b23ad00', 'worker', '2024-07-03 04:20:08', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student223@lums.edu.pk' OR phone = '35343359492')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student223@lums.edu.pk', '35343359492', 'Hamza Sheikh', '1f4a391b7cc36e2f63c283553b3ab4f9c04e77d79cd1afcc6734c3a55f731eec', 'admin', '2025-04-28 07:02:24', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums224@lums.edu.pk' OR phone = '32681152206')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums224@lums.edu.pk', '32681152206', 'Saad Latif', '9e7c752907ee8665513be02acc0b0c09ffff0921e30511716c002a57485ac207', 'admin', '2025-06-07 05:55:32', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student225@lums.edu.pk' OR phone = '33735525541')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student225@lums.edu.pk', '33735525541', 'Tahira Zia', '5c57dd893db405f9456cbbb49c94fcef85005c9185885a93b9499da5611dcc43', NULL, '2024-07-08 04:41:10', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student226@lums.edu.pk' OR phone = '36238404465')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student226@lums.edu.pk', '36238404465', 'Hira Akhtar', '75920b4a8744dae9fb38ff98574ed63d4820658f301bb2869999989d985c4892', 'admin', '2023-11-26 02:27:01', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums227@lums.edu.pk' OR phone = '36088908411')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums227@lums.edu.pk', '36088908411', 'Riffat Siddiqui', '1696b5ba5612f38991eb9974ba86d438149297ff5055e6e31f3ae7f63e99fac1', 'student', '2025-07-03 06:02:08', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user228@lums.edu.pk' OR phone = '31438567432')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user228@lums.edu.pk', '31438567432', 'Jamil Ilyas', '36a1582d66de6323ecddb97313863aee71a5c019b6d1b370da790b65a62a4883', NULL, '2025-10-08 21:21:49', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user229@lums.edu.pk' OR phone = '39939315878')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user229@lums.edu.pk', '39939315878', 'Waqas Sheikh', '9e34badceb8139e4dbea404f379159c76582dacbf5c9c7789c7d223edd328ac2', 'teacher', '2024-11-11 11:15:47', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums230@lums.edu.pk' OR phone = '38904082471')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums230@lums.edu.pk', '38904082471', 'Sumera Tariq', '6a327cabac103b73c91989448b04038e0540e03c1e466b9378346028f7e8090e', 'teacher', '2025-10-17 06:37:14', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user231@lums.edu.pk' OR phone = '32707799402')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user231@lums.edu.pk', '32707799402', 'Hamza Anwar', '0cd1a34f93572bb80a5bf493d220bb881030335ec17a4e358c6da73a1ec30b4a', NULL, '2025-03-25 21:37:13', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums232@lums.edu.pk' OR phone = '37579687054')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums232@lums.edu.pk', '37579687054', 'Ibrahim Yaqoob', '00d779e256d1ba7de18135735dc18c8b112cd7cadf3587e9c106b88a91b6933e', 'teacher', '2024-05-29 19:42:26', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user233@lums.edu.pk' OR phone = '37117146397')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user233@lums.edu.pk', '37117146397', 'Sadaf Mahmood', 'e1a540168a0e280dd1e4961c3404a0eae5464c1851ee4eb380ebc6bd5da844e2', 'student', '2025-10-17 23:44:04', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student234@lums.edu.pk' OR phone = '30116580797')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student234@lums.edu.pk', '30116580797', 'Rafiq Tariq', '93ff4d79302417d6912b8c2620c1a5fcb8dbe305c1a351a8f3cd7560e3f4d4f2', 'student', '2025-11-19 11:43:45', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums235@lums.edu.pk' OR phone = '37264110105')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums235@lums.edu.pk', '37264110105', 'Shakeel Tahir', 'ca22324a93e96ec588c9b9ed5c47f8337182bdb2378da0f409cd6d8b7174f5ee', 'worker', '2024-01-25 03:30:57', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums236@lums.edu.pk' OR phone = '33214195466')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums236@lums.edu.pk', '33214195466', 'Aslam Aslam', 'e7b5d6ded8878506f45842701ebf8e0beeed79d599b8e5f7f1dcad23998364b8', 'admin', '2024-12-13 22:30:15', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '00237@lums.edu.pk' OR phone = '39912513894')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('00237@lums.edu.pk', '39912513894', 'Faisal Javed', 'd20d5c8023c2aa5586c1ec8872e7e63cccaaa38dd027faa0261d2073bdc6d313', 'worker', '2025-06-06 21:08:08', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user238@lums.edu.pk' OR phone = '39022163521')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user238@lums.edu.pk', '39022163521', 'Arslan Rasheed', '73383668dd42a36cc3d7fbc29cc08308c9a98a65433bb7a76f83693fea41735f', 'teacher', '2025-04-30 03:40:03', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user239@lums.edu.pk' OR phone = '30344210750')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user239@lums.edu.pk', '30344210750', 'Zahid Ghani', '675d918146fd1148871ad40822ef990c5f0d8e195bacdbd21f2a5ed8b826a546', 'admin', '2025-07-15 03:03:23', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '00240@lums.edu.pk' OR phone = '38228186714')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('00240@lums.edu.pk', '38228186714', 'Farhan Sheikh', '21a0554f8829db9a4b8507d168038ccb1e29aefff7e54269b553a3cfd7b47a2f', 'worker', '2024-08-05 17:03:37', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '00241@lums.edu.pk' OR phone = '31438959535')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('00241@lums.edu.pk', '31438959535', 'Rashid Hassan', '1771b93c93be72f381fded3e1be40020fc6995efdc8e2f29beb8470bbc214fb1', 'admin', '2023-12-02 07:15:49', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user242@lums.edu.pk' OR phone = '35031893675')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user242@lums.edu.pk', '35031893675', 'Iqra Raza', '841993afee2bc177f686cb1758f9bb4e33341b581be49ceb83919571839f4eb0', 'worker', '2024-05-25 08:57:26', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '00243@lums.edu.pk' OR phone = '33843873021')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('00243@lums.edu.pk', '33843873021', 'Shahzad Ali', '65f0a7ff6740fc12e70ab8a4790505f8c241636b66f41261035547246bacd3db', 'student', '2024-12-29 03:23:01', 1, '2025-08-04 10:57:08');
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student244@lums.edu.pk' OR phone = '33686551862')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student244@lums.edu.pk', '33686551862', 'Tariq Ali', 'd48b70e3d55b878f47920f576cb9820cd501cf6cdb79b36c8b5a715c24adf96b', 'teacher', '2024-08-20 05:58:16', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '00245@lums.edu.pk' OR phone = '34626678845')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('00245@lums.edu.pk', '34626678845', 'Imran Ghani', 'ad2ed5a48a1bd0f3c93721247fd8e73fc7b04a74b399e77f49d430b10d826bc8', 'student', '2025-03-28 22:43:23', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '00246@lums.edu.pk' OR phone = '35391232961')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('00246@lums.edu.pk', '35391232961', 'Hanif Akbar', '5b04c6bae11dd60d65adf5ac248c93318e3764febc6aa7e082e1115bf1d626bf', 'teacher', '2024-05-05 19:35:42', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user247@lums.edu.pk' OR phone = '33306748234')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user247@lums.edu.pk', '33306748234', 'Faisal Mahmood', 'b20f2307f37c1f46b95d19146f5785706119f8e258056bffb8fda77f4e1c87be', 'admin', '2025-06-24 20:41:25', 1, '2025-10-21 00:40:26');
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user248@lums.edu.pk' OR phone = '39506507813')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user248@lums.edu.pk', '39506507813', 'Zaheer Qureshi', '5b4aeff8392d03972fe5a571b04cd6bcf7f7e5be075552e2a4efa90b9f1ad93d', 'worker', '2024-05-18 22:45:39', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '00249@lums.edu.pk' OR phone = '37233690363')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('00249@lums.edu.pk', '37233690363', 'Talha Waseem', '76446049622338e61c35f05647d99d82eea417951b3d7a4c7b5f09fa3f9282eb', 'admin', '2025-02-21 12:19:50', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums250@lums.edu.pk' OR phone = '31159266090')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums250@lums.edu.pk', '31159266090', 'Irfan Haider', '726dd218523b90b195e16ee962a1a0001b297284a8b49fed235a0490b8f71d1e', 'teacher', '2023-12-03 14:04:57', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '00251@lums.edu.pk' OR phone = '36024498432')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('00251@lums.edu.pk', '36024498432', 'Aslam Mahmood', 'e806c83b9c005dcf5c1448856cfb758af071c024f8230e46f3db8f9d249bee8f', 'teacher', '2025-05-21 11:52:27', 1, '2025-08-19 09:57:54');
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student252@lums.edu.pk' OR phone = '38725011823')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student252@lums.edu.pk', '38725011823', 'Jamil Mahmood', '9e048385c3b8404ab3df0f98794b961db11b9f560f2c97a0e331f983b616b91e', 'student', '2025-07-07 19:53:43', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student253@lums.edu.pk' OR phone = '38304995772')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student253@lums.edu.pk', '38304995772', 'Tanvir Waseem', '92ff640f693ad2e8c1884b6f19014386e6db613e3a2ee524cb93249320987cbe', 'student', '2025-05-12 07:33:33', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user254@lums.edu.pk' OR phone = '38323403169')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user254@lums.edu.pk', '38323403169', 'Parveen Shah', 'b16c276f602722f88c2f95a6858f976db90dc3e717e9272a74d925c3009629ab', 'admin', '2024-07-03 23:47:14', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user255@lums.edu.pk' OR phone = '31701426360')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user255@lums.edu.pk', '31701426360', 'Omar Qadir', 'd99d016eba4dc377d4182e971a67e87cc54c4a27826e13bd4ca39060a0525fdb', 'student', '2023-12-03 22:01:25', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student256@lums.edu.pk' OR phone = '35688737506')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student256@lums.edu.pk', '35688737506', 'Zainab Mahmood', 'cbd1899da8525137a9255548990090624d1c545a083a48828d85b8cb9c550f43', 'teacher', '2025-01-12 09:49:06', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user257@lums.edu.pk' OR phone = '36842127320')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user257@lums.edu.pk', '36842127320', 'Salman Masood', '5f2006d5ed67d133e4331e7c4a9e179e4ba6511cd6465379f8d79f16493b9afb', 'student', '2024-10-19 09:44:46', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user258@lums.edu.pk' OR phone = '34187687742')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user258@lums.edu.pk', '34187687742', 'Samina Rafiq', 'ff7fb48ec0bd80876c9c246d33d18efd0648bff6467fcc945db7f49692dab1e1', 'admin', '2025-04-29 16:45:40', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '00259@lums.edu.pk' OR phone = '32163523753')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('00259@lums.edu.pk', '32163523753', 'Arslan Shah', 'f0bb405ce12bbb22ac30e9dbc17d4a2c30fc6854f90a116c62a6fb0cc18541f0', 'worker', '2025-09-05 11:16:02', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student260@lums.edu.pk' OR phone = '33928771770')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student260@lums.edu.pk', '33928771770', 'Tuba Umar', '0e83e2961b15c8b105b435c1a14142e0e146c42b73e5d60719a8142455d7fdf1', 'worker', '2025-06-04 20:07:27', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user261@lums.edu.pk' OR phone = '39246551548')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user261@lums.edu.pk', '39246551548', 'Bushra Ghani', '24143f0869d2ed05acc3662513dc968e6a8211a95710f8e958a6f1e6f8be9333', 'teacher', '2025-05-23 05:43:03', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student262@lums.edu.pk' OR phone = '33937084627')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student262@lums.edu.pk', '33937084627', 'Shaista Ahmed', '02d72e97cb2a12cc111547ac5fab78461e205e350dadb2b9d8486d9c885cbaa4', 'student', '2025-10-20 11:56:41', 1, '2025-11-09 11:52:27');
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums263@lums.edu.pk' OR phone = '30223328548')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums263@lums.edu.pk', '30223328548', 'Fouzia Saeed', '91927e5e1be4c42dad1681d5eee68031369c563beb66473872808eb87f12776c', 'teacher', '2024-04-10 18:43:08', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '00264@lums.edu.pk' OR phone = '32556779993')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('00264@lums.edu.pk', '32556779993', 'Sadaf Latif', '34ee329f454de948a149842be8edb56beb439099ebcab4d072fb85166d826ba8', 'student', '2024-02-27 06:49:04', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student265@lums.edu.pk' OR phone = '36243846538')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student265@lums.edu.pk', '36243846538', 'Humaira Yaqoob', '8250788247a1474360bf0817cce9e4d2ae4b178141230186aab3f57203356f6b', 'worker', '2024-09-03 10:38:30', 1, '2025-07-13 15:01:40');
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums266@lums.edu.pk' OR phone = '34632126454')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums266@lums.edu.pk', '34632126454', 'Naveed Sadiq', 'fd7490dadbd4fc3545c29d0425dda31d2bd7f41f13695bfb030504e9de0e9daf', 'teacher', '2024-07-15 07:26:36', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums267@lums.edu.pk' OR phone = '38737544416')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums267@lums.edu.pk', '38737544416', 'Maria Rasheed', '1cec00e2e9dda8cccd6b605c4e249ca92a562a61163b1fcdea69bb3d448edec5', 'admin', '2024-02-03 03:09:23', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '00268@lums.edu.pk' OR phone = '30193215939')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('00268@lums.edu.pk', '30193215939', 'Zainab Karim', 'e7e91ac7bda8d5747c5814e62fe2914c61a1bde7081620ef7c0f23d3e0a8db46', 'admin', '2025-04-06 19:01:12', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student269@lums.edu.pk' OR phone = '39806214576')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student269@lums.edu.pk', '39806214576', 'Parveen Yousaf', '3a3851eb0432b0b29bad7a46fce1a034b64036cee22923cb91a39c097cc7b0d2', 'student', '2025-02-25 06:42:28', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user270@lums.edu.pk' OR phone = '34054558841')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user270@lums.edu.pk', '34054558841', 'Asad Qadir', 'c7210f6fd9c03ede3b09fdb4940441364c694247c221a5518a1218b8662ec091', 'worker', '2025-09-06 13:11:01', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user271@lums.edu.pk' OR phone = '31455308222')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user271@lums.edu.pk', '31455308222', 'Naveed Zia', 'cdb46f420d93a5780facd6db889919714e26e873e6a2ed56ed2433e5e4f48a3c', 'worker', '2024-05-23 18:29:46', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums272@lums.edu.pk' OR phone = '39723307621')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums272@lums.edu.pk', '39723307621', 'Abdullah Masood', '76d970b23282220edf53388fcce316a8532cc22b7f22d0852cc55666d8b7c8cd', 'student', '2024-04-11 04:42:35', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums273@lums.edu.pk' OR phone = '39507484766')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums273@lums.edu.pk', '39507484766', 'Sara Saeed', '8386af341f6d011104809d1e7d05d88d988350078bc9a9b83a05c97ac57a182f', 'admin', '2025-03-02 17:29:34', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student274@lums.edu.pk' OR phone = '36686022614')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student274@lums.edu.pk', '36686022614', 'Parveen Yousaf', '2f70239f13814b3e18de8c1371d5abe2b6a02295cb8753f218f3db62c5a6f94d', 'worker', '2025-05-20 06:48:16', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '00275@lums.edu.pk' OR phone = '39316847414')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('00275@lums.edu.pk', '39316847414', 'Khadija Waseem', '21df5fa7385bcdab52383d2ec826e9a6ab3b0d803130b6e68f6034beca6ec4c7', NULL, '2024-10-01 14:20:57', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student276@lums.edu.pk' OR phone = '31313570283')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student276@lums.edu.pk', '31313570283', 'Shahid Ilyas', 'b824a3d804dc55ae2857a4e8932b2f140bdca39f387ea4eecbba23713ec02a71', NULL, '2025-06-27 10:26:59', 1, '2025-10-07 23:57:09');
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums277@lums.edu.pk' OR phone = '33709745073')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums277@lums.edu.pk', '33709745073', 'Noor Yousaf', '3b2f5b3b5febf284c16b2bd7da05f26dd403ff6d3f0190bc18444a42c3ca3829', 'admin', '2024-09-26 04:31:46', 1, '2025-02-03 01:55:43');
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums278@lums.edu.pk' OR phone = '34724406256')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums278@lums.edu.pk', '34724406256', 'Raza Rafiq', '8b496afc2a040ddb7aa88177e0516c9f31997160e8c489b4642c9d0d55a6e2d8', NULL, '2025-08-03 13:02:27', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums279@lums.edu.pk' OR phone = '31425860059')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums279@lums.edu.pk', '31425860059', 'Tahira Farooq', '564172fb1a3b720c0d599d95e4e7e27c156c1ce32d47b747f8e13301f91720f0', 'teacher', '2025-05-18 07:12:54', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student280@lums.edu.pk' OR phone = '37076539503')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student280@lums.edu.pk', '37076539503', 'Ali Hussain', 'e2c10d9bc0e678dc14ee061410748b0bcd2571743f7aac8d9ebfb3a2cee9ec8f', 'student', '2025-06-09 06:23:45', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student281@lums.edu.pk' OR phone = '35063109513')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student281@lums.edu.pk', '35063109513', 'Shama Farooq', 'b7ffe2f64113d6e3160e76dd79a88802960dd58af0c02f017ed6ec792e33786b', 'admin', '2025-05-17 05:10:26', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user282@lums.edu.pk' OR phone = '39103973910')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user282@lums.edu.pk', '39103973910', 'Ibrahim Ghani', '5ab7caa69a434c5de62282ae244a1b9163c48281febe8b636bff85a11b3f87f4', 'teacher', '2024-11-22 07:49:25', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums283@lums.edu.pk' OR phone = '39218579262')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums283@lums.edu.pk', '39218579262', 'Shafiq Rasheed', '81f5e7c29c33431b0afd71d2d5f5e70b2edd99a30d1eacd389848486e86c2e77', 'teacher', '2024-03-04 22:48:53', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '00284@lums.edu.pk' OR phone = '39882927469')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('00284@lums.edu.pk', '39882927469', 'Noor Iqbal', '955f60f12cffb5a942eda2b69d7cc312d216febfad3e80e00192c49a801f1b9b', 'student', '2024-06-23 09:04:38', 1, '2024-10-14 09:51:14');
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '00285@lums.edu.pk' OR phone = '37992802181')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('00285@lums.edu.pk', '37992802181', 'Samina Hameed', '926e984e460cb11403634d29e6a1ed17eef1ad055cc7c4a91e1b78059d990b69', 'worker', '2024-10-28 01:23:33', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student286@lums.edu.pk' OR phone = '38843124728')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student286@lums.edu.pk', '38843124728', 'Shaista Ali', '574d5c20886103a820c51447ae39a8f9393b0d0f8eb9af89b6495fd7f62bd368', 'admin', '2025-03-02 17:02:05', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '00287@lums.edu.pk' OR phone = '38961118944')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('00287@lums.edu.pk', '38961118944', 'Noor Ayub', '0b6c8e215cabd3c0f9ca3a80cf383aebd098f120c834544eeacb528db199e87c', 'teacher', '2024-09-04 10:51:38', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student288@lums.edu.pk' OR phone = '32700933472')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student288@lums.edu.pk', '32700933472', 'Khadija Chaudhry', 'f15799ce0286d93d92f09de0731b10a7b7d218b8f6e8353beecf95c86261fcea', 'admin', '2025-06-02 13:35:19', 1, '2025-10-01 12:12:40');
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '00289@lums.edu.pk' OR phone = '35212051478')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('00289@lums.edu.pk', '35212051478', 'Naila Khan', '279a97f7db5ddae25a243bb20c7ae68ba11f492e4c8f9cb2ec4d6a012024440d', 'student', '2023-11-26 12:53:24', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user290@lums.edu.pk' OR phone = '34793254917')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user290@lums.edu.pk', '34793254917', 'Kamran Farooq', 'e8b1715d9c90356415faac5f3d5309d993d19acbe00f4f76cbc345a007a3d30a', 'worker', '2024-05-26 12:52:39', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '00291@lums.edu.pk' OR phone = '35680306443')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('00291@lums.edu.pk', '35680306443', 'Hira Tahir', 'eac59b921d864d3ceb20cc14b68ceafb71b1820073bed6cce44590f2ae60cd91', NULL, '2024-07-11 01:02:16', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student292@lums.edu.pk' OR phone = '34597842260')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student292@lums.edu.pk', '34597842260', 'Sidra Naqvi', 'd3b2793dc3cfcb931e825b2babf0353310626e41dd529bcbe5d93bdb94d19966', 'admin', '2025-11-15 00:10:11', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '00293@lums.edu.pk' OR phone = '36786717751')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('00293@lums.edu.pk', '36786717751', 'Raza Jamil', '9aa7e78d836399905ed187c9258088b0e773a8d18d6a867639d5874061f8658e', 'worker', '2024-04-13 01:09:59', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '00294@lums.edu.pk' OR phone = '34731497011')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('00294@lums.edu.pk', '34731497011', 'Rafiq Shah', 'da08aa58ffff7bad63b4b92831a199615b6ef1e7b6a3f0a646c14d9e81226fc4', 'student', '2025-10-18 22:46:27', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student295@lums.edu.pk' OR phone = '34593839139')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student295@lums.edu.pk', '34593839139', 'Naveed Raza', 'bf6329e3b014e63d376747969a1ccd1b8d486fbdda1cdc3560f366d4b1c1dd22', 'worker', '2024-10-13 01:22:11', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student296@lums.edu.pk' OR phone = '31473700137')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student296@lums.edu.pk', '31473700137', 'Kashif Farooq', '377196a13b7d95a4db87390e2813740a5e691d61a4ebb57552724d5c762dac9a', 'student', '2024-08-02 17:02:55', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user297@lums.edu.pk' OR phone = '35380660431')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user297@lums.edu.pk', '35380660431', 'Hanif Mirza', '8b7e87869d0d4b42ea2f33817c84cb38d3739fc436ef9d069e1d17ab34b8d6db', NULL, '2025-06-30 09:35:29', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums298@lums.edu.pk' OR phone = '39678409380')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums298@lums.edu.pk', '39678409380', 'Nadia Zia', 'bd879d249ffc4006cabf18d22130961b779259e60f54aa2e6624842c05fb4e4f', 'worker', '2024-02-13 02:01:01', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student299@lums.edu.pk' OR phone = '34260793035')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student299@lums.edu.pk', '34260793035', 'Sana Javed', '7d0bda053612b3bbb570feedc41e95a951271f2373499bc7a7f71b0c5817939b', 'student', '2025-10-08 15:46:53', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user300@lums.edu.pk' OR phone = '36041743027')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user300@lums.edu.pk', '36041743027', 'Iqra Chaudhry', 'be920dc7a7ed04be07aa8f4d5dff88e7b59a6015f54d7b269912e031375d2c30', 'worker', '2024-01-12 13:47:12', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user301@lums.edu.pk' OR phone = '34744427057')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user301@lums.edu.pk', '34744427057', 'Arslan Waheed', 'a97d2d342cb484808da12a92cecad2534420c059c2ad5e286c21d533e74767a4', 'student', '2024-12-05 21:35:47', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user302@lums.edu.pk' OR phone = '30502047831')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user302@lums.edu.pk', '30502047831', 'Jamil Qureshi', 'c706de3536b14ec2655ab91183af3ca52076d91a76e0ac69adb7e7c2ac29479c', 'student', '2024-05-09 15:22:31', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user303@lums.edu.pk' OR phone = '38148140307')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user303@lums.edu.pk', '38148140307', 'Asad Saeed', '47eccaf210b519f43c06494401bbcc02066d6c54cc30a19a763a532c04c5c34c', 'teacher', '2025-10-25 14:53:20', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student304@lums.edu.pk' OR phone = '33347524280')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student304@lums.edu.pk', '33347524280', 'Akram Tahir', '710b89212f8ebfa75d3bbc0013a9726437cad4d615fcedc2f9a2b9fde4ea9618', 'teacher', '2025-01-25 07:29:18', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums305@lums.edu.pk' OR phone = '38808493031')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums305@lums.edu.pk', '38808493031', 'Shahid Chaudhry', 'a77125f6987a1f3dbe60f4507919c8fed816c2460fb4a7c632cfeb034cbc0445', 'worker', '2025-01-04 05:52:53', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student306@lums.edu.pk' OR phone = '33507487634')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student306@lums.edu.pk', '33507487634', 'Kashif Haider', '94bf4a2992d16ce1b312f68bf76fbd3c086a337b93483f1c64d41f5aad24a18a', 'student', '2025-09-08 15:47:43', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums307@lums.edu.pk' OR phone = '31567516310')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums307@lums.edu.pk', '31567516310', 'Saleem Malik', '53d6c1e29fd6c11778afcfeb16f13836757fc5eeee9054449394be89def27451', 'student', '2025-10-02 12:50:39', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user308@lums.edu.pk' OR phone = '31009157540')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user308@lums.edu.pk', '31009157540', 'Saad Yaqoob', 'e3ca43d7686ffec5e0e3ad8f0880662302168468b850b3ca6c806eb42f157bc9', 'worker', '2025-01-17 18:09:31', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums309@lums.edu.pk' OR phone = '30925933496')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums309@lums.edu.pk', '30925933496', 'Majid Qureshi', '486570ec83fbd60b970d6455ac9b3d4777afd7cd6a0754a1c989419e4719f02e', NULL, '2025-09-16 12:14:38', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums310@lums.edu.pk' OR phone = '32511728442')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums310@lums.edu.pk', '32511728442', 'Anwar Sheikh', 'bbcb0343da9bd12e2f25f276126953437808e9b6610d30e9a2546686e0d365a2', 'admin', '2024-08-09 06:04:02', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student311@lums.edu.pk' OR phone = '38525033699')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student311@lums.edu.pk', '38525033699', 'Naila Ghani', 'ef55646022592c1e67a7d3e69b7f324a34600563050aaab70f357d7d364b1a64', 'worker', '2025-01-15 12:27:05', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums312@lums.edu.pk' OR phone = '30002370797')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums312@lums.edu.pk', '30002370797', 'Ibrahim Umar', 'd8d3b7a0aa973c9dd4da3058ccafbc9d4cee1d6d8ce51adfddf7b336ad85128b', 'worker', '2024-02-08 23:09:07', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums313@lums.edu.pk' OR phone = '31915216510')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums313@lums.edu.pk', '31915216510', 'Talha Ayub', '9e07f1ae4172b657821db7f35e3f866617c66457605f4acd368790fe59ac7ace', NULL, '2024-12-07 22:18:16', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums314@lums.edu.pk' OR phone = '39266891895')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums314@lums.edu.pk', '39266891895', 'Naveed Bashir', 'ca6b157fdb0985287d92c4493e6837ce99f1927e374220b511ce020f52fd7cb1', 'admin', '2024-01-10 17:41:19', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums315@lums.edu.pk' OR phone = '33664365255')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums315@lums.edu.pk', '33664365255', 'Ibrahim Rasheed', '7bf6f852b82fecbad3ea9d6aa32572df3b07ae7a722a3b677ea876655ea21401', 'worker', '2024-02-10 09:15:51', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student316@lums.edu.pk' OR phone = '38923088293')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student316@lums.edu.pk', '38923088293', 'Salman Ayub', '3f96201c59aba8d95f776105a88f4c7f46af190d328a8bc2d404031d0c7ddafd', 'teacher', '2024-03-19 09:32:24', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student317@lums.edu.pk' OR phone = '33676769679')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student317@lums.edu.pk', '33676769679', 'Majid Anwar', '95070c7e35b9290f7bdf5dd5510f5da34aac789011ce7f9afe5329f8e43cb317', 'admin', '2024-08-21 22:56:43', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums318@lums.edu.pk' OR phone = '38404145794')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums318@lums.edu.pk', '38404145794', 'Humaira Mirza', '9dbe4059bb7623c293b39d66a0cd27f9d806872b5b0df4f33b5266e9c0b4c135', 'admin', '2024-12-07 00:47:52', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user319@lums.edu.pk' OR phone = '39730157885')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user319@lums.edu.pk', '39730157885', 'Sidra Khan', '6f354365303d8fe34fbd64442362abc0a22bb14b29ba60962d2cabc5c765fcd6', 'worker', '2025-06-28 22:03:11', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user320@lums.edu.pk' OR phone = '30832438538')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user320@lums.edu.pk', '30832438538', 'Khalid Hussain', '0e50d42543e59dbd849b7c37e286f0eafb5c1dc5965a0be1062e16ed91bf7070', 'worker', '2024-12-14 18:40:41', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums321@lums.edu.pk' OR phone = '30428240620')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums321@lums.edu.pk', '30428240620', 'Khadija Naqvi', 'a20aff106fe011d5dd696e3b7105200ff74331eeb8e865bb80ebd82b12665a07', 'student', '2025-01-01 09:24:55', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '00322@lums.edu.pk' OR phone = '33339812190')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('00322@lums.edu.pk', '33339812190', 'Shama Sadiq', 'ccb30e829fb873824f12610650b9459fbb3b25e55faf260beddd658255d7d22e', 'student', '2024-07-27 17:37:32', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user323@lums.edu.pk' OR phone = '31457322393')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user323@lums.edu.pk', '31457322393', 'Salman Shah', '2b87abd215c673396b53ca362a3268bdd524da945c942bf1d25cfd370c113ad7', 'teacher', '2024-05-10 17:21:25', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user324@lums.edu.pk' OR phone = '39248634364')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user324@lums.edu.pk', '39248634364', 'Rizwan Farooq', 'a83ce4a76dc4f11c497984ee1911ae0d218e83c432a7ebdf09bbc5a0c95ea331', 'worker', '2024-04-20 00:33:12', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student325@lums.edu.pk' OR phone = '30567325068')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student325@lums.edu.pk', '30567325068', 'Naila Iqbal', '98bb8874d267a22df94b4494d4c67c5456d84df9859025c6f3dfea9795929545', 'worker', '2025-07-19 15:19:09', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '00326@lums.edu.pk' OR phone = '30468048458')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('00326@lums.edu.pk', '30468048458', 'Tanvir Hameed', '2fc2980f8a9acaf990ba2c1cd4a562a0df3db8e4fbe482945d510980f81c30b9', 'student', '2025-04-24 23:26:27', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user327@lums.edu.pk' OR phone = '34798112708')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user327@lums.edu.pk', '34798112708', 'Aslam Akhtar', '17fcc4ada61980ca6551586072b9ebbbeaf48a5988491f0e122bc82a76e1c449', 'worker', '2025-06-29 15:52:25', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student328@lums.edu.pk' OR phone = '34367359585')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student328@lums.edu.pk', '34367359585', 'Hira Ahmed', 'd48eb36544e414ea803931905e129726d82b81b8a94891f81857e3ae2349eb58', 'admin', '2025-06-21 03:38:24', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user329@lums.edu.pk' OR phone = '33260510470')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user329@lums.edu.pk', '33260510470', 'Aisha Akhtar', '94859f5aa3afd807f6cb88cc5b176be6ace7d9b6a13b8b32a76aa5b7fad5531a', 'student', '2024-09-07 15:19:32', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '00330@lums.edu.pk' OR phone = '36652079324')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('00330@lums.edu.pk', '36652079324', 'Nadia Ayub', '6c63e98377408187e8159816ee5e663f7b41e92389715b9497b65c651f91eb7c', 'teacher', '2023-12-27 09:47:15', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user331@lums.edu.pk' OR phone = '30681000496')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user331@lums.edu.pk', '30681000496', 'Arshad Raza', 'e44ac9c3121547bd4779e4247ebc4e7110a7fafa7e2bb08e06b22c2bd0bd5088', 'teacher', '2025-02-21 22:06:00', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student332@lums.edu.pk' OR phone = '38116029828')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student332@lums.edu.pk', '38116029828', 'Aisha Abbas', 'c72b6bb122f78c06fbae395583e45ec46a007e787bbbc8b82e9118c69caee49a', 'teacher', '2024-12-28 02:45:50', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums333@lums.edu.pk' OR phone = '30607604475')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums333@lums.edu.pk', '30607604475', 'Shahid Masood', 'b251019da9d473a1fca39713db51d7f612c93faa88bfc2ebe4f07dcfd47fd266', 'admin', '2024-07-15 02:18:27', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums334@lums.edu.pk' OR phone = '32392340369')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums334@lums.edu.pk', '32392340369', 'Usman Butt', '100567712d35d0d9ceae055a7836d255f3cfd985948b2782ef8dda146d3452d6', 'worker', '2023-12-12 01:43:46', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user335@lums.edu.pk' OR phone = '34847710835')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user335@lums.edu.pk', '34847710835', 'Muhammad Zaidi', '33e8d96b74d3d35898642092d9501719fcc07fe66639b0229ae985187bf72bce', 'student', '2025-01-11 20:48:54', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user336@lums.edu.pk' OR phone = '37377187434')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user336@lums.edu.pk', '37377187434', 'Wasim Zia', '93e0da8f7f7ca607c07131341a9a4c9248194fe8b14c1cae5da0e92de275f339', 'worker', '2024-02-25 20:25:15', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '00337@lums.edu.pk' OR phone = '38995175036')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('00337@lums.edu.pk', '38995175036', 'Yasmin Saeed', '91a51aa7f8b3dcc3ecc49826291193c21dbe78f7109e9dae30446490a7d17fbc', 'worker', '2025-06-25 14:26:41', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums338@lums.edu.pk' OR phone = '37626389468')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums338@lums.edu.pk', '37626389468', 'Abdullah Mahmood', '7ea24b3da50a71f79143520190418dad9c79577c14e8c9b4b53fa050e0be0924', NULL, '2024-02-07 13:33:43', 1, '2025-10-18 10:50:16');
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '00339@lums.edu.pk' OR phone = '36552762489')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('00339@lums.edu.pk', '36552762489', 'Hira Aslam', 'ca571fd519347678d33a6b4cd6db28bf3905e7f6cc36ff111d5c2a1f364c1b2c', 'student', '2024-01-11 03:42:09', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums340@lums.edu.pk' OR phone = '38595385368')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums340@lums.edu.pk', '38595385368', 'Shahzad Raza', '099853d030f003820d3af7b33ef261a1d4c4ad61e52c6d2e111b7550b26d8ac3', 'worker', '2025-04-24 22:35:12', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums341@lums.edu.pk' OR phone = '31817033385')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums341@lums.edu.pk', '31817033385', 'Khalid Tahir', '3d62599696e3f220c22bf3cfb167d11efac2060de561cf197a209b7bf2ab91a8', 'student', '2024-03-17 19:35:45', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user342@lums.edu.pk' OR phone = '36941753051')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user342@lums.edu.pk', '36941753051', 'Aisha Yaqoob', '45078644fe260c4bd70fc041d40c5aae1e4fba5942d50312cd32ff29ccca4d3b', 'student', '2024-05-09 22:28:17', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user343@lums.edu.pk' OR phone = '34561897802')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user343@lums.edu.pk', '34561897802', 'Ahmed Ayub', 'a92c140f3ee2eda5d83ed575e2d3792f1d5d11476d518a5824fb0a74e2e0ce98', 'worker', '2024-08-04 21:04:20', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums344@lums.edu.pk' OR phone = '34569710279')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums344@lums.edu.pk', '34569710279', 'Raza Mahmood', '1973b271faf221830075b0e8d760621dd6ba2c9548bdedbdf7db424acc92c87f', 'student', '2025-11-23 14:54:21', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student345@lums.edu.pk' OR phone = '38881004061')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student345@lums.edu.pk', '38881004061', 'Saad Latif', '31457e06e2adb2178358e9fc6705e0b6f37e9b6ec9456e8890d28f292be9adc4', 'student', '2025-06-12 12:01:40', 1, '2025-07-10 03:18:25');
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums346@lums.edu.pk' OR phone = '34508601126')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums346@lums.edu.pk', '34508601126', 'Saima Butt', '2b21938e9a9c197eb86583e27aa64ffd308b1a4d5ba91c22eb08f28dd2e89442', 'student', '2025-01-15 05:15:24', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student347@lums.edu.pk' OR phone = '30306614298')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student347@lums.edu.pk', '30306614298', 'Bushra Malik', '93500366f802487147a40177543f552f50d2909f79e4e927ef91d573e2a3f623', 'worker', '2023-12-20 01:53:24', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums348@lums.edu.pk' OR phone = '37945519506')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums348@lums.edu.pk', '37945519506', 'Farooq Aslam', '4a760153b507ab916cde1e1b9782d3bc69738dacbbb9a92ca01e9d2b00f1e759', NULL, '2024-05-16 02:04:24', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student349@lums.edu.pk' OR phone = '34423297383')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student349@lums.edu.pk', '34423297383', 'Rashid Raza', '218c002d2c9fd00fc6ad673e4a3426f6dde8553743198e320db7d43b608cf218', 'admin', '2025-01-31 01:05:43', 1, '2025-07-15 22:47:40');
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student350@lums.edu.pk' OR phone = '30122425450')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student350@lums.edu.pk', '30122425450', 'Sumera Bashir', 'b6d60c0501d4b27f505aae6b3edec725d1deb03352b64b894741d98da786662b', 'admin', '2024-12-08 06:36:28', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums351@lums.edu.pk' OR phone = '39670479693')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums351@lums.edu.pk', '39670479693', 'Mahnoor Waheed', 'e8ecbd5f57894752a099e3c66a35f3eb7b4ef3039323affad3d951b7ce1ac786', 'admin', '2024-09-14 04:11:36', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user352@lums.edu.pk' OR phone = '32623168504')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user352@lums.edu.pk', '32623168504', 'Zahid Hussain', 'e036452de86077b0e77ff60fe42b8434147c8315d34bd1ed242013b2950238c7', 'worker', '2025-10-30 10:39:23', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums353@lums.edu.pk' OR phone = '30150481959')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums353@lums.edu.pk', '30150481959', 'Farooq Sheikh', '42245ec16e4d08d17312b0f7c814b2a5be84f9a23214842bf5ebbe808fbc26d1', 'admin', '2025-08-24 00:19:10', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student354@lums.edu.pk' OR phone = '31162702016')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student354@lums.edu.pk', '31162702016', 'Rabia Zia', '29d52472d0876c69d461af508c0c916cfd8c800e76deae6d10dbc084e034a80f', 'student', '2024-07-09 21:16:55', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums355@lums.edu.pk' OR phone = '34644915603')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums355@lums.edu.pk', '34644915603', 'Nadia Abbas', 'a2f6a92a709a0b9bfa8a9391b600348392999bca1f885568df7a4334503cba1f', 'admin', '2025-05-12 07:42:51', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '00356@lums.edu.pk' OR phone = '33264466868')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('00356@lums.edu.pk', '33264466868', 'Asad Tariq', 'b3404df0238de008c59c93768f3260f10e3f0df9468ba04a318d4ca57e0882f0', 'worker', '2024-11-13 15:12:08', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user357@lums.edu.pk' OR phone = '36114941747')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user357@lums.edu.pk', '36114941747', 'Bushra Akhtar', 'b444c65816b6a46570bce73463324baf9ac08befc007a97648a1919d22a4a3bc', 'student', '2025-09-08 00:40:06', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user358@lums.edu.pk' OR phone = '34765274167')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user358@lums.edu.pk', '34765274167', 'Yasmin Nadeem', 'b76c393242f5e126a4313df1abf28e932d411592480a400df1bedbbfbf0a79fa', 'worker', '2024-11-12 06:23:06', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums359@lums.edu.pk' OR phone = '33964582539')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums359@lums.edu.pk', '33964582539', 'Azhar Zaidi', '7445656a4e3be8138a079e179acd97057530441366a43fddef8cba52623c2702', 'teacher', '2024-02-06 22:41:03', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student360@lums.edu.pk' OR phone = '36363756497')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student360@lums.edu.pk', '36363756497', 'Maryam Rasheed', '113595dd1d777275bcd55c366620e807baa6523da61dea3e7d8b4e132af343e4', 'worker', '2025-10-26 13:43:33', 1, '2025-11-10 04:50:31');
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user361@lums.edu.pk' OR phone = '32741855827')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user361@lums.edu.pk', '32741855827', 'Uzma Anwar', '05b4a629a16045837c62cc9cef06538f7fbf1c6f013b5c9368bb5fc6921f17b2', 'admin', '2024-02-05 10:40:19', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user362@lums.edu.pk' OR phone = '38538400679')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user362@lums.edu.pk', '38538400679', 'Amjad Sadiq', 'b66405a6e995a21fe69f8bd67630e43a56f8dc70b8c3813769b75f3af11521f2', 'student', '2025-09-07 02:34:25', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student363@lums.edu.pk' OR phone = '30012985310')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student363@lums.edu.pk', '30012985310', 'Alina Haider', 'e7e9e3a2efeec78362649bf2368fee3d6ce233d7d4a7f57f465a5e30d8e7e27d', 'worker', '2025-07-07 05:10:59', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '00364@lums.edu.pk' OR phone = '34033013153')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('00364@lums.edu.pk', '34033013153', 'Iqra Iqbal', '2f639c8af2ad8d6bc3451c210153d9a82cb8a226d6c9b6836b26cd9d9205403a', 'teacher', '2025-03-23 01:11:32', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student365@lums.edu.pk' OR phone = '34915250469')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student365@lums.edu.pk', '34915250469', 'Naseem Chaudhry', '0f6af9c589ec047d80603a60c64d38c300cd36048219cc261691a2b6fe603453', 'student', '2024-05-10 13:04:55', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user366@lums.edu.pk' OR phone = '35571544236')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user366@lums.edu.pk', '35571544236', 'Fahad Javed', '1bcb5338a15573f210f25512239e6d9cd5c276b131874da6e00b3e84c91b8ca5', 'teacher', '2025-05-04 11:19:23', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums367@lums.edu.pk' OR phone = '33171509057')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums367@lums.edu.pk', '33171509057', 'Majid Hassan', 'ecb5b0acff82af3ec07eded91679883dba2d7a57cef9725fc0dc530138c2e4c9', 'worker', '2025-07-31 01:13:03', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student368@lums.edu.pk' OR phone = '34314823263')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student368@lums.edu.pk', '34314823263', 'Parveen Mirza', '506c0eac83293d59b4d5daee60aec11e587860770151abcb209f48cce167f1c5', 'admin', '2023-12-17 14:44:34', 1, '2025-05-27 20:26:24');
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user369@lums.edu.pk' OR phone = '38665291644')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user369@lums.edu.pk', '38665291644', 'Zainab Qadir', 'e34fd6a7063ba579920c589c278b352396bdc74e0b8d6a4da0bb58eb39c25e4a', 'student', '2024-04-21 21:59:14', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student370@lums.edu.pk' OR phone = '39532703063')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student370@lums.edu.pk', '39532703063', 'Rubina Akhtar', 'c2c424e2c258a2e53493b7526e8492bb02bfa9689f2a43ae27b1fbb96995050a', NULL, '2024-11-05 08:29:11', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '00371@lums.edu.pk' OR phone = '31747716822')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('00371@lums.edu.pk', '31747716822', 'Mahnoor Ahmed', '565d0f68bfffa723b6f34a6fdbefba3fcdf660e1218c0f29c73c3b4a994a1b2a', 'teacher', '2024-04-19 04:41:44', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums372@lums.edu.pk' OR phone = '38835254902')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums372@lums.edu.pk', '38835254902', 'Arshad Nadeem', 'd67858210c83bf9012b5ffc3eda61647dad1e49adb1af507aa9fd74ce91738f5', 'teacher', '2024-10-06 12:47:23', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student373@lums.edu.pk' OR phone = '33452702646')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student373@lums.edu.pk', '33452702646', 'Talha Umar', '2ca59d2ad54bc541955e86dc5eb4d1e2e479a59b6328a37bed4bad0a30bea7d9', 'teacher', '2025-02-09 11:22:09', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums374@lums.edu.pk' OR phone = '37225610391')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums374@lums.edu.pk', '37225610391', 'Shama Jamil', '04085aa4e78d600dcdab0ebddcd86a3f4c11b49f141a0bd945b9cda09f6e5f22', 'student', '2025-06-10 01:58:24', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student375@lums.edu.pk' OR phone = '33889412842')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student375@lums.edu.pk', '33889412842', 'Yusuf Haider', '08dfd7ab528c71b892487c2de261845a141687bc6d7d72ffe1fac6a22bb3ee59', 'teacher', '2024-05-22 04:55:33', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '00376@lums.edu.pk' OR phone = '35678779085')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('00376@lums.edu.pk', '35678779085', 'Hanif Nadeem', 'df798e0f4e851362525ff4194ec5d725dc98b5fda392be907f2984ba05de47ea', NULL, '2025-02-27 01:09:47', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums377@lums.edu.pk' OR phone = '37133628646')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums377@lums.edu.pk', '37133628646', 'Sadaf Ilyas', '14a010efd36fa7ca3d3c4bbd0f230cdcac4839cbc94daf25dadb69e9947a1579', 'teacher', '2024-05-31 20:02:15', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums378@lums.edu.pk' OR phone = '33801120428')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums378@lums.edu.pk', '33801120428', 'Aisha Sadiq', '3ded4ecba045cce05b65caf9b8ff463f8a5765b9d7090f421d0e16000bbde985', 'student', '2024-06-08 14:59:24', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user379@lums.edu.pk' OR phone = '32004357417')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user379@lums.edu.pk', '32004357417', 'Sidra Rafiq', '23c9c26ab0b4edfc7b6fd3456a57a613092977d5cc48ba992d4571b07e43244d', 'teacher', '2024-11-21 20:52:25', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums380@lums.edu.pk' OR phone = '33592325063')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums380@lums.edu.pk', '33592325063', 'Nimra Raza', '4456a1fcb1bd3961479c6c139cd7cc8fe415827c186a4810d03e3e9447d5c9bd', 'worker', '2025-11-03 03:11:32', 1, '2025-11-21 18:11:14');
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student381@lums.edu.pk' OR phone = '34840843201')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student381@lums.edu.pk', '34840843201', 'Shahzad Mirza', '55c736de37e1c1141a9b6f75f0bdc6a60d320d8978d2b551308ffdec690bef82', 'teacher', '2025-04-02 14:27:48', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums382@lums.edu.pk' OR phone = '35118002983')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums382@lums.edu.pk', '35118002983', 'Samina Jamil', 'c54aff54b404b7106a2e76dfb146997c32094b0beed7de4cb3a99fe2cf08b3ee', 'student', '2024-11-21 16:55:54', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user383@lums.edu.pk' OR phone = '35352754011')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user383@lums.edu.pk', '35352754011', 'Aamir Iqbal', '83e2700087256f7c3b463b80335b0b5fcdf95b8875ee86ed9d1eb32efc65a72b', 'teacher', '2024-12-02 00:36:35', 1, '2025-02-20 06:11:56');
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user384@lums.edu.pk' OR phone = '37493387283')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user384@lums.edu.pk', '37493387283', 'Riffat Umar', 'fa5523959ec698437ff4bc031b4b7405e357dd5a50d8a35be7f487b7d3101053', 'teacher', '2025-05-15 18:44:58', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '00385@lums.edu.pk' OR phone = '32941022693')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('00385@lums.edu.pk', '32941022693', 'Talha Tariq', '1ca201d0057e58e3ec9f018e4a2b531d50851917cea4564b7bcfa2edafa76ec7', 'teacher', '2024-03-09 16:13:31', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user386@lums.edu.pk' OR phone = '34944681133')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user386@lums.edu.pk', '34944681133', 'Humaira Karim', 'a2872c9e8228c1539b214fe7a8d91adc3705046d0b8e5f0cb4268ba0c3b7368c', 'admin', '2025-03-03 15:33:54', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '00387@lums.edu.pk' OR phone = '32405984539')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('00387@lums.edu.pk', '32405984539', 'Yusuf Qureshi', '75092dfe3be8d81f59e95ae0565dd2ca78bdb7027acd298d1e3c62199e1da320', 'teacher', '2024-03-23 08:32:32', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '00388@lums.edu.pk' OR phone = '36565649758')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('00388@lums.edu.pk', '36565649758', 'Hassan Ayub', 'ba0160242f2100fb18dadfedd3c0b43a8f279c5c47a4ed09da1a892af8f200dc', 'teacher', '2024-01-17 02:49:23', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums389@lums.edu.pk' OR phone = '36799999567')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums389@lums.edu.pk', '36799999567', 'Hamza Aslam', '60cbbdd5ef5c88db04da55cfb05743475a24084cc75dff84abc026b58e7919e2', NULL, '2024-04-29 11:57:01', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums390@lums.edu.pk' OR phone = '34727480662')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums390@lums.edu.pk', '34727480662', 'Talha Zia', 'd9f8af1fb1b612158de3510408defa029cf893354174564faa954aad1d96b024', NULL, '2024-12-19 02:55:41', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user391@lums.edu.pk' OR phone = '31101939589')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user391@lums.edu.pk', '31101939589', 'Nadia Jamil', 'eb89c690f975fe498c07c1dbbc71bc56095d419f162a242a88ec7515a1c99694', 'admin', '2024-09-08 09:21:50', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user392@lums.edu.pk' OR phone = '31740736050')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user392@lums.edu.pk', '31740736050', 'Omar Nadeem', 'd29cbd0f5de559e06f811ba9c64123b69e8e6b84c4bb09e5095f05b984a85770', 'student', '2024-04-11 15:48:16', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '00393@lums.edu.pk' OR phone = '36068936405')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('00393@lums.edu.pk', '36068936405', 'Talha Mirza', 'a302e4329086dad0cda1bb9965ab0408face71ead871a55fc9e05f2619c3e489', 'worker', '2024-11-02 01:58:30', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums394@lums.edu.pk' OR phone = '36167050799')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums394@lums.edu.pk', '36167050799', 'Asim Latif', 'ecda9ac1c612d393ec8e7a693de432954be460a92e8b106e2a90e2f105c04c9c', 'admin', '2025-06-14 23:13:07', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '00395@lums.edu.pk' OR phone = '32626990901')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('00395@lums.edu.pk', '32626990901', 'Imran Ali', '0448b9982735d3bc82b8e1b92cefa945cc929435ccbddb233e3cd39a89372568', 'admin', '2025-01-12 06:38:00', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '00396@lums.edu.pk' OR phone = '31561144518')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('00396@lums.edu.pk', '31561144518', 'Shaista Khan', '8d9a208fc205b757716aec7a9c47e53ebacc3c5a630e05c5339a1735737ef7dc', 'worker', '2024-10-26 20:01:58', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums397@lums.edu.pk' OR phone = '31960356729')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums397@lums.edu.pk', '31960356729', 'Khadija Iqbal', 'c6899a89ae9c8c978d84057adc340f84d450a3a1f280977d9e9dec557a424655', 'admin', '2024-06-29 09:57:14', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student398@lums.edu.pk' OR phone = '39163293485')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student398@lums.edu.pk', '39163293485', 'Hira Rafiq', 'b25ec98163dc353cf3a6a3db6b69c2c72686fb288c68d2886006867f37d3f770', 'student', '2024-01-11 19:41:33', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student399@lums.edu.pk' OR phone = '37100881880')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student399@lums.edu.pk', '37100881880', 'Waqas Waseem', '7d01944bfefc6bf9862c93fd30ec0626ba46d91b31ba676fea4a8a47d9c706d2', 'student', '2024-12-09 15:19:08', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '00400@lums.edu.pk' OR phone = '30488472807')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('00400@lums.edu.pk', '30488472807', 'Tahira Chaudhry', '2aa0d714f56370e0b184341a69ab8304cc241f8da7f01306dfc29fff24739e99', 'admin', '2025-06-19 12:05:30', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student401@lums.edu.pk' OR phone = '36691013827')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student401@lums.edu.pk', '36691013827', 'Imran Hameed', '721372cf54ed3707643772ffc45553f30f22de5f2095f1d39c07e84cd540ae71', 'teacher', '2024-05-14 18:18:17', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '00402@lums.edu.pk' OR phone = '37305638110')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('00402@lums.edu.pk', '37305638110', 'Maria Abbas', '6ddabe8a5545722d98adf71a886c1ec7b2e7d074fc4d0a5639b7a391e4727650', 'admin', '2025-09-05 06:00:40', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student403@lums.edu.pk' OR phone = '37479261018')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student403@lums.edu.pk', '37479261018', 'Saleem Butt', 'f8ffb0f0214d65542f26e68ebe949efff5d28f7b5069daf3906dc8358eda50b4', 'student', '2024-10-20 09:34:32', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student404@lums.edu.pk' OR phone = '32946848126')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student404@lums.edu.pk', '32946848126', 'Fouzia Jamil', '4f93067daa8232d8a58468fa645d6c5ff3b3adb8614e26857fa96e69245dc565', 'admin', '2024-05-29 03:58:18', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student405@lums.edu.pk' OR phone = '30610197583')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student405@lums.edu.pk', '30610197583', 'Farhan Ahmed', 'ef50857f809120af6975a1ca52b743bca063bea29748771085f90f5f46f4f225', 'teacher', '2024-12-07 16:48:52', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student406@lums.edu.pk' OR phone = '30951551089')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student406@lums.edu.pk', '30951551089', 'Khalid Nadeem', 'c33e2a38dfc55c9f240ecdb7337eeac486a56d607220bf7f1d4281005115e022', 'student', '2025-06-15 09:23:19', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student407@lums.edu.pk' OR phone = '33970355023')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student407@lums.edu.pk', '33970355023', 'Talha Akbar', 'f58d8939192820eb8f4497ce5b80ada2b66a415d3f25b71a93751a400f387e0e', 'student', '2025-05-14 20:44:58', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user408@lums.edu.pk' OR phone = '33214790082')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user408@lums.edu.pk', '33214790082', 'Ayesha Akbar', 'e9bd30c134915c3561d4f2068fa36f26d11b792de12a8ce1ecce5be805f2c742', 'teacher', '2024-11-14 07:31:03', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums409@lums.edu.pk' OR phone = '35650021011')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums409@lums.edu.pk', '35650021011', 'Shama Bashir', '478f2feae1e51632ce9c3f169aa7b3a014652d8be1d9c9cb556da34a992889cc', NULL, '2025-07-02 19:23:30', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user410@lums.edu.pk' OR phone = '37402024288')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user410@lums.edu.pk', '37402024288', 'Amjad Yaqoob', '9839577004662fe704df54b0e7a389ab5539743c2a69bba42e180f539a876ce6', 'student', '2025-02-06 02:44:25', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user411@lums.edu.pk' OR phone = '36986138278')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user411@lums.edu.pk', '36986138278', 'Rafiq Ali', '31af7275407d6bd153d1bcd80c653a04bf86ee137820204a8b6cc8d387a1d863', 'admin', '2025-06-28 20:14:28', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user412@lums.edu.pk' OR phone = '35349759359')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user412@lums.edu.pk', '35349759359', 'Kashif Rafiq', '4b4740ddefd50b726b900de68234a47a77278fdda6bbec85971f1f86a7b03760', 'worker', '2024-01-25 02:58:17', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums413@lums.edu.pk' OR phone = '35473248448')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums413@lums.edu.pk', '35473248448', 'Tariq Rafiq', 'b4398fe430be3daedd5bf60f8f6da7e6396495340c1bbdeccb8cebc69ef9d223', 'admin', '2023-11-24 03:06:55', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '00414@lums.edu.pk' OR phone = '37299197565')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('00414@lums.edu.pk', '37299197565', 'Faisal Ayub', 'd9adc5d697ad911230438f45bf32ca88af0d52c85811fbe0673f1ee5f5774b11', 'student', '2024-11-01 07:13:03', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student415@lums.edu.pk' OR phone = '32256500869')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student415@lums.edu.pk', '32256500869', 'Ibrahim Siddiqui', 'd785d59c5f8020e0eab194b76578233dbaf71bb10eb65e6265107ba6a6c68240', 'student', '2024-12-30 16:13:02', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user416@lums.edu.pk' OR phone = '38717953555')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user416@lums.edu.pk', '38717953555', 'Wasim Mahmood', '35ac42835a4e9931ec4457d0551db565f6a1de75870c0b05666113e6b7262542', 'teacher', '2024-04-29 05:02:18', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student417@lums.edu.pk' OR phone = '34778851176')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student417@lums.edu.pk', '34778851176', 'Farzana Iqbal', '4cf95d9dd55000c868ce4440333c25ab5b02c60b4f887c95400e49bda8a35a0e', 'worker', '2025-07-03 12:10:41', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '00418@lums.edu.pk' OR phone = '35044447633')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('00418@lums.edu.pk', '35044447633', 'Amjad Tariq', 'c3d37ae3afe2befdda3f0cb2abe82701032503e944fdb9cd4fb16b93922064b9', 'teacher', '2024-01-15 19:04:19', 1, '2025-05-21 22:16:15');
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student419@lums.edu.pk' OR phone = '37324797985')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student419@lums.edu.pk', '37324797985', 'Shama Sadiq', 'a46066a4bdfcc41d4e41dc3a412c2b25d6ad515f2843ee4082c3774ea6cccdce', 'teacher', '2025-01-25 16:07:59', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user420@lums.edu.pk' OR phone = '39252367066')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user420@lums.edu.pk', '39252367066', 'Maryam Hameed', '4c2c7af6bb6ad5643b4956195d3a704e4089a7b97bbbdd550fcca416eb50c9c0', 'admin', '2025-06-07 20:13:23', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '00421@lums.edu.pk' OR phone = '36185387642')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('00421@lums.edu.pk', '36185387642', 'Amna Sheikh', '0aa1ce901b2418145e83fbffea1297ca32c29ce5a5eb460a4159be8347e7dbed', 'worker', '2025-03-18 22:40:09', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums422@lums.edu.pk' OR phone = '32775651167')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums422@lums.edu.pk', '32775651167', 'Majid Shah', '4da0ca23b1c3a887c8a1437184b3bd334033d858ce5892145ff1f05c2ad04e02', 'worker', '2025-10-09 10:04:18', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user423@lums.edu.pk' OR phone = '38323699914')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user423@lums.edu.pk', '38323699914', 'Ahmed Nadeem', '8634020cffbcdda5c0bbc116f2bea0a56c5c0c4e1e0099485fb161e3ce68dcf8', 'student', '2025-02-11 21:48:22', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '00424@lums.edu.pk' OR phone = '34332497571')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('00424@lums.edu.pk', '34332497571', 'Aamir Latif', 'c804aa61727576c6efec4c91afe9eaaf28fe7795c705d21352739596e3a53897', 'admin', '2024-08-05 10:02:15', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student425@lums.edu.pk' OR phone = '32128670002')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student425@lums.edu.pk', '32128670002', 'Saleem Mirza', 'da1b849ef2f18221cb652267c4af997a4048bfef5fc499380722a46527552a71', 'student', '2024-12-23 22:59:32', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '00426@lums.edu.pk' OR phone = '30434720168')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('00426@lums.edu.pk', '30434720168', 'Ali Haider', '3ff68a4a3ae5a24c5a3f3581814b081bfb881f1e69ed3e6ef503b4dcdf350066', 'admin', '2024-09-30 08:11:53', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user427@lums.edu.pk' OR phone = '34660916189')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user427@lums.edu.pk', '34660916189', 'Riffat Ayub', 'fb5608bd8945d507a43ea5f900970355a1a094c6c5aa2910e4d02acf92966577', 'student', '2024-08-20 07:24:15', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums428@lums.edu.pk' OR phone = '39062272340')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums428@lums.edu.pk', '39062272340', 'Muhammad Hameed', 'ae0a2599cea0c5d7e9f98b54f0652f9a597626ae1b782cf21b4633f52477f9ee', 'admin', '2025-10-27 10:26:23', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums429@lums.edu.pk' OR phone = '31717123652')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums429@lums.edu.pk', '31717123652', 'Farhan Umar', 'd5fb8fad4184ab1d64e11c23241c2c95e3296235a22ad6e2d7afb28bc827a087', 'student', '2024-07-26 16:40:21', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums430@lums.edu.pk' OR phone = '34981527574')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums430@lums.edu.pk', '34981527574', 'Aftab Tariq', '64ea23e86124b199b71fda952a2650c3300c8361bae3af43556360004c6ad987', 'admin', '2024-08-26 12:25:05', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user431@lums.edu.pk' OR phone = '34997505907')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user431@lums.edu.pk', '34997505907', 'Ali Ahmed', '6ba76395d0d64328c74eb8da1ed7b2cf5816887759d1c33d131f7a24fe887aaf', 'teacher', '2024-01-25 19:47:58', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums432@lums.edu.pk' OR phone = '36934388369')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums432@lums.edu.pk', '36934388369', 'Maryam Saeed', '2b215f19198f06003e733c665b3f16d8eb0fa66b96d64a2cf295657b86c95017', 'teacher', '2025-07-29 02:33:40', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '00433@lums.edu.pk' OR phone = '36287401645')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('00433@lums.edu.pk', '36287401645', 'Farzana Zia', '1d45538b57dea3c938fa36947da196ba63d1303b6a1bc43923cea789fa7e055e', 'student', '2024-11-05 20:45:39', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student434@lums.edu.pk' OR phone = '38674310766')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student434@lums.edu.pk', '38674310766', 'Junaid Bashir', '29e84fd683cb4e83c51532459a4f76145ee79b479fccf98001726334fe5e6cd0', 'admin', '2025-07-29 19:52:15', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums435@lums.edu.pk' OR phone = '36120988293')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums435@lums.edu.pk', '36120988293', 'Noor Hameed', 'b86dc6ff0436f2b84e082922bf2563945db06a7ebbaae5cdb5109a52dc8f24f6', 'teacher', '2025-10-20 21:57:56', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user436@lums.edu.pk' OR phone = '34334114857')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user436@lums.edu.pk', '34334114857', 'Arshad Butt', '638b74ea554faf26a799b05ea4b1009b9fd6cff8d4c1b6143f106a5005b305bf', 'admin', '2025-03-13 05:39:48', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums437@lums.edu.pk' OR phone = '32630375895')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums437@lums.edu.pk', '32630375895', 'Rashid Raza', '968639ae56ca40812cdfb0d5514ccba22c174e4c201857812bbea01a60cdb4e1', 'teacher', '2025-10-08 20:49:38', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user438@lums.edu.pk' OR phone = '39670475797')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user438@lums.edu.pk', '39670475797', 'Bilal Yousaf', '8ce1efcdfc5e9290dc58832e5ac3356abfdbbec324b8729ff9a6ca3544bf9bdb', 'student', '2024-03-03 21:34:26', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user439@lums.edu.pk' OR phone = '34669607037')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user439@lums.edu.pk', '34669607037', 'Omar Tariq', '5f076e646eb4ebd389d6caa20cc84e30da438d0896bf56dfb329b3d2624f945b', 'admin', '2025-08-19 00:21:10', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student440@lums.edu.pk' OR phone = '31268516375')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student440@lums.edu.pk', '31268516375', 'Mahnoor Rasheed', '6a94e504587d55313f1263874f4725e3eda31746944c4a961c406b87bf54f402', 'student', '2024-01-12 21:17:43', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user441@lums.edu.pk' OR phone = '30411004451')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user441@lums.edu.pk', '30411004451', 'Jamil Zaidi', 'e188cbcba0e6bc3802abcecf3aadfe3a305ab63d83d7e6ab8dcfd6f6b401b122', 'admin', '2025-10-14 04:33:42', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user442@lums.edu.pk' OR phone = '37792788102')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user442@lums.edu.pk', '37792788102', 'Nadia Iqbal', 'c61e9d892c8d7d54fd00966cdd15801cc4f2b0a916213fc1d605843f94d69edc', 'worker', '2024-03-12 11:25:59', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums443@lums.edu.pk' OR phone = '30231852890')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums443@lums.edu.pk', '30231852890', 'Arslan Hassan', '82ad15bdf231fd487a591125b242831bc0f6ce720f9ab88c1c3fffe55e34c841', 'admin', '2024-11-22 10:34:08', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '00444@lums.edu.pk' OR phone = '36852037795')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('00444@lums.edu.pk', '36852037795', 'Rabia Latif', '2ce45fb0bf5e07f9a599b713bf3981dfe94a0be138b18e74ceaed1f894cb0202', 'student', '2024-01-16 20:25:58', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '00445@lums.edu.pk' OR phone = '32921183702')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('00445@lums.edu.pk', '32921183702', 'Maryam Siddiqui', 'b0f656954b0c86ecd56c658286d200afbf82ed5e9c20939cab020fbbd761f448', 'admin', '2024-04-04 01:48:08', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student446@lums.edu.pk' OR phone = '33318206176')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student446@lums.edu.pk', '33318206176', 'Salman Qureshi', '2c90060dae06ce761b51015bad8f2343a274c7144d135ab912d316c2cb8cad0b', 'teacher', '2024-11-13 15:12:34', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums447@lums.edu.pk' OR phone = '32150605831')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums447@lums.edu.pk', '32150605831', 'Fatima Akhtar', '1fa167acb3897c75bf07787ba6b6015f4a8770fe98192c3ba30486bfb833d770', 'worker', '2025-11-09 06:34:24', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user448@lums.edu.pk' OR phone = '31322128812')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user448@lums.edu.pk', '31322128812', 'Asim Aziz', 'e2fa70b68f37d38e4ff945dfe895d8a548ba0cda6f3230c8818629a106164e7a', NULL, '2025-10-16 00:58:30', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user449@lums.edu.pk' OR phone = '33821805156')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user449@lums.edu.pk', '33821805156', 'Sadaf Qureshi', '19ff2289fb042a3255cb325b3618b35f29dd1a656ad25fabd8573a7b6b222f86', 'student', '2024-12-26 05:12:03', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student450@lums.edu.pk' OR phone = '38297660034')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student450@lums.edu.pk', '38297660034', 'Azhar Sadiq', '1ee29963737297e4eaa7d3f95993aa4f553e6f0611975372f09a8ab07dcec388', 'student', '2024-04-16 20:29:59', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user451@lums.edu.pk' OR phone = '35496047540')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user451@lums.edu.pk', '35496047540', 'Waqas Zaidi', '1efd537673c3ceded2afeadb073f536f4ccf3a899c681f6422c9064ea1c1ad80', 'worker', '2024-03-18 20:19:58', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '00452@lums.edu.pk' OR phone = '34827000963')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('00452@lums.edu.pk', '34827000963', 'Aslam Tahir', '59857bf565d3f2ae6cce0031c389699031bc4d5dfded48b9b7d0f860ab0f14c6', NULL, '2024-11-07 14:48:44', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums453@lums.edu.pk' OR phone = '36986082216')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums453@lums.edu.pk', '36986082216', 'Tariq Malik', 'b0c965fdb8358be01d397882b449ae17ee63a700c21db16c11a290b42f74531e', 'teacher', '2025-01-27 11:28:03', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user454@lums.edu.pk' OR phone = '32207477824')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user454@lums.edu.pk', '32207477824', 'Kamran Malik', '497c091097a384c38f17a586bcf31195dd0f987a7969e6f6878d432904235608', 'teacher', '2024-07-10 05:15:41', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student455@lums.edu.pk' OR phone = '34154508121')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student455@lums.edu.pk', '34154508121', 'Omar Abbas', 'd4dd2565aa9d8eebfa084ae19a5d957911e06537ea1b4edef19309ea9c2661c9', 'teacher', '2024-03-09 19:50:17', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums456@lums.edu.pk' OR phone = '32442261340')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums456@lums.edu.pk', '32442261340', 'Noor Sadiq', 'c6ba91b90d922e159893f46c387e5dc1b3dc5c101a5a4522f03b987177a24a91', 'worker', '2025-08-01 14:25:03', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user457@lums.edu.pk' OR phone = '39272948578')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user457@lums.edu.pk', '39272948578', 'Zainab Jamil', '9b4309de591573363bbac84739d5f92adea382021c4ba48f409b8ab69f7e2622', 'student', '2024-08-23 15:13:38', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student458@lums.edu.pk' OR phone = '31667991457')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student458@lums.edu.pk', '31667991457', 'Yusuf Rafiq', 'f5f781dae7408ec717e77026492f5cd2eaed80756896370d78183a10f45affe1', 'admin', '2025-08-20 23:02:10', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '00459@lums.edu.pk' OR phone = '33424680681')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('00459@lums.edu.pk', '33424680681', 'Rabia Siddiqui', '1b7a9b4221e6c8bf98f63b383610f4cd3e552c20f2f564fb6c10b9101416275f', 'student', '2024-10-30 16:47:20', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user460@lums.edu.pk' OR phone = '38224141584')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user460@lums.edu.pk', '38224141584', 'Khalid Ahmed', '28fd0062d10d6c4e822d12eda902a56680b8550409cd5d3265952d75c5056d17', 'admin', '2024-02-05 06:05:54', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums461@lums.edu.pk' OR phone = '34930451254')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums461@lums.edu.pk', '34930451254', 'Shamsa Mirza', 'de64b22192cfc98de0ee57b625c8ac18c70ea90cf0f10651c8e67c6e6879e7cb', 'student', '2024-04-22 16:26:44', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student462@lums.edu.pk' OR phone = '39973644875')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student462@lums.edu.pk', '39973644875', 'Shazia Karim', 'e2518f2fb32cad66d4651481b591cb1be1a6eaa2ec960d65334ae7e7c23941b9', 'admin', '2024-02-05 13:23:50', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student463@lums.edu.pk' OR phone = '34515922723')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student463@lums.edu.pk', '34515922723', 'Shakeel Ghani', '1d4daba704a5d59d3896a8648e0bf3aaa2daa4516812dfbfc1ef1a1360a230ff', NULL, '2025-06-24 00:24:52', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums464@lums.edu.pk' OR phone = '34603750135')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums464@lums.edu.pk', '34603750135', 'Shamsa Raza', '545b9ad305d8202424a439b3aeb89250aa6bb74dd1cf51e738393cb9d474e2e7', 'student', '2024-05-27 16:07:00', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user465@lums.edu.pk' OR phone = '30709598712')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user465@lums.edu.pk', '30709598712', 'Yusuf Ali', '7a01339c8e37c4e2ea186131f605829c790840bf8db01d2b2ef68fdb2016c2c0', 'worker', '2025-07-11 04:01:12', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '00466@lums.edu.pk' OR phone = '34358152195')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('00466@lums.edu.pk', '34358152195', 'Alina Shah', '5a14b30c928ef86e29b055e410798bbe668f6f0b3495ca1c62c6b79fffb14096', 'student', '2025-11-20 14:29:56', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums467@lums.edu.pk' OR phone = '31912362999')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums467@lums.edu.pk', '31912362999', 'Rizwan Hameed', 'e0f3071c7dbb435b4c45852063960c8a40608cb58f4c476cf090df90224da516', 'student', '2025-05-13 15:13:29', 1, '2025-07-04 04:57:04');
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '00468@lums.edu.pk' OR phone = '37140599479')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('00468@lums.edu.pk', '37140599479', 'Nazia Aslam', '8a24642e40666b7a6eed8f4f9bc7597169c0c790c552408946551c3289f697ba', 'worker', '2025-11-20 17:36:19', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user469@lums.edu.pk' OR phone = '38119692666')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user469@lums.edu.pk', '38119692666', 'Arslan Anwar', '1ecf65b3ee740b4bccd018560b9e56519bb83293a9115f1d8e681dfbda3d46e7', 'teacher', '2023-12-29 18:37:47', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user470@lums.edu.pk' OR phone = '38718733087')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user470@lums.edu.pk', '38718733087', 'Farzana Butt', 'd1f3de8667d57aa3d654818b9151312d70c8255c00c8f57186974600b2d5c70a', 'student', '2025-02-03 12:00:15', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums471@lums.edu.pk' OR phone = '35080254449')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums471@lums.edu.pk', '35080254449', 'Zahid Chaudhry', '4d0597f8460ffdea910ff90437dfb712f6d574f12c6ff084a4ac25d50c4befe6', 'worker', '2025-09-18 21:30:39', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student472@lums.edu.pk' OR phone = '30284332955')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student472@lums.edu.pk', '30284332955', 'Talha Qadir', '3c4a87819a00d093209e85b27f51bc2ca59720131785cdf5229fa10909cb5b8d', 'worker', '2024-07-15 16:06:52', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums473@lums.edu.pk' OR phone = '35442255432')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums473@lums.edu.pk', '35442255432', 'Raza Naqvi', '25c1fe42c495e799d2c99b081365d12e1da7caec283460ec164a332108eb2d15', 'teacher', '2025-09-16 22:41:59', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '00474@lums.edu.pk' OR phone = '34147639738')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('00474@lums.edu.pk', '34147639738', 'Tuba Karim', 'cf1cbdc0f79fd942a0db33e94cbd999e5472836c4a9397546f6429ec2b52b90b', 'teacher', '2025-10-27 07:35:07', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student475@lums.edu.pk' OR phone = '35737451035')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student475@lums.edu.pk', '35737451035', 'Maria Ghani', 'f25f6c880b51484e66e12a0427b4a00cf2048028400a9b9e7cd15cd12d50c9e0', 'student', '2024-09-19 05:36:15', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums476@lums.edu.pk' OR phone = '33951961587')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums476@lums.edu.pk', '33951961587', 'Fatima Yaqoob', '20d2176b10fe55b65aa80bb7c8ba8ed26f59982401af1606aded2bc41a2f2ed9', 'teacher', '2025-09-23 23:32:09', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user477@lums.edu.pk' OR phone = '36899745039')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user477@lums.edu.pk', '36899745039', 'Shaista Akhtar', '07e4d07c2f3cbf2c2e8f1f023e76bfc009af9fd79e7e84a4291ff6df0cb0b318', 'student', '2024-12-20 06:22:41', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user478@lums.edu.pk' OR phone = '38623235353')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user478@lums.edu.pk', '38623235353', 'Fatima Nadeem', '471ce83d4c6bac3bdee762affbfcf06762566c2f19d758f18259cd1b7d066183', 'admin', '2025-03-10 14:21:14', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '00479@lums.edu.pk' OR phone = '39401790641')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('00479@lums.edu.pk', '39401790641', 'Waqas Waseem', '8cb06c386439fea8c19a84579e6a3364753e5e67ed9c44bfa7505c8719e42294', NULL, '2024-12-26 22:56:12', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '00480@lums.edu.pk' OR phone = '33733114240')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('00480@lums.edu.pk', '33733114240', 'Fouzia Haider', '9bd058222e115131c5f079fb92cb026f9ea1baa6d22e47a753c2c67793a8a7e7', 'student', '2025-06-23 01:28:07', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student481@lums.edu.pk' OR phone = '36077860050')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student481@lums.edu.pk', '36077860050', 'Ali Naqvi', 'f748e0c6ddbce15c6c9299f550cb1b11a7ef8a11e708bb10f8cab851369cc4f8', 'teacher', '2025-04-05 23:59:31', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user482@lums.edu.pk' OR phone = '35270255530')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user482@lums.edu.pk', '35270255530', 'Farooq Hassan', 'd3ff94c15b26fbb67fff52a151f438e92d061451fba876bca90a80b35cc93383', 'teacher', '2025-10-30 15:26:50', 1, '2025-11-05 01:54:45');
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums483@lums.edu.pk' OR phone = '32227786595')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums483@lums.edu.pk', '32227786595', 'Saima Umar', '0d4bb35dd5698cbda62f5bfa66129e5c0e302b86c3d5d9962f2675bbb711bc50', 'admin', '2023-12-30 09:21:42', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '00484@lums.edu.pk' OR phone = '35617302034')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('00484@lums.edu.pk', '35617302034', 'Jamil Aslam', '96b86569b4ea564a40b2b74ac1068cee59f998826236bc6ad8d29e2e2452cb1b', 'worker', '2024-01-27 03:27:11', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student485@lums.edu.pk' OR phone = '36052212014')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student485@lums.edu.pk', '36052212014', 'Ahmed Mahmood', '1e8f558b715bf5aabdc5f4137ea4ff8ae4928a153f4eae46bdbe774e7c8975e9', 'worker', '2025-04-10 06:14:27', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '00486@lums.edu.pk' OR phone = '31068986439')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('00486@lums.edu.pk', '31068986439', 'Ibrahim Mahmood', '04f44bc44afb2db4ec4bb35219ec5bdb5878928c6a8f8ed4022b798be34a7b63', NULL, '2024-10-10 15:13:54', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '00487@lums.edu.pk' OR phone = '37555472827')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('00487@lums.edu.pk', '37555472827', 'Zaheer Zia', '6c009162fb75ecde9b8911697d2823a4f70930827c896ead254bec1085a765fb', 'teacher', '2024-09-13 06:27:56', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user488@lums.edu.pk' OR phone = '31497253403')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user488@lums.edu.pk', '31497253403', 'Ali Farooq', '5fea9b6b93faa8613e4d075ff43be853dbf10d2e5e5972d0585c04a5163791cd', NULL, '2025-11-10 04:19:15', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '00489@lums.edu.pk' OR phone = '36059123074')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('00489@lums.edu.pk', '36059123074', 'Wasim Waseem', '928f2231a8f60acefe7b0d369fc429591d5c3440810792119e9c91f8bc29f456', 'worker', '2025-07-03 06:16:20', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user490@lums.edu.pk' OR phone = '33922802956')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user490@lums.edu.pk', '33922802956', 'Imran Ahmed', '5ad95e675ccdf4209cdd94a0af9f165f584637b4b9902984ab326fda9cf393eb', 'teacher', '2025-03-16 04:48:22', 1, '2025-07-11 00:13:04');
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user491@lums.edu.pk' OR phone = '35146276389')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user491@lums.edu.pk', '35146276389', 'Rabia Rasheed', 'd7d93e7eaede053b4df44ea7c905f7e21984f3d60a8c2aad90b13066eaa84f55', 'student', '2024-06-21 04:52:29', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '00492@lums.edu.pk' OR phone = '30806441062')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('00492@lums.edu.pk', '30806441062', 'Humaira Zia', '00b80021aa7daba081fc4e8c7df410c457c65f35f3d5151b185ebf2ec2e53333', 'worker', '2024-01-15 20:41:59', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums493@lums.edu.pk' OR phone = '35272603153')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums493@lums.edu.pk', '35272603153', 'Hira Zia', '0d4be739566f3a43fa2f7be4f3e8b7235f4e62d042c7fe66289d3d6da0380bdc', 'admin', '2024-06-06 09:53:02', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '00494@lums.edu.pk' OR phone = '33301245879')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('00494@lums.edu.pk', '33301245879', 'Salman Saeed', '4da5e3e139c5f28c170c9658d0934f97d8dccc27eda1ccd226f18660aad3be1d', 'teacher', '2024-10-17 20:57:56', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user495@lums.edu.pk' OR phone = '33474759987')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user495@lums.edu.pk', '33474759987', 'Aftab Waseem', 'f85c0ecef319ec9daa0c63d7bbb988bc0bdf23be8f100cbaf44f3444fddb595c', NULL, '2024-03-05 05:11:48', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student496@lums.edu.pk' OR phone = '36761542003')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student496@lums.edu.pk', '36761542003', 'Shama Mirza', 'a583ffc59a322e57c465251b142c4f98aa5bc74afe3eef5a2df63e27b5863dd6', 'teacher', '2025-04-30 23:11:19', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums497@lums.edu.pk' OR phone = '32004011541')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums497@lums.edu.pk', '32004011541', 'Omar Rafiq', '464e4407c877291fde1746a2b45333b9907ab42ab6f331505e841e20029be12f', 'student', '2025-06-19 06:25:16', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student498@lums.edu.pk' OR phone = '35778282474')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student498@lums.edu.pk', '35778282474', 'Maria Rafiq', '127e5fbf2597cef61890d9d512d82513d1dac0a447677041bf05eeb5499844aa', NULL, '2024-10-29 02:40:07', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student499@lums.edu.pk' OR phone = '35986892216')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student499@lums.edu.pk', '35986892216', 'Sadaf Waseem', '648fb94b2ccff190a7389c061a91f37b499d904f3401e15442c7ed0e5cf0dc64', 'teacher', '2024-07-09 10:53:11', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student500@lums.edu.pk' OR phone = '38702979824')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student500@lums.edu.pk', '38702979824', 'Tariq Aziz', '972a1cfe5af9e32289af80565ace978935c1646d58ef76c7297a753119efe535', 'student', '2024-09-02 21:44:29', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user501@lums.edu.pk' OR phone = '32399099790')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user501@lums.edu.pk', '32399099790', 'Sidra Akbar', '473f886781eef0eef322650e9eaa25721cc46f3e194d6b20eecd287baf1c1959', 'admin', '2024-06-10 11:19:01', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user502@lums.edu.pk' OR phone = '39893027486')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user502@lums.edu.pk', '39893027486', 'Imran Jamil', '79de0f5da8cfbb12bfdf9d94bf7f0efc7baeaa08cf3016a37919a0ea498b0485', 'teacher', '2025-02-17 11:06:23', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user503@lums.edu.pk' OR phone = '32977980208')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user503@lums.edu.pk', '32977980208', 'Nadeem Shah', 'e2de35cbdaf7eec43ff7e32ac26821d90bd0a97dc627c244c048db5a5f94b4a7', 'worker', '2024-02-19 20:55:31', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student504@lums.edu.pk' OR phone = '36297597464')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student504@lums.edu.pk', '36297597464', 'Shamsa Latif', 'bc0f6a5e575ab119b98d2823632a8d69acb6cc938be9179537e0a0ef436fc23b', 'teacher', '2024-05-03 05:32:34', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums505@lums.edu.pk' OR phone = '37593959498')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums505@lums.edu.pk', '37593959498', 'Ali Mirza', 'd2553b9e78fc047b9c7454d2a7928e6fbfff84eee56141271e93f144398a53d7', 'worker', '2024-12-17 20:46:11', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user506@lums.edu.pk' OR phone = '35591550615')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user506@lums.edu.pk', '35591550615', 'Muhammad Abbas', 'd8a97b318889bf61f62b685249b9bef6e3ddbce707b0ac3c532ce00721fb7ebb', NULL, '2024-04-15 06:08:13', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student507@lums.edu.pk' OR phone = '31338893999')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student507@lums.edu.pk', '31338893999', 'Asad Khan', 'c70592afee596bc765a46c45491ee2b36ee88b252044d12e35ca32bd07c3eea8', 'admin', '2025-10-07 23:49:01', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student508@lums.edu.pk' OR phone = '31191345183')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student508@lums.edu.pk', '31191345183', 'Anwar Anwar', '08ed9b05e5de9947c3bc9ff7244158a677b2b697f68793b8720b27220fb93344', 'worker', '2025-02-01 00:27:24', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '00509@lums.edu.pk' OR phone = '32220589635')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('00509@lums.edu.pk', '32220589635', 'Farooq Latif', '7abf31260727242db9f4848b226f781184d6a21a71637a9a99dba35a54eb9296', 'teacher', '2024-04-16 19:27:20', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user510@lums.edu.pk' OR phone = '39231544700')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user510@lums.edu.pk', '39231544700', 'Raza Ayub', 'ebdfc541c02326d236a067fbf98149490a699c91e4146b836a558e7fd8e977ba', 'admin', '2023-12-12 22:59:22', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums511@lums.edu.pk' OR phone = '33704271976')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums511@lums.edu.pk', '33704271976', 'Kamran Masood', '9561b2383a55cc7882790a76b9ddfa2069d3729e78850caa96280a33a24c3fc5', 'teacher', '2024-03-30 09:25:48', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums512@lums.edu.pk' OR phone = '39657275844')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums512@lums.edu.pk', '39657275844', 'Kashif Akhtar', '2f062863e8d7ae4448c94a56100ccb2cca3dd5e986ad10999d513c9df7b2c1e4', 'student', '2024-03-17 22:34:25', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '00513@lums.edu.pk' OR phone = '37666454591')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('00513@lums.edu.pk', '37666454591', 'Sami Jamil', '192e2513e8cbfca37da9c479d782c774a521bee9a80990ead9499f9908bba811', 'student', '2025-03-26 02:23:37', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student514@lums.edu.pk' OR phone = '34520420006')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student514@lums.edu.pk', '34520420006', 'Junaid Saeed', '32089d1c6d460b4642d107070a40b56df01d5ce956d0f6e2830bb501610a744b', 'teacher', '2024-03-10 17:22:29', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '00515@lums.edu.pk' OR phone = '35940835039')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('00515@lums.edu.pk', '35940835039', 'Usman Hussain', 'a61ca7729ecb4c69629d80ebeab5e3907b7c9ccf522ba62b18deded6bf1cac42', 'worker', '2025-07-30 04:47:44', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student516@lums.edu.pk' OR phone = '34419305706')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student516@lums.edu.pk', '34419305706', 'Shazia Waheed', '5900738f32694e6851f73e23a425ef95443945d19082151db717b4f6dcab2560', 'teacher', '2025-04-01 20:02:41', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user517@lums.edu.pk' OR phone = '33513235512')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user517@lums.edu.pk', '33513235512', 'Junaid Mirza', '4ac312f0c8903ca1a2634ec935af10f61e1b566873d45ae64f28cb1ecf6faaf6', 'teacher', '2024-11-16 01:15:34', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums518@lums.edu.pk' OR phone = '30269689967')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums518@lums.edu.pk', '30269689967', 'Salman Jamil', '872f3244bb020283ee525375e978e0e44c1592b20ba99f9fbf2eadd58806d7d3', 'student', '2024-07-01 13:05:01', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student519@lums.edu.pk' OR phone = '33818674277')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student519@lums.edu.pk', '33818674277', 'Shafiq Mirza', '8154cafdd514a4d05e025f9ac47baabd396050564d3f2253d41925b8b50442c8', 'admin', '2025-04-30 02:01:39', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user520@lums.edu.pk' OR phone = '37650464840')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user520@lums.edu.pk', '37650464840', 'Iqra Jamil', '6c23bec9937ce9a05c0a093767eb8e0b0e0cc72872fe82db5e4b86abda5dd9b7', 'admin', '2025-10-26 20:28:27', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user521@lums.edu.pk' OR phone = '36120216496')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user521@lums.edu.pk', '36120216496', 'Usman Farooq', '463f02df334042e21e3088c7743d9a2a4a350187f1c4600e1e947ea69b5aed95', 'worker', '2024-06-19 09:37:45', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user522@lums.edu.pk' OR phone = '38547055594')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user522@lums.edu.pk', '38547055594', 'Naseem Ali', '640925b32151d33235d5b02fa9b71f10dfdd063dd207498d7d12de334621fc0c', 'teacher', '2023-12-20 12:57:19', 1, '2025-03-09 17:25:49');
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user523@lums.edu.pk' OR phone = '36970644976')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user523@lums.edu.pk', '36970644976', 'Asim Akhtar', '2300adc05b46de76a8d23cb8993e6e45472c352903162d4d77ae7a327b1c70d2', 'admin', '2025-07-17 18:21:38', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student524@lums.edu.pk' OR phone = '37611648049')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student524@lums.edu.pk', '37611648049', 'Shaista Rafiq', 'b56337fa72de0fddb00e685050accd3f147db24c90924ab6eac231079f6a4b06', 'admin', '2023-12-02 22:54:29', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums525@lums.edu.pk' OR phone = '37742042430')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums525@lums.edu.pk', '37742042430', 'Jamil Qadir', '7b4fff975780a1f23f53a2f13338825261a6ade4b2082b86059d6456ad0ed494', 'worker', '2024-03-29 05:17:56', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '00526@lums.edu.pk' OR phone = '33575073790')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('00526@lums.edu.pk', '33575073790', 'Hamza Javed', '34d1479367b7c6ad1c9262503b49f56093737365ece68fab1d9080de8a9aef36', 'admin', '2024-05-14 10:17:27', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums527@lums.edu.pk' OR phone = '31706564136')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums527@lums.edu.pk', '31706564136', 'Shafiq Sadiq', 'c6a68b290bb3699c8d40d2c235db1fce8ad3a85368c6ff2371e4ec64c9535139', 'admin', '2024-08-27 05:55:35', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user528@lums.edu.pk' OR phone = '34463040880')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user528@lums.edu.pk', '34463040880', 'Nadeem Zaidi', '14e76aa125b738f926f1a281269c9c50bb5dbafc5dad83678e8c95b39d634ca4', 'teacher', '2024-09-02 23:38:39', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums529@lums.edu.pk' OR phone = '37821794906')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums529@lums.edu.pk', '37821794906', 'Raza Haider', '9dbaa1fcc15781ad99701f0b09ba37460f018907de33abe8f4a4b37879161ef7', 'worker', '2024-08-13 22:53:39', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums530@lums.edu.pk' OR phone = '31547448344')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums530@lums.edu.pk', '31547448344', 'Naseem Masood', 'beb5bdf06246c85fc20df18fb753fc5ef369c6e1704c0ae828522e5780f555f6', 'worker', '2025-10-05 13:33:39', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums531@lums.edu.pk' OR phone = '39212525249')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums531@lums.edu.pk', '39212525249', 'Waqas Bashir', '849c79385484a47de6854e96f3c32c71fbf72f8dccde6e64daabcdca74d3a30a', 'student', '2025-07-27 05:38:04', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user532@lums.edu.pk' OR phone = '30112828954')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user532@lums.edu.pk', '30112828954', 'Khadija Siddiqui', 'bbaebc507289764bccf2b8423fab7984af8738a1c0e2796f98a9581695e93007', 'worker', '2024-05-16 20:50:14', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student533@lums.edu.pk' OR phone = '39588652348')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student533@lums.edu.pk', '39588652348', 'Shahid Mahmood', '4bfacc1b5a4cd6c844b0de6f8fe74a46cdcef15fa3196573afa10ebe56e259c5', 'teacher', '2024-01-12 09:42:23', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student534@lums.edu.pk' OR phone = '37276023672')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student534@lums.edu.pk', '37276023672', 'Farhan Butt', '5a758e186cb1608089fe183c4e4c017a7e994a049ae3477bcc4a49548db70cc8', 'admin', '2025-11-04 05:57:02', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums535@lums.edu.pk' OR phone = '34889271319')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums535@lums.edu.pk', '34889271319', 'Jamil Ilyas', '43882f728f240b9d88fdbfaf05f82b49c0f0f04ea63d5e8a1f6a5bccd7deb996', 'teacher', '2025-08-10 00:26:24', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user536@lums.edu.pk' OR phone = '38166522879')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user536@lums.edu.pk', '38166522879', 'Shama Aslam', '0a8a697725f882048f76ce39eb13d09acf526e660e51c41d73b60037c0bbee10', 'admin', '2024-05-31 06:16:14', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums537@lums.edu.pk' OR phone = '33823485352')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums537@lums.edu.pk', '33823485352', 'Sana Zia', '03c4ed1dbada7cbb580cb99e7aced48a65def872462e8c71dc3d1edae30bc2eb', 'teacher', '2024-07-26 09:28:11', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '00538@lums.edu.pk' OR phone = '33650781704')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('00538@lums.edu.pk', '33650781704', 'Hamza Akhtar', '3ee4838f1b930234c76f858abdf6c50d30ed0b256101c11c34bc144c09bd8fbf', 'admin', '2025-10-21 01:14:56', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student539@lums.edu.pk' OR phone = '36301150982')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student539@lums.edu.pk', '36301150982', 'Aisha Javed', 'af084150aa906451481d7d3f403a488596f9c0429cf8cd7b113e942586761a5e', 'admin', '2024-04-11 07:14:48', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user540@lums.edu.pk' OR phone = '38253239342')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user540@lums.edu.pk', '38253239342', 'Ayesha Zaidi', 'd33554b718bfb686350951751b94e7dfa22d65c3e0f39f1b7655014fcdc0e146', 'worker', '2024-04-16 18:06:46', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user541@lums.edu.pk' OR phone = '36754127139')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user541@lums.edu.pk', '36754127139', 'Tanvir Mahmood', '08d9081cd5586113944b53bad65f771454a3427dc05a8c5a05ab5db5433da585', 'worker', '2024-07-26 03:48:20', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student542@lums.edu.pk' OR phone = '33373204940')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student542@lums.edu.pk', '33373204940', 'Noor Farooq', '8aaf52c8fee08c8f6232ace7cc31fa0146328e8b2e3703a325d24f924b03b886', 'student', '2025-06-14 15:44:11', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user543@lums.edu.pk' OR phone = '36962598839')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user543@lums.edu.pk', '36962598839', 'Hamza Jamil', '88ca4d284d5b86a6e944130de457525122ead3ca2693eff215a105f6512f97b0', 'student', '2024-05-20 09:47:33', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums544@lums.edu.pk' OR phone = '32696371237')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums544@lums.edu.pk', '32696371237', 'Ali Farooq', '1c7015d42e93c484a719e69b906320f568cf8371268cc22bad930a1dd25ce8e2', 'worker', '2024-06-29 16:11:12', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums545@lums.edu.pk' OR phone = '36995064985')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums545@lums.edu.pk', '36995064985', 'Aslam Akhtar', 'b29b98af089d261e7b7dc3de0aa41cf8781e32aae2510cdd8e2521e691654369', 'student', '2024-04-23 17:31:36', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student546@lums.edu.pk' OR phone = '32611787694')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student546@lums.edu.pk', '32611787694', 'Hamza Bashir', '592129b6f1215a80ef9a06c65148d1e124afe2b5c172b0d792d75c1877400eee', 'admin', '2025-02-10 20:15:09', 1, '2025-10-06 11:16:30');
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '00547@lums.edu.pk' OR phone = '30183153579')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('00547@lums.edu.pk', '30183153579', 'Shahzad Umar', 'd6ae61780c38aec6660be47fd59a5f7647ca0ab342b17fd59b8890a62858476b', 'admin', '2024-08-22 19:43:50', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums548@lums.edu.pk' OR phone = '35102220091')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums548@lums.edu.pk', '35102220091', 'Imran Ayub', 'daa3fb34bfa5c8e72a28bb8f871893caae446e82762e82ab698915c2e92f8c9e', 'teacher', '2024-04-18 00:54:59', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student549@lums.edu.pk' OR phone = '36755065801')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student549@lums.edu.pk', '36755065801', 'Arshad Rasheed', '4b6d84816cec7188430bbbf0215008cab724b531c2a805e779587f0e4f60efa3', 'teacher', '2024-11-09 14:43:08', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums550@lums.edu.pk' OR phone = '38353041174')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums550@lums.edu.pk', '38353041174', 'Sami Haider', '5471371102d1a16bdc6bf5731ac26f1182e8483e7dabea2e5483fbc2d59720e0', 'student', '2025-03-26 10:12:21', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '00551@lums.edu.pk' OR phone = '37873712758')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('00551@lums.edu.pk', '37873712758', 'Samina Sheikh', '18a8d97f316eb82ba133d8a8f938eeca7d0eb1e0843c1b365dfeb5602a2b1e62', 'admin', '2024-05-01 13:06:03', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums552@lums.edu.pk' OR phone = '36327773382')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums552@lums.edu.pk', '36327773382', 'Junaid Waheed', 'e98c4a0f9c7eec485e5882209bd93cd322e7d96952bef67e8fe25a63b58c12da', 'admin', '2025-05-15 03:56:22', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums553@lums.edu.pk' OR phone = '39001478577')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums553@lums.edu.pk', '39001478577', 'Amjad Ghani', 'f37aa69a26288d780f07832bf380d2e3d00002b4546682cac74c6e25d198ccfb', 'admin', '2023-11-25 21:43:03', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '00554@lums.edu.pk' OR phone = '30532043211')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('00554@lums.edu.pk', '30532043211', 'Asad Hameed', 'edc53c86482647f176abe2089eb89793d9202f37956c276f177049a24029f699', 'worker', '2025-05-16 04:53:59', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums555@lums.edu.pk' OR phone = '34773387978')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums555@lums.edu.pk', '34773387978', 'Shakeel Aslam', 'a34e1cc0c8b2b42bcbec122223f654b23e0de095bbe0b499816cf0d23746aaac', 'student', '2024-01-08 05:25:19', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums556@lums.edu.pk' OR phone = '35525082375')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums556@lums.edu.pk', '35525082375', 'Saima Chaudhry', '7e13a675563e8bb9b57fc44e4639f9d24ed4a54203f985887628a8490248d775', 'teacher', '2024-08-24 16:48:49', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '00557@lums.edu.pk' OR phone = '39069776868')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('00557@lums.edu.pk', '39069776868', 'Mahnoor Akhtar', '538a92621ddf64b98768f97c90330e05ab8b72d2e7b80fe0b40c84a5fd30059b', NULL, '2025-04-07 21:40:16', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student558@lums.edu.pk' OR phone = '34446048534')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student558@lums.edu.pk', '34446048534', 'Junaid Latif', 'a827061a33b9f15da1bca74e0f840859021ee0e4f49a15098dd8621aa102198d', 'teacher', '2025-04-25 04:15:06', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums559@lums.edu.pk' OR phone = '33677779053')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums559@lums.edu.pk', '33677779053', 'Sana Qureshi', 'a513c3b93f0755a6c0bf265081ffe708d12a9114b6cee1df0a3bdc1f0010974e', 'teacher', '2024-02-11 00:45:10', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student560@lums.edu.pk' OR phone = '34148110668')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student560@lums.edu.pk', '34148110668', 'Khadija Qadir', 'f8c60583d88ad1863c978f1c23c6780b4b7bd72310d8db71ecc8f01a15869ed6', 'worker', '2023-12-30 06:46:18', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums561@lums.edu.pk' OR phone = '34867366840')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums561@lums.edu.pk', '34867366840', 'Sara Ghani', 'c164cf7035f7b40a97106cd26d1fbb21257395be51d945fe6e8d170f8943df21', 'student', '2024-01-18 23:28:07', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user562@lums.edu.pk' OR phone = '35086146001')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user562@lums.edu.pk', '35086146001', 'Fatima Waheed', 'aca5e060b181d52b601dc74e59169a9367cd8d309e5f4fa9c92dfea9f6630364', 'student', '2024-03-29 04:22:30', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums563@lums.edu.pk' OR phone = '35046696448')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums563@lums.edu.pk', '35046696448', 'Hira Mirza', '7f9e9232d26a9e240078d0db1a606527e528ebe8a9b5c756e6bb789cb8d68b2a', 'student', '2025-07-23 14:22:04', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '00564@lums.edu.pk' OR phone = '34803787366')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('00564@lums.edu.pk', '34803787366', 'Shamsa Akhtar', '92c25c70925b616b031e8b7a9ecbbc82c4b151e6ba72b89feb8bc3622b2f2a5d', NULL, '2024-11-08 02:13:01', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums565@lums.edu.pk' OR phone = '33317166172')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums565@lums.edu.pk', '33317166172', 'Khalid Bashir', '557bcd2be3de6b523b43aeaaf8f44e26fcfb8506a4a2af3e4c3842407d7afc93', 'worker', '2024-03-25 09:57:59', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums566@lums.edu.pk' OR phone = '30494606410')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums566@lums.edu.pk', '30494606410', 'Rafiq Qureshi', 'faa3ac9cc5eb3f180cfd1f25e9311ca5b07d9ca733f9a3569f1b90de57eb7486', 'teacher', '2024-01-02 02:44:20', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '00567@lums.edu.pk' OR phone = '36420437073')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('00567@lums.edu.pk', '36420437073', 'Naseem Sadiq', '8fd389ed85aad895744ec7452be2b1d6224e954b66f023aed3856835b7880b43', 'admin', '2024-10-31 04:22:54', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums568@lums.edu.pk' OR phone = '35550592997')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums568@lums.edu.pk', '35550592997', 'Nadeem Karim', 'c569b6d4cc66d860443b32d3e37a4004ab91faa6bdc230f51d9d15785579f424', 'admin', '2024-01-17 19:31:06', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user569@lums.edu.pk' OR phone = '34858200257')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user569@lums.edu.pk', '34858200257', 'Saad Tahir', '103d5ae51bd12cab02a23dd45c25e2c537ab8d0efbd381a3961a69c480fe1b3f', 'student', '2025-08-13 18:02:09', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '00570@lums.edu.pk' OR phone = '36415268272')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('00570@lums.edu.pk', '36415268272', 'Sara Rafiq', 'bf13bcd61fd2d2e3fb1ba143b5eecd99730f5d2c394e024a440854d7bc590e6b', 'student', '2024-03-10 21:44:51', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '00571@lums.edu.pk' OR phone = '31393507960')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('00571@lums.edu.pk', '31393507960', 'Tanvir Jamil', '1fc0c04ce8f19db25940bf2e1875cca6ae299bd580b5fe01e39c5341c5f529fe', NULL, '2025-03-11 04:43:54', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student572@lums.edu.pk' OR phone = '35291454575')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student572@lums.edu.pk', '35291454575', 'Alina Haider', '17c3065fa37d2793894fd382e3d1be3902c3c73a577f091e387f197b05495596', 'student', '2025-02-24 13:05:26', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums573@lums.edu.pk' OR phone = '34170273130')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums573@lums.edu.pk', '34170273130', 'Aisha Masood', 'b07b32ad3b6cfe20a7fcc9cfd9003731cd86ab42a623e05670f048cc0576824b', 'teacher', '2025-01-21 08:42:14', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student574@lums.edu.pk' OR phone = '31573470617')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student574@lums.edu.pk', '31573470617', 'Nadeem Malik', 'ec31b02cbcff92c570d412bb2aebb76cc64eb4f4bb5986da454edccf17c39d78', 'student', '2024-12-10 01:01:54', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '00575@lums.edu.pk' OR phone = '32666286695')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('00575@lums.edu.pk', '32666286695', 'Waqas Hassan', 'a71141c6488b19fe8160f303cb66955f1894905ea5f7132c5a3bcf7b091419ef', 'admin', '2024-10-22 08:36:31', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '00576@lums.edu.pk' OR phone = '36597519355')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('00576@lums.edu.pk', '36597519355', 'Jamil Farooq', '783379b0a138aae34a4ff9b8c9227c74dbc4c423ebb5e414e8d500012e806b6d', 'worker', '2024-01-12 01:32:45', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '00577@lums.edu.pk' OR phone = '31361653899')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('00577@lums.edu.pk', '31361653899', 'Raza Haider', 'b29a6bde00e3b7845579007d5cbcbcad6bcb29490f0d9dd22d3e8442987d6f9f', 'teacher', '2024-03-03 17:29:18', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '00578@lums.edu.pk' OR phone = '35562366856')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('00578@lums.edu.pk', '35562366856', 'Arshad Ahmed', '99e696a527c525bddd9415f0ae9b573c2d6612df90be3b468c32c299e4a29485', 'worker', '2024-04-16 20:46:19', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user579@lums.edu.pk' OR phone = '37773790466')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user579@lums.edu.pk', '37773790466', 'Rubina Mahmood', 'ae6acec7395f133876513865260d20904776c7847e93e0e0d083c83d772b943d', 'teacher', '2024-09-28 20:50:58', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums580@lums.edu.pk' OR phone = '39094964438')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums580@lums.edu.pk', '39094964438', 'Tuba Malik', '6cebd6636d3e1b7e4c2f168b6dcc4a948ce7825d18bef855100a609c078f0f12', 'worker', '2025-07-03 01:48:31', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '00581@lums.edu.pk' OR phone = '32643149266')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('00581@lums.edu.pk', '32643149266', 'Nadeem Yousaf', '122ced4a47cc264dc98b7f9d2c9bbd92c18e1f7f766671a72e4a04ef07736253', 'student', '2025-11-12 23:20:54', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '00582@lums.edu.pk' OR phone = '35316382909')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('00582@lums.edu.pk', '35316382909', 'Shahid Umar', 'a1b2d04ad11d829313b033d2605cefb3b13ae3def7232762b3b74fa19540d85e', 'admin', '2025-01-22 07:55:24', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user583@lums.edu.pk' OR phone = '37865275303')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user583@lums.edu.pk', '37865275303', 'Naveed Naqvi', 'f2a9ada31f1c5887861795e0083c58f6400487b554b2bacdcfb469b430448a9b', 'student', '2024-08-28 13:54:10', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums584@lums.edu.pk' OR phone = '33778703887')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums584@lums.edu.pk', '33778703887', 'Saima Zaidi', '40019e675f757056cc86592450fe70c014a03c6f8295fa069e7f63bbe1a43182', 'student', '2025-10-10 22:37:49', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user585@lums.edu.pk' OR phone = '31911735043')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user585@lums.edu.pk', '31911735043', 'Naveed Aziz', '87ba482a312af6da63c30ceaf0b3e42744f402c998d8d1b3c6dbd4535df2508e', 'worker', '2024-10-27 21:33:09', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '00586@lums.edu.pk' OR phone = '34521616382')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('00586@lums.edu.pk', '34521616382', 'Talha Ghani', '17c921b9406d112959cf3bb7986b93b0c63b72ce12ec4cd9bf1213b23374cff8', 'worker', '2025-08-17 07:21:31', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums587@lums.edu.pk' OR phone = '37998416799')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums587@lums.edu.pk', '37998416799', 'Aftab Bashir', 'ab7b77748e38419cdd07ac54fe95d449e0d210a734b6ba6579320d785fd04715', 'worker', '2024-01-15 13:47:29', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student588@lums.edu.pk' OR phone = '39148874429')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student588@lums.edu.pk', '39148874429', 'Samina Waheed', '09e820e20e78bbf289a5b777cf9a279a7469ae4fe7442f029936a4323672e16b', 'worker', '2025-04-18 12:33:00', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student589@lums.edu.pk' OR phone = '36949248714')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student589@lums.edu.pk', '36949248714', 'Shafiq Yaqoob', 'b541fa98df0997daff83a8abed98e3fe3c182cffc2589a996c53531494e5b53b', 'student', '2024-08-09 22:40:16', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums590@lums.edu.pk' OR phone = '36938696186')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums590@lums.edu.pk', '36938696186', 'Zahid Javed', '1b4597de78e8a898980152fa7b89053c1ea864f7f2bd8be57787eca82942e616', NULL, '2025-05-29 10:20:36', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student591@lums.edu.pk' OR phone = '37049310937')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student591@lums.edu.pk', '37049310937', 'Majid Akbar', '792ae24985b05e95d8340b714657cbca911c272a72020696902d4ea4e8ab30bb', 'admin', '2024-09-23 09:26:31', 1, '2024-11-17 19:50:49');
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user592@lums.edu.pk' OR phone = '31731371516')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user592@lums.edu.pk', '31731371516', 'Shafiq Chaudhry', 'ce42ad5a3e4ae3dc6f9b6e96038fd7188e5767eca43587665a53078f54b58c7a', 'worker', '2025-07-07 15:01:30', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums593@lums.edu.pk' OR phone = '35848943699')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums593@lums.edu.pk', '35848943699', 'Majid Abbas', '94ee85d5d5c067674435805b13aecdfdc3dd84823682de8132ca9794f2431cd2', 'student', '2025-07-23 03:58:55', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user594@lums.edu.pk' OR phone = '37557971404')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user594@lums.edu.pk', '37557971404', 'Tariq Hassan', 'e3589547708712692bda5fc8decfa243f61bc10be8f7309bebd383de20fc72ef', 'teacher', '2025-08-22 09:03:52', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '00595@lums.edu.pk' OR phone = '38142580149')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('00595@lums.edu.pk', '38142580149', 'Noor Waheed', '19388cfbaa8fbc1ee90868347082509693fd70ad3dcf02b760659a6954bd1a2f', 'teacher', '2025-05-12 18:11:32', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student596@lums.edu.pk' OR phone = '32589807244')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student596@lums.edu.pk', '32589807244', 'Wasim Raza', '19b063ac5c43f796227664ca2e6f2959bf24dd25f5b9d562561d7798b99d8c9f', 'worker', '2024-11-25 09:26:38', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '00597@lums.edu.pk' OR phone = '30867489467')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('00597@lums.edu.pk', '30867489467', 'Hanif Bashir', 'c53019bb498400fb76f8e46b70a834ea1fa4fa44e127f380e4c36af4849f60da', 'teacher', '2024-01-17 22:18:16', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user598@lums.edu.pk' OR phone = '36265317290')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user598@lums.edu.pk', '36265317290', 'Hira Butt', '64ef9f091de70591fc3257315bf54b642c98983c0d98e7a2213634f9b36e7f55', 'student', '2025-01-06 06:29:09', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums599@lums.edu.pk' OR phone = '39393856813')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums599@lums.edu.pk', '39393856813', 'Zaheer Aziz', '58c759d3128026d03f335d8b411914ebeddfb68f9feef827773eaabf65c257cc', 'admin', '2025-02-16 05:49:16', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '00600@lums.edu.pk' OR phone = '31848498835')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('00600@lums.edu.pk', '31848498835', 'Saima Javed', '0a53358b4af5dda9daba824236129e380e55332bb012bca47db1e29f7f93fcaa', 'teacher', '2025-05-17 15:31:46', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums601@lums.edu.pk' OR phone = '38527858092')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums601@lums.edu.pk', '38527858092', 'Faisal Ali', 'c66b402c236f7811f89adb4921dd0e52a8e04c16dbbcaf1b656932eedb2f5149', 'admin', '2024-01-12 23:45:32', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '00602@lums.edu.pk' OR phone = '38195866208')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('00602@lums.edu.pk', '38195866208', 'Shamsa Aslam', '302485f038a0ef27f19a93609482f013828618ac5b6cd6003363255edcda22be', 'teacher', '2024-05-31 22:58:50', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums603@lums.edu.pk' OR phone = '31126142636')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums603@lums.edu.pk', '31126142636', 'Parveen Sadiq', 'ed9e948b9de6c6775aed7f74ef3b12ede658100c896b9133ed86e6685552f140', 'student', '2025-02-20 23:37:29', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '00604@lums.edu.pk' OR phone = '32392823064')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('00604@lums.edu.pk', '32392823064', 'Maria Aziz', '22fc08151be6139e2edaf149a5d7db674381cd892f26f85c5d6732e44b529f56', 'worker', '2025-02-11 14:20:46', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student605@lums.edu.pk' OR phone = '32004926102')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student605@lums.edu.pk', '32004926102', 'Asad Qadir', 'b1a5008b3fe36671a1fb80e4032e9db86195fde7d3e26eb2655991f93b168fff', 'teacher', '2024-05-19 20:20:25', 1, '2025-08-10 11:33:39');
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student606@lums.edu.pk' OR phone = '32397760305')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student606@lums.edu.pk', '32397760305', 'Aftab Mahmood', '2efe01a936a0d264615b22db60a20af1fb4c2041b0339f76d40af3ecd34a854a', NULL, '2025-05-30 21:42:12', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '00607@lums.edu.pk' OR phone = '35346406146')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('00607@lums.edu.pk', '35346406146', 'Saima Waheed', 'be8a71967ce89774b5c05c11e4ced5d1bb8c44c1203c3e74ec6f419bb9295989', 'teacher', '2024-01-12 08:02:43', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums608@lums.edu.pk' OR phone = '35742089373')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums608@lums.edu.pk', '35742089373', 'Farzana Qadir', 'a157339b2d95c1651f00c6da33df47b323d6fc534fd56287a2a69d01c272e4c5', 'admin', '2024-04-12 11:55:54', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student609@lums.edu.pk' OR phone = '35557133458')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student609@lums.edu.pk', '35557133458', 'Farhan Hameed', '0d4c2c2ad7d80b850f4f17ba5d3c45c82a395dde35711cafb654993751ad94bf', 'student', '2024-09-16 18:58:21', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums610@lums.edu.pk' OR phone = '37391815945')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums610@lums.edu.pk', '37391815945', 'Fahad Iqbal', 'b16c3fff825711be9984eb6195187aa5714458f6d1ad50c3358c05460775b134', 'admin', '2024-06-03 04:08:52', 1, '2025-03-20 17:04:41');
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '00611@lums.edu.pk' OR phone = '35712912579')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('00611@lums.edu.pk', '35712912579', 'Yusuf Karim', 'a56bcff3bdaec2f248d29d724062b851e06da0f9e9e94f004e5164a341a4dcdd', 'admin', '2024-07-27 03:33:57', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student612@lums.edu.pk' OR phone = '35972157567')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student612@lums.edu.pk', '35972157567', 'Arshad Shah', 'b107807b3d2e10e531dabb65b351d3d377130dd8614d88e8a63d1ca71f497009', 'worker', '2024-01-20 19:40:20', 1, '2024-03-12 00:44:31');
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user613@lums.edu.pk' OR phone = '37022536718')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user613@lums.edu.pk', '37022536718', 'Usman Rafiq', '4bc7da6cfe935109661d1e78aad4fb49fe28f95d7b68358fea0178de9da1d613', 'worker', '2025-11-13 07:58:07', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums614@lums.edu.pk' OR phone = '30311697546')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums614@lums.edu.pk', '30311697546', 'Asad Abbas', '5eda2e57d7493af24bdc94824909a04eabc86b2d49c3c8ef4f09191bb8bfe3c8', 'worker', '2025-01-29 17:56:55', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '00615@lums.edu.pk' OR phone = '34159743974')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('00615@lums.edu.pk', '34159743974', 'Nazia Siddiqui', '33433536db0534965d4985ec58e0dbaf9034a5794b8e6e390cdef3a4e824be5c', 'student', '2025-03-18 00:00:07', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums616@lums.edu.pk' OR phone = '32745057002')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums616@lums.edu.pk', '32745057002', 'Rubina Ahmed', '604279b5eb84baad673d44a5d0a04393df1357241734ebb1cf81a1f1fcdbd330', 'student', '2024-06-22 03:21:03', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user617@lums.edu.pk' OR phone = '31929681350')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user617@lums.edu.pk', '31929681350', 'Arshad Siddiqui', '1e5cdd00c883f3372b819315c2bdeeb1a6c2352986eeef29e7a37b0181e42665', 'admin', '2025-01-22 16:05:38', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user618@lums.edu.pk' OR phone = '36663046319')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user618@lums.edu.pk', '36663046319', 'Muhammad Yousaf', '5c628538a7f2e148fbc7c09041b9246eb719ef8f212984a7a4bc8887b3398a4b', 'worker', '2025-03-17 06:39:22', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums619@lums.edu.pk' OR phone = '38623809193')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums619@lums.edu.pk', '38623809193', 'Yasmin Waseem', 'e3cdcb7bdb46acb9039483c8f1bc07632a153546755cee32b36dd3ebca5c6d18', 'admin', '2024-06-15 22:47:36', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums620@lums.edu.pk' OR phone = '36497314334')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums620@lums.edu.pk', '36497314334', 'Nazia Tahir', '6e6d13959cd740d7776e4e03d6d2fafefed35c0f8ab8ed3e578c4721a306ad87', 'admin', '2024-03-02 16:19:37', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '00621@lums.edu.pk' OR phone = '37384896727')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('00621@lums.edu.pk', '37384896727', 'Samina Qadir', '96fc3ae38bb29539f66913a7a487e1c96fd8f868f5b706518b5ec52a9958f31b', 'worker', '2024-12-24 20:58:16', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums622@lums.edu.pk' OR phone = '32533086898')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums622@lums.edu.pk', '32533086898', 'Zainab Sadiq', '185287d1bcee753f5f2176b1a31768a068d0891bfc3daecab3c01a4bf102316d', 'worker', '2025-11-04 09:45:15', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user623@lums.edu.pk' OR phone = '35097239246')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user623@lums.edu.pk', '35097239246', 'Sana Butt', 'a1a1397ab4f8a012990b0e83353c08f0f6524ae97cb383823ef2c9f313564921', 'student', '2024-06-05 20:00:49', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student624@lums.edu.pk' OR phone = '39705587324')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student624@lums.edu.pk', '39705587324', 'Rashid Karim', '8ad16a4fd3602d95838b610856c125cf52f228943430b5fc506ef053a92431c0', 'student', '2025-07-16 16:55:30', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '00625@lums.edu.pk' OR phone = '36440764869')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('00625@lums.edu.pk', '36440764869', 'Hassan Khan', '6faf86aadcb587b5f19ae1b9b967f56bd10405ce19776ac4e70beaf1a5b5fd27', 'worker', '2024-01-12 04:03:20', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '00626@lums.edu.pk' OR phone = '33342106787')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('00626@lums.edu.pk', '33342106787', 'Bilal Mirza', '46666bc32b1c97a97a7c5abd63da8b9f83d3287d826af8d7f9c6bf5c7feb922f', 'student', '2025-02-27 00:32:49', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user627@lums.edu.pk' OR phone = '30030024577')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user627@lums.edu.pk', '30030024577', 'Rubina Chaudhry', '59a6914b09ab1ffb63a7e95684ae565b28ab5234039ecd769eb644a3eb26f18f', 'teacher', '2025-06-08 14:59:54', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student628@lums.edu.pk' OR phone = '32893413035')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student628@lums.edu.pk', '32893413035', 'Yasmin Mahmood', '3afaa778b6d2c8db25b1df4f36db4bf4d23de298f454595e50b5fa2fb5313182', 'worker', '2024-01-08 18:00:26', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums629@lums.edu.pk' OR phone = '33144599713')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums629@lums.edu.pk', '33144599713', 'Hamza Qadir', 'b71f31d033e3acd82e86c2c39c961cb014de1e80a03b269c5a0b4bd743dee3d1', 'admin', '2025-02-05 06:28:29', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user630@lums.edu.pk' OR phone = '31195206812')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user630@lums.edu.pk', '31195206812', 'Naseem Jamil', 'c55707d267b542e7b8231829694b8d3d7992e67293ef8cfcf9a7e140d1bbcdc0', 'teacher', '2024-01-09 21:54:02', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user631@lums.edu.pk' OR phone = '33834462666')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user631@lums.edu.pk', '33834462666', 'Samina Zaidi', 'b503aef5fab7af1082c74d40b6080eb9c73a430d632e35b04900a8c82b6b5421', 'student', '2024-07-16 13:16:19', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user632@lums.edu.pk' OR phone = '35117041454')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user632@lums.edu.pk', '35117041454', 'Raza Khan', '37afe247d21b108597c20b5335baf4bcf46a3eb3c136ce6f61986d0e21319392', 'student', '2025-08-31 10:31:20', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '00633@lums.edu.pk' OR phone = '38378649500')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('00633@lums.edu.pk', '38378649500', 'Uzma Zia', 'f1e93236b7a70a914b26852aa1c1a017dd7846f51f0703c0d6b8fe7855a3dfe3', 'admin', '2024-11-07 23:50:20', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user634@lums.edu.pk' OR phone = '30554645769')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user634@lums.edu.pk', '30554645769', 'Ibrahim Karim', '04c310171298c0545f1ce139f31f8262e0e1a97c32de23234ec84330de54ad44', 'admin', '2023-11-29 10:30:56', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums635@lums.edu.pk' OR phone = '30229449074')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums635@lums.edu.pk', '30229449074', 'Tariq Tariq', '3e8820e56d8e8bfc99960d6c158db72ecc20b9315408bfb17863e49bf0206d3e', 'worker', '2024-02-12 23:06:51', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums636@lums.edu.pk' OR phone = '30222517886')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums636@lums.edu.pk', '30222517886', 'Sami Chaudhry', '0d87f298d3f8c6b66bd3754fc8dd28d92efabad8dd67743cc7b1f01fa083fa21', NULL, '2023-11-24 04:57:52', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user637@lums.edu.pk' OR phone = '37737596372')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user637@lums.edu.pk', '37737596372', 'Zahid Ahmed', '6e0f23877e73659f63c7a98abdbf7c6b79121e5cbd8ad911d0586528ec826213', 'teacher', '2025-08-25 21:17:05', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user638@lums.edu.pk' OR phone = '37531011059')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user638@lums.edu.pk', '37531011059', 'Talha Javed', '9ad660ceb776ea52b78fa1a5656efeaee0a90ba3c36de83dba610f204cd43204', 'student', '2023-11-30 13:04:00', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums639@lums.edu.pk' OR phone = '31232966871')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums639@lums.edu.pk', '31232966871', 'Bushra Haider', 'b270f3e9699cf6bdd707cc5bb73ba61491ce980e37b5ba4b44c3166a7d8e9d43', 'student', '2024-11-21 20:35:25', 1, '2025-07-24 00:35:46');
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user640@lums.edu.pk' OR phone = '30818034892')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user640@lums.edu.pk', '30818034892', 'Jamil Mahmood', '51f5005a353dfe1df1fa9aff066fc3a9570897c35b48210981b2f206a0ca536a', 'worker', '2024-11-23 00:33:47', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums641@lums.edu.pk' OR phone = '31921107787')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums641@lums.edu.pk', '31921107787', 'Mahnoor Zia', '35595b99167af77f4efb893b0cf915aca0e29694bbe424cb63e0d199c6e93c79', 'teacher', '2024-10-19 03:57:06', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user642@lums.edu.pk' OR phone = '31763702358')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user642@lums.edu.pk', '31763702358', 'Shamsa Nadeem', '5d3dcfcad1e22d318a2239d8a6e6a9068a1e8e279f55e26b2de7284fa47e26b6', 'admin', '2025-04-28 10:00:24', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user643@lums.edu.pk' OR phone = '36952728834')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user643@lums.edu.pk', '36952728834', 'Amna Hassan', '0b52cc81a901a2079f0d86b2689a9df7172db053f523ccb59b8d4dd817b2105f', 'student', '2024-04-05 04:54:46', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student644@lums.edu.pk' OR phone = '37843529199')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student644@lums.edu.pk', '37843529199', 'Omar Nadeem', '61fe5f86f8e870e1bdbb021d65ef347f5356f274a11836ff9e350a15ceaaa78c', 'worker', '2024-04-04 17:38:57', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user645@lums.edu.pk' OR phone = '35441321487')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user645@lums.edu.pk', '35441321487', 'Muhammad Ayub', 'a2c2572ec29125e66c6bd01868d6d13a7bd7f706777bc80abba07ce06af4e2b4', 'student', '2025-06-20 00:48:27', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student646@lums.edu.pk' OR phone = '31030970239')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student646@lums.edu.pk', '31030970239', 'Saleem Malik', 'f5c68f07458b81e4f850f294c8ecdbbeecebd7bb3eda06ab847c83008e1a113d', 'student', '2024-09-09 12:49:41', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums647@lums.edu.pk' OR phone = '31600058428')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums647@lums.edu.pk', '31600058428', 'Kamran Ilyas', 'c9db6288d87539d4c7503f7dd335b799f63b271f6cc3cb28ee312129c54e0083', 'admin', '2024-05-11 00:12:53', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student648@lums.edu.pk' OR phone = '34473086554')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student648@lums.edu.pk', '34473086554', 'Shaista Anwar', '5afffd58e183a4354183568430bbcb1f40c0f7a14af1a71f18f03e06b3e53b82', 'admin', '2024-01-29 15:10:14', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums649@lums.edu.pk' OR phone = '39693315386')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums649@lums.edu.pk', '39693315386', 'Sara Tahir', '53a7a61f5c4e6e6306eab6437bdb7b19b2ead695c53f627ead37692d11d52f10', 'teacher', '2025-08-29 23:06:03', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums650@lums.edu.pk' OR phone = '38118445969')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums650@lums.edu.pk', '38118445969', 'Junaid Mirza', 'e70ac06575224f62bbdef09bab8d19bae688728c6737752fd5e10ce184ceab34', 'worker', '2025-11-03 22:09:03', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user651@lums.edu.pk' OR phone = '30088776222')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user651@lums.edu.pk', '30088776222', 'Usman Tahir', '73438c683865bb126c0831bba765ebb15036234f8defbe664e712a3f61e6df26', 'student', '2024-10-23 03:55:38', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums652@lums.edu.pk' OR phone = '32545997216')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums652@lums.edu.pk', '32545997216', 'Zain Latif', 'ad2073628f223a25cde5b2196707d78408f4f6f3e790f73153ffcddea9fbb42e', NULL, '2024-05-09 20:32:12', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student653@lums.edu.pk' OR phone = '35148033264')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student653@lums.edu.pk', '35148033264', 'Farooq Ghani', '07306c0916e29c906646b7ef7262068c6eea4f7fdd59b2190117e541c901b250', 'admin', '2024-07-06 18:06:05', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user654@lums.edu.pk' OR phone = '37000476301')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user654@lums.edu.pk', '37000476301', 'Farzana Zaidi', '28e91b84bd4ac1d95d81b4510777d2b12f3dffa848bb6e219a42f98cdfa06d7d', 'student', '2025-02-07 12:20:19', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user655@lums.edu.pk' OR phone = '32132701708')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user655@lums.edu.pk', '32132701708', 'Faisal Aziz', 'cc598d9cb17bfb962b2f9297b1971501cae7648a05f8e29386c7933674ab7613', 'student', '2025-01-04 10:46:04', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student656@lums.edu.pk' OR phone = '32237481075')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student656@lums.edu.pk', '32237481075', 'Shahzad Hussain', '898bb8aa9d848891e3ea2c9b2a6641842be60106738c09decf2204c5bcb40a9d', 'teacher', '2024-08-16 21:57:52', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '00657@lums.edu.pk' OR phone = '31099790218')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('00657@lums.edu.pk', '31099790218', 'Sidra Waheed', 'b7e1168a5d48736202a7d3ae1a42854cd3b98178bd4a64f11f0197f284125a80', 'admin', '2025-05-28 23:13:38', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums658@lums.edu.pk' OR phone = '35677769273')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums658@lums.edu.pk', '35677769273', 'Nadia Hassan', 'ae4399769f52ae30ef862a5ea98ba8243588aed1571d2fcf184058bfd02deb03', 'admin', '2024-02-22 12:02:05', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums659@lums.edu.pk' OR phone = '35640208916')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums659@lums.edu.pk', '35640208916', 'Naseem Yaqoob', '969e7f1183b0adfa87ae2dbbec141abe134babd8473a0a933b0498fc64059372', NULL, '2024-03-27 14:39:08', 1, '2024-04-16 07:26:22');
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '00660@lums.edu.pk' OR phone = '33818307143')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('00660@lums.edu.pk', '33818307143', 'Shahid Khan', '11efcd9f53e5b11908c71c355a0ee0b0cd2eaa97190bdb88f7c212097d5bc8e1', 'teacher', '2025-07-21 04:54:56', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '00661@lums.edu.pk' OR phone = '37757913687')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('00661@lums.edu.pk', '37757913687', 'Bilal Qureshi', '98b9f4e787d1c4d80bebd7e39658f13916c16e2036c13d35a4db61d410906874', 'worker', '2025-02-24 22:59:25', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '00662@lums.edu.pk' OR phone = '35968278548')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('00662@lums.edu.pk', '35968278548', 'Muhammad Ilyas', '0fcdb6df41732b766a224836e6c81ba3426b6a760b92e326179b5a69cfe6afa5', NULL, '2024-04-10 21:58:35', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student663@lums.edu.pk' OR phone = '36044074790')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student663@lums.edu.pk', '36044074790', 'Anwar Sheikh', '8c978b1c8514bd259818b1681780c556a75046913da3f9e25cfcab15fce83a79', 'admin', '2025-03-15 04:36:58', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student664@lums.edu.pk' OR phone = '36312770994')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student664@lums.edu.pk', '36312770994', 'Maryam Naqvi', 'de6759b6d8b9fc34c8ae7fba9c7928ed30eaf2f9e1fee298599f0448e1022448', 'teacher', '2024-01-22 19:38:07', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '00665@lums.edu.pk' OR phone = '35242020993')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('00665@lums.edu.pk', '35242020993', 'Zaheer Tahir', 'ce9c9aae47d6be354237613ef2c074f2d588e091035591064ff8405782cade69', 'teacher', '2024-07-02 16:33:45', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user666@lums.edu.pk' OR phone = '36124856431')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user666@lums.edu.pk', '36124856431', 'Omar Rasheed', 'b84c4783ab67bf8f841be5b67907d753f268b87a19723338dbcd66de5f6bf01e', 'teacher', '2025-06-30 09:20:46', 1, '2025-09-28 06:08:37');
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user667@lums.edu.pk' OR phone = '32405272634')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user667@lums.edu.pk', '32405272634', 'Asad Akbar', '9726286045f55ec74adbd2b9dbe68f018cc8713bff6bbefbc32c955773e3fdba', 'admin', '2024-07-17 03:47:57', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '00668@lums.edu.pk' OR phone = '34845600941')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('00668@lums.edu.pk', '34845600941', 'Farhan Ahmed', 'fceb0f7063c8f65abb935cd995b1bab992a94ce4350e0a2d5dfebe1d2ec53731', 'teacher', '2024-07-04 17:06:42', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums669@lums.edu.pk' OR phone = '35409971107')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums669@lums.edu.pk', '35409971107', 'Rabia Mirza', '01fa16cf5885f80c3c19d2df56ed00822a2c592396b1b0aa9b061bbb52942c30', 'worker', '2024-02-06 13:34:02', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '00670@lums.edu.pk' OR phone = '37070737645')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('00670@lums.edu.pk', '37070737645', 'Asad Anwar', '474438c6f28dfb12552902502883e4fa0ef22ee7da168ccc49c3c85b4722684b', 'admin', '2024-02-02 14:16:13', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '00671@lums.edu.pk' OR phone = '35503492190')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('00671@lums.edu.pk', '35503492190', 'Shakeel Zaidi', '709c4b1fa1398f6e2cd6b8130d57bb5200c1ef976ba2506d55d86009d43a3355', 'admin', '2024-01-05 07:23:47', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '00672@lums.edu.pk' OR phone = '36845451895')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('00672@lums.edu.pk', '36845451895', 'Abdullah Latif', 'b4f79e829ce9d142e97638a66363a99145225c71d0878608cfd7cec52841b918', 'teacher', '2024-12-09 22:54:17', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user673@lums.edu.pk' OR phone = '35036445506')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user673@lums.edu.pk', '35036445506', 'Shaista Anwar', '50d89af734cff923c03cbc89ddf20d4bf3883473d77e19c0b920258099e90a1f', NULL, '2024-02-27 17:12:54', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student674@lums.edu.pk' OR phone = '34169211281')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student674@lums.edu.pk', '34169211281', 'Naseem Farooq', '404b21883ff36420c824ca12674d66d5d85fb1e4b7211704529211f7c2ffa0ce', 'worker', '2025-08-19 03:33:45', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student675@lums.edu.pk' OR phone = '34387364490')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student675@lums.edu.pk', '34387364490', 'Imran Farooq', '897502c742e8dda90efcdf383ffb7de34b8b871362542d532a26ce732e7f71fd', 'admin', '2024-04-12 16:33:17', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '00676@lums.edu.pk' OR phone = '39471051599')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('00676@lums.edu.pk', '39471051599', 'Yasmin Hassan', '550212734821010891d4051830d2ac6b043a4b8fe7b7520c1f949109e6ee0a8f', 'admin', '2024-04-17 20:37:40', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user677@lums.edu.pk' OR phone = '32767096169')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user677@lums.edu.pk', '32767096169', 'Nadeem Malik', 'b48c65d1aa7c9228011c3188461d8a3ec2b6cd708ee98d8325ed094a0b1760df', 'student', '2024-05-13 02:25:14', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '00678@lums.edu.pk' OR phone = '31260848705')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('00678@lums.edu.pk', '31260848705', 'Maryam Sheikh', '244091dbe590bba5ed965b2ef31191be8b79ea41a7106ebdf32f841182a7d2bb', 'admin', '2025-09-17 17:08:08', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student679@lums.edu.pk' OR phone = '32564172467')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student679@lums.edu.pk', '32564172467', 'Uzma Sheikh', 'db1767512e13ba45939eb893449530773f94c20dcd09832b2390d2c440b89484', 'teacher', '2025-02-14 05:23:58', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums680@lums.edu.pk' OR phone = '33186366066')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums680@lums.edu.pk', '33186366066', 'Aamir Zaidi', '4d40fb337d4faaecaaabbcbdf0954d595479d0181132a9df8ae7797bd75fd93c', 'worker', '2025-01-20 16:21:41', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user681@lums.edu.pk' OR phone = '34850821610')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user681@lums.edu.pk', '34850821610', 'Tariq Akhtar', '6eaa091ecef449bc5910ae630ec8e216fb4411bd6a8cae5754c9331341a9bc07', 'admin', '2023-12-25 13:43:34', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums682@lums.edu.pk' OR phone = '31468123135')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums682@lums.edu.pk', '31468123135', 'Kamran Butt', 'e1074a01a4892b66780aa302f7464f329eba43a7d1d7cd3c9216302c58ac26f6', 'student', '2025-05-01 22:20:58', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user683@lums.edu.pk' OR phone = '36242471212')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user683@lums.edu.pk', '36242471212', 'Saleem Javed', '2e68f8bc0a7e3227da330f8d0588aef9be8541cd141fac844d3aea566a7d1c82', 'student', '2024-01-14 09:36:32', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student684@lums.edu.pk' OR phone = '37591765608')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student684@lums.edu.pk', '37591765608', 'Bushra Hussain', '76ef6216ae4fc7cac6b6a79508acfe686b1fcddf8af599071476c0a6fb27e7fe', 'worker', '2024-10-21 09:10:10', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '00685@lums.edu.pk' OR phone = '37300928703')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('00685@lums.edu.pk', '37300928703', 'Tahira Sadiq', '84985cb43a29f9a24ed9d082d42d7bacf99a887058b3c3bd59e0f3cbb733e72f', 'admin', '2025-03-21 10:22:30', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user686@lums.edu.pk' OR phone = '33436896940')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user686@lums.edu.pk', '33436896940', 'Alina Karim', 'db6e2a1588f0e8dfb104677dfe96884169089aaf536794dd92c1402ea38d0b00', 'student', '2024-02-10 09:05:25', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user687@lums.edu.pk' OR phone = '37922858495')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user687@lums.edu.pk', '37922858495', 'Khadija Akhtar', '8c49236ac3b48f362ca78d32dc08642872e84e1107804fab10eef499c57d1c63', 'student', '2024-11-28 01:38:55', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student688@lums.edu.pk' OR phone = '36733394657')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student688@lums.edu.pk', '36733394657', 'Uzma Naqvi', '5d96e800f93944d2d4ab8ec08d4d1ba5c7e2790fd420fe356440a76441e631c1', NULL, '2025-04-14 15:06:53', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums689@lums.edu.pk' OR phone = '36606008594')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums689@lums.edu.pk', '36606008594', 'Arslan Rasheed', 'bf33430428842de6b03417f34389cec925cc8742048665785d3ffbc546ee0cd0', 'teacher', '2025-10-29 03:56:12', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums690@lums.edu.pk' OR phone = '37920257516')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums690@lums.edu.pk', '37920257516', 'Sara Abbas', '57e19309ba8f66dca56675e3bba23fd3f67e78964944af2800c21432b0ee59f7', 'student', '2024-06-14 10:40:39', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '00691@lums.edu.pk' OR phone = '30845457250')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('00691@lums.edu.pk', '30845457250', 'Majid Khan', '9b7fc7525dfe68293dc0312edc4f03237382676699b02a0c877fbb009e032f38', 'worker', '2025-05-11 02:34:30', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user692@lums.edu.pk' OR phone = '31908420061')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user692@lums.edu.pk', '31908420061', 'Saleem Yaqoob', 'e1da39fa958593065c1a4176a3c41a5cf1a27c6a9503cdd674501d1ea6602670', 'worker', '2023-11-27 02:26:32', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '00693@lums.edu.pk' OR phone = '39074443142')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('00693@lums.edu.pk', '39074443142', 'Riffat Sadiq', '493c78e08ce29250602b99b150dc72f62b3917c0f9da4dc58ec7d5ed3a9adf08', 'worker', '2025-10-01 02:49:28', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums694@lums.edu.pk' OR phone = '34610149337')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums694@lums.edu.pk', '34610149337', 'Tahira Nadeem', '6e7f2838248a202cb1a5fc0063eb0da3827e5e44c0c66d6d7b05ccc2b3054982', 'student', '2025-11-03 20:07:42', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums695@lums.edu.pk' OR phone = '30498525140')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums695@lums.edu.pk', '30498525140', 'Shakeel Waheed', '30308e0564f627b4c84a71af20d6b5dd912eab8faf2cda290f769b0151539a23', 'teacher', '2025-03-04 05:59:56', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '00696@lums.edu.pk' OR phone = '36370485645')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('00696@lums.edu.pk', '36370485645', 'Fahad Naqvi', '91acb72b9c1faf17ab835385e8c12f723206918cf6c233314b43bf6b710df255', 'teacher', '2025-02-19 01:36:31', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '00697@lums.edu.pk' OR phone = '36014623581')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('00697@lums.edu.pk', '36014623581', 'Noor Chaudhry', '601d8749d173756f12d78d3da3b46a181efde2cde77b0afefdedf2c92b14e8d3', 'teacher', '2024-03-09 23:06:32', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student698@lums.edu.pk' OR phone = '30233588656')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student698@lums.edu.pk', '30233588656', 'Rubina Sadiq', '4ac1aa68df0c331d82f555ee8a667776845708223832a6dd78be4ade42fbffd3', 'admin', '2025-01-23 01:49:11', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student699@lums.edu.pk' OR phone = '31412998991')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student699@lums.edu.pk', '31412998991', 'Fouzia Qureshi', 'bc4c961bdeb9d5f910299563256dec11e7f9ff903a69d69431b4aa2c6ddc86a3', 'student', '2024-07-23 09:43:19', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '00700@lums.edu.pk' OR phone = '35524909184')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('00700@lums.edu.pk', '35524909184', 'Amna Khan', 'f1c0ac1fadf168935b070a9c986a3a0e5358f9709e81c6035594f5bc4431915a', 'worker', '2024-05-05 13:02:01', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '00701@lums.edu.pk' OR phone = '30947420054')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('00701@lums.edu.pk', '30947420054', 'Uzma Hameed', '07f67278ca4ac909f43cc69c206c3bcbf82bf330ef2ad49b37406bea8fd4778f', 'student', '2024-07-27 08:22:13', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student702@lums.edu.pk' OR phone = '33187619677')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student702@lums.edu.pk', '33187619677', 'Aisha Raza', '36ae2cabff2b5ed301bda5801f97975d4ea8bd95b4f5507389f50f389df77f30', 'student', '2024-02-02 15:07:36', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums703@lums.edu.pk' OR phone = '32738079573')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums703@lums.edu.pk', '32738079573', 'Nimra Hassan', '2a6e5cc68f05d94db745deded45587a414814a3d668f2bd3945fc53171c3c494', 'admin', '2024-11-04 21:56:15', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '00704@lums.edu.pk' OR phone = '35743561772')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('00704@lums.edu.pk', '35743561772', 'Fahad Nadeem', '14645d7f085b7f2ef2fb6bd7ed68455d0e59eaa3cb17095526b67bd7c8c9046c', 'teacher', '2024-07-10 01:11:18', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user705@lums.edu.pk' OR phone = '33840385015')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user705@lums.edu.pk', '33840385015', 'Muhammad Zaidi', 'aa16bcd45b00c6158cc882e2ad3e7adcdf821b32fb810d0f71ca287e44d7be3c', NULL, '2024-06-07 09:51:31', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student706@lums.edu.pk' OR phone = '32705399040')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student706@lums.edu.pk', '32705399040', 'Sadaf Latif', 'bb8a19a128a0c2a5dbcfeae8446eef62fdad32ef0602ad547104943eaea7ef71', 'teacher', '2024-12-23 02:16:30', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user707@lums.edu.pk' OR phone = '33829630121')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user707@lums.edu.pk', '33829630121', 'Aftab Chaudhry', 'c359b73350c3ba9deaebdeef38bc8bd5d3f17902907a7422cbad5a4e440c0f1b', 'admin', '2024-07-23 22:34:18', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user708@lums.edu.pk' OR phone = '39824564159')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user708@lums.edu.pk', '39824564159', 'Arslan Ghani', '4e549a31397e129391f4ce35d366444a5193bee8b7645a5bfcaa6a9b5bff715c', 'worker', '2025-07-29 18:50:00', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user709@lums.edu.pk' OR phone = '33739507323')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user709@lums.edu.pk', '33739507323', 'Sami Raza', '47f9f23f06b14b6f6e6f4eee239b4417ddafed29863c29e0feb399f28ad56062', 'student', '2024-08-13 21:36:29', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user710@lums.edu.pk' OR phone = '31266698636')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user710@lums.edu.pk', '31266698636', 'Amna Anwar', 'e3c361f6ec10642261f38e465db20b1d34deb7de59c0f0c4ea018e574ef3cf15', 'student', '2024-11-14 01:42:19', 1, '2025-08-16 03:06:16');
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums711@lums.edu.pk' OR phone = '37191974993')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums711@lums.edu.pk', '37191974993', 'Tanvir Malik', '143e192185bfdf08866ffcac133babaa76e3d90b868f3240011877896443d3ff', 'worker', '2024-11-30 14:08:01', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '00712@lums.edu.pk' OR phone = '32386520712')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('00712@lums.edu.pk', '32386520712', 'Uzma Zaidi', '9c286df8ea801870aaadc6a43524f0d2a823cb7a8baefc1e3d2b0e5668ad8884', NULL, '2025-04-29 04:11:36', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums713@lums.edu.pk' OR phone = '34529173194')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums713@lums.edu.pk', '34529173194', 'Fahad Ali', '4303dfc344881b18823a14053a257ec26aefbaa31c34408829da725e5ff6fdc7', 'student', '2024-06-24 14:27:13', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student714@lums.edu.pk' OR phone = '39816326233')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student714@lums.edu.pk', '39816326233', 'Usman Khan', '29aab8166e06b21e3b1b6dc2021672201da937109ac08f967297c91a6ee0aaa8', 'worker', '2024-10-30 19:17:41', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums715@lums.edu.pk' OR phone = '39734108982')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums715@lums.edu.pk', '39734108982', 'Shahid Zaidi', '888720439f3c8f3b8c2964a57fd6bb6a80d4f2a69320afc4d267ea82f1979db5', 'student', '2025-04-09 10:54:07', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student716@lums.edu.pk' OR phone = '39894774318')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student716@lums.edu.pk', '39894774318', 'Shazia Ali', '917c162b189f8237618ef5df2464d3af00b2a6883b99641bc3e2c6ee765186d1', 'worker', '2025-10-29 12:23:49', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user717@lums.edu.pk' OR phone = '37504268128')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user717@lums.edu.pk', '37504268128', 'Rabia Ali', '42e352509285b5c0f2c63a4cce4f1928330556624df78d6fb8fc5c3bd94c4424', 'worker', '2023-12-31 16:32:49', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user718@lums.edu.pk' OR phone = '31570253100')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user718@lums.edu.pk', '31570253100', 'Maria Aziz', '235b01595aa1b7b2319b2e5852b0f120f1cefb39abcdce5e8050074c0ff8494f', 'worker', '2024-11-29 14:14:51', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user719@lums.edu.pk' OR phone = '33190691270')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user719@lums.edu.pk', '33190691270', 'Majid Haider', 'c90b3b8a8b17f2dbed7dea149536f9596c430546dccd9a37f0fe507be184e124', 'worker', '2024-07-06 11:14:12', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student720@lums.edu.pk' OR phone = '35445880123')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student720@lums.edu.pk', '35445880123', 'Nadeem Saeed', 'ea54011bb18890bf856ecb2e92023a1099c48b241fcdc5df157b8bde694e7e09', 'teacher', '2023-11-26 11:46:33', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '00721@lums.edu.pk' OR phone = '33052090961')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('00721@lums.edu.pk', '33052090961', 'Shafiq Naqvi', '694f9f72fa1fafd0d7c437311157442fc5e1090845925a70d975f3df72450590', 'worker', '2024-03-18 22:07:54', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '00722@lums.edu.pk' OR phone = '35369943254')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('00722@lums.edu.pk', '35369943254', 'Zahid Malik', '73a0f0e5c9a2d95b08e69e0071ad610a56f86efdc2bb5237645a4678b0effd8b', 'admin', '2025-10-07 20:36:46', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student723@lums.edu.pk' OR phone = '36480915717')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student723@lums.edu.pk', '36480915717', 'Waqas Zia', '14e91c1a4a04373e0e0ec588f56a42c51ce45accb7a91834571c34fc4312b14b', 'admin', '2025-11-18 09:35:56', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '00724@lums.edu.pk' OR phone = '38086628385')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('00724@lums.edu.pk', '38086628385', 'Hassan Masood', '86d4d2f05c521b455cabe51b7b85b40ca4a17902bf64d4046c4ea8435b30133b', 'teacher', '2024-06-06 20:59:50', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student725@lums.edu.pk' OR phone = '39222788713')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student725@lums.edu.pk', '39222788713', 'Shama Ghani', '062b5a9aad76c65e2ad55c71e557be5ca67e20bbc3ba14ad77f96c7fa42417ae', 'student', '2025-08-16 23:19:52', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student726@lums.edu.pk' OR phone = '38396843997')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student726@lums.edu.pk', '38396843997', 'Shaista Hussain', '604bad93748a3cfa2cf7975c2561346cbe74549137a4e93ef3ed3613a8e65092', 'worker', '2024-03-07 05:58:34', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student727@lums.edu.pk' OR phone = '37508361942')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student727@lums.edu.pk', '37508361942', 'Adnan Anwar', '24e77fc39e96150be98b12663cef7194504d96896cb40f24485900f0076ab126', 'worker', '2024-04-27 12:19:41', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student728@lums.edu.pk' OR phone = '38119355167')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student728@lums.edu.pk', '38119355167', 'Omar Waheed', '5a9f0ea64a5f7f7a44e1de4be147e034d244dc130cb8ff1e2cf394f207f4612c', 'teacher', '2024-11-08 04:46:45', 1, '2025-05-20 04:15:56');
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '00729@lums.edu.pk' OR phone = '30414086413')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('00729@lums.edu.pk', '30414086413', 'Naveed Siddiqui', 'e2a279facf259c8cb8d7d808eca14d6a6e25b8e5782932102f27b4f4f2a20cc3', 'admin', '2023-12-03 21:49:26', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user730@lums.edu.pk' OR phone = '39782246781')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user730@lums.edu.pk', '39782246781', 'Alina Waheed', '8b4cf5479ea409de9e3b51e716307b1d261b1521302c3bf46068717a197db073', NULL, '2025-08-16 03:44:18', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user731@lums.edu.pk' OR phone = '34588568292')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user731@lums.edu.pk', '34588568292', 'Sara Raza', '2ff0bded5b64f850a2d9ce01906bcfc1fab0727eab0f242bd93a1817dbcc90ae', 'teacher', '2025-06-19 21:26:29', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student732@lums.edu.pk' OR phone = '36976653239')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student732@lums.edu.pk', '36976653239', 'Iqra Iqbal', '520443bcbc5a185251b5c4edfa31fdfce007ff39093a0142aa66df40ae5d4f67', 'student', '2025-04-13 13:00:11', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '00733@lums.edu.pk' OR phone = '38018368944')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('00733@lums.edu.pk', '38018368944', 'Muhammad Qadir', '598b8767ed3634507a2c4d3c83798462267790d24792a40467eadaec4cc4e783', 'admin', '2025-10-13 11:42:58', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '00734@lums.edu.pk' OR phone = '32762662278')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('00734@lums.edu.pk', '32762662278', 'Sana Naqvi', '7e64c958ce7e402d8325f6e5a9c5e4dab03bd7768f4a7df61947e4a16855e217', 'worker', '2025-04-11 16:04:04', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums735@lums.edu.pk' OR phone = '38085997123')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums735@lums.edu.pk', '38085997123', 'Zahid Sadiq', '3f7c58297bd7d6280af957a96ecd7561dd780d70a880cd4917d8c7a18d18ae30', 'worker', '2025-01-23 16:49:08', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student736@lums.edu.pk' OR phone = '31027180699')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student736@lums.edu.pk', '31027180699', 'Alina Shah', '748198e540c87a3311bb5d37293a285d2146f9713eeed117512558c8c199977b', 'teacher', '2025-04-08 05:49:39', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user737@lums.edu.pk' OR phone = '37039942569')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user737@lums.edu.pk', '37039942569', 'Tahira Yaqoob', '4f4270759ae4d0cae1452e640f310b3c3598abdc5e73eb71f7dfc44c7e7c9fc3', 'student', '2025-09-15 08:55:31', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user738@lums.edu.pk' OR phone = '39283051748')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user738@lums.edu.pk', '39283051748', 'Nadia Mirza', 'a79b0abbce3d39eac7e5b775d5676f6c777617830e42cbfc5dc917ff72b2fc4a', 'teacher', '2025-09-20 00:05:49', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums739@lums.edu.pk' OR phone = '33667213694')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums739@lums.edu.pk', '33667213694', 'Muhammad Ghani', 'c64a7c6fc9586c6111244548e14d623e5cb5fef164d9c00e4f038a53b06bc7ab', 'teacher', '2025-06-02 06:04:21', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums740@lums.edu.pk' OR phone = '31870036508')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums740@lums.edu.pk', '31870036508', 'Tariq Aziz', 'e0dfd7e423d76a7f14a9efcc94fdd7f46bee3849da78c0d6b5f2354fbe4ce624', 'teacher', '2025-11-18 19:04:10', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '00741@lums.edu.pk' OR phone = '37507295927')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('00741@lums.edu.pk', '37507295927', 'Yasmin Qureshi', 'dc2aaf0ec41a5921c0a83f78c556aeac2743690994ccfef944d5bc19508768ea', 'student', '2025-08-13 13:27:24', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user742@lums.edu.pk' OR phone = '33849325805')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user742@lums.edu.pk', '33849325805', 'Rashid Tariq', 'e0c33a2f8aae84fdc75ff8c179da849cd309af510de88975ec3bc2e127d5a2ed', 'admin', '2025-09-14 00:56:17', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user743@lums.edu.pk' OR phone = '38758730538')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user743@lums.edu.pk', '38758730538', 'Aftab Iqbal', '7a043b837c3138ba94e016d31f2af23d8873a54f2e5681a54723b4915e55e66c', NULL, '2025-09-02 11:27:16', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '00744@lums.edu.pk' OR phone = '31821159732')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('00744@lums.edu.pk', '31821159732', 'Raza Shah', '1c462562773df9541d23737443ffa3e817e280752bcbf3fc839e232b79db6c59', 'student', '2025-11-05 08:10:41', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user745@lums.edu.pk' OR phone = '39751073616')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user745@lums.edu.pk', '39751073616', 'Farhan Hameed', 'd461548949c16843880e471896f29fb431e39ea9ccee2723607f15d578a09d6f', 'worker', '2025-05-31 10:56:51', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums746@lums.edu.pk' OR phone = '33462462044')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums746@lums.edu.pk', '33462462044', 'Rizwan Hussain', '235b510bc4e28d4c1d4fee2ad2803d3111852291cb6325adfce246b0f89a0574', 'admin', '2024-11-29 10:31:59', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '00747@lums.edu.pk' OR phone = '30914394852')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('00747@lums.edu.pk', '30914394852', 'Riffat Qadir', 'b56ebdde6d51a7b2db735e103098fd1f0b6ed4e69ed6422a481f389d89cb9105', NULL, '2023-12-20 13:08:29', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student748@lums.edu.pk' OR phone = '35051594812')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student748@lums.edu.pk', '35051594812', 'Sumera Yaqoob', 'e0ebe5f951c6765b55246786f71b561699da796766006ae45857e685286f0b8b', 'teacher', '2025-08-14 07:47:32', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student749@lums.edu.pk' OR phone = '33706787351')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student749@lums.edu.pk', '33706787351', 'Yusuf Jamil', '183f2979641b342ecf62062a296c7de0675512d00b6f122489b961a83278096d', 'admin', '2024-08-16 09:57:38', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '00750@lums.edu.pk' OR phone = '32496339602')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('00750@lums.edu.pk', '32496339602', 'Rizwan Bashir', '9736d1e1063edd800073550a6317f77d6efacf4e2dafade24880915c9191a0e6', 'student', '2025-05-02 02:00:47', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user751@lums.edu.pk' OR phone = '31467743463')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user751@lums.edu.pk', '31467743463', 'Anwar Tahir', '95c53bd5d0f73252885e9b936037c6134a049264d57630ca4a0a963bc482855f', 'admin', '2024-10-31 05:05:31', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums752@lums.edu.pk' OR phone = '36915788941')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums752@lums.edu.pk', '36915788941', 'Sana Ahmed', 'd428dd870b3c0eb7b8dce19c5c2d72df2ceb6f2e300b2a35e19aa1a848768006', 'teacher', '2024-11-10 20:34:42', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user753@lums.edu.pk' OR phone = '36902205383')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user753@lums.edu.pk', '36902205383', 'Rafiq Akhtar', '974f5c52c6a08b2aedb97c4c60eed4e261208cb41ea29fe8326aec1d59ab8bd8', 'teacher', '2024-03-27 13:29:54', 1, '2024-07-11 19:42:42');
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user754@lums.edu.pk' OR phone = '38066810589')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user754@lums.edu.pk', '38066810589', 'Jamil Ayub', '12c56198fcc44d84e643fc8834e375f60247df06d0916e15ba2bbd1e68037764', 'teacher', '2024-11-09 22:18:35', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums755@lums.edu.pk' OR phone = '37608599461')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums755@lums.edu.pk', '37608599461', 'Abdullah Hassan', '89fcb7d7aff19e610b913da293484f0458b58b091a5a12e34d58708f55c9ffe7', NULL, '2025-04-09 03:08:46', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student756@lums.edu.pk' OR phone = '33454998914')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student756@lums.edu.pk', '33454998914', 'Farzana Hussain', 'f574f56dc1882b97bde5bd00f0da15fb5427b01fb611c44340d3c1870b6f128a', NULL, '2024-07-12 11:34:56', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '00757@lums.edu.pk' OR phone = '30499300164')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('00757@lums.edu.pk', '30499300164', 'Azhar Javed', '3f973a33e2b275e10771f9aeb93484d2edccb3a89bbda25299f018dff27845e1', NULL, '2023-12-06 22:41:05', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '00758@lums.edu.pk' OR phone = '34775730779')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('00758@lums.edu.pk', '34775730779', 'Zain Zaidi', '44cc3ad581fd7f09349235921b78544d7a455cc2c877e727d90ca4f82c40d9d9', NULL, '2024-11-20 00:39:55', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student759@lums.edu.pk' OR phone = '30050212866')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student759@lums.edu.pk', '30050212866', 'Naseem Shah', 'e1f20326cdb8fee1501cff2c176ea56606d4bc069c4bf658fec16c528ab40bdf', 'worker', '2024-06-09 16:35:15', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums760@lums.edu.pk' OR phone = '39132839076')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums760@lums.edu.pk', '39132839076', 'Anwar Waheed', 'b5986056b14c0a1844fbf4347a258f98b7d4626c0c39e20b9b00cefa4cc638b2', 'student', '2025-05-06 23:41:46', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user761@lums.edu.pk' OR phone = '38272851778')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user761@lums.edu.pk', '38272851778', 'Khalid Iqbal', '37ee288cd12cb933ef1ca9c1f8a599a9da26c091c33cff7e96b8c13deab2d5ee', 'teacher', '2025-04-07 10:26:00', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user762@lums.edu.pk' OR phone = '38894875887')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user762@lums.edu.pk', '38894875887', 'Rubina Ayub', '1a9606b632f6459ec043cb711b0eee49d925cfd21ab7af9b12baeb16338e769b', 'student', '2024-12-24 06:13:33', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user763@lums.edu.pk' OR phone = '30416255360')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user763@lums.edu.pk', '30416255360', 'Ayesha Tahir', '05f0bd4fc894b4d9fd08f69f3bf1d0f8958b5e14fa3747cc67a8f50f8a290230', 'admin', '2024-01-17 12:03:12', 1, '2024-06-11 19:08:10');
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user764@lums.edu.pk' OR phone = '31578478313')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user764@lums.edu.pk', '31578478313', 'Aamir Yaqoob', 'b8c1f237a31c9899fcc0d6f36b3e2bf28d9b9ccd4f195d0a3c4e9df240e2e57e', 'teacher', '2025-01-10 17:28:12', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums765@lums.edu.pk' OR phone = '37772505950')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums765@lums.edu.pk', '37772505950', 'Khalid Mirza', '285b819223d43f4e15eee66f54072202011db08bf6407cf08ca86032180744fe', NULL, '2025-09-26 21:47:52', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user766@lums.edu.pk' OR phone = '38168033896')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user766@lums.edu.pk', '38168033896', 'Usman Karim', '92c18a48abed1086c6dacd1165abea6d0dceab1366ff7a9017369a4d60c2652f', 'student', '2025-01-03 00:07:54', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student767@lums.edu.pk' OR phone = '33237083132')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student767@lums.edu.pk', '33237083132', 'Maria Latif', '1ad02a86d12a2b6a4eaa49742a8e7baa57d6d1e00ec5b29a9246d2a572bf4758', 'student', '2024-02-06 12:55:23', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums768@lums.edu.pk' OR phone = '36751728802')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums768@lums.edu.pk', '36751728802', 'Qamar Akhtar', '80cb3c27ea8007d02b00e1ecfdf4b8531981a00a6803e748469493ff46d0ca04', 'worker', '2024-09-01 17:15:42', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user769@lums.edu.pk' OR phone = '33694008871')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user769@lums.edu.pk', '33694008871', 'Saleem Hassan', '11dfb37ee293ed164e04b5a8569633267aed0a87b1d42465716df0fd6c366732', 'worker', '2024-09-16 17:56:15', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student770@lums.edu.pk' OR phone = '32383678584')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student770@lums.edu.pk', '32383678584', 'Majid Tariq', '59143c8db529b3a93233543d6f8432de274a6234eee6c316c71bd8fb6eb13b1c', 'worker', '2024-11-08 10:01:58', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums771@lums.edu.pk' OR phone = '34773315822')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums771@lums.edu.pk', '34773315822', 'Fahad Rasheed', 'b5a09e578078f8abf658f59d0cd14fa113ee728ec1d5e14c45779b8fb73dff8e', 'student', '2025-08-18 20:04:59', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student772@lums.edu.pk' OR phone = '34748756355')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student772@lums.edu.pk', '34748756355', 'Hassan Hussain', '626d19307ee78206a4a0c355bc98f435094e995bab4820f9792d7fcb190cb90c', 'student', '2024-11-22 00:02:17', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '00773@lums.edu.pk' OR phone = '34265710331')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('00773@lums.edu.pk', '34265710331', 'Aftab Malik', '060ae6e6a153759a38607e2319a250257e662e2a3a611c2c3e4c6bbda8ea536f', 'worker', '2024-04-08 08:24:12', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user774@lums.edu.pk' OR phone = '37929647019')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user774@lums.edu.pk', '37929647019', 'Sadaf Mahmood', '4a4011bee3fed4cffa2579de8f19643fa53eeafcc97675a4f0914d70b61552e6', 'student', '2024-07-12 12:47:06', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums775@lums.edu.pk' OR phone = '34887689052')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums775@lums.edu.pk', '34887689052', 'Saad Raza', 'f417539617a790ad9e99029ef183973df28e3a183a22a665e0f9ea69f08fac07', 'worker', '2024-04-30 09:38:21', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums776@lums.edu.pk' OR phone = '34755200257')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums776@lums.edu.pk', '34755200257', 'Alina Chaudhry', '211e8ef83dcfadef40d429e0b14b9cdc74029746d4f59862afb8fadae671054b', 'worker', '2025-06-11 22:19:54', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums777@lums.edu.pk' OR phone = '38410306031')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums777@lums.edu.pk', '38410306031', 'Bushra Abbas', 'a7c5bbb9aee1c49beb8819da6b5855aea43d0a6cf58b1b8bcf703ec74a4b359d', 'admin', '2024-07-03 04:34:58', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user778@lums.edu.pk' OR phone = '33571036674')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user778@lums.edu.pk', '33571036674', 'Yusuf Sheikh', '8e754771e774067d899ade8214db58f8bd8124f11bc45ea40a9dc1c8edd65eb1', 'student', '2025-01-22 10:38:16', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user779@lums.edu.pk' OR phone = '30717070110')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user779@lums.edu.pk', '30717070110', 'Shahid Zaidi', 'a9a6982b14b0393b4ee8444336639ee0b963715687df3e075d641655ea816d03', 'admin', '2025-10-08 04:59:49', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student780@lums.edu.pk' OR phone = '32400298728')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student780@lums.edu.pk', '32400298728', 'Shafiq Qadir', 'de021cf57158e1bcf69ccb986f642b81fd73ca888e01bf3efb81d51c3e559004', 'admin', '2025-01-07 09:19:43', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student781@lums.edu.pk' OR phone = '34127732422')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student781@lums.edu.pk', '34127732422', 'Tanvir Butt', 'ea72a78c1a9452ee592e35d795f6a0419048a1ebf04ffedf866fc45763ce977f', 'teacher', '2024-07-22 22:17:32', 1, '2024-11-17 05:24:47');
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student782@lums.edu.pk' OR phone = '38788148120')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student782@lums.edu.pk', '38788148120', 'Noor Akhtar', '0c0554517254144cd4c90fd63ea935e8fe45fcc755c40a640610be150427d76a', NULL, '2024-03-04 15:41:44', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums783@lums.edu.pk' OR phone = '35840268885')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums783@lums.edu.pk', '35840268885', 'Hassan Hussain', '5f4b1a6fcb0552efcc35dcb7dfe8a203ae758ce10c53ca84d7420e7e0c6014b7', 'student', '2024-08-29 01:05:21', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '00784@lums.edu.pk' OR phone = '33270309822')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('00784@lums.edu.pk', '33270309822', 'Sadaf Javed', '8df6e59ced8ae0f7b27ed36716b9f54ee0035e4c47d236a848e2724d674d805c', NULL, '2024-10-11 19:41:40', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '00785@lums.edu.pk' OR phone = '37712835203')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('00785@lums.edu.pk', '37712835203', 'Yasmin Hussain', '600e275d9478f189f44fea4d6cf6c8937ea7944e3220492e4cec7d0180a83c83', 'worker', '2025-09-15 06:39:49', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student786@lums.edu.pk' OR phone = '32436619801')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student786@lums.edu.pk', '32436619801', 'Nazia Iqbal', '52af8b43b515e1c4f7613049b1dd16506be7e96a119e096af67fdae46021840b', 'admin', '2024-12-06 14:30:08', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user787@lums.edu.pk' OR phone = '33561536116')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user787@lums.edu.pk', '33561536116', 'Talha Anwar', '4a0ba5e7b12d005e093744bfd7f16f39add557b65aad7b4199030af3ff851c35', NULL, '2025-03-11 10:39:18', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '00788@lums.edu.pk' OR phone = '34799870211')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('00788@lums.edu.pk', '34799870211', 'Zaheer Anwar', '1975fd5f354ecc32787b03069f7a91560910165e0225e2c3de2ddc392a1f8fd9', 'worker', '2024-02-13 00:46:29', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '00789@lums.edu.pk' OR phone = '35073714479')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('00789@lums.edu.pk', '35073714479', 'Shamsa Waseem', '5efc2b017da4f7736d192a74dde5891369e0685d4d38f2a455b6fcdab282df9c', 'student', '2025-09-21 08:51:57', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user790@lums.edu.pk' OR phone = '36258127316')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user790@lums.edu.pk', '36258127316', 'Humaira Karim', '715d8723d3cb6e785a0d0fe614f65a0eee61704beaefea1f538c3c14b4663c55', 'worker', '2024-07-31 02:02:54', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '00791@lums.edu.pk' OR phone = '34100770090')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('00791@lums.edu.pk', '34100770090', 'Maria Umar', 'c9fa2919b96def662d4cd8c35d76fe4724ea59651fa9a301d41bab1ac47d8f65', 'teacher', '2025-06-19 07:01:18', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user792@lums.edu.pk' OR phone = '32656777482')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user792@lums.edu.pk', '32656777482', 'Arshad Farooq', '2cbbc8901e76fe7cc46dc9f1e61a06fc219f4f1073609db0477e9656a33c146b', 'worker', '2025-03-06 11:26:12', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student793@lums.edu.pk' OR phone = '34875381991')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student793@lums.edu.pk', '34875381991', 'Saleem Naqvi', 'b396f8fdeda25611e0937b9401fa60001c1226e9b957afa47350ab205b7e0b0c', 'worker', '2024-02-24 13:23:03', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user794@lums.edu.pk' OR phone = '37333103490')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user794@lums.edu.pk', '37333103490', 'Adnan Aziz', '7fa39616baf170c2cf256028d858dfd6ac838adf4c41b81191feea7151093b20', 'admin', '2024-07-28 12:22:21', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums795@lums.edu.pk' OR phone = '37926688752')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums795@lums.edu.pk', '37926688752', 'Tariq Raza', '838d34d49be0c31899c22a5e3b184ea860bf2656ab7725d91f061750b8bd5e5c', 'student', '2024-06-25 07:59:34', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user796@lums.edu.pk' OR phone = '36799132164')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user796@lums.edu.pk', '36799132164', 'Rabia Ayub', 'b13fc2857171b07ed659a98e7e9e66a565fea7471d1677413fabfb2ed1336337', 'teacher', '2025-08-31 19:32:39', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums797@lums.edu.pk' OR phone = '38646188715')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums797@lums.edu.pk', '38646188715', 'Naseem Hameed', '45e39b5486ecbfcde5bd5521d4741b67d71527bdaf73bdd7bf362dbd42b583eb', 'student', '2024-09-23 08:54:30', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student798@lums.edu.pk' OR phone = '34147650540')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student798@lums.edu.pk', '34147650540', 'Shama Yousaf', '737a0662613fc12e087b27504d931844d7a4263ff8b869617eb11db30cdf2abe', 'student', '2024-07-29 22:56:20', 1, '2024-11-18 13:28:02');
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student799@lums.edu.pk' OR phone = '35724645630')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student799@lums.edu.pk', '35724645630', 'Maryam Umar', 'f948dd93ee22dd0ea2ee8c9d68aea7d382eb6c056ad6c9abb06553e2de57c3a1', NULL, '2025-06-09 07:04:33', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student800@lums.edu.pk' OR phone = '30072502221')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student800@lums.edu.pk', '30072502221', 'Shahid Umar', 'f7318f6ac2646188ed6348a1ad22907b5c0fb02bb344369747467f8330524df8', 'student', '2025-01-15 16:53:26', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user801@lums.edu.pk' OR phone = '38858112886')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user801@lums.edu.pk', '38858112886', 'Salman Tahir', '3648e14334c673f47224d0e0b5c1cc0ba66a695b71fec409530025d990b0238b', 'teacher', '2023-12-19 05:59:31', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student802@lums.edu.pk' OR phone = '31829727808')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student802@lums.edu.pk', '31829727808', 'Zain Butt', '4e6a7adb770d1bac42c992dd19cb26814916b30533ca7643d90cab54413fbe18', 'worker', '2024-10-30 21:38:35', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student803@lums.edu.pk' OR phone = '31739594945')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student803@lums.edu.pk', '31739594945', 'Waqas Hassan', 'c62ab7b28bdf747c49ea7142be0ddd647345e69d1fc41577bc2d1b1b043e2f8d', 'student', '2023-12-29 03:06:24', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums804@lums.edu.pk' OR phone = '34745869144')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums804@lums.edu.pk', '34745869144', 'Kamran Javed', 'f672f159cdcc2a25623a6700ed3b1794bf4530aadafe5ea496da8ec1be787ce3', 'student', '2025-03-11 05:25:32', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '00805@lums.edu.pk' OR phone = '37964711994')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('00805@lums.edu.pk', '37964711994', 'Jamil Nadeem', '05e078819e0a5f9575617f04b04298edd3c1a0cbf2176ef77b176a885e5a315a', 'worker', '2023-12-13 14:37:51', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user806@lums.edu.pk' OR phone = '33572286494')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user806@lums.edu.pk', '33572286494', 'Shahzad Siddiqui', '2dc1e04fb930ef971d9fd5c2ea064f45d11e7fbe694c7be6caf5eff963c28170', 'teacher', '2023-12-02 08:21:35', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums807@lums.edu.pk' OR phone = '33520063854')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums807@lums.edu.pk', '33520063854', 'Maria Anwar', '2a08ac0c4b16dd742223645f3b6214b9c6ea7ebbb37d6080e24b7a683b17be1f', 'teacher', '2024-11-28 04:18:38', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student808@lums.edu.pk' OR phone = '32793266108')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student808@lums.edu.pk', '32793266108', 'Salman Qadir', 'cc0a3922602622537d23bac97d36235e03ea2c13191a9b1c3eeae2b86853b4c9', NULL, '2024-07-30 01:29:11', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student809@lums.edu.pk' OR phone = '35418899440')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student809@lums.edu.pk', '35418899440', 'Bilal Rafiq', 'e10b073d71ab047df38e30c0158a09fb6dc6646effcd1646f70a493af0cff3fd', NULL, '2025-09-14 17:39:12', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '00810@lums.edu.pk' OR phone = '38204951397')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('00810@lums.edu.pk', '38204951397', 'Saleem Umar', '651450d2c90bedda3c606998f1de455fd8c3c4da162b96ebb07d0bb45d24e710', NULL, '2023-12-15 03:56:18', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '00811@lums.edu.pk' OR phone = '32718922052')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('00811@lums.edu.pk', '32718922052', 'Usman Hussain', 'ae6c45aace04e7dc98d8df4ab2fab2923379a31bea74e7aaef2aa27bf05467af', 'admin', '2025-01-25 18:33:52', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user812@lums.edu.pk' OR phone = '32554871490')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user812@lums.edu.pk', '32554871490', 'Hamza Haider', '751aea0c9c6195d6b3b3cb7be4026408018da8810318f3cbfd7786344a9bc572', 'teacher', '2024-10-21 20:54:39', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums813@lums.edu.pk' OR phone = '37801711262')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums813@lums.edu.pk', '37801711262', 'Abdullah Haider', '420af3f7b26ed6ccc001aaaf01497b066e57f9424933412690b44f17c8b8a28f', 'worker', '2025-05-09 06:24:51', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums814@lums.edu.pk' OR phone = '30459797333')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums814@lums.edu.pk', '30459797333', 'Farzana Zia', '15d2e84d1861b2cc2360859fc2b89248ad7174227dd7a12a56156bcbf7c757ba', 'teacher', '2024-11-29 11:41:53', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student815@lums.edu.pk' OR phone = '37837606715')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student815@lums.edu.pk', '37837606715', 'Tariq Saeed', 'f8e1852b6171d8d65487b50fffb3f01873ed66c22ab628a3dff92a5d0d739bf2', 'worker', '2025-06-13 18:11:27', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '00816@lums.edu.pk' OR phone = '33676557587')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('00816@lums.edu.pk', '33676557587', 'Sidra Javed', '0e9f513b62be54752c5126ae09b6185ad2127b5dd6f8aac152d29729fe2b1763', 'admin', '2024-05-26 04:41:59', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user817@lums.edu.pk' OR phone = '33054214637')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user817@lums.edu.pk', '33054214637', 'Faisal Ilyas', 'ef93101b9baffd6388dd857ff2d88524dd6069cc06a6ae5967b71fef13aa6f95', 'worker', '2025-06-08 10:13:41', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user818@lums.edu.pk' OR phone = '34841321138')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user818@lums.edu.pk', '34841321138', 'Tuba Rafiq', 'f145abb87b65fd9301ae729db0f1b833a1ef7551dfa4fb568e16801229ef14cd', NULL, '2025-09-15 21:52:00', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user819@lums.edu.pk' OR phone = '36477242249')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user819@lums.edu.pk', '36477242249', 'Tahira Hussain', '6a5998a7caae1c5ac8459ce5b43c443eef2ec8a06b13cac08de28d4c96705b16', 'worker', '2024-11-19 10:06:29', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student820@lums.edu.pk' OR phone = '30853836032')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student820@lums.edu.pk', '30853836032', 'Aamir Waseem', '9ec924d25de8cd92e3bf9372cd7acbc920fd2f2b5460f7dfd1ac4014665bf5fb', 'student', '2024-05-06 20:20:12', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student821@lums.edu.pk' OR phone = '37254989700')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student821@lums.edu.pk', '37254989700', 'Amna Mahmood', 'e073f3479b7700c951dc08c52d76998b67b53292ac3070b1277df31aa9a937df', 'worker', '2025-04-29 06:22:26', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student822@lums.edu.pk' OR phone = '37409317582')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student822@lums.edu.pk', '37409317582', 'Saima Ilyas', 'f6ca6af5be3f94c1194767921d5cf2235c3efa9d997b069c07ee8f301990a5fe', 'admin', '2025-03-03 09:44:42', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student823@lums.edu.pk' OR phone = '32932093418')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student823@lums.edu.pk', '32932093418', 'Aamir Mirza', '60a9ecac7a2fac64cfc5e36ec341b9d1182389b067f0009e46167636e8e464aa', 'student', '2024-06-04 21:36:53', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student824@lums.edu.pk' OR phone = '37640558204')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student824@lums.edu.pk', '37640558204', 'Sumera Hussain', '505c8336548ca3eded781bf35c9c79bab7ccfad46720f5f69be8d45550a9e48e', 'teacher', '2024-08-30 03:56:19', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user825@lums.edu.pk' OR phone = '32390172301')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user825@lums.edu.pk', '32390172301', 'Tuba Ali', '08769c9b8473d3f43e0a9c0e55fb8d6761e9684df439230ae880c91527b704b7', 'teacher', '2024-08-20 07:35:56', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '00826@lums.edu.pk' OR phone = '37481437264')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('00826@lums.edu.pk', '37481437264', 'Aamir Hussain', '0a4d53db317ce0d27f86f5a3b28cffabbdd0ebc5ed5af3bfd213dcc2702adfdf', 'admin', '2024-01-27 07:20:04', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user827@lums.edu.pk' OR phone = '38299356621')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user827@lums.edu.pk', '38299356621', 'Zain Khan', 'dfddfd466a48a3273e90ac9bf55d8ba10ba4efcec94b5a1721b08d122471c985', 'admin', '2024-08-25 23:21:25', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '00828@lums.edu.pk' OR phone = '31277992833')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('00828@lums.edu.pk', '31277992833', 'Amna Qadir', 'b44664549065595295658e83e9a4adf5adf83c6e95a71dfcb53846b1aff9a754', 'teacher', '2025-07-25 16:36:40', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user829@lums.edu.pk' OR phone = '31714037140')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user829@lums.edu.pk', '31714037140', 'Abdullah Yaqoob', '1e6775d21946367a5bd5e8d982dddc8fb89086535219e2d6de05e99f5b42f5d2', 'worker', '2024-09-14 22:24:29', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student830@lums.edu.pk' OR phone = '36662625894')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student830@lums.edu.pk', '36662625894', 'Samina Zia', '45a58cbf559c1eb800570b79e0940d0938a7be5746249442f50c746d783d9ef8', 'worker', '2024-03-23 03:11:35', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user831@lums.edu.pk' OR phone = '30321284513')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user831@lums.edu.pk', '30321284513', 'Hanif Jamil', '033d40d4fc336d9ae6e042f085dcba081b777ec1058a9b2084dc7892ba9ee1ac', 'student', '2025-02-27 06:56:03', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums832@lums.edu.pk' OR phone = '33998081049')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums832@lums.edu.pk', '33998081049', 'Ayesha Zaidi', 'cd26f89a234f34a3c3de1fe455b0578007173038029b3f84f0701033a72b0635', 'worker', '2025-06-01 20:57:19', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums833@lums.edu.pk' OR phone = '39071596435')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums833@lums.edu.pk', '39071596435', 'Faisal Waheed', '809a075d34a014828c8ca596fceefd9fb3f67fc5dfd5d7d1c739b6dcd50dcc01', 'admin', '2025-07-17 18:43:10', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums834@lums.edu.pk' OR phone = '39920472784')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums834@lums.edu.pk', '39920472784', 'Wasim Iqbal', 'f43d888c837c10d0c81ba4abfe2ead43ef137c9678d0c486602a3be8d1d7d68c', 'worker', '2025-03-07 08:04:49', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user835@lums.edu.pk' OR phone = '39563802242')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user835@lums.edu.pk', '39563802242', 'Zain Mirza', '2ca89fec23ad0add3e09f0953148fbb8b9ad84c3ec818114c7f26ea7bb21a1e8', 'student', '2025-09-21 18:58:33', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums836@lums.edu.pk' OR phone = '35934944460')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums836@lums.edu.pk', '35934944460', 'Kashif Anwar', 'c8f670a8072db50268cc8bf69bae51288f920987110f56667201203d2f82eb0d', 'worker', '2025-01-25 11:10:25', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user837@lums.edu.pk' OR phone = '35297488552')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user837@lums.edu.pk', '35297488552', 'Aamir Jamil', '021443eefa9d71c4a2083ec822f6f88cfdad09837550de9dd7dcdcdb8b4430fe', 'admin', '2024-05-16 13:01:59', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums838@lums.edu.pk' OR phone = '37477517994')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums838@lums.edu.pk', '37477517994', 'Khadija Raza', 'ccf4cc7696c0f75310d23e67ae10f0048b504904e79c443f50095031e1086c7e', 'teacher', '2025-09-04 20:39:39', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums839@lums.edu.pk' OR phone = '36596466703')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums839@lums.edu.pk', '36596466703', 'Junaid Anwar', '44c001202eff0dcafb23f13aa3a4295bab6b564be4096ff00803529158635596', 'student', '2023-12-28 00:54:47', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user840@lums.edu.pk' OR phone = '38188109759')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user840@lums.edu.pk', '38188109759', 'Yusuf Zaidi', 'b3a74ced6e65bccd52c8cf992f5311eacc477dfb96a6c5d1eba9f1a347ccaec2', 'student', '2025-06-16 07:50:13', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '00841@lums.edu.pk' OR phone = '39611995610')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('00841@lums.edu.pk', '39611995610', 'Zain Tahir', '68557755c103db600fd89934e19fe7194fca71e46cc8161dfb48649b9624a56f', 'worker', '2025-10-02 15:41:19', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student842@lums.edu.pk' OR phone = '32076131835')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student842@lums.edu.pk', '32076131835', 'Nadia Qureshi', '8c40a72b7e725b4c5f7e633f618204b2e8e80245390f6c3d1d860ac1298e7779', 'admin', '2024-11-19 08:04:07', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user843@lums.edu.pk' OR phone = '35032845902')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user843@lums.edu.pk', '35032845902', 'Azhar Saeed', 'fe452bf64a2d5f87debf48a95d613af837022bc320fb694c6afae6779d665996', 'student', '2024-03-30 03:11:25', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums844@lums.edu.pk' OR phone = '38078047438')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums844@lums.edu.pk', '38078047438', 'Akram Khan', '34be13a25f087995db803f58cde3e3c9fde92b01cf324e849c3e6d4429ac60d8', 'admin', '2025-06-04 18:30:25', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student845@lums.edu.pk' OR phone = '30794751181')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student845@lums.edu.pk', '30794751181', 'Zainab Saeed', 'e85d59baa0846511b692d1f8972f039b8a8f56092f7e208493532a22449ebccf', 'student', '2024-02-13 05:55:05', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student846@lums.edu.pk' OR phone = '39252586325')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student846@lums.edu.pk', '39252586325', 'Maryam Rafiq', '9cd7ad6935b9b39f1c2c406dbf35ba6dac0b02457438e329e75f8f5acc66a383', 'student', '2024-06-14 21:29:21', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums847@lums.edu.pk' OR phone = '34077339415')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums847@lums.edu.pk', '34077339415', 'Naseem Qadir', '2a801a2de9f18fb3c21e012ba5b5de8bcc8a115a150220724b987bec8d64e8e6', 'teacher', '2025-05-14 08:03:12', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user848@lums.edu.pk' OR phone = '30053855246')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user848@lums.edu.pk', '30053855246', 'Farzana Qadir', 'e2c2eaabc35c541b950ce03a8b5db668b7fb7d0ac952b58a39f76288701d0879', 'worker', '2024-11-13 02:57:01', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '00849@lums.edu.pk' OR phone = '34760334058')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('00849@lums.edu.pk', '34760334058', 'Farzana Jamil', '8c1148a3c1c209a100d2fc89cd43641356edf55f926ea686895745fba415374e', 'admin', '2025-06-30 23:28:49', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '00850@lums.edu.pk' OR phone = '32481288219')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('00850@lums.edu.pk', '32481288219', 'Wasim Latif', 'f080cec40104d57d99b4a4f8ebea3f5e8e9f51446be87071e5a71ff86613950f', 'student', '2024-10-05 23:19:40', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student851@lums.edu.pk' OR phone = '38274136946')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student851@lums.edu.pk', '38274136946', 'Rafiq Rasheed', '7d810b494068f12cec6183922b8db0582fac9eb67931a97fac59c93cb1df7344', 'teacher', '2025-01-14 10:51:17', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '00852@lums.edu.pk' OR phone = '31666703364')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('00852@lums.edu.pk', '31666703364', 'Samina Saeed', '39b5b71071a808e909964d13c09347c62e7b5562701a4fe05650e5e61651f2df', 'worker', '2025-04-30 12:11:16', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student853@lums.edu.pk' OR phone = '30580246518')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student853@lums.edu.pk', '30580246518', 'Muhammad Malik', 'd60723a1be3dd3210a2cc7cf7e2f0c4ee17985231466c4f8a459bbe973c52e13', 'student', '2025-08-19 13:50:09', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '00854@lums.edu.pk' OR phone = '31894538040')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('00854@lums.edu.pk', '31894538040', 'Arslan Tahir', '1f54eeb514f957fa4849e09b8c9b29cbdc3d7cf00f19e2644fdf1ac4357cd815', 'teacher', '2024-05-24 16:14:08', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '00855@lums.edu.pk' OR phone = '36004351826')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('00855@lums.edu.pk', '36004351826', 'Humaira Mirza', '4c0a2156c015772b3ed41f74cdf5df012b1a3b94b108dbcacd4e285fe84c8207', 'student', '2025-07-07 09:03:21', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '00856@lums.edu.pk' OR phone = '34707641441')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('00856@lums.edu.pk', '34707641441', 'Rafiq Akbar', 'f6311d77aef5fc8b49a476f62e972df4d391b3b0c9d03652d1ce9d3d5f4289d2', 'admin', '2025-08-03 14:09:04', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums857@lums.edu.pk' OR phone = '32588858968')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums857@lums.edu.pk', '32588858968', 'Majid Mirza', '88f58a60d4a9cc9e90e879d86fc30439be7c56fa49d4ec66608aeb8a8d38b00c', 'worker', '2023-12-06 10:42:34', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums858@lums.edu.pk' OR phone = '35432836974')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums858@lums.edu.pk', '35432836974', 'Imran Masood', '3d70b78a09d37411d2ce7b6086b5553becef80f1e9a66006ddd0a8d1b602bca5', 'student', '2025-02-15 21:36:59', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user859@lums.edu.pk' OR phone = '32769409917')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user859@lums.edu.pk', '32769409917', 'Riffat Ghani', 'a4a8e811f701a1912491d5b5f53e2a01e1c8665543d7b2a04a8b2fb8d88ba8a4', 'teacher', '2024-09-21 05:30:48', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums860@lums.edu.pk' OR phone = '32000018848')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums860@lums.edu.pk', '32000018848', 'Anwar Rasheed', '371532b06a770ec64fc5c3d7016202586d5c1598ee3dd2ea5e979e1c15b2a161', 'teacher', '2025-02-23 18:41:31', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student861@lums.edu.pk' OR phone = '39197805242')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student861@lums.edu.pk', '39197805242', 'Fouzia Tahir', 'c808a61b291bc5fb9e9d78094e2bdfa292fd0c92bdd4fd4d8aa4ea28553e1acf', 'teacher', '2025-01-06 09:05:28', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student862@lums.edu.pk' OR phone = '31828519333')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student862@lums.edu.pk', '31828519333', 'Hassan Latif', '09e3601d1f616ad04fafb2475e7e1503f059aeed59b246b85f297fb8b11f1e5a', 'student', '2024-07-01 22:19:43', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student863@lums.edu.pk' OR phone = '35951595915')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student863@lums.edu.pk', '35951595915', 'Muhammad Ahmed', 'd5e990517f10aee758a673fa99fe83319049399bb1cee3f4e6347c846382c7ab', 'teacher', '2025-06-27 00:54:14', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums864@lums.edu.pk' OR phone = '39367565323')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums864@lums.edu.pk', '39367565323', 'Hanif Waheed', '78bff859a1ce64b18224c986547498715186fbe9e7b2f008163f46fe8f23a2e9', 'worker', '2023-12-29 22:05:40', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '00865@lums.edu.pk' OR phone = '33033382222')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('00865@lums.edu.pk', '33033382222', 'Azhar Shah', '96cb24f13113908b94c7d1e4f70fbababba2cab3d2bd31f27d35a3cb4d0e73af', 'worker', '2024-07-04 06:20:16', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student866@lums.edu.pk' OR phone = '35203114551')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student866@lums.edu.pk', '35203114551', 'Asim Qureshi', '58b4f514f075e5c37315750cf1b8ccbe847130b3c615459ecda9a354d0f4f9a2', 'worker', '2025-02-23 10:51:54', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '00867@lums.edu.pk' OR phone = '32737044767')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('00867@lums.edu.pk', '32737044767', 'Aamir Abbas', 'f1ca3cbfc5778cfcc9bc0c3253d29eda38c1f7027bead00e674ddecfe53235a8', 'teacher', '2025-08-06 08:52:16', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums868@lums.edu.pk' OR phone = '39888210878')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums868@lums.edu.pk', '39888210878', 'Rabia Jamil', '1ca54a8cea5c8ad05e377aaa3ea0c17e5470ada6b0255bbb9cace526db7e092b', 'student', '2025-05-07 02:56:30', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student869@lums.edu.pk' OR phone = '37164530551')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student869@lums.edu.pk', '37164530551', 'Majid Waheed', '33f851ac11253bf0ce4904c85aefddf732814d3dce2e90033fb6f48ce9f839d3', 'worker', '2024-01-23 01:40:26', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '00870@lums.edu.pk' OR phone = '39109832560')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('00870@lums.edu.pk', '39109832560', 'Shahzad Haider', '2f1882c397f7a26597c954cd8755eca2dd3378a4338d81c28c2a719158ccec64', 'student', '2024-11-02 00:39:58', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums871@lums.edu.pk' OR phone = '38063300690')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums871@lums.edu.pk', '38063300690', 'Bilal Ali', '60114e085766159433d94cc1746e63412979b1a044ac861231b0f867af7e4b6b', 'student', '2024-12-16 06:22:36', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums872@lums.edu.pk' OR phone = '37550217148')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums872@lums.edu.pk', '37550217148', 'Shaista Raza', 'a4bf35d46708aba31636abdf005010e5c99369ac58e1e8ea2437add3bb57b9df', 'student', '2025-11-05 15:43:22', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '00873@lums.edu.pk' OR phone = '32923840038')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('00873@lums.edu.pk', '32923840038', 'Naveed Mirza', '59ed96684368aa914116e2a417a93d44939d45f784385278a5f20300cde9eb91', 'worker', '2024-04-17 22:21:28', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums874@lums.edu.pk' OR phone = '38581846086')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums874@lums.edu.pk', '38581846086', 'Junaid Ayub', '8d4376db84d0abe073a9d15a012e563625963d61181b701457ed0d4341480aed', NULL, '2025-06-05 08:52:15', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '00875@lums.edu.pk' OR phone = '38755083410')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('00875@lums.edu.pk', '38755083410', 'Farhan Haider', 'd8a0967ee0c8a6ae4563d994ccd5ddc80f87ca964fd313b57046923039bcdba9', 'teacher', '2025-07-02 00:14:20', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums876@lums.edu.pk' OR phone = '31574532329')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums876@lums.edu.pk', '31574532329', 'Kamran Yousaf', '5fe9ba78382446ef7341b45fcd15691e6c0286641b80d78cee0c7e3b6d8bad47', 'student', '2025-06-20 23:35:32', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user877@lums.edu.pk' OR phone = '30664545103')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user877@lums.edu.pk', '30664545103', 'Imran Yaqoob', '66788234160fb99e40c33cb8117260f6eaa86988ffdac2ae00d799ecef499778', 'teacher', '2025-06-03 12:04:40', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '00878@lums.edu.pk' OR phone = '32818960051')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('00878@lums.edu.pk', '32818960051', 'Rizwan Tariq', '83318520e653c3f4c88971ca37c94b374fc27d6eba14aa7ae90665781583c0c9', 'worker', '2025-01-13 11:06:27', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student879@lums.edu.pk' OR phone = '38002168621')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student879@lums.edu.pk', '38002168621', 'Kashif Akhtar', '235cb885b285048606781b4b213984c2e523b328173dba779714af432ca7d773', 'teacher', '2025-05-20 21:22:19', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums880@lums.edu.pk' OR phone = '30464528084')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums880@lums.edu.pk', '30464528084', 'Asad Rafiq', '7b2bf65c1c9dfbfb1f21ef93ffdd2d45b84a09d99d1bd612aba6384e77c3d947', 'teacher', '2023-12-19 01:57:06', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student881@lums.edu.pk' OR phone = '30627791940')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student881@lums.edu.pk', '30627791940', 'Alina Farooq', '94bb1393f282773e43edc94cd61208099f5b82c38f06510469a103395f8817d4', 'worker', '2024-07-05 18:05:15', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student882@lums.edu.pk' OR phone = '38100744290')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student882@lums.edu.pk', '38100744290', 'Sadaf Khan', 'dce930593dfb712e9a79153aff7022c5881977a075173bf755d72c6e69b96b8d', 'worker', '2024-03-18 04:05:21', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums883@lums.edu.pk' OR phone = '32075533367')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums883@lums.edu.pk', '32075533367', 'Majid Hussain', 'dc1e27d4b2acb86e4342175e4c7f3f9e4e238d8b8311cf33b7e4629aa8924b94', 'teacher', '2024-06-16 00:25:03', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums884@lums.edu.pk' OR phone = '32837433500')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums884@lums.edu.pk', '32837433500', 'Rashid Yaqoob', '2dda93562dd4f3f7d4aa3a0f3db34adb3e163ff680e7c5993ad17514f36dd4c7', 'student', '2024-04-16 00:43:03', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums885@lums.edu.pk' OR phone = '37249718932')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums885@lums.edu.pk', '37249718932', 'Shamsa Masood', 'eb7a69d5d5e4be058046c8bef05d5a77d393356dec2e27fc7e6323888ea2a5d9', 'admin', '2025-01-20 14:05:51', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '00886@lums.edu.pk' OR phone = '36711347523')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('00886@lums.edu.pk', '36711347523', 'Farzana Hassan', '660b16baf2e6e949cf4c2426597d1453697aa0d7f524e80e554cd356c044901c', NULL, '2024-04-30 19:49:05', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums887@lums.edu.pk' OR phone = '31341262059')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums887@lums.edu.pk', '31341262059', 'Aamir Chaudhry', 'dc9a632900223b42f96d1ab0373adcbcc269fc128119f7f7ee66b326c4644845', 'student', '2025-04-05 11:52:50', 1, '2025-10-12 17:27:34');
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user888@lums.edu.pk' OR phone = '32224769526')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user888@lums.edu.pk', '32224769526', 'Asim Chaudhry', '55ab15f68e5fec2f15debbbda30d0ba0e5af8387a866359a8bb7a401e7b1f589', 'admin', '2024-03-07 03:39:17', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '00889@lums.edu.pk' OR phone = '33360196143')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('00889@lums.edu.pk', '33360196143', 'Arslan Ghani', 'de40dd5e24d39a5ce83989dc7363cd91164640a0fd2b8179b5cc789098f3d4ca', NULL, '2024-06-09 15:43:09', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '00890@lums.edu.pk' OR phone = '38759114197')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('00890@lums.edu.pk', '38759114197', 'Raza Nadeem', '4f0794779cce1362ef83c2d789bb8e069039a770b28962f0929971d470c1ca70', 'admin', '2024-09-03 12:12:22', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user891@lums.edu.pk' OR phone = '37118858010')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user891@lums.edu.pk', '37118858010', 'Sumera Javed', '26ea431278160ec90e72339b5eed45152c0376a7391cf6211a91a190daadf67b', 'admin', '2024-10-29 03:14:56', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums892@lums.edu.pk' OR phone = '31529765570')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums892@lums.edu.pk', '31529765570', 'Amna Ahmed', 'e9371dcbd23650c3eab42681f99bbe49bc22c31a551b66da93d29edb2e21f588', 'teacher', '2025-09-02 01:23:19', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '00893@lums.edu.pk' OR phone = '36263020392')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('00893@lums.edu.pk', '36263020392', 'Shazia Malik', 'dbc9eefd40d9f8d7afd491d1eaa1561828b31de003207cc5f8a4c952ebd92432', 'worker', '2024-05-24 16:23:10', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user894@lums.edu.pk' OR phone = '37148343726')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user894@lums.edu.pk', '37148343726', 'Arslan Latif', 'da6c6fffdafdfd4bab94d98ff1cb6e862861ad2fca3b668eb942c5c246971d4e', 'admin', '2025-05-22 08:52:17', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '00895@lums.edu.pk' OR phone = '38525059944')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('00895@lums.edu.pk', '38525059944', 'Sana Hussain', 'c6eb7d445c6a2c04588a0c8df7fb2bc5f9c3da3387058d26cbbfaecee8405c03', 'teacher', '2023-12-07 14:52:27', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user896@lums.edu.pk' OR phone = '38993372931')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user896@lums.edu.pk', '38993372931', 'Zain Abbas', '753a6bc0b12d80d1277bda00c06f98c3a306606acc64c8a9bee4b9e42e7a27ae', 'admin', '2024-11-18 15:13:51', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '00897@lums.edu.pk' OR phone = '31951741125')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('00897@lums.edu.pk', '31951741125', 'Tariq Ahmed', 'e6e7b64fead0dd9a88d009b31679e4eac56aad87447b7f65e6ee87914a071d48', 'worker', '2024-08-28 01:09:18', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student898@lums.edu.pk' OR phone = '36303273108')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student898@lums.edu.pk', '36303273108', 'Naseem Saeed', '0009ead9db4a3f4710701bcb580cbfee3feb7901bb1c32e2f6703ef9e289451a', NULL, '2025-03-09 01:35:07', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user899@lums.edu.pk' OR phone = '35409076799')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user899@lums.edu.pk', '35409076799', 'Aftab Qadir', 'e9d0332aeb96b9e5c4744a9a65747744206eafcdbface01e4fd2037c96d8b490', 'admin', '2024-02-21 07:09:12', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums900@lums.edu.pk' OR phone = '35251840114')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums900@lums.edu.pk', '35251840114', 'Nimra Masood', 'e3f197ff0a3236a39f0fb97ae49e82ae7af65418e6887cbf52fef2b477f097a0', 'worker', '2025-02-23 17:29:45', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '00901@lums.edu.pk' OR phone = '38896253642')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('00901@lums.edu.pk', '38896253642', 'Sadaf Sadiq', '7c74facdb58cacc48b1003740aaebaaae5624a59946a36562bb9d45584ebfa35', 'admin', '2025-05-30 15:41:23', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums902@lums.edu.pk' OR phone = '37398924658')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums902@lums.edu.pk', '37398924658', 'Tahira Iqbal', 'cde613277532074f2a57d1447545284552147ee4a9d4e8fdebccff2c8e119839', 'admin', '2024-02-24 02:02:39', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums903@lums.edu.pk' OR phone = '37714062312')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums903@lums.edu.pk', '37714062312', 'Sami Qadir', 'd20d44a4c5ec4e87c9a8d51b73e67228fa59c7933082f458d90739e1091a164a', 'admin', '2025-05-01 08:22:52', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user904@lums.edu.pk' OR phone = '36716883917')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user904@lums.edu.pk', '36716883917', 'Kashif Hussain', '3b74bdba7873aa19464b369aa226fa1eccb00d56abee4084526f62cad3dc5aba', 'worker', '2024-02-20 11:53:34', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student905@lums.edu.pk' OR phone = '31717381877')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student905@lums.edu.pk', '31717381877', 'Shamsa Rafiq', 'dfdb077bbced8ded5fd1454fa7199ed6246f90b2f803e78db606668ab7e613c3', 'admin', '2024-10-04 06:15:14', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '00906@lums.edu.pk' OR phone = '34612310282')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('00906@lums.edu.pk', '34612310282', 'Tahira Qadir', '978411228b2ac556a4ffe646a22e342aaaf8f129142c728e92427a4007b1854c', NULL, '2024-05-12 08:12:47', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums907@lums.edu.pk' OR phone = '32808495024')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums907@lums.edu.pk', '32808495024', 'Azhar Chaudhry', '1e26ec57c19adb3e4b7f1f813f5971ce9dbb59ab69aab01b52b985f15603cc7a', 'worker', '2024-06-10 21:58:10', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student908@lums.edu.pk' OR phone = '37766491384')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student908@lums.edu.pk', '37766491384', 'Saad Rasheed', '82d16cf54386625cb584c430329075093d3760f6e8d1c5c59b393792d93afeed', NULL, '2025-02-22 09:42:42', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums909@lums.edu.pk' OR phone = '37626650038')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums909@lums.edu.pk', '37626650038', 'Hamza Mahmood', '4e83f96b9611d90798b28abea7e9f2b2cedbff8edc3bd7488bd248160b4fc83b', 'teacher', '2025-01-25 12:41:23', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums910@lums.edu.pk' OR phone = '37523816418')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums910@lums.edu.pk', '37523816418', 'Noor Karim', '96969793ae076c0a76dc099dacd9ca3f42a146d3a15cf16e2b3e7d5b730b958e', 'admin', '2024-06-09 16:11:56', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student911@lums.edu.pk' OR phone = '39278230718')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student911@lums.edu.pk', '39278230718', 'Usman Akbar', 'eb740430888cafad58f8882004534e966e9f13775ecb87450da7d24ac53ce126', 'admin', '2025-10-08 00:19:58', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '00912@lums.edu.pk' OR phone = '38596950265')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('00912@lums.edu.pk', '38596950265', 'Zainab Mahmood', '43032746d852e22f9c0a2f907ecee5d06db81d57877e26d7a13c1e7f706d1637', 'worker', '2025-09-24 00:39:10', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user913@lums.edu.pk' OR phone = '39299986579')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user913@lums.edu.pk', '39299986579', 'Aamir Hassan', '1676070f5814b9fc8e9057418d0737b15b9d043863448422dbd3fa89bdc471c0', 'teacher', '2025-02-16 00:15:23', 1, '2025-08-24 23:24:05');
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student914@lums.edu.pk' OR phone = '32796363963')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student914@lums.edu.pk', '32796363963', 'Kamran Mirza', '91a2fc685edd7c2acf01758ec555592709884d744551a40b3648d7b95cd6120a', 'student', '2025-11-05 19:51:28', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '00915@lums.edu.pk' OR phone = '35088674350')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('00915@lums.edu.pk', '35088674350', 'Tuba Latif', '70c7f967f0dcf8f7f2b5310b2061ba23ec6becafdef3b37476f193edade39562', 'worker', '2024-05-05 19:06:32', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '00916@lums.edu.pk' OR phone = '32347228351')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('00916@lums.edu.pk', '32347228351', 'Naveed Masood', '74b523d4f477191cfb4a5cd92d20f26a47355565a6edb3a68f359d186ba07306', 'admin', '2024-07-24 17:30:16', 1, '2025-05-16 20:03:45');
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student917@lums.edu.pk' OR phone = '37978044732')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student917@lums.edu.pk', '37978044732', 'Saad Ahmed', 'b342234caa3dbacc6a7ad2568bcf942af1d75d835a1c5e641925f939107b0d2d', 'teacher', '2025-10-17 07:24:10', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums918@lums.edu.pk' OR phone = '33323353300')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums918@lums.edu.pk', '33323353300', 'Fahad Yaqoob', '4f012b9ba913a3e1cdc3fe5a41d6a210dfadfc94cbdc50a4260609b246c56866', 'admin', '2024-07-28 22:54:54', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user919@lums.edu.pk' OR phone = '39750815265')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user919@lums.edu.pk', '39750815265', 'Junaid Iqbal', 'ce5bf242780575b6afbe3d2c249b62e6bb7f7c0b517611889af54763325d3622', 'worker', '2025-06-22 21:41:08', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums920@lums.edu.pk' OR phone = '34653968758')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums920@lums.edu.pk', '34653968758', 'Riffat Anwar', 'a094e360f6143b2f81022f7e784cdd993c193c9a1045d99aac4b24375fe3416a', NULL, '2025-10-15 06:00:30', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '00921@lums.edu.pk' OR phone = '32429632667')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('00921@lums.edu.pk', '32429632667', 'Shamsa Abbas', '5b19592a6c93afa73b6436253862d7e6c7aa81c8c23e2ab46a7ff8756a91e994', 'student', '2024-07-23 17:32:42', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user922@lums.edu.pk' OR phone = '37330106864')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user922@lums.edu.pk', '37330106864', 'Farzana Khan', '3cc7ca4ced602812a01b1ad2bda93927213796255728ba4c0ce281876ed2d281', 'teacher', '2025-07-30 23:17:42', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums923@lums.edu.pk' OR phone = '38686518088')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums923@lums.edu.pk', '38686518088', 'Zainab Raza', '065ea1de7873c76150d98b3b5cbc7e449443b41e468e32c322e98245d1dfcedc', 'teacher', '2025-05-20 19:08:23', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student924@lums.edu.pk' OR phone = '30344647254')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student924@lums.edu.pk', '30344647254', 'Iqra Shah', 'b69b66f1b3f2c96eeb75af5938c7ba3446c59237b38ff06a4a076a6fd4ff93b7', 'worker', '2025-03-26 14:20:30', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student925@lums.edu.pk' OR phone = '32798909702')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student925@lums.edu.pk', '32798909702', 'Noor Siddiqui', '292252ce5f648a2e6bcd3936e5acca834ad122b9de6379788f178706da84a747', 'teacher', '2025-05-28 00:28:52', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student926@lums.edu.pk' OR phone = '37008204399')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student926@lums.edu.pk', '37008204399', 'Maria Waheed', '33f0614599add4578389a1211cc44c294a308aa67a03aecfb498d45434409537', 'worker', '2025-01-15 00:56:41', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student927@lums.edu.pk' OR phone = '32673878425')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student927@lums.edu.pk', '32673878425', 'Wasim Qureshi', 'a5d45035c51374df7da9d7d8baae6bf2ed97882cf5717ff528ce077fbcc32c6e', NULL, '2025-10-17 03:09:57', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '00928@lums.edu.pk' OR phone = '38213578752')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('00928@lums.edu.pk', '38213578752', 'Hanif Iqbal', '61d79f9bf27f80aa545603eb0478304fd771e81d8bf62b2aa46c36c861888b8b', 'admin', '2024-03-03 07:37:23', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student929@lums.edu.pk' OR phone = '34757823875')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student929@lums.edu.pk', '34757823875', 'Zain Aslam', '75348922fa45b26eae768cabb8e2725f7ca88070d760d5f641e18568a9fcf26e', 'student', '2024-05-12 21:36:09', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user930@lums.edu.pk' OR phone = '39361205497')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user930@lums.edu.pk', '39361205497', 'Arslan Zia', '4c6ac96acb375093b70b71843b9bbc94d1393fa8b354ec790356e7fcb1875921', 'teacher', '2025-07-15 03:53:48', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '00931@lums.edu.pk' OR phone = '31964868417')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('00931@lums.edu.pk', '31964868417', 'Zaheer Chaudhry', 'b16ef58c01c44bc4332d60ca18fb03f3d95da547f24f0bb583b32504fce783ca', 'teacher', '2025-06-28 20:51:13', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student932@lums.edu.pk' OR phone = '35389341816')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student932@lums.edu.pk', '35389341816', 'Tuba Zaidi', '8dcd09e3104f3f74e566c443ad1d3318062b8e59b75a4b11f7dba72b7b332203', 'teacher', '2024-04-14 01:27:27', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '00933@lums.edu.pk' OR phone = '32017353091')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('00933@lums.edu.pk', '32017353091', 'Shamsa Butt', 'cdd129c2e4cd7e34e3a0e9b0a8cd3b3d09d80363851eaa9a0a6fc9ab0997befe', NULL, '2024-02-06 23:16:49', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums934@lums.edu.pk' OR phone = '35677081237')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums934@lums.edu.pk', '35677081237', 'Qamar Aziz', '233068df260d186ef298956352748a999d877017805d3db0e00e582e95bdfeaa', 'worker', '2025-03-10 02:53:35', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums935@lums.edu.pk' OR phone = '35673507276')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums935@lums.edu.pk', '35673507276', 'Fatima Jamil', 'ca28c0470fa539416bedbcad2be938bc7104c9aff505b56f24314cd83d38e119', 'admin', '2024-11-06 21:42:33', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student936@lums.edu.pk' OR phone = '34501267937')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student936@lums.edu.pk', '34501267937', 'Mahnoor Aslam', 'd1e91a01322b8927f8bf31529ae7302b1bb1fe7cd254df78f0a7b360f585a2fc', 'student', '2025-01-08 12:53:00', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user937@lums.edu.pk' OR phone = '38768259663')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user937@lums.edu.pk', '38768259663', 'Khadija Tahir', 'd3e5e20c75e3abf267d6cd2b2a60cf1b9e2ba1ad540faaaf7b38b9aae74195d5', 'student', '2025-05-17 05:04:01', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums938@lums.edu.pk' OR phone = '36630525913')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums938@lums.edu.pk', '36630525913', 'Shakeel Ali', 'c23d413b912651a527e92c85238cceaa7e5fa4504a3ed0153ba1682d3f55f7cd', 'student', '2025-07-08 15:46:59', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums939@lums.edu.pk' OR phone = '30784566086')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums939@lums.edu.pk', '30784566086', 'Bilal Rafiq', 'da2deb2be4a6bec48adedad6f153c1dd8b7e18a2955e73a31a727c8f65a0ea3c', 'student', '2025-04-13 20:41:57', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student940@lums.edu.pk' OR phone = '36954469408')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student940@lums.edu.pk', '36954469408', 'Bilal Ghani', 'd5ec3475115dc76254b140762fac7d9e4f59874055feba7bd5dd287a93535913', 'teacher', '2024-09-05 19:37:40', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '00941@lums.edu.pk' OR phone = '34651728889')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('00941@lums.edu.pk', '34651728889', 'Hira Ayub', '12740e68a77dd91b7b0162955a0ba0cedc635fda8a2c14580a66b4f41e21c497', 'admin', '2024-01-24 08:12:57', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student942@lums.edu.pk' OR phone = '31878964093')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student942@lums.edu.pk', '31878964093', 'Shama Hussain', '1e55f4487043e398eaf607c380088f1448912c40cffd1d36d4fc2e616b0b60d2', 'student', '2025-10-19 05:56:05', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums943@lums.edu.pk' OR phone = '38967021776')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums943@lums.edu.pk', '38967021776', 'Nadeem Chaudhry', '7e8fc7e39f0236fa25265098119b9bac54eeed5672184368ae75ecc0ceb9b66d', 'teacher', '2024-05-30 01:00:36', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user944@lums.edu.pk' OR phone = '37146952331')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user944@lums.edu.pk', '37146952331', 'Humaira Karim', '3c64096355eac2b5fc38e675a8f92d5b623be2cad401979be48e1b367312f3d3', 'teacher', '2024-11-20 05:42:28', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student945@lums.edu.pk' OR phone = '35949207573')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student945@lums.edu.pk', '35949207573', 'Shakeel Raza', '493de2cda37496c5f703836897f00313302e217b3505a15ccaecaf852b856112', 'worker', '2025-08-14 21:14:01', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '00946@lums.edu.pk' OR phone = '32021532053')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('00946@lums.edu.pk', '32021532053', 'Faisal Mahmood', '3ebdddae91445cab04f455e8d019661a8e71ba29ccf3d434ba8ad5a4a7b12b3d', 'admin', '2025-06-22 09:07:41', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums947@lums.edu.pk' OR phone = '36378876081')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums947@lums.edu.pk', '36378876081', 'Sara Malik', '0571bd460db7eb097359b3911e1f0cb6d6a3c2574c56ecee20e5205cb3db93ee', 'student', '2025-01-07 20:03:23', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '00948@lums.edu.pk' OR phone = '34340582868')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('00948@lums.edu.pk', '34340582868', 'Uzma Qureshi', '02db0e5d7482dd2351117c48f83fac2464b83b9043b880ba674ed7d9c2b5ec70', 'student', '2024-10-06 06:31:13', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '00949@lums.edu.pk' OR phone = '38131336881')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('00949@lums.edu.pk', '38131336881', 'Yasmin Yaqoob', '224f32658b4c33106085fbce1975317bf48053995a0d7aff1555fe1cb2fde0cb', NULL, '2024-06-20 13:18:36', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student950@lums.edu.pk' OR phone = '37430071076')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student950@lums.edu.pk', '37430071076', 'Hanif Latif', '7026f6711da1f27d98c9856220a531462bc2a21f9ff54539e66e6e1fe7f67fdc', 'student', '2025-07-23 00:09:16', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student951@lums.edu.pk' OR phone = '33865022235')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student951@lums.edu.pk', '33865022235', 'Ahmed Raza', 'e51cd4fa01cc27a1fe0b3418481d0c0a2ac236a5d713960b430bf53d95a3923c', 'worker', '2025-05-06 12:38:13', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user952@lums.edu.pk' OR phone = '31207122717')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user952@lums.edu.pk', '31207122717', 'Riffat Waseem', '48b9bd4ba3e25860844845e82bd1457e9d7c8ad24504d3af3850f77a7ded9ff2', 'admin', '2025-11-18 10:26:00', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student953@lums.edu.pk' OR phone = '34677044230')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student953@lums.edu.pk', '34677044230', 'Sara Rasheed', 'c438dd1f7164873e15b8a5b5598014a29713742374757c9427813f00783bbdd2', 'teacher', '2025-10-02 20:55:20', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums954@lums.edu.pk' OR phone = '30712874768')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums954@lums.edu.pk', '30712874768', 'Muhammad Tahir', 'fdac507bca6ee70aa1883ba18da048866c32ef1e0e3dc7b9fa459cc07f518e9a', 'admin', '2025-05-03 00:06:20', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student955@lums.edu.pk' OR phone = '37378309073')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student955@lums.edu.pk', '37378309073', 'Hira Qadir', '37ed3fa26ab0d654269c8c91851d707dbac5f85f06ad12821a9f630c308339cd', 'admin', '2025-10-30 12:28:18', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '00956@lums.edu.pk' OR phone = '33243095568')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('00956@lums.edu.pk', '33243095568', 'Ali Akhtar', '12486bff3ba5a77f88abdcf8e204f02b4f8a9bb4c2b2c4d5fbcda66dcc9283c2', 'student', '2025-09-12 13:56:49', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '00957@lums.edu.pk' OR phone = '31820589344')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('00957@lums.edu.pk', '31820589344', 'Farzana Hussain', 'cd0886625d045c00c884d818a22f59486976a642489e9b5e0f1502a82175f7e3', 'worker', '2025-04-02 10:58:31', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums958@lums.edu.pk' OR phone = '39423248398')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums958@lums.edu.pk', '39423248398', 'Naveed Rasheed', '88c6da8ab0e3649df018ff5b15ef5223272a4291a814d569589d7348573fa918', 'student', '2024-11-26 05:21:52', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user959@lums.edu.pk' OR phone = '32094002487')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user959@lums.edu.pk', '32094002487', 'Parveen Zia', 'f87956f193fae97dc49408f2cb228a3cc4b4759560c5acd2ea43b047e6c58e40', 'worker', '2023-12-10 14:08:55', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '00960@lums.edu.pk' OR phone = '34528978872')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('00960@lums.edu.pk', '34528978872', 'Arshad Iqbal', '62cc447ea8e9126941d28eb683a196ee05ba75631a2bdeae2f60c644ae49c2d5', NULL, '2024-02-01 07:57:26', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student961@lums.edu.pk' OR phone = '35321733391')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student961@lums.edu.pk', '35321733391', 'Saima Tariq', 'ee3479d8bf5ca39dbf25263c76ec98c4b605636d85264c42d5d301192dee3df4', NULL, '2025-01-19 16:52:06', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '00962@lums.edu.pk' OR phone = '32984672837')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('00962@lums.edu.pk', '32984672837', 'Yasmin Naqvi', '70ce4de7e0b7c252239cda27a4aabaedd7d86b1431097105d95914e8415a6745', NULL, '2024-02-26 13:19:41', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '00963@lums.edu.pk' OR phone = '37848336791')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('00963@lums.edu.pk', '37848336791', 'Sami Sheikh', '00f99c2c33adbd6161c890df14b157e7cb24cfe3e778ecf993d69c8742f43e9f', NULL, '2025-05-05 00:47:08', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '00964@lums.edu.pk' OR phone = '39306020096')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('00964@lums.edu.pk', '39306020096', 'Humaira Rasheed', 'e7177f2cd30b80e57ec4f2c7b6788016ca7b9b483cd91cd765a52ca9903c466e', 'teacher', '2025-09-09 19:05:37', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '00965@lums.edu.pk' OR phone = '38972907241')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('00965@lums.edu.pk', '38972907241', 'Salman Siddiqui', 'ac2e4b912ece289347a92c28fc0f414264c25adab361724ccb310aab7fd7051b', NULL, '2025-06-23 11:33:31', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums966@lums.edu.pk' OR phone = '35546217124')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums966@lums.edu.pk', '35546217124', 'Sadaf Rafiq', '485a1a709c491b1f31b596720372ba371801378915b3bc81ad0c9441b86a7b52', 'admin', '2024-09-07 18:00:40', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '00967@lums.edu.pk' OR phone = '33080606896')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('00967@lums.edu.pk', '33080606896', 'Ayesha Khan', '87da1ba18cf9f6bc11fda01bdfbe8e5f4a4f90b01ad7a0b7c758b7eacdbbfb9a', 'teacher', '2024-05-10 09:15:07', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '00968@lums.edu.pk' OR phone = '33051461086')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('00968@lums.edu.pk', '33051461086', 'Hanif Nadeem', '8a45c446ce65aa3fe5cef13eff1eae3e1e6789236c01033f94948355d2267971', 'worker', '2024-05-02 12:22:54', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums969@lums.edu.pk' OR phone = '30567539620')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums969@lums.edu.pk', '30567539620', 'Shama Mahmood', 'fc5e6864b0327deff71f0000b87093b96711e1b781862012efd8052ae90911b1', 'student', '2025-06-09 15:08:37', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user970@lums.edu.pk' OR phone = '33203795294')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user970@lums.edu.pk', '33203795294', 'Imran Siddiqui', 'd14fa75d0cf4f11e4f8f5ed2f08216a4316b10709a71fcddca20ad5d415b1704', 'teacher', '2024-06-16 03:09:02', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums971@lums.edu.pk' OR phone = '35575219809')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums971@lums.edu.pk', '35575219809', 'Riffat Naqvi', '60717da2a4292c59dfd4d82e5e951c8b3834e6a3b0622b18426057751ea50dd3', NULL, '2024-01-15 16:33:24', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user972@lums.edu.pk' OR phone = '36570459386')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user972@lums.edu.pk', '36570459386', 'Nazia Ilyas', 'dea3848ad58d403e32d1bf86da615f140a573d6f0942ea0f3188d0cdd1267ec6', 'teacher', '2024-03-27 08:58:15', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student973@lums.edu.pk' OR phone = '37361616942')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student973@lums.edu.pk', '37361616942', 'Qamar Haider', '88a49a32c3f36b5c012a36b2f82775a3833d032d555db718a70e28155fee3489', 'admin', '2024-02-01 08:21:41', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '00974@lums.edu.pk' OR phone = '31547848687')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('00974@lums.edu.pk', '31547848687', 'Zaheer Ilyas', '8e26068bdbc5e553b763c30e50c55834a030697d26cf8db3b3dee5af8e1b5144', NULL, '2024-03-31 03:12:19', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums975@lums.edu.pk' OR phone = '33363993369')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums975@lums.edu.pk', '33363993369', 'Arshad Haider', 'c09267f22734ceaf9d4a8cd538560d320bcd51aa3a9e363140cab536af059261', 'student', '2025-02-13 06:10:11', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student976@lums.edu.pk' OR phone = '34590548163')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student976@lums.edu.pk', '34590548163', 'Rafiq Hassan', '51182f721fff436d9061921f6274191d8eccf725c738aa7511140518847b4a31', 'teacher', '2025-05-14 12:22:20', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user977@lums.edu.pk' OR phone = '31481583024')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user977@lums.edu.pk', '31481583024', 'Amjad Yousaf', 'dc61d3d59bc428fdf7cc230e198cd2cb63a3cb1ae635c2a6ef94c375bc85f0ee', 'worker', '2025-07-26 13:40:15', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '00978@lums.edu.pk' OR phone = '38707096849')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('00978@lums.edu.pk', '38707096849', 'Asad Butt', '3438c27fa8b0f4be2fb2d2831a859d5a538146c6bd61b1dacb9ec0b083b95749', 'admin', '2025-11-18 06:28:54', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '00979@lums.edu.pk' OR phone = '37072628914')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('00979@lums.edu.pk', '37072628914', 'Zaheer Hameed', 'b583f81dbd68ba32f2ba70726594fce3d948420bfc00602a4249f1d416dfede2', 'worker', '2025-04-07 18:31:41', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums980@lums.edu.pk' OR phone = '30297200292')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums980@lums.edu.pk', '30297200292', 'Naseem Shah', 'a67030eaa287701bd9501bc0d5c14b376c175a0cea70b1e823a9763cc9d4ea63', 'worker', '2024-01-03 16:38:47', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '00981@lums.edu.pk' OR phone = '34525088329')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('00981@lums.edu.pk', '34525088329', 'Rizwan Tariq', 'cc4235eae48f8af5da7e695e2640bb52c1992af8ff6087759b5c8e5dbaa39f53', 'student', '2025-04-15 17:34:21', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user982@lums.edu.pk' OR phone = '38266210221')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user982@lums.edu.pk', '38266210221', 'Akram Sheikh', '4cd4fc425c3b374eba9ddb5112bb3727da7dd32d8e2cc5287f43cbbd99b0bfae', 'admin', '2025-04-07 15:43:20', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums983@lums.edu.pk' OR phone = '30809000198')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums983@lums.edu.pk', '30809000198', 'Shahzad Sadiq', '0bc4f1dab135364fc7ccc2221c91725ce54ff440295f709262d676fb0174e9ea', NULL, '2025-08-23 14:59:17', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user984@lums.edu.pk' OR phone = '35877067973')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user984@lums.edu.pk', '35877067973', 'Zainab Shah', '138f63ffac2d14de6b814a35499a9437feed25bae3ca9f759bb6dae54575e5fb', 'worker', '2025-09-15 11:18:31', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums985@lums.edu.pk' OR phone = '38827117204')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums985@lums.edu.pk', '38827117204', 'Ayesha Chaudhry', '1bdab1611a0d89744613f7eea4a16478a94d14fa611e61fc2fa8d65642bfd1a8', 'worker', '2025-11-03 22:17:28', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums986@lums.edu.pk' OR phone = '36082142361')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums986@lums.edu.pk', '36082142361', 'Saima Chaudhry', '8f0afd12ebf8fa8d892d8086746b5fc9f521ce21603e1d35d128f851c7e68970', 'admin', '2025-05-31 23:57:24', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user987@lums.edu.pk' OR phone = '30011233802')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user987@lums.edu.pk', '30011233802', 'Alina Yousaf', 'f6537a5a2f097921d1d1ab410facd30c4356da7326783c2f9ed29f093852cfe2', 'admin', '2024-05-22 20:05:26', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '00988@lums.edu.pk' OR phone = '33638579314')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('00988@lums.edu.pk', '33638579314', 'Amjad Butt', '544ac216023b194bb7e67060f5f18d414fac82f61b6449f77a6ee0ec56569d05', 'admin', '2024-03-13 11:26:06', 1, '2025-08-17 23:41:36');
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '00989@lums.edu.pk' OR phone = '37046259898')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('00989@lums.edu.pk', '37046259898', 'Rafiq Malik', 'b0b5cd5d199f65e1febd89058f673cc671bf51d4295f539950bd3c459ebe73a5', 'student', '2025-09-14 00:37:35', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums990@lums.edu.pk' OR phone = '36670999700')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums990@lums.edu.pk', '36670999700', 'Faisal Iqbal', 'c810639e261e2b62247a23d70a6e32fabb4b4a83c097baedd89faf0bea54692f', 'teacher', '2025-05-26 04:14:48', 1, '2025-07-29 09:20:15');
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums991@lums.edu.pk' OR phone = '39389523060')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums991@lums.edu.pk', '39389523060', 'Zaheer Aslam', '66048da14a00a3abbddc7e8e37606cbd456c0b37c3f39301ef6318406d305965', 'admin', '2024-11-13 04:48:21', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums992@lums.edu.pk' OR phone = '38277519819')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums992@lums.edu.pk', '38277519819', 'Mahnoor Ilyas', '8cb1367c17f7006490eee204fc21f00ebf0e7052ed96de87866d2c04d133c654', 'student', '2024-05-09 22:18:55', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student993@lums.edu.pk' OR phone = '37742993724')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student993@lums.edu.pk', '37742993724', 'Ahmed Qadir', 'f6bb6a88652219fc84646e98aa92d9ea6f6a8b90ffaed1877a811600a49489f0', 'worker', '2024-12-13 14:35:18', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '00994@lums.edu.pk' OR phone = '38336710868')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('00994@lums.edu.pk', '38336710868', 'Arslan Javed', 'd5102c7e9feafd58391398086cb05f1afa2565639ce3a11897276e752e68ed38', NULL, '2025-09-01 14:50:34', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user995@lums.edu.pk' OR phone = '35621840372')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user995@lums.edu.pk', '35621840372', 'Shakeel Javed', '38cb1e8380af7be99801157f610a0ba88ffa1e14f32cf3994687617a293d2325', 'student', '2025-04-19 22:30:43', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student996@lums.edu.pk' OR phone = '37845677322')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student996@lums.edu.pk', '37845677322', 'Hira Akbar', '2844b4fc8b317aa51d27ff3e113a692ed8476704203896830d1948e2f6ba2d6f', 'worker', '2024-03-07 09:48:38', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user997@lums.edu.pk' OR phone = '37858960585')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user997@lums.edu.pk', '37858960585', 'Saima Zia', '6603ef4a7bf84bde1b930d6a08adddabc17da0d2715885819e2d19fae329ab60', NULL, '2024-09-26 11:41:15', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums998@lums.edu.pk' OR phone = '33694466423')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums998@lums.edu.pk', '33694466423', 'Tariq Yousaf', 'e6a7660f039f79451343c1ebbbe54b97550091ddc1eb451fde26006426077080', 'teacher', '2025-06-22 14:12:24', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student999@lums.edu.pk' OR phone = '38999052662')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student999@lums.edu.pk', '38999052662', 'Jamil Akhtar', '29fe5f91a54c416bd44a48640b7b286a205cc1bd85741fa2a599e6d41ed5884b', 'worker', '2024-01-27 19:34:20', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums1000@lums.edu.pk' OR phone = '37502734185')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums1000@lums.edu.pk', '37502734185', 'Nimra Ilyas', 'fbec9326096d714e466e80a9f6cd917c72d976c4014588ea679769008360ddf0', 'teacher', '2024-12-25 20:34:26', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '01001@lums.edu.pk' OR phone = '32531039209')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('01001@lums.edu.pk', '32531039209', 'Riffat Tahir', '551acdaf1f6ceb312384854bbffda99324cd0927dd611a8868f7ca928689447e', 'teacher', '2024-06-27 00:04:44', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums1002@lums.edu.pk' OR phone = '30775848027')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums1002@lums.edu.pk', '30775848027', 'Tahira Butt', '21c2b2791f532c49862e751d37f1fa15939ca50953f454f82d55a13fe6604c73', 'student', '2025-06-17 15:28:41', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '01003@lums.edu.pk' OR phone = '33011423042')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('01003@lums.edu.pk', '33011423042', 'Nadia Ahmed', '8ad54fc27d1fdccef25323ccfbd6e8b05bfab215f7a48f691137a7bf26a36d6f', 'teacher', '2024-02-27 21:03:04', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '01004@lums.edu.pk' OR phone = '30670662004')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('01004@lums.edu.pk', '30670662004', 'Hanif Anwar', '9ee2d09628aafd102e502079beafac9fbf139a110574fd19aab359ff9f5e816e', 'admin', '2024-04-08 09:00:34', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums1005@lums.edu.pk' OR phone = '38497072529')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums1005@lums.edu.pk', '38497072529', 'Yasmin Javed', '8079a043aa757f81f77a99447d96919f0acb2b8abcc666ba82218f194a587c9f', 'student', '2025-10-06 07:48:23', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student1006@lums.edu.pk' OR phone = '34525855593')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student1006@lums.edu.pk', '34525855593', 'Ahmed Iqbal', 'f250998ab071245263befc8dde67ec16565e03b9c33c080f0cdfd004822e5f13', 'worker', '2025-06-19 17:44:31', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user1007@lums.edu.pk' OR phone = '35479703333')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user1007@lums.edu.pk', '35479703333', 'Sumera Iqbal', 'aa2114a93b38168ca4d15f1cddd9e8139d696a0f492743078486d86b72caec42', 'worker', '2024-12-13 15:06:02', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student1008@lums.edu.pk' OR phone = '39988868512')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student1008@lums.edu.pk', '39988868512', 'Akram Anwar', 'ff0f47b3023390612b94afbdee6cbd8a7e4306e972f4a0f512fc48546117c644', 'worker', '2024-01-03 03:18:12', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums1009@lums.edu.pk' OR phone = '39128408718')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums1009@lums.edu.pk', '39128408718', 'Riffat Rafiq', '7d5fe1e549dd8ead62c6e99f5ea73bdb55a9fd317db5bcf6e03cd014c0742b40', 'student', '2024-12-03 14:59:24', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '01010@lums.edu.pk' OR phone = '33373855708')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('01010@lums.edu.pk', '33373855708', 'Hira Yousaf', 'cf3f8e2faabfa7f955263cc97a6467b57cb91819686ecf9850a66660285ccd6d', 'student', '2024-01-20 16:10:56', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user1011@lums.edu.pk' OR phone = '34533608185')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user1011@lums.edu.pk', '34533608185', 'Rashid Zia', 'ae638b9e3e35a1942b56cc474122d9bf28ea09d964b15b343b217120e8f66ff9', 'teacher', '2025-10-18 23:22:16', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums1012@lums.edu.pk' OR phone = '39704380135')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums1012@lums.edu.pk', '39704380135', 'Aftab Javed', '57155721deeb2f19f324e72ecef2bfb132bf07d94bef14b117ad1aee3b7c338e', 'admin', '2023-12-09 13:10:52', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '01013@lums.edu.pk' OR phone = '35047653119')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('01013@lums.edu.pk', '35047653119', 'Waqas Waheed', '209be380f5f01a5aabe106d0b71a316be4c4d662deb4c9b76461ffcfd6aedf95', 'teacher', '2025-05-15 14:20:30', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student1014@lums.edu.pk' OR phone = '35863482922')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student1014@lums.edu.pk', '35863482922', 'Muhammad Mahmood', 'dbbf36c69a40790e817be187dbf9df0d7d3f0f8b703575eff3dd5b19bd6db201', 'student', '2024-05-07 18:48:05', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums1015@lums.edu.pk' OR phone = '39918681919')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums1015@lums.edu.pk', '39918681919', 'Talha Javed', '01bb09f63228b23f093d471b362397ced9a9f249ba116106f086d50f0d018234', 'student', '2024-09-14 19:48:31', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user1016@lums.edu.pk' OR phone = '36533437026')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user1016@lums.edu.pk', '36533437026', 'Ali Waseem', 'a8853499e64563ca4ea4593e3b8a037ac4c26400649f39d7d1c51341b3320bd1', NULL, '2024-12-19 22:54:21', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user1017@lums.edu.pk' OR phone = '37776141761')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user1017@lums.edu.pk', '37776141761', 'Mahnoor Iqbal', '2e1de611ae39bc6b8bab24f481c1132869b79b3a6ba956944ed7d3e2ce7d8946', 'teacher', '2024-09-12 22:25:48', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums1018@lums.edu.pk' OR phone = '30676972497')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums1018@lums.edu.pk', '30676972497', 'Tanvir Mahmood', '4bfc89a093c09f8cb1596128fc7f21b3694dc85ec6c6cf55394575f6a7ff5817', 'worker', '2024-05-12 20:28:33', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student1019@lums.edu.pk' OR phone = '38393169197')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student1019@lums.edu.pk', '38393169197', 'Sumera Waheed', 'a0a270cecd8181bb07017caf079e7fa58d544233320c61319a011094bbd55095', 'teacher', '2024-11-14 22:59:05', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user1020@lums.edu.pk' OR phone = '35323198481')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user1020@lums.edu.pk', '35323198481', 'Aamir Tahir', '4d890cfb1956f84f52eb63a3f9d3b329465617130c746e722a13be6780dd9aa7', 'worker', '2024-07-20 06:53:46', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student1021@lums.edu.pk' OR phone = '31899401613')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student1021@lums.edu.pk', '31899401613', 'Amjad Javed', '470d51cbc51b01eb372874347e2ab926d851d3abf24ca603e21a736a9f85f0ce', 'student', '2025-06-08 05:46:49', 1, '2025-07-27 19:00:27');
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student1022@lums.edu.pk' OR phone = '33321482372')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student1022@lums.edu.pk', '33321482372', 'Shahzad Umar', 'c34218c07726ad351f00f8bdda7ff455680c43b28a995a84548350d1581ca329', 'admin', '2024-09-22 20:46:26', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student1023@lums.edu.pk' OR phone = '34279166476')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student1023@lums.edu.pk', '34279166476', 'Khalid Zaidi', 'd87303b078a667bc911cda833508008b39eca13247c5711f0b9d9e119316a1a3', 'worker', '2024-11-15 18:41:29', 1, '2025-01-29 09:33:20');
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student1024@lums.edu.pk' OR phone = '39215180490')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student1024@lums.edu.pk', '39215180490', 'Asad Yousaf', '780b95674aaeedddc1c3d0b1bef0fbe9086d148c5ebaa6ee9f1763dd78eae677', 'student', '2024-09-16 13:05:47', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '01025@lums.edu.pk' OR phone = '34824999186')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('01025@lums.edu.pk', '34824999186', 'Imran Hassan', '76297823b09895620fe99df21eb90da0ec8fcbd1ebc9eb7f21f475ffa8d3839a', NULL, '2025-03-27 14:09:54', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student1026@lums.edu.pk' OR phone = '32460366981')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student1026@lums.edu.pk', '32460366981', 'Zaheer Akhtar', '5e0e6f17809863ce8cda241115a99760e41120e0e9e0fbf21848b8446bfe615e', 'worker', '2023-12-09 18:44:18', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '01027@lums.edu.pk' OR phone = '31845841863')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('01027@lums.edu.pk', '31845841863', 'Qamar Chaudhry', 'd6c06252f7a5c5c03fa12b0760b4c23573c842e9d6c64bdb13b4a5c905a54544', 'teacher', '2024-11-14 07:55:53', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '01028@lums.edu.pk' OR phone = '37075240083')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('01028@lums.edu.pk', '37075240083', 'Talha Abbas', 'b9a0f5005d3613389c5baac52139c731ddcd447446f712f9cad0a443cc29301e', 'admin', '2024-09-28 11:28:20', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student1029@lums.edu.pk' OR phone = '34615898416')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student1029@lums.edu.pk', '34615898416', 'Anwar Akhtar', '72a130f2c9b5c9d6e1853c16ba43db2e0d571043d6a86c1bf1c1b5e1b4e0e037', 'student', '2025-08-26 13:07:03', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '01030@lums.edu.pk' OR phone = '35013094652')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('01030@lums.edu.pk', '35013094652', 'Aisha Ghani', 'a407d04cdffb1db079cfd95bd0cd7433f53a4fbdc378c096bcd4584cf50b2426', 'admin', '2024-05-22 10:58:55', 1, '2025-02-16 09:03:45');
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums1031@lums.edu.pk' OR phone = '34121418292')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums1031@lums.edu.pk', '34121418292', 'Fatima Raza', 'c68ef457e94a75fd161ef4cff7680a38d6a6f3a677ec2ac21418e000f39262ad', 'worker', '2023-11-25 07:55:55', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student1032@lums.edu.pk' OR phone = '34346405702')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student1032@lums.edu.pk', '34346405702', 'Nadia Rafiq', '3191c030d58d3fb0971180b3653e8089db845f4d151bafdcff772d8caf00ccb6', 'student', '2025-03-11 03:32:46', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums1033@lums.edu.pk' OR phone = '33901378415')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums1033@lums.edu.pk', '33901378415', 'Amna Yousaf', '6a832732d4f96ac7910182b2107695b450de6b647e98832e564abed7786acfba', 'student', '2024-08-21 08:35:15', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums1034@lums.edu.pk' OR phone = '30749344999')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums1034@lums.edu.pk', '30749344999', 'Asad Masood', 'fc26c99ce008ed69a1052a542c032afbb69c00d22bb1b608dc192431c15982a2', 'admin', '2025-11-02 11:59:02', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user1035@lums.edu.pk' OR phone = '39835406218')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user1035@lums.edu.pk', '39835406218', 'Sadaf Hussain', '6c35c1e264ab85f5e43409dd80d48122c74a7500e6d58eb562e0b5df4de21b44', NULL, '2025-04-27 15:27:23', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student1036@lums.edu.pk' OR phone = '35633807147')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student1036@lums.edu.pk', '35633807147', 'Aftab Ali', '24162895b3f130036a65540e28f893d4df4c1617387d05165d75d7576b815ebf', 'teacher', '2024-09-25 07:07:48', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '01037@lums.edu.pk' OR phone = '36540762806')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('01037@lums.edu.pk', '36540762806', 'Parveen Yousaf', '31b3fbdda21e91550c34423a89ebcdc897e188cb706865cb052a6d841f98e57c', 'student', '2024-04-10 05:02:35', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '01038@lums.edu.pk' OR phone = '34507502471')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('01038@lums.edu.pk', '34507502471', 'Aslam Karim', 'c4d5ef87eafe24c03232d945c3678ca3cff3ee75e0bb6140a827d65ecad34587', 'student', '2024-01-23 00:22:04', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums1039@lums.edu.pk' OR phone = '38668258025')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums1039@lums.edu.pk', '38668258025', 'Hira Karim', 'e134e95c23351db4d8641a45c0b2197ed9a39d0d1162525f74a347a6ddf59db9', 'teacher', '2025-03-08 03:07:14', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '01040@lums.edu.pk' OR phone = '35123598495')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('01040@lums.edu.pk', '35123598495', 'Rabia Saeed', 'e9f4ca65ab5c00f0cf74204ddd2b169213419bdecf1b2f620dbc413257a2fb8a', 'student', '2024-09-09 02:34:27', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student1041@lums.edu.pk' OR phone = '38275459968')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student1041@lums.edu.pk', '38275459968', 'Noor Nadeem', 'e7de07426c6983f354f0405b30ef5b762fff0b73eb37f490f7cec91c6c6c08b6', 'worker', '2025-06-22 03:48:39', 1, '2025-09-05 04:19:40');
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user1042@lums.edu.pk' OR phone = '39274512913')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user1042@lums.edu.pk', '39274512913', 'Shafiq Umar', '04bcaff02346b9c3a38cf33d8ee06d15c707d78640c967a3f278faeba6547181', 'worker', '2024-10-12 22:56:29', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student1043@lums.edu.pk' OR phone = '30019889446')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student1043@lums.edu.pk', '30019889446', 'Irfan Karim', 'a61f4a9fbceafe4c18bfbfe8b5f2f6a5ea3dfa52948d671a39cd86287b192f78', 'worker', '2024-01-03 08:58:46', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user1044@lums.edu.pk' OR phone = '37544571630')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user1044@lums.edu.pk', '37544571630', 'Aslam Ayub', 'aaf900a4a83ffce8f95ab988f5ce2262248e025c9254d48a7f464afb9a520aba', 'admin', '2025-03-14 21:01:30', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student1045@lums.edu.pk' OR phone = '34198952730')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student1045@lums.edu.pk', '34198952730', 'Naveed Sheikh', 'e0a2de75b368f778b3db186e1b4a1652fa73f10cbd64211f2719b049bbc12c8e', 'worker', '2024-11-16 03:41:13', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user1046@lums.edu.pk' OR phone = '37715402920')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user1046@lums.edu.pk', '37715402920', 'Anwar Masood', 'a79e5a403a282658b48ac88f5354b0e1ce2c3868225429243bf2821b75a417f4', 'student', '2025-08-01 11:44:09', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user1047@lums.edu.pk' OR phone = '35734435997')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user1047@lums.edu.pk', '35734435997', 'Shahzad Farooq', 'a556ac99a0e34bb65970aa2f8094e7a1fbd676ccb3f809060f0eaa35ed124ff4', 'teacher', '2025-10-23 06:12:16', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user1048@lums.edu.pk' OR phone = '39159004194')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user1048@lums.edu.pk', '39159004194', 'Majid Aziz', 'fe475cc5758722cb8b9b7f08e289f79a6f389bf69ec19a50d4039a509f98f85b', 'teacher', '2024-09-11 11:24:43', 1, '2025-07-03 20:09:58');
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student1049@lums.edu.pk' OR phone = '37098278013')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student1049@lums.edu.pk', '37098278013', 'Arshad Rafiq', '421813217f7c5001c6bea17a162888e7b0a6fb1d7f5d841b75ab0d5a9f7ba8be', NULL, '2024-12-04 16:42:40', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '01050@lums.edu.pk' OR phone = '34111163152')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('01050@lums.edu.pk', '34111163152', 'Naveed Ahmed', '1e651e6a82dff50f08f755c94828b183039c64966339686c02ebdb641818c457', 'admin', '2024-04-20 17:00:29', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student1051@lums.edu.pk' OR phone = '35795403131')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student1051@lums.edu.pk', '35795403131', 'Sami Hameed', 'e9112a35df1c15f64b807ac5f149c3199d21bd6ef5cf530d122c319f249da0b9', 'student', '2025-03-14 02:27:48', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user1052@lums.edu.pk' OR phone = '36004175054')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user1052@lums.edu.pk', '36004175054', 'Parveen Sheikh', '3807a641fb6384375143638caae63b2f1567dcd16bb89caa4bca8f5f50fcdacc', 'admin', '2025-10-21 05:09:33', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums1053@lums.edu.pk' OR phone = '30442880435')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums1053@lums.edu.pk', '30442880435', 'Raza Ali', 'd343c4f79113ef15b179e5350984c3179319b1d4b69cc5af10b6fa738dcd7b9c', 'admin', '2025-08-20 03:51:27', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums1054@lums.edu.pk' OR phone = '31128236793')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums1054@lums.edu.pk', '31128236793', 'Uzma Sheikh', '88dc36a9d060fcc97db31979b4be246129497fac5edc094a22b3c5b5e73d9fe2', 'admin', '2024-09-15 11:58:33', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user1055@lums.edu.pk' OR phone = '34115650918')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user1055@lums.edu.pk', '34115650918', 'Tuba Ali', '8cfc9f98a2b59879910832a29b1497744a42435eb4e48cb1f68f0fe84eaae56b', NULL, '2024-10-23 19:28:30', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '01056@lums.edu.pk' OR phone = '37638056720')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('01056@lums.edu.pk', '37638056720', 'Samina Waseem', '8d47a6348171b2984b3dba462cc551349034eabf91c015bd24557fc63df74e47', 'student', '2024-09-28 10:02:24', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student1057@lums.edu.pk' OR phone = '34180075144')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student1057@lums.edu.pk', '34180075144', 'Naila Mirza', 'dcbb30351d387879d92e634addbc64c6b3f4639b082026c7994ce50e90c0e958', 'admin', '2024-10-16 12:59:37', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums1058@lums.edu.pk' OR phone = '34625141098')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums1058@lums.edu.pk', '34625141098', 'Asad Mahmood', '4151c9c066f5acac0bd7faf682e2e78c29a4a403a9acad6bdf727b91659a5d4a', 'admin', '2025-02-06 05:06:07', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user1059@lums.edu.pk' OR phone = '32428702787')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user1059@lums.edu.pk', '32428702787', 'Rafiq Ilyas', '6232864e3098c858402388f55efd760b3300c5778ccc46e3df804c9daee24769', 'worker', '2024-04-15 15:19:12', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums1060@lums.edu.pk' OR phone = '35158972926')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums1060@lums.edu.pk', '35158972926', 'Usman Tahir', '82f24f72757a6d0cba4c0b6d64cc7a944bb5b3f01633598d5a93e3afa9dbc1b4', 'worker', '2025-01-30 12:14:10', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums1061@lums.edu.pk' OR phone = '35275003526')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums1061@lums.edu.pk', '35275003526', 'Shakeel Chaudhry', '36386ac7de9699b2bdf8e4ff3f9c92b576766bffb7896303d9bd67a7216f6ae1', NULL, '2024-09-05 23:21:55', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums1062@lums.edu.pk' OR phone = '37332877854')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums1062@lums.edu.pk', '37332877854', 'Rafiq Rafiq', 'f19ea350146e6dace90e2222d8e40037c6d42251e16f7bb5331cfcfdb75cc229', 'admin', '2025-05-25 05:01:30', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums1063@lums.edu.pk' OR phone = '39446150107')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums1063@lums.edu.pk', '39446150107', 'Khadija Abbas', 'dea0b27fa1695cbfb8a1ef247fdca35dfe643787faeef5f5816b747b3f6dfba4', 'worker', '2024-06-04 09:42:23', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student1064@lums.edu.pk' OR phone = '31946839506')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student1064@lums.edu.pk', '31946839506', 'Hanif Shah', '4fd68297ef6453c78f744d1416e643347a75110926c86319fd574241b1c562a8', 'admin', '2023-12-15 02:11:45', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user1065@lums.edu.pk' OR phone = '34128808923')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user1065@lums.edu.pk', '34128808923', 'Khadija Hussain', '4142777405a1330f187df4312d0e86cc889fbe1fe9f4ccdc1ef0645adab4ebbb', 'teacher', '2024-11-03 15:05:18', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student1066@lums.edu.pk' OR phone = '35278486346')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student1066@lums.edu.pk', '35278486346', 'Saima Ali', 'bc0f697cd4000ec75a0524db740cfc0ca3959dc23b197ad78c13c313be5a3e02', 'teacher', '2024-10-03 21:58:14', 1, '2025-01-20 18:52:46');
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums1067@lums.edu.pk' OR phone = '36162339705')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums1067@lums.edu.pk', '36162339705', 'Tuba Anwar', '4667724a4cb4aa46cd1f62ae5b167054782ff16305a2cca5a0215ca2b4a9a685', 'worker', '2025-08-06 14:48:05', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user1068@lums.edu.pk' OR phone = '33328371574')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user1068@lums.edu.pk', '33328371574', 'Zain Khan', 'f798dce4370f56d5cb9cab9416e297888bbea132b50bddeb861b34fe9aa70a08', NULL, '2024-12-25 10:43:56', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums1069@lums.edu.pk' OR phone = '39039016565')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums1069@lums.edu.pk', '39039016565', 'Nadeem Khan', 'b366eaabb7860c9e36c72ffbaafadb17b80928b4c29cdd0a016ce22d566aef41', 'admin', '2025-07-24 15:35:40', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student1070@lums.edu.pk' OR phone = '39244615117')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student1070@lums.edu.pk', '39244615117', 'Rizwan Hassan', '55930953d6b6d0ace8a7288cbcf2131b290d349ef0d77bbc5ccb1f28f585d76b', 'student', '2024-09-28 15:41:24', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user1071@lums.edu.pk' OR phone = '39342702679')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user1071@lums.edu.pk', '39342702679', 'Saima Raza', '23eae88426333c34519f42e97d134118c439cc8822639ff79e23e083ed8c5ac8', 'student', '2024-06-22 13:31:54', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student1072@lums.edu.pk' OR phone = '35008048158')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student1072@lums.edu.pk', '35008048158', 'Alina Yaqoob', '2b19e2e63a09613d5a2038c4945390fcb2cd321bface80c039d271d4ba13de09', 'student', '2024-09-26 17:33:13', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user1073@lums.edu.pk' OR phone = '38580109332')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user1073@lums.edu.pk', '38580109332', 'Sami Javed', '9e3c75ddde2dfbf03600bb0c2779a66f7d7b5a6ce091bf71d5c479d0e5b15d95', 'admin', '2025-06-02 15:08:28', 1, '2025-10-03 08:39:37');
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums1074@lums.edu.pk' OR phone = '36509682313')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums1074@lums.edu.pk', '36509682313', 'Parveen Malik', 'f539f1ea17524cc4529dc7d0e5dc1254089de7df96f6fddce8af32464b510960', 'worker', '2025-09-12 13:54:20', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student1075@lums.edu.pk' OR phone = '35153636089')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student1075@lums.edu.pk', '35153636089', 'Iqra Hussain', 'c8955eaedbb66ba3a34b6a29e8ac53191392629d32143096c9c3b1927c154e9f', 'worker', '2025-03-22 23:34:42', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user1076@lums.edu.pk' OR phone = '30515537859')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user1076@lums.edu.pk', '30515537859', 'Maria Zaidi', '22e101556f3c07bd5673ef1538d759fd794fe5291341d3bf9ac012c547c2ca85', 'admin', '2025-11-10 00:56:35', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student1077@lums.edu.pk' OR phone = '37083478751')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student1077@lums.edu.pk', '37083478751', 'Humaira Siddiqui', 'bd1bed183ac8df75735e24f2ed48f5d642d835598cee4735bcd6d988183725a8', 'student', '2025-03-13 05:07:30', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums1078@lums.edu.pk' OR phone = '31456199680')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums1078@lums.edu.pk', '31456199680', 'Aamir Hussain', 'c760df2060d6204d9d70cb73efcecfd2313725a5e4ed8ef58e07309ecd3f1393', NULL, '2024-10-14 20:10:51', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user1079@lums.edu.pk' OR phone = '30221363815')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user1079@lums.edu.pk', '30221363815', 'Tahira Ghani', '53deb6a5cbac66347564e004da2a095b74f76a82e78e5a5101e42ea4bd3db3bb', 'teacher', '2024-10-06 11:23:24', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums1080@lums.edu.pk' OR phone = '32814271646')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums1080@lums.edu.pk', '32814271646', 'Arshad Hussain', 'c82b1d84ccb2d24b484b13136945193c23d10de332afa485770e06a1ed5865a2', 'teacher', '2024-11-26 22:06:47', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '01081@lums.edu.pk' OR phone = '31680433263')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('01081@lums.edu.pk', '31680433263', 'Farzana Farooq', '785ac8d1a39ec2bbab262bdcf77d718e6317a233dae69069dbc0a4f95d811eee', 'worker', '2023-11-26 22:38:24', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '01082@lums.edu.pk' OR phone = '33989322517')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('01082@lums.edu.pk', '33989322517', 'Rashid Bashir', '2391549752f9d7cdea42dea0bfdf1536600e750a9ecdc16c526c6ac0a8b868b2', 'worker', '2025-07-06 06:16:48', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student1083@lums.edu.pk' OR phone = '39552302284')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student1083@lums.edu.pk', '39552302284', 'Aslam Khan', '0942b1c7c6fce8d3139642a02e1acc57922c1c29920e290e802598fb18239c6a', 'admin', '2024-07-10 17:36:56', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user1084@lums.edu.pk' OR phone = '36937228045')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user1084@lums.edu.pk', '36937228045', 'Zahid Karim', '0e38b1d1539aa62b51c27ada881b144e2f94a8a4f59e0aec783bc501746d86ed', 'teacher', '2024-05-17 00:19:17', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student1085@lums.edu.pk' OR phone = '32923935733')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student1085@lums.edu.pk', '32923935733', 'Iqra Hussain', '06beda1a1f1fd4e91f6202389b50f81d4d536a404abbce41fb308b3e33ad756d', 'worker', '2025-05-10 20:06:57', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '01086@lums.edu.pk' OR phone = '31073419155')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('01086@lums.edu.pk', '31073419155', 'Sadaf Umar', 'eec6ec11aca29fbea2bc55534463a171f2ee82fd980852a82bdfd1f258c80760', 'student', '2024-04-24 11:50:31', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user1087@lums.edu.pk' OR phone = '30071627474')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user1087@lums.edu.pk', '30071627474', 'Samina Ghani', '6399d5461ea2545f388ee22cdeaded33f5ab8a4a842734457e1519589ef003ba', 'teacher', '2024-10-19 07:39:39', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '01088@lums.edu.pk' OR phone = '30359384672')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('01088@lums.edu.pk', '30359384672', 'Adnan Jamil', '39a7c34bccc73f575a9b336068d8dc0bdd71576e9a92c9d0818d71b371d89a91', 'worker', '2024-10-02 21:16:15', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user1089@lums.edu.pk' OR phone = '39235726466')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user1089@lums.edu.pk', '39235726466', 'Hamza Naqvi', '5b9f82ce2574cb44d193a50b0d104b89abb0fb914672ceacaf074a4e8ad453fe', 'worker', '2024-09-28 11:12:53', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user1090@lums.edu.pk' OR phone = '31251196813')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user1090@lums.edu.pk', '31251196813', 'Aftab Javed', '9b94f9c57c0ed3e58ebfccdff539d9b20c9e4f8c0af4e36ed6cfbbc846feeeed', 'teacher', '2025-04-16 01:04:45', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student1091@lums.edu.pk' OR phone = '38982814736')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student1091@lums.edu.pk', '38982814736', 'Hamza Latif', '11c9c92a25c03bc0be7cfc0830458c3b61ea636436fc8ade07e634ab20bf09aa', 'student', '2024-11-20 17:21:20', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student1092@lums.edu.pk' OR phone = '31579239296')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student1092@lums.edu.pk', '31579239296', 'Saima Karim', '0fc6f7be24addcc7891e5cbb7a967cd2a3bf6c2c47dbc7cb2ad65146cdf9a60b', 'admin', '2024-06-28 03:19:46', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user1093@lums.edu.pk' OR phone = '30215272667')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user1093@lums.edu.pk', '30215272667', 'Khadija Ahmed', '0023cf83cde737159e825585ac3a8d2e163ee322ee7b33de8d7a6a1170c5648f', 'student', '2024-04-10 13:01:28', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user1094@lums.edu.pk' OR phone = '38091034990')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user1094@lums.edu.pk', '38091034990', 'Amna Aziz', 'e020988219f437012614a3da4d368f84c392deb3d2fdbc9f6a7400fc01ccf1b4', 'admin', '2025-07-26 16:24:37', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums1095@lums.edu.pk' OR phone = '30023950638')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums1095@lums.edu.pk', '30023950638', 'Naila Shah', 'bced4aeff50ed8747a8613bdd9af665251d391e63063a82de0891271df0c3556', NULL, '2024-08-09 07:27:19', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '01096@lums.edu.pk' OR phone = '35486501974')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('01096@lums.edu.pk', '35486501974', 'Aisha Ali', '202461d5cf374301fa539cadd29647a51bd2357e7071eebae69bf2d7fbb5dfbc', 'teacher', '2024-01-05 23:54:10', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums1097@lums.edu.pk' OR phone = '39361528437')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums1097@lums.edu.pk', '39361528437', 'Tuba Iqbal', '5063ddce95fa1f709cdac36924eaf4dc6d517c89d38ba7239a6cc16dcfdc98ea', 'worker', '2024-09-01 07:39:09', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums1098@lums.edu.pk' OR phone = '38971084649')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums1098@lums.edu.pk', '38971084649', 'Zaheer Abbas', '39ff8d9350aada996e9a5cc2d6016512f808b1f42703402da2fef9cd16074b87', 'teacher', '2024-03-23 00:04:28', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student1099@lums.edu.pk' OR phone = '31776941468')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student1099@lums.edu.pk', '31776941468', 'Tahira Hameed', '5ca64cb5985961827156218e9b86bc27a15f89fc6f9a93d45abf017566446080', NULL, '2024-07-25 13:45:56', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student1100@lums.edu.pk' OR phone = '34121675938')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student1100@lums.edu.pk', '34121675938', 'Waqas Sadiq', '6688cad7900274998f4e7443cafd0570a64d50d241b31f648e784ddd49588d78', 'worker', '2023-11-25 16:07:32', 1, '2025-09-16 04:02:09');
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '01101@lums.edu.pk' OR phone = '39706431639')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('01101@lums.edu.pk', '39706431639', 'Uzma Hameed', 'e39f4c02ef75ed7d8a7a3cecfe24444ba259f6e200238aa9c03230a49f8300b5', NULL, '2025-10-25 00:11:40', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user1102@lums.edu.pk' OR phone = '31886412799')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user1102@lums.edu.pk', '31886412799', 'Majid Bashir', 'e17a4be133753a03ab3352f7158b0b6cece4fe4a5bb67281028e0a159b9d1484', 'student', '2025-11-22 13:46:24', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student1103@lums.edu.pk' OR phone = '33888641535')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student1103@lums.edu.pk', '33888641535', 'Rizwan Ilyas', 'fa9fd2076198695c236b771181dd8243c0b1fbae5791094a52273fb38565ea1e', 'admin', '2025-03-17 03:31:40', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student1104@lums.edu.pk' OR phone = '39603083335')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student1104@lums.edu.pk', '39603083335', 'Sana Haider', '0c715a802636f441c88780f56b98ad17405c70357af9cc3a6328f99101ab2690', 'teacher', '2024-11-04 00:22:54', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user1105@lums.edu.pk' OR phone = '30358744688')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user1105@lums.edu.pk', '30358744688', 'Nazia Hussain', '3158eda2ef1a791200a645a9b07f56b4e67f228f84bbc7d1f8c92da9ae3593e6', 'worker', '2025-11-06 05:08:58', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student1106@lums.edu.pk' OR phone = '37209406316')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student1106@lums.edu.pk', '37209406316', 'Aftab Iqbal', 'f21736ad633e76a90a674d2dfd564a9fc6fea291d452d4db4eff19dfeec5875e', 'admin', '2025-02-16 01:25:43', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums1107@lums.edu.pk' OR phone = '37714284533')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums1107@lums.edu.pk', '37714284533', 'Rubina Waseem', '0915c55143dcdf4f58f1f217db864b2d35a541bcff393c6f41db7cc45a7b8a6e', 'teacher', '2024-12-28 10:23:58', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user1108@lums.edu.pk' OR phone = '32463272841')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user1108@lums.edu.pk', '32463272841', 'Hira Hameed', '02652a20387734a01ce5c229da7807519da0735d877b4585e91041384d2a9f18', 'student', '2024-12-10 09:20:30', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums1109@lums.edu.pk' OR phone = '38713364588')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums1109@lums.edu.pk', '38713364588', 'Kashif Akhtar', '6ba978a9eec4d431acbed2b1343f0ef9ec191fde8684e01430cf2dddbf7764e9', 'teacher', '2024-05-20 12:46:43', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user1110@lums.edu.pk' OR phone = '35028147117')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user1110@lums.edu.pk', '35028147117', 'Ali Abbas', '82ba282866561e80baf7db398b9443454eda672bd227d78c9c3118537d27409a', NULL, '2025-08-10 23:52:49', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user1111@lums.edu.pk' OR phone = '38117884472')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user1111@lums.edu.pk', '38117884472', 'Azhar Ilyas', '55f8d19cbb291b70b2fcdd06c6dcfed537184ab8c2e19ab98bfe3cd49e23a9ca', 'student', '2025-09-30 23:41:54', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student1112@lums.edu.pk' OR phone = '34318536762')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student1112@lums.edu.pk', '34318536762', 'Hanif Sadiq', 'e3330b23157f2e1334849179ece480a779f59b5f160b28b01a15ae4338303d0a', 'admin', '2024-04-06 02:24:13', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '01113@lums.edu.pk' OR phone = '37888678930')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('01113@lums.edu.pk', '37888678930', 'Farhan Nadeem', '28de5083e3e3d4e750d91dbd262f57a0b04eb5804bca06139505470c89d30ae9', 'admin', '2025-11-15 01:25:23', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '01114@lums.edu.pk' OR phone = '32200370873')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('01114@lums.edu.pk', '32200370873', 'Khalid Khan', '73a46928e8d281371471984ad591dd7359762e012eb6bf7541c32340a8512dd8', 'worker', '2024-02-28 22:55:26', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student1115@lums.edu.pk' OR phone = '35352632184')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student1115@lums.edu.pk', '35352632184', 'Shaista Shah', '0910c07446b05ab10e3f980fe0c65863f2c515030c05a6ff24bac84837c8648d', 'worker', '2025-09-29 23:18:30', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '01116@lums.edu.pk' OR phone = '34790583460')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('01116@lums.edu.pk', '34790583460', 'Hira Waheed', '2d95972ce914d0597c87f663dac167ad3ea81b0185bd6dff6454681d1106b7e9', 'teacher', '2025-03-08 07:28:24', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user1117@lums.edu.pk' OR phone = '32872240283')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user1117@lums.edu.pk', '32872240283', 'Aamir Aslam', 'f80f19e0e865e62278a5720074e9e61eef214a3fc39ba6b5c034b5c754cb72d0', 'student', '2024-02-09 00:09:49', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student1118@lums.edu.pk' OR phone = '30449462374')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student1118@lums.edu.pk', '30449462374', 'Irfan Qureshi', 'd2cca012223893546f284699740e3bcad87562e0a267f0ee929369c94ed28ca1', 'student', '2024-02-27 01:25:29', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '01119@lums.edu.pk' OR phone = '34490820520')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('01119@lums.edu.pk', '34490820520', 'Usman Waheed', '2fdced10cd2df3d7d90019c2a5d1326b6bdef98609a25c7a8b1d03775140df9c', 'worker', '2024-06-26 05:51:30', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student1120@lums.edu.pk' OR phone = '36987219779')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student1120@lums.edu.pk', '36987219779', 'Fahad Rafiq', '1eb282fb334fe16fc19562282239056793068c8bd37c7c0e1123db734f3f331d', 'student', '2023-12-19 02:23:24', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '01121@lums.edu.pk' OR phone = '33303441087')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('01121@lums.edu.pk', '33303441087', 'Rafiq Waseem', 'a12515303c07298736a51243adb123f4fc7fbba2ad142dc8d7c1758e6bd74152', 'teacher', '2025-08-19 22:24:52', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums1122@lums.edu.pk' OR phone = '33526678360')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums1122@lums.edu.pk', '33526678360', 'Junaid Latif', 'bf38bf5ff24b005ab1597cb915271d4cf10d1b523fa74d59a874a6de9da71504', NULL, '2023-12-17 15:42:20', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums1123@lums.edu.pk' OR phone = '32721941773')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums1123@lums.edu.pk', '32721941773', 'Aslam Hussain', '19d880e8dc68af0eb09f182d12d1c04d901239357bccdbcd547fc3f42f905a64', 'student', '2025-02-25 23:34:55', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student1124@lums.edu.pk' OR phone = '39409418843')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student1124@lums.edu.pk', '39409418843', 'Faisal Aziz', 'ea8b63fd21f3031ba8a4303fc51308008967cc63dad012cc6811b0f148343317', 'admin', '2025-02-20 00:47:25', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '01125@lums.edu.pk' OR phone = '34453850099')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('01125@lums.edu.pk', '34453850099', 'Zaheer Khan', 'acce206175a998f1995f9a1cde08c944fc8d622bebbdf8133cc69848c2d747bd', 'teacher', '2024-11-25 18:00:11', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums1126@lums.edu.pk' OR phone = '32866465296')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums1126@lums.edu.pk', '32866465296', 'Nadia Karim', '7bb9a5c898efb7d02ea67cf39505645e1f8f6cea60a493ddc9126510285b11cd', 'worker', '2025-11-03 18:04:14', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user1127@lums.edu.pk' OR phone = '37746529153')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user1127@lums.edu.pk', '37746529153', 'Adnan Sadiq', '9d7a578a79a52c64f32e4a9bf20917014e1654671465d3b5371c569c52b5115f', NULL, '2025-09-18 16:10:39', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums1128@lums.edu.pk' OR phone = '30730626590')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums1128@lums.edu.pk', '30730626590', 'Humaira Abbas', '3b7c6ed4857269dafe4a53f03ba1976b2b8b9a57b581c52d7d13b65479337547', 'admin', '2025-10-18 22:48:37', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user1129@lums.edu.pk' OR phone = '32226508181')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user1129@lums.edu.pk', '32226508181', 'Bilal Qureshi', '8969ed90e649d3b0110e9ed1aa274c0aea1fb846694ce325c37da76550015421', 'student', '2024-04-11 11:17:27', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student1130@lums.edu.pk' OR phone = '32722604333')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student1130@lums.edu.pk', '32722604333', 'Fahad Yaqoob', '795567db1d1d92ee182884418eb01e684b542183a7a04eac78b3b01055be6b45', 'worker', '2024-12-13 04:59:58', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums1131@lums.edu.pk' OR phone = '33395362825')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums1131@lums.edu.pk', '33395362825', 'Asim Waseem', 'a635f472e6a56fba410f32c2e6c152ecf207a85e129d5d9512f1066c82653d99', 'student', '2024-12-01 20:42:46', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums1132@lums.edu.pk' OR phone = '37563461894')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums1132@lums.edu.pk', '37563461894', 'Junaid Mirza', '7b395df405bfa3e7e4714d7562693ea72ecd95758c6e819b6d08dbb9b234ff2a', 'worker', '2025-09-06 01:17:54', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '01133@lums.edu.pk' OR phone = '34053506058')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('01133@lums.edu.pk', '34053506058', 'Tuba Masood', '90ebbe00468b5f7a4e9293181f6846e409bd6f0c10401cdbff1228ecbc185928', 'admin', '2024-02-19 02:38:46', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user1134@lums.edu.pk' OR phone = '31156674261')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user1134@lums.edu.pk', '31156674261', 'Talha Zaidi', 'be2761e1373f437b36c414af749534b00151d7c00d511e0a5cfbfa49470cb014', 'admin', '2025-04-04 21:38:17', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student1135@lums.edu.pk' OR phone = '37552656291')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student1135@lums.edu.pk', '37552656291', 'Talha Jamil', '6695a03e8bc7a19192b133982d11d9784edc42f82603b43ce4a43171f76a71a0', 'student', '2025-03-11 07:05:51', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student1136@lums.edu.pk' OR phone = '36411975663')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student1136@lums.edu.pk', '36411975663', 'Uzma Sadiq', '6a4acc531a20afd59c5a82b3ba36ffe3dcfd41a164b6ee6d488e0614fe78d7f0', 'worker', '2025-02-03 09:57:36', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '01137@lums.edu.pk' OR phone = '35608804184')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('01137@lums.edu.pk', '35608804184', 'Riffat Waseem', 'ad10d81ce255acff61d7a0457badff159b7454148b69558012d29b9fca1bd5d2', 'student', '2024-02-08 17:43:39', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '01138@lums.edu.pk' OR phone = '36900989176')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('01138@lums.edu.pk', '36900989176', 'Ayesha Malik', '6f7ff78b13398cf257854a4b5e530dd15195f37169bc67451b7be3c1cd0850e2', 'admin', '2024-03-25 23:52:42', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user1139@lums.edu.pk' OR phone = '34975802422')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user1139@lums.edu.pk', '34975802422', 'Bushra Bashir', '28da46a7def071ad9d2de152ed146675565d6b6d559c950a535d9caf4be2e2aa', NULL, '2024-12-29 14:27:43', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user1140@lums.edu.pk' OR phone = '38475316341')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user1140@lums.edu.pk', '38475316341', 'Khalid Ahmed', 'd4b405554ad4ce6e7a94d6960e361531d234d185a671567820e919654206449e', 'student', '2025-10-25 10:30:00', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums1141@lums.edu.pk' OR phone = '38840408381')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums1141@lums.edu.pk', '38840408381', 'Ali Ayub', '397025ec2d9305b40290480a22d456b15f82b51c5c3077fa8f320a77cbad0cfd', 'admin', '2025-01-21 21:01:36', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user1142@lums.edu.pk' OR phone = '39447651520')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user1142@lums.edu.pk', '39447651520', 'Rafiq Iqbal', 'c67515a3fe5653fb72bfc7c616c9d868eecc2951c15af6c53688787af4e1a3e9', 'worker', '2024-08-13 11:19:40', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '01143@lums.edu.pk' OR phone = '33724313902')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('01143@lums.edu.pk', '33724313902', 'Sadaf Waseem', 'a7f7b22bae3f01ef963a161145bf1f17451883b831e07e127d7f4dc69f3034f9', 'worker', '2024-12-08 04:21:18', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums1144@lums.edu.pk' OR phone = '36617344134')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums1144@lums.edu.pk', '36617344134', 'Arslan Khan', 'c60a66a8f82c03a1040beffae56ea8fc8cd717a24e4cb74e373156d48ffcd2e0', 'teacher', '2024-06-07 07:46:47', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums1145@lums.edu.pk' OR phone = '33471204443')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums1145@lums.edu.pk', '33471204443', 'Sidra Nadeem', '6d1d14be5c3cf0dd6f4286ca698fc9584dfb7b83400c7ba58b4a2d33ce5afbb3', 'teacher', '2024-09-22 00:15:28', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student1146@lums.edu.pk' OR phone = '36925875299')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student1146@lums.edu.pk', '36925875299', 'Shama Tariq', 'f20013ad5b22b3574f006e55be80d30dc84676305fd2a4cdd0c8fed028361d43', 'teacher', '2024-12-05 20:01:13', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student1147@lums.edu.pk' OR phone = '39457581647')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student1147@lums.edu.pk', '39457581647', 'Shama Sadiq', 'b2bc188fa9b4b1667225620d46409d3a791a85244d82388ff95272e00dd262e6', 'worker', '2024-10-17 03:55:45', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user1148@lums.edu.pk' OR phone = '32829355743')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user1148@lums.edu.pk', '32829355743', 'Qamar Bashir', '0b267ca1858926b3118d7fbda69d89737d9d502316af44a3f282d9d60bd6a36a', 'worker', '2024-05-28 04:02:37', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '01149@lums.edu.pk' OR phone = '39256482962')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('01149@lums.edu.pk', '39256482962', 'Jamil Chaudhry', '04227f36db2e90b6d9191512b84295c3bae731a2e71232fbd9ad8d555492d4d0', 'worker', '2024-02-20 14:29:59', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student1150@lums.edu.pk' OR phone = '38149275409')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student1150@lums.edu.pk', '38149275409', 'Bushra Khan', '6ab265327dab1e13a7dc912adde39d1c6d09741e8acd9e56bf39ba2dbbc30341', 'teacher', '2025-07-15 21:42:35', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user1151@lums.edu.pk' OR phone = '35240887748')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user1151@lums.edu.pk', '35240887748', 'Shafiq Anwar', '5ad44bbedad6eac6a930d2b309f0d5f1f5f5d96340ff10b83e286a9af59964e5', 'student', '2024-04-03 03:34:40', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '01152@lums.edu.pk' OR phone = '32037406526')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('01152@lums.edu.pk', '32037406526', 'Amna Akbar', '8c7a3a181d4103fd301d7115d7dbd77d876659659c638719dce3d43cb9a61dd3', 'student', '2024-09-18 09:02:37', 1, '2024-12-06 23:55:28');
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums1153@lums.edu.pk' OR phone = '37935165425')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums1153@lums.edu.pk', '37935165425', 'Rabia Karim', '2b957a122df159712ca7145b450b769519b85f0d85c34d17362e07976ffb814b', 'admin', '2024-10-26 06:13:37', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student1154@lums.edu.pk' OR phone = '32338547998')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student1154@lums.edu.pk', '32338547998', 'Rubina Mahmood', '43813be62d01b062dad92d608cc44ed2c97461358217cce9a131b88f6ead45c7', 'admin', '2025-10-11 20:26:17', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student1155@lums.edu.pk' OR phone = '32625395138')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student1155@lums.edu.pk', '32625395138', 'Faisal Qureshi', '32a8746ca5670e607051a13a6e937c7614fec4de1e6a27fcc1a17886ab4d034c', 'student', '2024-10-06 22:02:40', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums1156@lums.edu.pk' OR phone = '39361160083')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums1156@lums.edu.pk', '39361160083', 'Mahnoor Ghani', 'e8e4cf43a4d5b8d23ec8024e49a7e28df33a629d3506f5a44e2ae3ac860cd615', 'worker', '2024-06-06 00:52:49', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '01157@lums.edu.pk' OR phone = '30121158777')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('01157@lums.edu.pk', '30121158777', 'Arslan Yaqoob', '247727fd2f866a1c6b570cf37e357ba2bbe725709dd2d54ce7a0df7055c53190', 'worker', '2024-08-23 22:10:22', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user1158@lums.edu.pk' OR phone = '31739999078')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user1158@lums.edu.pk', '31739999078', 'Khalid Mirza', '2b7e06db1d09272e8eccf62d8c57b5dc4c3f6399a5b27b0af41319016aea2498', 'teacher', '2024-03-05 04:55:11', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student1159@lums.edu.pk' OR phone = '39142305124')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student1159@lums.edu.pk', '39142305124', 'Sumera Ghani', '45e58962b6bfbc2e2594e79cf28a7e9f7860daa7635ddc7d3d3008d35031caf3', 'student', '2024-07-02 05:12:07', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums1160@lums.edu.pk' OR phone = '36215382951')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums1160@lums.edu.pk', '36215382951', 'Fatima Siddiqui', 'a45b0091ba84030610dbf0e4778420e5b876d636de59b00cf10db211e1a72167', 'worker', '2025-02-23 12:06:32', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user1161@lums.edu.pk' OR phone = '30408105338')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user1161@lums.edu.pk', '30408105338', 'Fouzia Shah', '778d6d29f7795c71afcae81580f5509e5ac9fc880c9725e6adeca76a8dc47123', 'student', '2024-10-17 13:59:54', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student1162@lums.edu.pk' OR phone = '36863163225')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student1162@lums.edu.pk', '36863163225', 'Shakeel Haider', '00037c531f5825cea762250b317c0263ffc63bcc058620a1d54fa675720163ba', 'teacher', '2025-01-16 01:21:43', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user1163@lums.edu.pk' OR phone = '34730696373')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user1163@lums.edu.pk', '34730696373', 'Kamran Siddiqui', '03bf9f062ba8281346ca21f757c83ebc349362b8ea037c7f4407efcc1a7f7d30', 'admin', '2023-12-11 11:54:21', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums1164@lums.edu.pk' OR phone = '39787224720')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums1164@lums.edu.pk', '39787224720', 'Khadija Siddiqui', '0b0b705bba97abc632bf4968371d35d295c5269e7efce5f52375b9a2a2bc689d', 'student', '2023-11-24 03:00:52', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums1165@lums.edu.pk' OR phone = '33464486155')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums1165@lums.edu.pk', '33464486155', 'Saleem Tariq', 'f16c950e5f6854453de76fc0d6a48a4510d3b42039d63a7f7d00da2805985bea', 'worker', '2025-07-31 04:37:21', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums1166@lums.edu.pk' OR phone = '31821706612')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums1166@lums.edu.pk', '31821706612', 'Ali Raza', 'f44e6cd1baf5db6a55e806263b2db4d138bded3f6c85d605b43c05c383bc859d', 'admin', '2024-04-05 01:59:34', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums1167@lums.edu.pk' OR phone = '35703214225')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums1167@lums.edu.pk', '35703214225', 'Rizwan Aslam', '71dc291aa5d16100018d67ec2306a50807af8a342d1538d53592842355ac9414', 'worker', '2024-08-21 12:01:56', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums1168@lums.edu.pk' OR phone = '39525165330')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums1168@lums.edu.pk', '39525165330', 'Majid Sheikh', '11e80b29488ae5ae3779cb9de24e6dce474b11a8083fb495801a60917db387bb', NULL, '2024-09-27 11:39:32', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student1169@lums.edu.pk' OR phone = '30866543084')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student1169@lums.edu.pk', '30866543084', 'Aslam Umar', '6b2f45fb80f0b652815cc67b1b1d2e2f7f5d3582a1e0e0e0a28b4fb0ab3f286e', 'admin', '2024-05-22 18:12:44', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums1170@lums.edu.pk' OR phone = '34737643619')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums1170@lums.edu.pk', '34737643619', 'Tanvir Waheed', '2cec61537638f72a8fc6a94c61b4ca323dfb3ce48d3b6f012f30ad06817de288', 'student', '2024-01-17 03:05:40', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student1171@lums.edu.pk' OR phone = '39968450418')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student1171@lums.edu.pk', '39968450418', 'Aslam Zaidi', 'eaa63e1626487d365a3a9e8a81170f326eb8f16e8faa36e89b8c3d564158a652', 'student', '2024-12-01 06:28:43', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user1172@lums.edu.pk' OR phone = '30886293096')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user1172@lums.edu.pk', '30886293096', 'Irfan Yaqoob', 'd08b9f558f79dc26db1647b17f45d3bfc9fb6180bd4753754295faafbfd51b54', NULL, '2024-05-21 11:49:00', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums1173@lums.edu.pk' OR phone = '32228481719')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums1173@lums.edu.pk', '32228481719', 'Saad Yousaf', 'ad5ad97c7451a6b25f4b0a3b42274b6932685bd10338ce1640bb78aeb5a3a53b', 'admin', '2024-12-18 05:56:43', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student1174@lums.edu.pk' OR phone = '33017142082')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student1174@lums.edu.pk', '33017142082', 'Saima Raza', 'b05ff536f324586af7d24d15771351303127b1f1eee0187c1759862b8f0219b7', 'teacher', '2025-04-07 21:14:19', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums1175@lums.edu.pk' OR phone = '33705198964')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums1175@lums.edu.pk', '33705198964', 'Farooq Tariq', 'dfb85ff92a9add9f407b03b4179fea2929995e2866ea1e0b722f88f82607d310', 'student', '2024-11-06 11:03:25', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums1176@lums.edu.pk' OR phone = '39345567414')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums1176@lums.edu.pk', '39345567414', 'Bushra Qureshi', '121293db8971b691ca40d74f2368bd058fa038fb47dcf463138be894de1beefc', 'worker', '2025-09-19 15:04:59', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user1177@lums.edu.pk' OR phone = '38430787004')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user1177@lums.edu.pk', '38430787004', 'Nadia Tariq', 'b4e8b3948d3cf09c732e874acafe5f64e9384c04693c4582e4438205f75f4925', NULL, '2025-03-22 01:49:32', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student1178@lums.edu.pk' OR phone = '33598180417')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student1178@lums.edu.pk', '33598180417', 'Khalid Tahir', '584716cc35dae9114c896a3d1c659f3d368603f4625ef6af4a5ea0ef2ca4af56', 'teacher', '2025-07-14 19:50:12', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '01179@lums.edu.pk' OR phone = '38937391559')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('01179@lums.edu.pk', '38937391559', 'Shahzad Khan', '18f82b1bf418b2d44bf4d87548801d73bf35bafcd9759866afb4f21e2d1e6270', 'student', '2024-06-15 12:53:00', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student1180@lums.edu.pk' OR phone = '32670507453')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student1180@lums.edu.pk', '32670507453', 'Akram Qureshi', 'd3aba652272ac0afcc813317191b2352ee38ac4d870ef7d6b8bef42334d90705', 'worker', '2023-12-25 16:58:20', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student1181@lums.edu.pk' OR phone = '30047295938')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student1181@lums.edu.pk', '30047295938', 'Ali Siddiqui', '62d3134e96c6269bf643fe2859bf1f4a8b2db916e2d68e03aa24b2b1148c5e06', 'teacher', '2025-06-12 12:57:31', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '01182@lums.edu.pk' OR phone = '33006916938')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('01182@lums.edu.pk', '33006916938', 'Ali Akhtar', 'f979055e92ed4efc1d1c3dfb54b7dbee20a86e56af9025d44e17bd76ca201946', 'worker', '2024-05-18 01:43:03', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums1183@lums.edu.pk' OR phone = '32338665556')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums1183@lums.edu.pk', '32338665556', 'Nazia Abbas', '57b62f77ce0b0b8375c07c685630874d11135996bd13e6a4a4f46d8d22b03a8a', 'student', '2025-05-31 19:36:12', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student1184@lums.edu.pk' OR phone = '36218907781')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student1184@lums.edu.pk', '36218907781', 'Ibrahim Bashir', '3a87b4252bc7a67675903f325fa5b79ca91c3d65d341ccb14167380c4a024c27', 'student', '2024-03-20 22:55:19', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '01185@lums.edu.pk' OR phone = '37447965567')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('01185@lums.edu.pk', '37447965567', 'Mahnoor Naqvi', '21bb48eb45ad8a6911ca5c49c6b73fa8b74e0d113ffb57dbdd9dbdd31e69278c', 'admin', '2024-07-03 04:21:56', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student1186@lums.edu.pk' OR phone = '37103552153')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student1186@lums.edu.pk', '37103552153', 'Nadeem Anwar', '51c20612555b448e959916d52fa8d47b7fbcb543a333172c8744336d8801fbde', 'admin', '2025-09-25 04:47:22', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student1187@lums.edu.pk' OR phone = '38192585930')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student1187@lums.edu.pk', '38192585930', 'Amna Butt', 'f22a40378e21056aaec76118ed882a821ad4297028252bc808fa9dcb83d47a8b', 'student', '2024-10-25 16:00:52', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user1188@lums.edu.pk' OR phone = '34183802627')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user1188@lums.edu.pk', '34183802627', 'Sami Chaudhry', 'd8f26a667efd1fd495f171bb8425047b1a326782d6e7d07967c75515d7134d97', 'admin', '2025-09-27 05:12:19', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums1189@lums.edu.pk' OR phone = '31675589058')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums1189@lums.edu.pk', '31675589058', 'Rafiq Naqvi', '3946d021c91c6d5e11b1df7119b65fdcfdb68ff08be16a2bc3acee298d433cab', 'teacher', '2024-01-10 01:56:28', 1, '2025-07-19 09:43:23');
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '01190@lums.edu.pk' OR phone = '34649486662')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('01190@lums.edu.pk', '34649486662', 'Arshad Raza', '3c21b73b478b8f0a5ce3ca9ae33b088d1b08410829c8ac4f5ef7be7aac784994', 'worker', '2025-01-02 21:55:09', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '01191@lums.edu.pk' OR phone = '39375966282')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('01191@lums.edu.pk', '39375966282', 'Rizwan Aziz', 'dfd59619244cb5c038c7c3269902e70792e43b594b6b7556913cde3e9cc485dd', 'student', '2025-09-22 13:13:16', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '01192@lums.edu.pk' OR phone = '32537815140')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('01192@lums.edu.pk', '32537815140', 'Aisha Akhtar', 'e817ca4a771c5d291b2a9e34d02dc81bcd62512b01a4fe6abaf9f0b80ed107b3', 'teacher', '2024-01-25 05:00:27', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums1193@lums.edu.pk' OR phone = '39453461294')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums1193@lums.edu.pk', '39453461294', 'Shahzad Masood', '6d7ea76a7c5c1d1cecb9879b71969fc47bfa3dc13372142513fe1e808f005e57', 'worker', '2024-01-29 05:14:01', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums1194@lums.edu.pk' OR phone = '30128474054')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums1194@lums.edu.pk', '30128474054', 'Yusuf Ahmed', 'f99d1292231747e8e431e32f5d4970f654daa4f50b035d26f1f8e5a7be877d89', 'admin', '2024-11-09 01:23:28', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user1195@lums.edu.pk' OR phone = '36149941340')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user1195@lums.edu.pk', '36149941340', 'Ayesha Ayub', 'fff375300aaf51a51c790f2dfa8794da73412ea82deb64eabfb4c683c030358f', 'teacher', '2024-06-30 11:35:35', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student1196@lums.edu.pk' OR phone = '33564505029')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student1196@lums.edu.pk', '33564505029', 'Zain Malik', 'e073290fbca59ca4200683976c29b53e6335bf75b3acb88a4c3b4d6d0c2335e1', 'admin', '2024-09-10 09:59:35', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '01197@lums.edu.pk' OR phone = '31525346697')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('01197@lums.edu.pk', '31525346697', 'Aftab Ayub', 'a04328774ed81a39993e56b2bd2a8d6adea15c1cb195f4a95414e28308158595', 'admin', '2024-03-26 00:07:34', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user1198@lums.edu.pk' OR phone = '30121108148')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user1198@lums.edu.pk', '30121108148', 'Zainab Waheed', 'e3dd1d5c2a6f7db7876de309ce4a925ade785972c4c77bce2e90f0278cd6add0', 'student', '2024-03-18 03:47:13', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums1199@lums.edu.pk' OR phone = '37826978085')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums1199@lums.edu.pk', '37826978085', 'Wasim Umar', '6f26e622c905f0855c3693e0b7c0e3cbf23039571f4c0677daa09445ea7fb735', 'admin', '2024-03-09 11:43:31', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student1200@lums.edu.pk' OR phone = '34951261052')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student1200@lums.edu.pk', '34951261052', 'Akram Hameed', 'a88d9ee143e4f4dd2f3abc67be8c515a863e0a773d1e86d9c292ad6a2586c39a', 'admin', '2025-11-02 01:29:01', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '01201@lums.edu.pk' OR phone = '32821162452')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('01201@lums.edu.pk', '32821162452', 'Raza Ilyas', '96e328c1cd631c0eccff7b9cd543b2ce1d036ff14d76cd4a607d939e452d6066', 'admin', '2024-09-16 13:33:20', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '01202@lums.edu.pk' OR phone = '37755031795')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('01202@lums.edu.pk', '37755031795', 'Sadaf Yousaf', '6290699f0541a56e2c60ce6879a1afcdb142cf2c6a85eb0008599fc465d7d291', 'admin', '2024-12-16 03:44:59', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums1203@lums.edu.pk' OR phone = '32554874082')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums1203@lums.edu.pk', '32554874082', 'Mahnoor Ghani', '801abb17671159c000fdcfee1f4246fc06954550fa8ea557f6b96453b3253103', 'student', '2024-06-24 17:49:33', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums1204@lums.edu.pk' OR phone = '34537167450')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums1204@lums.edu.pk', '34537167450', 'Tariq Karim', 'a25c004ea6269ed87d7c67f61cdcf8e8ab3e12ade17cfd924fce16011e7364eb', NULL, '2025-09-13 18:47:35', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user1205@lums.edu.pk' OR phone = '33935103132')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user1205@lums.edu.pk', '33935103132', 'Yusuf Tahir', 'a301b0036b39a01398597555a42910432f748919587c347d5d24e90309482acc', 'worker', '2024-06-29 01:55:57', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums1206@lums.edu.pk' OR phone = '37329943063')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums1206@lums.edu.pk', '37329943063', 'Sumera Rafiq', 'fe433ba9ab20d079c5705314c944fa96c4382415db7655fc8d268b9dbf79131b', 'admin', '2024-02-28 03:18:20', 1, '2025-02-04 03:17:28');
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '01207@lums.edu.pk' OR phone = '36745548763')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('01207@lums.edu.pk', '36745548763', 'Sidra Hassan', '181886f60f1d22d4acd788a452aec0b219238bf9a80a8965e77740ac606772c3', 'admin', '2025-11-13 09:44:01', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student1208@lums.edu.pk' OR phone = '39388199177')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student1208@lums.edu.pk', '39388199177', 'Hassan Jamil', '6e24bc7bd428358f80f8353bc46913481dcf3ea1a37763b7fc327cf0ca259c83', 'student', '2024-01-14 12:18:35', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user1209@lums.edu.pk' OR phone = '33472440639')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user1209@lums.edu.pk', '33472440639', 'Shahid Raza', '662f19220d247e361a90e5a4939f0e8aec1f2bf034fcdd2921921f0884976f5f', 'worker', '2024-08-12 04:19:41', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user1210@lums.edu.pk' OR phone = '33122548185')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user1210@lums.edu.pk', '33122548185', 'Rizwan Tariq', '9998fed285cdfd17b134db42c53b5d8afad5373a058e7317a20f86d36bbff2a0', 'admin', '2025-07-29 16:15:21', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '01211@lums.edu.pk' OR phone = '39817838176')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('01211@lums.edu.pk', '39817838176', 'Sadaf Ayub', '06b535ad95b4b8bc600ad7c882de646957c0abbf983fd8e0c2fcb038c84af11e', 'student', '2024-06-17 22:33:35', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '01212@lums.edu.pk' OR phone = '35144940500')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('01212@lums.edu.pk', '35144940500', 'Khalid Qureshi', 'a789dbf39e231a79bae925b9fae0e7fadc0591278a8891e58db33ab12cb5a7f6', 'admin', '2024-08-16 07:39:52', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user1213@lums.edu.pk' OR phone = '39234157785')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user1213@lums.edu.pk', '39234157785', 'Naveed Naqvi', '6576230f7323c92977999b1847df8f0f7569bff242cc36ea06f8c22b5210d266', 'teacher', '2025-01-03 10:28:35', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums1214@lums.edu.pk' OR phone = '38984829678')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums1214@lums.edu.pk', '38984829678', 'Arshad Javed', '0d9f113b8456d2b3f09a753a75f3d3b502455bfef15c8c487f131c254bf77da5', 'worker', '2024-08-22 18:32:37', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student1215@lums.edu.pk' OR phone = '30535145942')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student1215@lums.edu.pk', '30535145942', 'Bilal Abbas', 'b8f28d6cb47a9cfb7927ff0a621e3001d12258a6b473090f77f2b81b4ae0d515', 'teacher', '2023-12-30 06:19:01', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student1216@lums.edu.pk' OR phone = '38430095661')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student1216@lums.edu.pk', '38430095661', 'Hassan Zia', '8fee09761aa48ac4edd21be3597f6b59daf0f4371b06658541a9c400e4cff10b', 'student', '2024-03-01 10:00:42', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student1217@lums.edu.pk' OR phone = '34562705880')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student1217@lums.edu.pk', '34562705880', 'Noor Tariq', 'eaf47a408c8e6a87a5a45778f4763706a4ec4b2d3b733783364cd093b11a0d07', 'student', '2024-12-19 21:24:41', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student1218@lums.edu.pk' OR phone = '36676897734')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student1218@lums.edu.pk', '36676897734', 'Hanif Zia', 'a232d707085dc240937c6c3abaeaf1be2bd0d9249531a72cb332d852464eee6d', 'student', '2025-09-04 12:57:26', 1, '2025-11-08 14:11:14');
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums1219@lums.edu.pk' OR phone = '35541723968')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums1219@lums.edu.pk', '35541723968', 'Shaista Akbar', 'ecb0b5c189c9c5934b057ad8712b6222dcda494969b43975befaef16189a1c71', 'teacher', '2024-06-08 23:51:33', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student1220@lums.edu.pk' OR phone = '37482908344')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student1220@lums.edu.pk', '37482908344', 'Nazia Ilyas', 'bf7577c1fe84d281d0229a61c2b4904ff377c034052e77362899a298737a068c', 'admin', '2024-05-05 07:46:20', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums1221@lums.edu.pk' OR phone = '32975904032')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums1221@lums.edu.pk', '32975904032', 'Samina Shah', 'ac004409965231d3c7fdeef03ae1140c94ef23870254c7dd4747c3b0ee604071', 'admin', '2024-01-27 17:20:15', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user1222@lums.edu.pk' OR phone = '34163260196')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user1222@lums.edu.pk', '34163260196', 'Rafiq Zaidi', '300f08daff85e6476ecdfff48d0256853a7bd11da71794ec61ed67a0e6553115', 'teacher', '2025-06-17 15:54:27', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student1223@lums.edu.pk' OR phone = '30282310717')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student1223@lums.edu.pk', '30282310717', 'Fatima Sadiq', '11c83cee4eb4d5764e02140fdfeaaeac303e885dd81140f3a6a1dbbd937b94c5', 'student', '2025-09-29 05:12:42', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student1224@lums.edu.pk' OR phone = '32430419948')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student1224@lums.edu.pk', '32430419948', 'Kashif Hassan', '93782aab9ab3480bd758d7f67b7028a34918d931e708824e82cb6de4a5c97dd9', 'worker', '2023-12-13 06:27:37', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student1225@lums.edu.pk' OR phone = '34544462102')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student1225@lums.edu.pk', '34544462102', 'Iqra Tariq', '84d040300d9684563c10d53c9546732360cf8574e6175d0203ed1eebf4e008ba', 'worker', '2024-06-16 05:52:01', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user1226@lums.edu.pk' OR phone = '35811494072')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user1226@lums.edu.pk', '35811494072', 'Rafiq Qureshi', 'cbdbcf4a4db5eccc5867353481f46338f9bbea1e67b28f1c016dcd1d36b18f61', 'student', '2024-04-28 18:19:50', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user1227@lums.edu.pk' OR phone = '32365061447')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user1227@lums.edu.pk', '32365061447', 'Khadija Qadir', '77e240619ebdd076fb62e014a1ac9a51380413b2c80e808099e0f3da7ba10c8c', 'admin', '2025-03-31 16:45:33', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums1228@lums.edu.pk' OR phone = '38994694787')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums1228@lums.edu.pk', '38994694787', 'Majid Aslam', 'c82fe1f3eef97733efe17b3d3a9dd7050006cae2eb192bcae1bae1bbcfac1dad', 'worker', '2025-07-11 19:03:48', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '01229@lums.edu.pk' OR phone = '33618580174')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('01229@lums.edu.pk', '33618580174', 'Fahad Qureshi', '4b751485e796928956b1cdf0527c4cf599b1f73759b303928a1b32ce16466dd5', NULL, '2025-03-08 15:57:32', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student1230@lums.edu.pk' OR phone = '38157332518')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student1230@lums.edu.pk', '38157332518', 'Saleem Sheikh', 'c3fd469e91e2d442e2b943744dbc18524e5e73ce892b981fc1504883510cdb68', 'student', '2025-06-17 15:00:58', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums1231@lums.edu.pk' OR phone = '30272132124')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums1231@lums.edu.pk', '30272132124', 'Saad Qadir', '15a56bd4dd3c6544077a0fdf63986e3375a758fc21046d623a3163ff7636f1d9', 'worker', '2024-04-15 02:40:07', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student1232@lums.edu.pk' OR phone = '31670602180')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student1232@lums.edu.pk', '31670602180', 'Aftab Tariq', 'd47ac04095f8dd8bb86022d25bcc7927a1340388be970a5efb6b0557189e0fa2', 'admin', '2025-09-18 14:51:24', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '01233@lums.edu.pk' OR phone = '34101565079')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('01233@lums.edu.pk', '34101565079', 'Saleem Raza', '59e2d774c648616b8639ab20e5030c7d29860dd421e26b83bb7e471edb81cb73', 'admin', '2024-04-02 08:07:43', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums1234@lums.edu.pk' OR phone = '30752973208')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums1234@lums.edu.pk', '30752973208', 'Sidra Waheed', 'b9c950640e1b3740e98acb93e669c65766f6670dd1609ba91ff41052ba48c6f3', 'teacher', '2025-07-17 09:08:51', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student1235@lums.edu.pk' OR phone = '32990794454')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student1235@lums.edu.pk', '32990794454', 'Shamsa Qureshi', 'c15ebedd5a19e2bd4919b97f74078f175f02f4fde0a3afd0fc5349e0b24b8a05', 'teacher', '2025-01-20 14:14:42', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '01236@lums.edu.pk' OR phone = '38402564372')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('01236@lums.edu.pk', '38402564372', 'Rashid Masood', '51f158fbe32ab6d27d2d429899d73830028c8d62dbe5db7739de31a4a041c3cf', 'admin', '2025-09-07 15:17:16', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user1237@lums.edu.pk' OR phone = '39683580762')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user1237@lums.edu.pk', '39683580762', 'Alina Jamil', '992a2d26d8e460cbc59d07fdb70f8915b816ad881458bbe810ede7dfa0a0c6f7', 'student', '2024-05-31 14:48:57', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums1238@lums.edu.pk' OR phone = '31603876788')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums1238@lums.edu.pk', '31603876788', 'Ibrahim Aslam', '6ce6b2cd79c29fee1091cc789b4c5a4135d0d47be5f1470f4a212257f07da7eb', 'teacher', '2024-06-09 02:29:34', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums1239@lums.edu.pk' OR phone = '34872768937')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums1239@lums.edu.pk', '34872768937', 'Ibrahim Hassan', 'fec1456a90ab071b09af4810b95b9ccec7e7702f72d8366f3f85469ad06e1ee2', 'student', '2024-08-25 02:46:03', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student1240@lums.edu.pk' OR phone = '31148993414')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student1240@lums.edu.pk', '31148993414', 'Faisal Shah', '1affa6a150733901dc375b3f3aa18cd9c77895b44318d630b865fb386e0b3111', 'admin', '2024-10-05 06:34:31', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums1241@lums.edu.pk' OR phone = '30899905317')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums1241@lums.edu.pk', '30899905317', 'Nadia Rafiq', 'ef20ee69c1211b730ba00752efa64cbcb2cf4fb14476754b750873beaedc2aaf', NULL, '2024-09-30 23:26:58', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums1242@lums.edu.pk' OR phone = '35024788664')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums1242@lums.edu.pk', '35024788664', 'Omar Ilyas', 'dae5388324f78a9c81301eeb8fadd86d2911102d8aaaedb9cd49f958a8c46cc5', 'admin', '2025-04-29 13:55:20', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user1243@lums.edu.pk' OR phone = '37735602317')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user1243@lums.edu.pk', '37735602317', 'Aamir Bashir', 'b9ffa1482f03d6258ba759fc9f1976384bb6f64fb7771f002ded2d3e11487511', 'teacher', '2025-07-29 12:09:39', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user1244@lums.edu.pk' OR phone = '36527385865')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user1244@lums.edu.pk', '36527385865', 'Azhar Hameed', 'b0af28334ab6b1fdebf92667e442ba09c8ff2157a33b9f6da941d1f46eca4d26', 'teacher', '2024-05-31 05:00:15', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student1245@lums.edu.pk' OR phone = '30525204603')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student1245@lums.edu.pk', '30525204603', 'Yusuf Hussain', '391e9ff1094bdbbbfacad4119a7ab1d27ad35885d4b16173b91294270318b86b', 'worker', '2025-01-30 16:16:54', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '01246@lums.edu.pk' OR phone = '33780271745')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('01246@lums.edu.pk', '33780271745', 'Zahid Nadeem', '466344a1894ce6f1d497ba56baa0a395081674f8e9ed1ae683e66b42fc819c2b', 'teacher', '2024-03-09 21:22:30', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student1247@lums.edu.pk' OR phone = '39565160326')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student1247@lums.edu.pk', '39565160326', 'Naveed Abbas', 'ec9c5617b27fd36b699ca5c4f69630548a3a7c39078657972a7a8e523dc23ec8', 'teacher', '2024-05-16 23:38:41', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student1248@lums.edu.pk' OR phone = '37288036571')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student1248@lums.edu.pk', '37288036571', 'Raza Yaqoob', '60646a0cafda26ab536ff845db9097622e74efda0498735e30d796c7bf45747c', 'teacher', '2023-12-20 02:46:09', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user1249@lums.edu.pk' OR phone = '38196744991')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user1249@lums.edu.pk', '38196744991', 'Tuba Yousaf', '2f0f49e66ab48f88923b4c33413401ad2a780d30964ab11ed3e01b7d470452b2', 'student', '2024-10-10 15:57:39', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student1250@lums.edu.pk' OR phone = '34127093475')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student1250@lums.edu.pk', '34127093475', 'Zahid Akhtar', '905ed39181e6b7bdbb6d7fc5ec0a233175bf990feecdd81c790c686d9226e8c6', 'teacher', '2025-05-13 18:32:47', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student1251@lums.edu.pk' OR phone = '35528411702')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student1251@lums.edu.pk', '35528411702', 'Hassan Hassan', '423d20388e0b6db06540cdcee4365ef95f4c5c5144365ab4c088946452fc85f5', 'student', '2025-05-10 21:23:57', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user1252@lums.edu.pk' OR phone = '32485483021')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user1252@lums.edu.pk', '32485483021', 'Abdullah Malik', '9d3d2da0b0872e02a29922ed7a5b0418b59c57fa21e2cf104dd183cf78b08608', 'teacher', '2025-07-18 04:53:14', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '01253@lums.edu.pk' OR phone = '34909218612')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('01253@lums.edu.pk', '34909218612', 'Shaista Zia', 'c12560b333f3165762943f30b79c470665bf84dfcaed7808ce2b0c1b1cb9fb20', 'admin', '2025-07-13 16:55:44', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '01254@lums.edu.pk' OR phone = '32915118905')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('01254@lums.edu.pk', '32915118905', 'Asim Tahir', 'eac767d863ede0e27834d26e5b173630cdb23525b92c9f2b8899813cf78204ee', 'admin', '2025-01-28 19:08:00', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '01255@lums.edu.pk' OR phone = '39346585879')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('01255@lums.edu.pk', '39346585879', 'Sidra Waseem', '8ae07935c61d5da9622f9d9e7763b2a4746ccb6cafdcabaaa02cfa75e15eff21', 'student', '2024-04-13 23:17:28', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user1256@lums.edu.pk' OR phone = '39487499913')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user1256@lums.edu.pk', '39487499913', 'Sami Ilyas', '1b1d621171eba9f5516a2f016fb5c59a97282419263de9b15f8c9ba1cd1be261', 'teacher', '2024-05-01 10:10:58', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student1257@lums.edu.pk' OR phone = '33609283538')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student1257@lums.edu.pk', '33609283538', 'Maria Masood', '2f2865ea80d8d15d780ce2b5166ceb84819b8b925c44b6f7ad8039e77e570f58', 'student', '2024-03-09 09:34:32', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student1258@lums.edu.pk' OR phone = '30844173234')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student1258@lums.edu.pk', '30844173234', 'Farooq Javed', '749f15f27c7de90125436beffa8b4761e48e4f448ae4edb475f5af90c4aac047', 'worker', '2025-01-23 08:19:32', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '01259@lums.edu.pk' OR phone = '32486800353')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('01259@lums.edu.pk', '32486800353', 'Zain Javed', '43f0e56217795454005ac77b8c61ace8e03c073e962e6837ab4a83720f0ebeeb', 'student', '2025-03-28 07:49:10', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user1260@lums.edu.pk' OR phone = '37169364693')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user1260@lums.edu.pk', '37169364693', 'Raza Anwar', 'f216f34995d4464416e6f93ce12161d8842c49beec42b557804f5e6bf9fc95a2', 'admin', '2024-07-25 05:09:12', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums1261@lums.edu.pk' OR phone = '31604289540')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums1261@lums.edu.pk', '31604289540', 'Shaista Nadeem', '537995f1df22cd0a8a942c821b4761adbe9e1cede047fa95a9c92308852e81c6', 'admin', '2025-05-16 22:33:19', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '01262@lums.edu.pk' OR phone = '34373332047')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('01262@lums.edu.pk', '34373332047', 'Usman Zia', '5fb49adbe1bd253f7d38212d21b295ec43bec71c406e8d7b7e98ea6f3f296360', 'teacher', '2024-09-23 10:27:29', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums1263@lums.edu.pk' OR phone = '31730975618')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums1263@lums.edu.pk', '31730975618', 'Irfan Sheikh', 'b3d1041270dddd318105e05a02ed490bbf94f3a65c27ea02a34bb4dc1d9dcf5c', 'student', '2025-03-08 15:53:12', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student1264@lums.edu.pk' OR phone = '32184507053')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student1264@lums.edu.pk', '32184507053', 'Sumera Yousaf', 'd0ea337195091882ec04807843d9f2dbd9a9048c2fe1a0062fc8090e4ef17ede', 'student', '2024-10-12 08:05:40', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums1265@lums.edu.pk' OR phone = '30049166221')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums1265@lums.edu.pk', '30049166221', 'Arshad Qureshi', 'dd9a2d19a7b6ddfcf6d9b537b6ef4b045a6912978a9e7c62b5a99cf03ae4f0ea', NULL, '2025-07-26 18:29:57', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student1266@lums.edu.pk' OR phone = '32735866222')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student1266@lums.edu.pk', '32735866222', 'Talha Sheikh', '24747ee807775474c953dcccce86ddf92c46d76084c971141be0d693253aa0d1', 'student', '2024-10-22 04:16:33', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums1267@lums.edu.pk' OR phone = '32577518876')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums1267@lums.edu.pk', '32577518876', 'Sami Nadeem', 'ff73208d1738d1a32c3852a3ae932ac92745eed9bdf5e2d545ba64de3931394c', 'student', '2024-09-23 00:56:32', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums1268@lums.edu.pk' OR phone = '34340789958')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums1268@lums.edu.pk', '34340789958', 'Kamran Tahir', 'e1e3b4c6abb35ee747a480abaa2f2aa5f6f1d180633a67ebc91c399785db4b1d', 'teacher', '2025-02-28 13:09:18', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums1269@lums.edu.pk' OR phone = '39493025209')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums1269@lums.edu.pk', '39493025209', 'Aisha Waheed', '1b87aca6985ef39885df1e313bc814c555ccc20135eaffcf7379f3211e6ea89a', NULL, '2024-08-03 06:40:00', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user1270@lums.edu.pk' OR phone = '31516639709')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user1270@lums.edu.pk', '31516639709', 'Salman Shah', '85f726655b42c5710ea47099a624e343c2de715a2a6b0f37b7980b82a10845a5', 'student', '2025-03-09 09:46:24', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user1271@lums.edu.pk' OR phone = '30856078243')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user1271@lums.edu.pk', '30856078243', 'Rafiq Khan', 'c36adcf58f6172bef57aaa28cd93de91c3b849499ea4dda973bf61a2c724ade2', 'student', '2025-04-27 11:26:05', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums1272@lums.edu.pk' OR phone = '35843092277')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums1272@lums.edu.pk', '35843092277', 'Talha Khan', 'f309f7c9a2aaf6f6a20498833bd8e732741ab64f90e6e43cf3d57b5737762e53', 'teacher', '2024-07-14 18:24:29', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums1273@lums.edu.pk' OR phone = '39639894192')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums1273@lums.edu.pk', '39639894192', 'Naveed Jamil', '71e0fedd258b83071e6eb13134da1ad2c70d08959ccea824d17dda1d7c8aa9e2', 'worker', '2025-11-13 01:20:27', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '01274@lums.edu.pk' OR phone = '36200903277')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('01274@lums.edu.pk', '36200903277', 'Waqas Yousaf', '794d28242e6a1c9022d878d07c3377b33d68f403884d3de85f0b2992f60d7fe7', 'teacher', '2025-08-29 03:25:41', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums1275@lums.edu.pk' OR phone = '38283304891')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums1275@lums.edu.pk', '38283304891', 'Parveen Zaidi', 'c6a58112860c0e4d29c1addf80e0324152f2406739bdc3b032687cab2afe30c0', 'admin', '2025-05-26 06:25:59', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user1276@lums.edu.pk' OR phone = '35418605398')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user1276@lums.edu.pk', '35418605398', 'Parveen Hussain', 'ea00c8a54a9134e2d6698f169aa0cbf46d37c7891c51639c253b8b00d2c11019', 'teacher', '2025-09-26 22:46:03', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums1277@lums.edu.pk' OR phone = '36130490061')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums1277@lums.edu.pk', '36130490061', 'Rubina Ayub', '1348a365053c520a9e4bf49ae4168a9a3e2245d9d89f633141b8eca59d100378', 'student', '2024-08-19 15:04:01', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student1278@lums.edu.pk' OR phone = '32404214185')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student1278@lums.edu.pk', '32404214185', 'Tariq Aslam', '9c4fded80cb443d732ad8c5d474fcb02dbfefa4207c43db759ddadefdd37f18a', 'student', '2025-08-15 02:35:56', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user1279@lums.edu.pk' OR phone = '34855580365')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user1279@lums.edu.pk', '34855580365', 'Shakeel Akhtar', '7b87fe80dd7990e87508f3210839f676af74fe51c2117cac95bb971882153408', 'worker', '2025-01-19 19:57:27', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student1280@lums.edu.pk' OR phone = '38332721854')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student1280@lums.edu.pk', '38332721854', 'Maria Khan', '8d1b30b9ad42a6c2a80116645558aae93c35a2222b28304610e026ade6cae6ba', 'student', '2025-03-19 11:18:02', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user1281@lums.edu.pk' OR phone = '37876642756')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user1281@lums.edu.pk', '37876642756', 'Fouzia Tariq', '342473daf801efe0e1fd0c3d3e4439e74d83e515034319f342bbc8cfd9410d79', 'worker', '2024-04-26 14:33:30', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student1282@lums.edu.pk' OR phone = '36835168267')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student1282@lums.edu.pk', '36835168267', 'Fahad Masood', '1acfe5a496dcd5c1d37c94a5699d8d18f3ec35ae6f554b7fc945e9757996e63d', 'student', '2024-12-02 07:55:59', 1, '2025-09-18 16:35:53');
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '01283@lums.edu.pk' OR phone = '35805251279')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('01283@lums.edu.pk', '35805251279', 'Bushra Shah', 'b6cc13453b9bed383595cc650a9b0651d3c84f0dd9cf08c93ee64dc4008cbb23', 'student', '2025-07-30 15:26:28', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student1284@lums.edu.pk' OR phone = '37184097075')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student1284@lums.edu.pk', '37184097075', 'Anwar Waheed', 'dd0e111a8b411888b9344c8ff4eb0bf3602da4ce1f81f7de25d06d340b711e63', 'worker', '2024-05-03 13:51:19', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums1285@lums.edu.pk' OR phone = '33543461307')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums1285@lums.edu.pk', '33543461307', 'Alina Karim', '742a533ce8a7619c4660f13f0a4d41d80bc3f0cd5836930c356b437947986055', 'student', '2024-07-27 18:14:14', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '01286@lums.edu.pk' OR phone = '38687623192')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('01286@lums.edu.pk', '38687623192', 'Hassan Naqvi', 'd6c5201552ded2b7344f3054dba6df912e12f2bb3b248c2cfe3c94971c0fc69d', 'admin', '2025-06-05 11:19:59', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums1287@lums.edu.pk' OR phone = '38825311687')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums1287@lums.edu.pk', '38825311687', 'Akram Ahmed', '2237da30fc307b4e8c66633ec1fbe39ee6bc78db8de1226b5e720d4068f23f22', NULL, '2025-01-25 19:34:23', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student1288@lums.edu.pk' OR phone = '36379661252')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student1288@lums.edu.pk', '36379661252', 'Naila Iqbal', '4acd120c00f125364fee1e474fca46e06f4326d83beaa90af47d1f84edc15d0a', 'student', '2024-06-18 15:39:39', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student1289@lums.edu.pk' OR phone = '39456642736')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student1289@lums.edu.pk', '39456642736', 'Azhar Khan', '4c337bfaf024aa5ffc70078d194da36460b5b95341f0161ed5861382da3f3c75', 'student', '2025-06-18 05:49:15', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums1290@lums.edu.pk' OR phone = '33199327899')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums1290@lums.edu.pk', '33199327899', 'Sadaf Ilyas', 'a9bab49cc49b7c09ddb99b40e53b3f600b12f52c8e41604bda34db437533729b', 'admin', '2025-05-07 22:28:46', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums1291@lums.edu.pk' OR phone = '30431513121')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums1291@lums.edu.pk', '30431513121', 'Sidra Rafiq', '28a5d5efdc80e400ae5802e1fdfdd7f66deb1e6b7d492e967fa67e1570583690', 'admin', '2025-03-13 21:58:14', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums1292@lums.edu.pk' OR phone = '31844478569')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums1292@lums.edu.pk', '31844478569', 'Majid Nadeem', '7ad75fe67706d7246c16d85ff9deb89e0afe3e52241800052af5f48410e510cd', 'admin', '2025-03-23 20:20:41', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '01293@lums.edu.pk' OR phone = '39592929787')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('01293@lums.edu.pk', '39592929787', 'Saleem Abbas', 'ff9a839c61530a6f772aafd16e9fd8add337faf9360841b7025e874ccfd50699', 'admin', '2025-09-14 16:20:36', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '01294@lums.edu.pk' OR phone = '39925203821')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('01294@lums.edu.pk', '39925203821', 'Fahad Ayub', 'dd0fd8b22b72517a10495ed014fb3fe368820117fbb98a8b0dc1c7165eb2d043', 'worker', '2025-09-04 23:19:54', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums1295@lums.edu.pk' OR phone = '37763472383')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums1295@lums.edu.pk', '37763472383', 'Imran Ilyas', '7960980c4cf8a2004b17c40af707a591463a7d469cec382a8618d3e922cec266', 'teacher', '2024-04-24 20:49:11', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '01296@lums.edu.pk' OR phone = '30266941715')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('01296@lums.edu.pk', '30266941715', 'Adnan Sadiq', '65781ffe3d27205da3b70e4f83ee2c9a485df135ae49cd8950da7fb8e3a43f67', 'student', '2024-03-02 11:46:43', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '01297@lums.edu.pk' OR phone = '37959486980')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('01297@lums.edu.pk', '37959486980', 'Nadeem Khan', '450c53cd0e07f893f336ae9c23a449aa819afdfa997ba4d766949239c52571a7', 'teacher', '2025-06-16 04:26:17', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student1298@lums.edu.pk' OR phone = '30427692217')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student1298@lums.edu.pk', '30427692217', 'Anwar Mahmood', '268bf39d0b70eeca3981608f01e0ad90f2881f82bf97522c7540ddfce687c686', 'teacher', '2025-08-21 19:41:49', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user1299@lums.edu.pk' OR phone = '32455061389')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user1299@lums.edu.pk', '32455061389', 'Mahnoor Butt', '45e0fa700b81f930c794d25a15869ba3df0eddb6753fb7257da9f26b360f4563', 'student', '2025-09-26 22:26:07', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student1300@lums.edu.pk' OR phone = '36867298073')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student1300@lums.edu.pk', '36867298073', 'Fahad Umar', '31effc4dde8e5d6d5ebaca0be9469865df37b37a9d0940551e6b7f37599d03c3', 'teacher', '2024-09-10 02:48:24', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '01301@lums.edu.pk' OR phone = '31993275856')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('01301@lums.edu.pk', '31993275856', 'Zain Anwar', '56c7ecc4820ce71fc2931fb1820df335f8735a49462a29c351e838b8559cbe28', 'teacher', '2025-07-24 08:28:08', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student1302@lums.edu.pk' OR phone = '39374961703')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student1302@lums.edu.pk', '39374961703', 'Shazia Aslam', '0f7b1308b4550ae335ee3dd6cb9019aade6daebeca3acca3a67c159cbf7975e5', 'admin', '2024-10-19 17:19:58', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student1303@lums.edu.pk' OR phone = '36300830949')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student1303@lums.edu.pk', '36300830949', 'Khalid Yaqoob', 'f954a9194548f4fd5e9de9a2e40547ee5e62b2e5280e63be4498d4b6e0cfb74c', 'admin', '2025-05-27 20:07:37', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '01304@lums.edu.pk' OR phone = '39933330644')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('01304@lums.edu.pk', '39933330644', 'Hamza Yaqoob', '7cac8ba7364aa4eacb3e02b1b225443f7b8d5a6cbc0e36c28aa2cacc6911bd84', 'admin', '2025-10-21 00:12:01', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user1305@lums.edu.pk' OR phone = '36013122041')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user1305@lums.edu.pk', '36013122041', 'Khalid Akbar', 'c416c7a61fe2bc9db392cdf213a1c86c48b5b409730aa536e67ecd5cb6780fe2', 'teacher', '2024-10-31 02:44:40', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums1306@lums.edu.pk' OR phone = '33193479299')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums1306@lums.edu.pk', '33193479299', 'Shama Butt', '5c36d74fcd57a6825439ecfe97542d42c7be6b2adccc0305a5604c9ce5822588', NULL, '2025-08-17 19:51:00', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user1307@lums.edu.pk' OR phone = '30916749075')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user1307@lums.edu.pk', '30916749075', 'Aftab Hussain', '71f5c255cd96aba2a17f152cd3b88aab7cd23f6339b46dc8c58e3897df362777', 'worker', '2025-04-14 16:14:56', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums1308@lums.edu.pk' OR phone = '31503340691')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums1308@lums.edu.pk', '31503340691', 'Arshad Zia', '22427e2380924b3497dd6bed0a9bf6128b73fa1221d0dfdf7058eef3b1f6e8dc', 'teacher', '2025-06-27 03:09:54', 1, '2025-09-22 23:18:39');
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user1309@lums.edu.pk' OR phone = '31418355933')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user1309@lums.edu.pk', '31418355933', 'Rashid Zia', '0ca30f6e2a773dc816a4c2117983facf567f3806fbfc21400e6627fa96465dd3', 'worker', '2024-08-29 07:09:03', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums1310@lums.edu.pk' OR phone = '35599294957')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums1310@lums.edu.pk', '35599294957', 'Nadia Yousaf', '596e8b0adabe21c9da8dabc46dae5a2475bd4e98e6ba155f4446a4f2200298ab', 'teacher', '2024-10-07 06:15:30', 1, '2025-05-18 05:37:28');
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '01311@lums.edu.pk' OR phone = '32845471752')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('01311@lums.edu.pk', '32845471752', 'Naseem Akhtar', '356b925a803c652900fae6dcc76b4028dcda698876a9a529156c285af0360e81', 'student', '2025-06-14 21:33:03', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '01312@lums.edu.pk' OR phone = '31953211163')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('01312@lums.edu.pk', '31953211163', 'Naila Anwar', '560838289e51bb32c68a7b6f2fdd80779e7af4dcb6e80f6c75174079680fc799', NULL, '2024-12-24 21:21:50', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums1313@lums.edu.pk' OR phone = '31295277127')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums1313@lums.edu.pk', '31295277127', 'Riffat Ayub', 'bf3186a46e39b292084a823f211fa9e0211eff2d2f4b7d63693ba4444cfd48f8', 'admin', '2025-03-05 08:49:44', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '01314@lums.edu.pk' OR phone = '30642382625')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('01314@lums.edu.pk', '30642382625', 'Sumera Siddiqui', '1e8af75ac8c0d430b927f7ea9cd35288d4c41693b06191ab5ae68c5011f9debe', 'admin', '2024-01-16 23:35:27', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user1315@lums.edu.pk' OR phone = '39747086413')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user1315@lums.edu.pk', '39747086413', 'Rubina Karim', '1d8c5bc06c9785f18fb64a32a8ea12d928bc11f7c26348212f4237e2942e31bd', 'admin', '2024-08-03 05:20:54', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student1316@lums.edu.pk' OR phone = '39179008785')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student1316@lums.edu.pk', '39179008785', 'Ibrahim Masood', 'cd0f9cf27309710e5571702adf100649e721fa18530a6a5a87aa7cde7068d704', 'teacher', '2025-02-14 05:39:39', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user1317@lums.edu.pk' OR phone = '31557756427')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user1317@lums.edu.pk', '31557756427', 'Noor Akbar', '078505b4faaa9ada88be07ed96f4cf8d703da807a5834680c5fe5bf71f4a8201', 'teacher', '2024-03-18 22:44:15', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student1318@lums.edu.pk' OR phone = '30834972762')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student1318@lums.edu.pk', '30834972762', 'Aamir Abbas', 'bfdf532b6484534e67df2942cd5521bdf68f0a4b334a8bbc35948f119d8c7f1d', 'student', '2024-02-02 15:01:59', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student1319@lums.edu.pk' OR phone = '38062106021')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student1319@lums.edu.pk', '38062106021', 'Uzma Karim', 'd189e45165462d24e2365c78a5a43fae637dd3419f452e86d5166975ba7cdcdf', 'admin', '2025-06-16 18:27:37', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user1320@lums.edu.pk' OR phone = '39591434782')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user1320@lums.edu.pk', '39591434782', 'Shamsa Malik', 'f412e31b6771f08a9d53fb8d6295a700c710b57c01a8c4e07d10268433226b08', NULL, '2024-03-28 12:25:36', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user1321@lums.edu.pk' OR phone = '31697611640')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user1321@lums.edu.pk', '31697611640', 'Hassan Hameed', '52d726a44823d15bbf456b06ed02849951d49d372fcdee5b2f7e9e21c2ce1c75', 'worker', '2024-12-19 13:23:50', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student1322@lums.edu.pk' OR phone = '34453498821')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student1322@lums.edu.pk', '34453498821', 'Tanvir Ali', 'db4a158c7fa8a61854c42d9e469a8e3d16a1ed9c84f2573f0cd6b9c5604aa995', NULL, '2024-09-24 12:54:01', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums1323@lums.edu.pk' OR phone = '32825584046')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums1323@lums.edu.pk', '32825584046', 'Azhar Qadir', '01b6235b34c75db149c8b0e7c364a9ab409324306012b08bb965188a1bb4bf53', 'worker', '2024-03-14 08:18:22', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '01324@lums.edu.pk' OR phone = '36890969380')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('01324@lums.edu.pk', '36890969380', 'Saad Nadeem', '6e78b889ec2214e9a731124a3b90cd217aff39fb11cb31cfadc48d3ec01ebb3a', 'teacher', '2024-10-04 19:24:42', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums1325@lums.edu.pk' OR phone = '38417906861')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums1325@lums.edu.pk', '38417906861', 'Salman Rasheed', '5f8d5c0e14f097e0d42c4a6f66544fc8afc09ad1b6a8389345172a4e862407ee', 'teacher', '2024-12-29 07:43:53', 1, '2025-11-10 14:34:35');
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student1326@lums.edu.pk' OR phone = '30284250506')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student1326@lums.edu.pk', '30284250506', 'Qamar Zia', '98fccc1701ea157e228016ac9a7d978ebddbe6130c89f18a0d7a05b8d7f7c3a0', 'student', '2025-04-15 10:57:02', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums1327@lums.edu.pk' OR phone = '35002955197')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums1327@lums.edu.pk', '35002955197', 'Ayesha Bashir', 'f8aaa5b0105d7d7bbf7a0d42cc1dc4e8d9063d574c22d3d299dbdd68dfcf5782', 'student', '2024-01-09 00:48:49', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '01328@lums.edu.pk' OR phone = '32373789650')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('01328@lums.edu.pk', '32373789650', 'Kamran Qureshi', '3e2df3e0f4fef6a28ec2bc748c710f7ee449d0fa5d58d293bf0c7bdc4d4a0b8b', 'student', '2024-05-19 12:01:01', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student1329@lums.edu.pk' OR phone = '39091410768')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student1329@lums.edu.pk', '39091410768', 'Aamir Waseem', '42556c812fff9be4dc1458a69973564c44ac7a2f767e2aeab50e21883bf10081', 'teacher', '2024-04-09 07:27:06', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student1330@lums.edu.pk' OR phone = '38693937487')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student1330@lums.edu.pk', '38693937487', 'Aamir Sheikh', '26f864f9211c566eeea430b200e05a234f25a456d00ee6d619bfb7c2ab744644', 'admin', '2024-05-31 15:05:20', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums1331@lums.edu.pk' OR phone = '35020952953')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums1331@lums.edu.pk', '35020952953', 'Aslam Zia', 'e1c479051551e35070457a143bf466331460fd57fe9038c83ffc0248deb0a2bb', 'admin', '2025-04-25 19:46:53', 1, '2025-05-27 11:51:47');
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student1332@lums.edu.pk' OR phone = '34572995705')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student1332@lums.edu.pk', '34572995705', 'Nimra Hameed', '0f95aa58f51d00d5d2769f85aac77af592503631e40297c25a289acd034c3dc9', 'teacher', '2025-06-03 04:38:58', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user1333@lums.edu.pk' OR phone = '34701638591')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user1333@lums.edu.pk', '34701638591', 'Zahid Hussain', '8bc21ff8d5c2118cd3287570d398c66300383c84b820a5e9b564de3e026110a0', 'student', '2025-02-14 09:40:22', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '01334@lums.edu.pk' OR phone = '39963112732')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('01334@lums.edu.pk', '39963112732', 'Bilal Jamil', 'b917efc48bcdda061592495d59da2715f7d0c7778d2766a3b3474a43f8230695', 'student', '2024-09-03 20:42:23', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '01335@lums.edu.pk' OR phone = '33847118061')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('01335@lums.edu.pk', '33847118061', 'Sumera Rafiq', 'df298aeb2ea05e55e85562209722a0f82a377321478c06980ed444f366f4389d', 'student', '2024-11-08 11:12:44', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student1336@lums.edu.pk' OR phone = '31100230995')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student1336@lums.edu.pk', '31100230995', 'Saima Aslam', '4dea94fd6c99ff81a114bb2331e4910e076aa4aa723a55d0971110f37c19aa60', 'student', '2025-06-20 00:53:33', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student1337@lums.edu.pk' OR phone = '36522982904')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student1337@lums.edu.pk', '36522982904', 'Kamran Hameed', 'fd3691fa6c5cbb664a0a13b9928ea66b313d84df24bcea5cea4501bad10d9fc6', 'worker', '2024-04-02 15:24:42', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums1338@lums.edu.pk' OR phone = '33880705288')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums1338@lums.edu.pk', '33880705288', 'Mahnoor Saeed', '871dd25d92c0e1c41437ea1a04d0b6b7edaf7879004b7ef9900612520b0f75ea', 'admin', '2025-03-04 22:19:35', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '01339@lums.edu.pk' OR phone = '39729352605')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('01339@lums.edu.pk', '39729352605', 'Arshad Qadir', 'a123c279c901f5112a4903e4578986e847d828417feb253295b5e8c7161fdb70', 'student', '2025-10-27 17:56:04', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums1340@lums.edu.pk' OR phone = '30903542681')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums1340@lums.edu.pk', '30903542681', 'Tahira Nadeem', '4809c0357f2eb8b0db3c240900da1143802d6397861b8ea5b6d3d0be6dea91e1', NULL, '2024-10-02 23:19:43', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user1341@lums.edu.pk' OR phone = '33394688839')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user1341@lums.edu.pk', '33394688839', 'Raza Haider', '7de884c283b8812576edcd3441aefe46067a8ed2d372c228bbf8a8cb402abe5e', 'worker', '2024-08-12 14:12:19', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student1342@lums.edu.pk' OR phone = '38449970116')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student1342@lums.edu.pk', '38449970116', 'Asim Tahir', '6dd6f7517b788ba8a8a2f03a53ebd91af278937b2bb709878b36cb23aeb38a08', NULL, '2025-09-14 04:02:17', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '01343@lums.edu.pk' OR phone = '31903560383')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('01343@lums.edu.pk', '31903560383', 'Fahad Hameed', 'd490b51b2d55cc439ea578ce5ff60ecf03cb968197b9786e9e3751eea5b3e304', 'student', '2024-08-16 19:14:37', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user1344@lums.edu.pk' OR phone = '31631756992')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user1344@lums.edu.pk', '31631756992', 'Shamsa Shah', '6006253e18ba55061243ea5cfa0a5d69d6f55f162d519e47d0c236a1b15abe27', 'teacher', '2024-10-28 18:45:50', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '01345@lums.edu.pk' OR phone = '39177890633')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('01345@lums.edu.pk', '39177890633', 'Waqas Waseem', 'acfa51cf9bc952c8e909f8bbcded1b4ecb03c87a4e9f18362f313c9f04fb54a3', 'student', '2024-10-03 20:55:57', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user1346@lums.edu.pk' OR phone = '32700119894')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user1346@lums.edu.pk', '32700119894', 'Shahid Rasheed', '512f4b1192ff364b7c05327c2547c0d5a5b86023921a43acd083f9ff8f00ee85', 'teacher', '2025-01-02 05:31:28', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user1347@lums.edu.pk' OR phone = '36477611343')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user1347@lums.edu.pk', '36477611343', 'Aamir Yousaf', 'bd9d4da98a87ced38a99ce221dbd17565c0d069b2a0226ab5a7414a3e5363e3b', 'admin', '2024-11-08 09:29:35', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user1348@lums.edu.pk' OR phone = '37723690791')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user1348@lums.edu.pk', '37723690791', 'Wasim Bashir', 'f73efe32aa2b2a3623dad0e2c5a2c7665cf0721d031f75713f48bc6ab5e2a45e', 'worker', '2024-03-03 17:35:14', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums1349@lums.edu.pk' OR phone = '33608280668')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums1349@lums.edu.pk', '33608280668', 'Kashif Ghani', '6892cb70ffb55849e8acb52dff67f2a5820085049dc557c568663bb7122199f7', 'admin', '2024-04-15 11:42:56', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student1350@lums.edu.pk' OR phone = '37077456725')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student1350@lums.edu.pk', '37077456725', 'Sidra Qureshi', '924da5118989a7b73aaf4abf51764c1a2a36ea7cba3ade614ddcbc1464e8b924', 'worker', '2025-10-22 06:55:41', 1, '2025-11-03 01:27:23');
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user1351@lums.edu.pk' OR phone = '36258754866')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user1351@lums.edu.pk', '36258754866', 'Aamir Hameed', 'e05ff7b41b9d9fe2e56ab860394179eee908fceff5ac5473507464493ffb0a53', 'student', '2024-02-10 16:42:43', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums1352@lums.edu.pk' OR phone = '31259463470')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums1352@lums.edu.pk', '31259463470', 'Fouzia Yaqoob', '9e7a9962846221c306387c823a6b2064688823307e1d4a219542a4f4824cf498', 'admin', '2024-09-10 16:30:59', 1, '2025-10-09 23:15:32');
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student1353@lums.edu.pk' OR phone = '31421718784')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student1353@lums.edu.pk', '31421718784', 'Irfan Akbar', '267742458100f01a6de02926ebea4b9a424cb5b81de882931559c606fcb18af8', NULL, '2025-02-19 05:05:05', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user1354@lums.edu.pk' OR phone = '33012703245')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user1354@lums.edu.pk', '33012703245', 'Sadaf Zaidi', 'd4c29da692b82a0e8e467c362fdbd41f9a7ebf6d24971e2dacf2bf152a941b49', 'student', '2025-03-16 16:45:44', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums1355@lums.edu.pk' OR phone = '30979162737')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums1355@lums.edu.pk', '30979162737', 'Shahzad Karim', '3af53feff17b5791ec7d7f3aa7bdd14bef156a5dd4bcab1fd6b618050eab910f', 'student', '2025-03-30 19:46:58', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums1356@lums.edu.pk' OR phone = '34319367031')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums1356@lums.edu.pk', '34319367031', 'Shama Anwar', '8bc7ba3e32c0b9dccc1572376775b81ab1ca77d632bde4e26f3235e10cd3bff9', 'student', '2023-11-29 08:50:49', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums1357@lums.edu.pk' OR phone = '34702998454')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums1357@lums.edu.pk', '34702998454', 'Kashif Latif', 'b3bf71fe41b187e39ff3570c637ff23b3c40d083270005ba7118e43baceadf85', 'worker', '2024-10-10 21:54:53', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums1358@lums.edu.pk' OR phone = '36044736083')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums1358@lums.edu.pk', '36044736083', 'Hanif Qadir', '54b211f8ab43fe867ffd2b31556d947760ab24b7be1bad60cd448c125127da9c', 'teacher', '2024-09-02 04:11:20', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums1359@lums.edu.pk' OR phone = '30337299083')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums1359@lums.edu.pk', '30337299083', 'Aisha Saeed', '55c094926e270bfd8313e1ab77dcb76032ca574977fad48c117c6c9183ae5d02', NULL, '2025-11-11 04:45:50', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '01360@lums.edu.pk' OR phone = '39830297662')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('01360@lums.edu.pk', '39830297662', 'Qamar Aslam', '11aeeec4aca44cd23cb61a8aa1fde5857951d14cf740b3dbcccfc5bf3dfb36fa', 'teacher', '2025-10-26 03:12:18', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '01361@lums.edu.pk' OR phone = '32403229772')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('01361@lums.edu.pk', '32403229772', 'Kamran Saeed', '3524f4b04c7e56c0b1ec41acebe9c64baf8d50d457df92583885e8923e26ea97', 'admin', '2025-10-11 18:00:16', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums1362@lums.edu.pk' OR phone = '36874246042')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums1362@lums.edu.pk', '36874246042', 'Shamsa Yaqoob', '67435bcf7e636dd0495516309da1dd752ca7eff2b896e47d68b6b89e7370cc4a', 'worker', '2024-07-20 10:59:55', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums1363@lums.edu.pk' OR phone = '37784436444')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums1363@lums.edu.pk', '37784436444', 'Parveen Sadiq', '85fdcf03fc04bac73ded358d97020b29073cdc1d02ee626502677c6d648774dc', 'worker', '2025-06-03 11:11:14', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '01364@lums.edu.pk' OR phone = '39913099630')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('01364@lums.edu.pk', '39913099630', 'Ibrahim Akbar', '91e539bf7469d15cc4b597ce670a37bdf3e978ec6d841e698a164fa613b5acf4', 'admin', '2025-01-03 08:14:48', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user1365@lums.edu.pk' OR phone = '30062307962')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user1365@lums.edu.pk', '30062307962', 'Tuba Abbas', '51c0e2b528d2dc30d3393365cbc0e03db8f00fe9198df1c726fd57b6c965d6ab', 'worker', '2024-10-02 22:33:17', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums1366@lums.edu.pk' OR phone = '34948511588')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums1366@lums.edu.pk', '34948511588', 'Khalid Aslam', '453eb1dc1585a23d26930e253db441e87ba8b63f30d3879a3510a4296dc0d321', 'teacher', '2024-10-31 22:37:04', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '01367@lums.edu.pk' OR phone = '37473134490')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('01367@lums.edu.pk', '37473134490', 'Riffat Tahir', '7a0876b5a71d0c2fabba9d8d1ff46a95a86175c55e55a8f99bef00c24a40cd93', 'admin', '2025-08-22 05:09:40', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student1368@lums.edu.pk' OR phone = '30279834397')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student1368@lums.edu.pk', '30279834397', 'Ali Shah', '68919b1d8a875ca12586f5432b740aca96155e7bee305e81bac5cee5e6ab7fb2', 'worker', '2024-06-15 14:14:40', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user1369@lums.edu.pk' OR phone = '35356135447')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user1369@lums.edu.pk', '35356135447', 'Rafiq Siddiqui', '8729c6ccc70308403df63b880f00da4b42aea8c8bf0e80068f86aedd6c8d902f', 'student', '2024-02-07 13:32:50', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user1370@lums.edu.pk' OR phone = '32037348842')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user1370@lums.edu.pk', '32037348842', 'Amna Waseem', 'e6ef37b65a4ec7f4410fbb9bf8312254c6cec571a68d422e9b4e22b176987f63', 'teacher', '2024-12-10 22:34:12', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user1371@lums.edu.pk' OR phone = '37822857537')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user1371@lums.edu.pk', '37822857537', 'Amna Nadeem', 'bbf16c6d2f14aef7bcd88cc6fb29e1e9a6aecfafd052c42a53ffb728d2c3578f', 'student', '2023-12-16 14:08:40', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user1372@lums.edu.pk' OR phone = '33246146367')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user1372@lums.edu.pk', '33246146367', 'Amjad Latif', 'c8e79eb6bf3da36d402758077d2e99b4169c9e128d8dcdd0f51c27366e05ea29', 'student', '2025-03-24 17:03:56', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user1373@lums.edu.pk' OR phone = '39939239810')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user1373@lums.edu.pk', '39939239810', 'Wasim Anwar', 'cae70db04f77ceabf6d929614a09f862194f1aac146fcb3b56dd86d0f57bce57', NULL, '2023-12-04 13:57:44', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums1374@lums.edu.pk' OR phone = '39512639821')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums1374@lums.edu.pk', '39512639821', 'Nadeem Masood', '9c1028eee738631c6f61541c90c9f54393c68c15284610bdc1e47a92ddc8ff84', NULL, '2025-07-12 22:48:35', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '01375@lums.edu.pk' OR phone = '34156720203')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('01375@lums.edu.pk', '34156720203', 'Salman Akhtar', '773f81bef56ad43130e6d0917c5015a226496310fafff70f350eefe050804b99', 'teacher', '2025-03-31 09:12:27', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums1376@lums.edu.pk' OR phone = '36518068436')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums1376@lums.edu.pk', '36518068436', 'Aftab Khan', '62fc277859cfab0ca595cdda7851cc7feb2222f494dbdb1309854d1bf9acd6fa', 'teacher', '2024-05-23 01:02:24', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '01377@lums.edu.pk' OR phone = '31863537959')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('01377@lums.edu.pk', '31863537959', 'Riffat Khan', '1f43814fd34ade602fd1d630240ce6c3f366be0c97d5d9cf021824d80d9816cf', 'admin', '2025-11-13 21:53:08', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '01378@lums.edu.pk' OR phone = '30335651395')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('01378@lums.edu.pk', '30335651395', 'Anwar Akbar', '53899953b96b8765e1cf7327c12abc99d8d3112bb002f6bda7f9b9e3c758b0e7', 'worker', '2025-11-09 09:10:41', 1, '2025-11-23 01:54:55');
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student1379@lums.edu.pk' OR phone = '32118918720')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student1379@lums.edu.pk', '32118918720', 'Aftab Umar', 'f33067b2197378fbd85003259ea7f627dd184d3023b4153cc202fab5d6588e91', 'teacher', '2025-08-25 11:55:36', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums1380@lums.edu.pk' OR phone = '35464895701')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums1380@lums.edu.pk', '35464895701', 'Waqas Saeed', 'fd8b449d4becff26150be202a1336213431305045daed1b0fadae00c7bb1c275', 'worker', '2024-05-02 06:43:08', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user1381@lums.edu.pk' OR phone = '31547598880')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user1381@lums.edu.pk', '31547598880', 'Tanvir Hameed', '30af41fefe1d1639d0a96cb5070111d393840a84a70aad7d5b90ba157583b84f', 'admin', '2025-07-04 23:50:09', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student1382@lums.edu.pk' OR phone = '33444749913')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student1382@lums.edu.pk', '33444749913', 'Tariq Bashir', 'c0d2f2252842109cfd0a8f27d9504581c8b4f1eaa1d415950abe70dfa953a90b', 'worker', '2025-09-24 13:19:00', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user1383@lums.edu.pk' OR phone = '38020550766')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user1383@lums.edu.pk', '38020550766', 'Asim Ayub', '240819d110eed53d959000db3ee49a2c10cc8544ac19b4a952527f4b2e36ad89', 'teacher', '2025-01-25 18:31:24', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '01384@lums.edu.pk' OR phone = '37450400746')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('01384@lums.edu.pk', '37450400746', 'Zaheer Yaqoob', 'b5177fb6bb891ccee44a1532a3e77efa7155dea0b3a0be848e6a6d52f174c295', 'student', '2024-02-22 18:30:06', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums1385@lums.edu.pk' OR phone = '36684479943')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums1385@lums.edu.pk', '36684479943', 'Naila Qureshi', '041561b6213dfeaaba801e69269887fcf3dda3cf9213c089bf091b45e59a1bd3', 'admin', '2025-06-25 22:16:41', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student1386@lums.edu.pk' OR phone = '39320710814')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student1386@lums.edu.pk', '39320710814', 'Khadija Ghani', '85f26780068531c6fe18e1d12b2b7698e95626ad11dfdb442691fa867bac1532', 'admin', '2024-09-23 12:54:24', 1, '2024-11-22 19:12:52');
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student1387@lums.edu.pk' OR phone = '39877953665')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student1387@lums.edu.pk', '39877953665', 'Majid Rafiq', '3e18cb153cd78de4911515be920fff3af750b8d2cbcac2fee7b114f64d67730e', 'worker', '2025-04-10 18:52:28', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user1388@lums.edu.pk' OR phone = '35517265841')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user1388@lums.edu.pk', '35517265841', 'Fouzia Karim', 'cb624ce07ba6f91dcd8e956f36b5af698c66d6a8db87be0d7784b7d5bfb620b6', 'teacher', '2025-06-18 18:54:00', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student1389@lums.edu.pk' OR phone = '35258025773')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student1389@lums.edu.pk', '35258025773', 'Aisha Iqbal', '6966ce01f2b25583f4c48b8192e55a801e99a99e784d5d9df4ae3b2cd9c76df4', 'student', '2025-02-19 10:40:53', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student1390@lums.edu.pk' OR phone = '38387080261')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student1390@lums.edu.pk', '38387080261', 'Noor Zaidi', 'f5a6096ae0db58cad32bfb20894c7a136def829d54c44811f98e37dec8b4d2ac', 'worker', '2023-12-25 17:32:14', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user1391@lums.edu.pk' OR phone = '39843289681')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user1391@lums.edu.pk', '39843289681', 'Amna Qureshi', 'fa74f2e5f7ce42882321368af480920cf6991395ed191b8d37de78d310eea123', 'worker', '2023-12-26 09:25:27', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user1392@lums.edu.pk' OR phone = '31753165957')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user1392@lums.edu.pk', '31753165957', 'Khadija Akbar', 'b215b49f31c38428f5c5060c241c4dbb3ebe5bfc0c064a9af3bca9603a04c354', 'teacher', '2024-02-11 01:49:31', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user1393@lums.edu.pk' OR phone = '36980263964')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user1393@lums.edu.pk', '36980263964', 'Irfan Rasheed', '201060be65bf58208f1dbe6f778848ce926b313d332f9485d86f279988ffa149', 'teacher', '2025-11-18 18:11:25', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums1394@lums.edu.pk' OR phone = '32624478256')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums1394@lums.edu.pk', '32624478256', 'Abdullah Siddiqui', '004caad1caf48016591d9adb3af73ad3d67431dba5090d896068609be2a5b37a', 'admin', '2025-05-01 08:06:01', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user1395@lums.edu.pk' OR phone = '38198348584')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user1395@lums.edu.pk', '38198348584', 'Tahira Anwar', 'a1d3206a9b79c71ef649fb03d0d7383e689773111c1a7041de5f2d84d936c767', 'worker', '2024-04-28 00:55:44', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '01396@lums.edu.pk' OR phone = '34695725887')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('01396@lums.edu.pk', '34695725887', 'Ali Akhtar', '40d5aa78b02ea5f15ce31c1bc902e45adeb2781c2ff751b70411017e830cc04d', 'teacher', '2024-12-04 06:08:44', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums1397@lums.edu.pk' OR phone = '30567160954')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums1397@lums.edu.pk', '30567160954', 'Aamir Haider', '5a3d214f7818025b4ddd2fdae6d5e3d640a9d42e89c6bc657c791bc412d19d1a', 'student', '2024-10-29 20:10:55', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '01398@lums.edu.pk' OR phone = '34694199092')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('01398@lums.edu.pk', '34694199092', 'Farhan Qureshi', '69eaed074b69b6ca25fb5c27080fcfdfcf9c23ac4cf3f986c5429cd9a1e7f951', 'teacher', '2025-09-11 07:20:10', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user1399@lums.edu.pk' OR phone = '36532290311')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user1399@lums.edu.pk', '36532290311', 'Usman Karim', '3b0162006464bda55cd85b28de09bd90aaac8bf3662652e57ecb2fd251d87e1e', 'admin', '2024-05-25 23:40:24', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student1400@lums.edu.pk' OR phone = '31754875948')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student1400@lums.edu.pk', '31754875948', 'Ayesha Tahir', '856396ed22c9556cebd496a60532139fef62aebcf041fd61b8edbd1ba818bfc3', 'admin', '2024-04-17 15:33:50', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums1401@lums.edu.pk' OR phone = '34112880408')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums1401@lums.edu.pk', '34112880408', 'Khadija Umar', '023b3be8e60fd9f6c3837762eb218becb06aa8d28f2fe65c12e5ddde030ed065', 'worker', '2024-09-24 12:32:46', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '01402@lums.edu.pk' OR phone = '39611505051')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('01402@lums.edu.pk', '39611505051', 'Farzana Waseem', 'a9fb51cc93e58179523e70dbd0e0cb9270a648709bda7a1afe502d449f9064ae', 'teacher', '2025-05-10 03:31:26', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user1403@lums.edu.pk' OR phone = '30436800816')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user1403@lums.edu.pk', '30436800816', 'Humaira Tahir', '4d66565c4a147cfb467aed0f5c96878f9c07cfa0c555d05ea87faddd38c45553', 'teacher', '2025-09-25 03:43:08', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '01404@lums.edu.pk' OR phone = '31465250342')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('01404@lums.edu.pk', '31465250342', 'Irfan Qadir', 'eb83ae4fb2239c000107d84e1db540ff17c1fcdcd288046d5d2d5a0e93bcbecf', 'student', '2024-08-07 05:14:03', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user1405@lums.edu.pk' OR phone = '36337026621')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user1405@lums.edu.pk', '36337026621', 'Aftab Anwar', 'e59d6e2ea8bd3c205dba47715d08adb1b81ddc78e5a4db9567b565bac3073860', 'teacher', '2025-10-18 19:15:07', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student1406@lums.edu.pk' OR phone = '39586780060')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student1406@lums.edu.pk', '39586780060', 'Fahad Zaidi', '5c9b81ef8cabf9444e0d3fa4859f6952a483d03147d539779f3a49735136f96b', 'student', '2025-05-09 09:27:08', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user1407@lums.edu.pk' OR phone = '33113195547')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user1407@lums.edu.pk', '33113195547', 'Amna Hameed', 'a3c740d3f1698b5904bc86bee4ca9d79c67ff11368da4a224a70fec45bb602b5', NULL, '2025-11-13 11:42:28', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student1408@lums.edu.pk' OR phone = '37426552999')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student1408@lums.edu.pk', '37426552999', 'Alina Waheed', 'd763e628c5c0fa0c66056b0aa2eaa1c83858afde9e6232f942b278110b35b4a6', 'admin', '2024-10-25 17:45:12', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '01409@lums.edu.pk' OR phone = '37550483286')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('01409@lums.edu.pk', '37550483286', 'Uzma Hussain', '97ca4469efc543c47f4bea5f26e28ee62a92efa26bc2c736cf8ecd2bbd9efd7b', 'student', '2025-03-22 13:01:15', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user1410@lums.edu.pk' OR phone = '38752276389')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user1410@lums.edu.pk', '38752276389', 'Hassan Yaqoob', '8f168b9c10b12e280fbbfff7cdb25dd46fecb8ca51d6ba3289a3f0511097a452', 'worker', '2025-03-17 11:58:51', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student1411@lums.edu.pk' OR phone = '37805577183')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student1411@lums.edu.pk', '37805577183', 'Asad Umar', 'fcd3516c6f42af443d314e067651b414874e39833178bfa9d6ef7ddcba11b001', 'admin', '2025-07-14 11:53:31', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums1412@lums.edu.pk' OR phone = '34892052914')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums1412@lums.edu.pk', '34892052914', 'Iqra Iqbal', 'a9c94c0c31c0e2279ad23981ca9858ed01ba4ace62dc28732b2ab5111fda9b95', 'admin', '2025-02-07 10:08:18', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user1413@lums.edu.pk' OR phone = '31659248300')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user1413@lums.edu.pk', '31659248300', 'Waqas Mirza', '5dade787e7dad3d8e6ce1a727a06e8231fc9a70dc48feb0b9af66969eb5109df', 'student', '2025-07-16 19:23:55', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student1414@lums.edu.pk' OR phone = '33803043048')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student1414@lums.edu.pk', '33803043048', 'Zain Zia', '7f2fde334e1f6c6cc356e7a9764824edacb01262620245aa94d18a617d8eb2bf', NULL, '2024-10-20 06:51:40', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user1415@lums.edu.pk' OR phone = '34707409664')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user1415@lums.edu.pk', '34707409664', 'Ayesha Rafiq', '9b2c8ca025e57fec9645037557d15f2ac57702b96bbb03ed85b8bbc017a93f8c', 'worker', '2024-06-21 05:21:13', 1, '2024-09-09 08:33:33');
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student1416@lums.edu.pk' OR phone = '39111387577')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student1416@lums.edu.pk', '39111387577', 'Humaira Iqbal', 'e45047756a460a37ac37349a3f4e0f34e873046f9dca500a74c7661f148ae17a', 'worker', '2025-01-26 16:51:23', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student1417@lums.edu.pk' OR phone = '31063606209')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student1417@lums.edu.pk', '31063606209', 'Yasmin Chaudhry', '3b4fed76b7522de0332ed10757c424b5ff46a9d46b1876ea1b14e98c063ddaf3', 'admin', '2024-09-01 03:20:27', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student1418@lums.edu.pk' OR phone = '36284355840')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student1418@lums.edu.pk', '36284355840', 'Maria Sheikh', '9bbe42cec6bac86bd68eb0fa83d35933e9e4a131aa05689f18545648c8f8b9d0', 'admin', '2024-08-11 22:15:21', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user1419@lums.edu.pk' OR phone = '36869734038')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user1419@lums.edu.pk', '36869734038', 'Hira Haider', '5f97bb19066b593d33d13e105e9a46b31a811296c3f52235cd437a537cca1ced', 'teacher', '2025-10-26 15:38:08', 1, '2025-11-02 15:03:02');
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums1420@lums.edu.pk' OR phone = '33361108036')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums1420@lums.edu.pk', '33361108036', 'Saad Farooq', '85c32afaed36ee34d40cecb14ac7f6d2bd369e43a97d15166c0b072e97a842bd', 'teacher', '2025-05-13 03:01:06', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums1421@lums.edu.pk' OR phone = '39988997947')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums1421@lums.edu.pk', '39988997947', 'Khalid Qureshi', '2ae763e6b9fcd170c80ca37ee4c1b90144689acda1928a7798730edb30c41c7e', NULL, '2025-09-19 17:32:36', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student1422@lums.edu.pk' OR phone = '35526054712')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student1422@lums.edu.pk', '35526054712', 'Naveed Ayub', '98adbae8ad7ee205fb9fa0be64598bf438c96b83d7b7ae913392a911bf80132e', 'worker', '2024-08-18 15:17:51', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student1423@lums.edu.pk' OR phone = '37838539326')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student1423@lums.edu.pk', '37838539326', 'Ayesha Akhtar', '72108e6287722990cf70b4f9113480c7c75620fef94ea9f1f898e57cc17f1de8', 'worker', '2024-02-12 04:23:32', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student1424@lums.edu.pk' OR phone = '31343084134')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student1424@lums.edu.pk', '31343084134', 'Qamar Akhtar', 'd54db94e84b4de76712d5f117d253830d8d6902041fcaa970f8548b04f83e1d0', 'admin', '2023-12-28 23:16:45', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student1425@lums.edu.pk' OR phone = '36204282440')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student1425@lums.edu.pk', '36204282440', 'Shazia Abbas', '591eeca3b9e35af00379f0272998012a8da4c0ce175809fd6423b4c02b4b9cb4', 'admin', '2025-07-28 13:32:45', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student1426@lums.edu.pk' OR phone = '35395956556')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student1426@lums.edu.pk', '35395956556', 'Naseem Hussain', '37d72c60deb68e67e041be25acd2f7c25198bfa0fff781fddf2259b69081661f', 'teacher', '2024-10-22 12:07:28', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums1427@lums.edu.pk' OR phone = '32572720060')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums1427@lums.edu.pk', '32572720060', 'Noor Javed', '99d32555090f106b61cca8c8c337f974f9ef390ec01c03ce5eaf82a535295d6e', 'teacher', '2024-04-09 21:48:45', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums1428@lums.edu.pk' OR phone = '36237114434')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums1428@lums.edu.pk', '36237114434', 'Tariq Siddiqui', '51273edee8fc96988354af3ce9cb1003c5b34a35ffdc89627b888c1bd556698c', 'worker', '2024-02-09 18:42:53', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student1429@lums.edu.pk' OR phone = '34913754601')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student1429@lums.edu.pk', '34913754601', 'Fatima Iqbal', 'eaf4c0a9ee368b31108e8f1e75d25323805bf1cd5859e13bf463a3bdafed4bbb', 'worker', '2025-06-13 18:38:01', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums1430@lums.edu.pk' OR phone = '35174352284')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums1430@lums.edu.pk', '35174352284', 'Tahira Bashir', 'deb4351ab8a12587e19d8496655874a25a700884b5feae97c31773e259a122c7', 'student', '2025-05-14 16:39:17', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student1431@lums.edu.pk' OR phone = '37282119994')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student1431@lums.edu.pk', '37282119994', 'Fahad Farooq', '01372aefe61253ca31502bc25220412f52d28b4ae44b11fbb1d4f57a1c9f6834', 'student', '2025-07-09 14:55:06', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '01432@lums.edu.pk' OR phone = '38172765112')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('01432@lums.edu.pk', '38172765112', 'Ibrahim Qadir', 'bea2e3f4a6660ff18d52909ee2ed74b2ab4e6eacf0ad917ea8b3dd0925bc0112', 'worker', '2025-07-14 00:20:32', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student1433@lums.edu.pk' OR phone = '34265553114')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student1433@lums.edu.pk', '34265553114', 'Ali Ahmed', 'fac5955367b0664b46f3dbaed04285fd4c05c57c1ef4ac565578ca74a995919e', 'teacher', '2025-07-15 22:22:20', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '01434@lums.edu.pk' OR phone = '35132656120')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('01434@lums.edu.pk', '35132656120', 'Shahid Malik', '3eadbae3ec2ee65de58af5c96e7f986c1c8956af82ba3aa99dcac9e9316eae7a', 'teacher', '2024-02-12 11:52:26', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student1435@lums.edu.pk' OR phone = '38707542815')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student1435@lums.edu.pk', '38707542815', 'Noor Anwar', '86d43458baddda3e6573cf8fe297a2efe8b554b6e55e3e507a401ed48226a145', NULL, '2025-07-31 04:33:42', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student1436@lums.edu.pk' OR phone = '30065677395')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student1436@lums.edu.pk', '30065677395', 'Ayesha Aslam', '967ab55836d508ae378b37acda3c91353157311d78d72b04e1846e098ece7a63', 'student', '2024-06-08 06:26:23', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user1437@lums.edu.pk' OR phone = '38360280219')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user1437@lums.edu.pk', '38360280219', 'Aslam Waseem', '32e9a667638529dcddaa9ad8fb97af5136e4390382bdb24ae126aa9d7ce224f8', 'teacher', '2025-01-08 23:37:12', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums1438@lums.edu.pk' OR phone = '37671851846')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums1438@lums.edu.pk', '37671851846', 'Tahira Siddiqui', '09c2aaa2aea144b3594a55edb41aaf8fb7a2a18419e3f34b84e239e6a7247db7', 'student', '2024-06-21 11:47:36', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums1439@lums.edu.pk' OR phone = '39982425185')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums1439@lums.edu.pk', '39982425185', 'Majid Rasheed', '01c624548a05c94ad7ac3831cdd459ebff4b9e9bec42d5075a914bdfa2affc6d', 'admin', '2024-10-19 22:11:39', 1, '2025-11-20 13:25:06');
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student1440@lums.edu.pk' OR phone = '33463067520')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student1440@lums.edu.pk', '33463067520', 'Asad Tariq', 'f35a0ce2090538bfd5e5eb711eed866601012ed59046cf59761f7fe0cfd6fc29', 'student', '2025-01-13 22:45:32', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user1441@lums.edu.pk' OR phone = '33268015327')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user1441@lums.edu.pk', '33268015327', 'Hamza Hassan', '5e4eec154f60ac22c6fe954f690a5e7c1da3d62426b39762ac2ff2b40cfc2438', 'teacher', '2025-06-18 04:45:26', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums1442@lums.edu.pk' OR phone = '37063979966')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums1442@lums.edu.pk', '37063979966', 'Yasmin Hussain', '4ade3eaf425cb5d2fd2f986d791ce858509f74322c20fd34f318f6ee0c6c780a', 'student', '2024-06-05 06:34:44', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student1443@lums.edu.pk' OR phone = '38156668051')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student1443@lums.edu.pk', '38156668051', 'Nimra Saeed', 'fc9ff14e3c0fe70e87fd32cbac9609354d3ff00d51897488c858e9695ad8d882', 'teacher', '2025-07-24 09:15:19', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '01444@lums.edu.pk' OR phone = '39210770453')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('01444@lums.edu.pk', '39210770453', 'Yasmin Javed', 'c3ef19ee5f29f2a835881079970217c53959b3bc4be06067eec277c249d5a278', 'worker', '2025-11-09 16:03:16', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '01445@lums.edu.pk' OR phone = '36194899386')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('01445@lums.edu.pk', '36194899386', 'Rabia Aziz', '21b595e693fba6a312622fece0398dd346b679a0f9f97b12b576d8d8268cdc15', 'worker', '2025-07-03 10:52:45', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums1446@lums.edu.pk' OR phone = '34877773860')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums1446@lums.edu.pk', '34877773860', 'Sidra Aziz', '10fad1a7ea7c0185197d02392eb80fab8d02d01c6df446b21c6e9d691586df20', 'teacher', '2025-10-29 18:46:22', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student1447@lums.edu.pk' OR phone = '33814971284')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student1447@lums.edu.pk', '33814971284', 'Zain Masood', '42af904b42dbb54cc024bb71e1e1aaa37291e34fcd06d8e07e1439a8378752ac', 'student', '2024-07-18 12:35:51', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '01448@lums.edu.pk' OR phone = '33875110642')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('01448@lums.edu.pk', '33875110642', 'Alina Shah', '4ec437023a8a0ffdc38ab38a37e9133f3659833d6a8479441c9d9f353279fee5', NULL, '2025-09-08 13:29:56', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user1449@lums.edu.pk' OR phone = '39436277574')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user1449@lums.edu.pk', '39436277574', 'Farooq Siddiqui', '5f42c1bd57c9878285608853b50e04d42433dbb89caa9155c4b05cdcbe369228', 'teacher', '2024-11-04 20:11:58', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user1450@lums.edu.pk' OR phone = '35307360344')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user1450@lums.edu.pk', '35307360344', 'Shaista Saeed', 'd571af102c79d13352518c7edd74fd6dc08fb229286675d45c7839e10fc3d76e', 'student', '2024-04-09 22:00:15', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student1451@lums.edu.pk' OR phone = '36493575866')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student1451@lums.edu.pk', '36493575866', 'Sana Jamil', '16bc5bba7332380695ee978cfa3e76e729841ae2c44cf4171c866877f3342c54', 'teacher', '2025-02-17 14:14:26', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student1452@lums.edu.pk' OR phone = '37974027501')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student1452@lums.edu.pk', '37974027501', 'Ibrahim Ghani', '10b8079236206155af9a693b3ba27926392bb97ec819f20be7b3510903e8b781', NULL, '2023-12-19 04:34:51', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student1453@lums.edu.pk' OR phone = '34764860111')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student1453@lums.edu.pk', '34764860111', 'Shahzad Masood', '4e5c6ca4d10f29d8377108ca240a61d536573f91100740fc712e18f4eea1b5e2', 'admin', '2024-09-24 13:28:20', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '01454@lums.edu.pk' OR phone = '39775414694')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('01454@lums.edu.pk', '39775414694', 'Asim Tariq', '3258c875098153b5c5af48a0742e12ae1ca9163ccfc4c417bb22b62df2cc8f62', 'admin', '2024-11-10 01:36:10', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '01455@lums.edu.pk' OR phone = '31279572880')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('01455@lums.edu.pk', '31279572880', 'Hassan Ghani', 'c5f9dad7f5af1ed45e3492d73f4a8b62fc6d30d500377d7ac4a143ef241a0b42', 'teacher', '2025-04-29 14:18:28', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums1456@lums.edu.pk' OR phone = '37090794755')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums1456@lums.edu.pk', '37090794755', 'Shafiq Mirza', '752305ad586423e472e006b232f2947a89c2898e4a86641b7021feb91f8140b7', 'teacher', '2024-09-17 14:52:29', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums1457@lums.edu.pk' OR phone = '38562977154')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums1457@lums.edu.pk', '38562977154', 'Parveen Ahmed', 'd4871e3107d24e89bd2608aa55cb390313c33e5b83f9b0ac5ef250ac9ff50674', 'student', '2025-01-06 23:37:57', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user1458@lums.edu.pk' OR phone = '36580932412')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user1458@lums.edu.pk', '36580932412', 'Zainab Ghani', '34b06b9138ab4ff1d1742e731cf74dc31394995af8896ba6220cbd16919fafc1', 'worker', '2024-04-14 08:52:48', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user1459@lums.edu.pk' OR phone = '30828998365')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user1459@lums.edu.pk', '30828998365', 'Noor Shah', '8d6fea30b8561d2ff641fa4ff91f9aaf522df2b8da55905ae3d771836712e195', 'student', '2025-02-19 01:10:39', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums1460@lums.edu.pk' OR phone = '31877977602')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums1460@lums.edu.pk', '31877977602', 'Ayesha Shah', '20ca3559b5f70a7f71b2329aa4e4c46e9a9f83b61b839ff457f6c6b7d3a9c712', 'teacher', '2024-02-17 01:08:13', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums1461@lums.edu.pk' OR phone = '39099351164')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums1461@lums.edu.pk', '39099351164', 'Shahzad Abbas', '25867ecf984bf004e8cab0f60bbc7e23eb314b3d4659f3c0231e8bbb8b7a1127', 'teacher', '2024-04-04 09:22:40', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '01462@lums.edu.pk' OR phone = '34069990642')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('01462@lums.edu.pk', '34069990642', 'Hassan Siddiqui', 'eac0472d2d90e21b82fd647534638c811eba790ee27e306012e7a14870c0f98e', 'teacher', '2025-02-06 02:06:37', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user1463@lums.edu.pk' OR phone = '34418120848')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user1463@lums.edu.pk', '34418120848', 'Saad Yousaf', 'febecb1ea6e3441d68f75b39c88e4f560bcc55b677bd3baa853c807d19514e4a', 'student', '2023-12-20 16:28:54', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '01464@lums.edu.pk' OR phone = '35359452916')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('01464@lums.edu.pk', '35359452916', 'Jamil Hassan', 'f580b0b8399398def6007f0ced73ac31254a694d14b261d22e244ec959d2a1c3', 'teacher', '2025-09-29 18:12:36', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums1465@lums.edu.pk' OR phone = '37131362730')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums1465@lums.edu.pk', '37131362730', 'Talha Masood', '3be8c8c74c06e155e66f65ddb1310d533191f8d113cc8af9333879e901737471', 'teacher', '2024-05-07 05:31:16', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums1466@lums.edu.pk' OR phone = '36668002198')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums1466@lums.edu.pk', '36668002198', 'Aftab Zaidi', 'a5643b49a6122eae4df91d45f10cccddcd513105ec3eec3f48934b3f519f4ec8', 'worker', '2024-10-23 11:32:05', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student1467@lums.edu.pk' OR phone = '33305219258')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student1467@lums.edu.pk', '33305219258', 'Parveen Yousaf', 'fd3a8cda077ce130fa8a3a405609cdf213725636cbadad9882399c7a8cc3956e', 'teacher', '2024-12-30 09:37:21', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user1468@lums.edu.pk' OR phone = '38012437632')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user1468@lums.edu.pk', '38012437632', 'Tanvir Javed', '2e15c9f74f6b1961d366be3662135271a13186ad097e37502df327f54c6e5a08', NULL, '2025-09-08 08:09:44', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums1469@lums.edu.pk' OR phone = '35051398917')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums1469@lums.edu.pk', '35051398917', 'Rafiq Chaudhry', 'a353edd9fac07e46551a4c7a4c745abe77c2b70cd55993dd5973819e2e4052c3', 'admin', '2025-07-11 07:54:47', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '01470@lums.edu.pk' OR phone = '34338049891')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('01470@lums.edu.pk', '34338049891', 'Maria Chaudhry', 'd7c507fcef8629677a1810f77390eb967135585681b8f76c194b72ff8e71646a', 'worker', '2025-01-29 01:58:32', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '01471@lums.edu.pk' OR phone = '37676755594')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('01471@lums.edu.pk', '37676755594', 'Omar Ali', 'd6ccd90a84b648af6063f8e30f77fca5361d91677b01a19ad4b64618c2573491', NULL, '2025-09-12 09:07:13', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user1472@lums.edu.pk' OR phone = '38807647773')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user1472@lums.edu.pk', '38807647773', 'Sara Rasheed', 'f4f09694303ae7a22fa3bc7060c6d6fd038022d10d2c2f049187c721a47c6daa', 'admin', '2024-06-20 22:19:25', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student1473@lums.edu.pk' OR phone = '38284516478')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student1473@lums.edu.pk', '38284516478', 'Hira Ilyas', '31ad9df58dfe6ed9c39c6b516da834a6e236913b487f7072e90796922b0eaaa8', 'student', '2025-04-27 14:09:45', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user1474@lums.edu.pk' OR phone = '38343913809')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user1474@lums.edu.pk', '38343913809', 'Adnan Hassan', 'e29ba3edd11cc0c0f634ad2f77c739bcf1e3579e25f2ba0b1f9a90fd8e0bbcf1', 'teacher', '2024-07-20 12:11:00', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student1475@lums.edu.pk' OR phone = '39569231479')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student1475@lums.edu.pk', '39569231479', 'Iqra Farooq', '50b0acd4b684a6785aee9d279ba9e5c87d7234dd3a9c7ac8f45aadd789e6d7c5', 'student', '2025-02-02 02:39:46', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums1476@lums.edu.pk' OR phone = '34515024020')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums1476@lums.edu.pk', '34515024020', 'Nadia Hassan', '42e8f00025c618021148aa284fed0afb3569af7b8fe28bb46f4a48dea574c7a0', 'worker', '2024-10-04 00:48:33', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '01477@lums.edu.pk' OR phone = '37861664632')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('01477@lums.edu.pk', '37861664632', 'Shafiq Ilyas', '8cba8c536cb5b62a400468002f9d24a728986da48cbeb0d1992b347e12531f9a', 'worker', '2024-06-25 06:01:22', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student1478@lums.edu.pk' OR phone = '35626025992')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student1478@lums.edu.pk', '35626025992', 'Rubina Zia', 'bab56d38139d0d6f461e48bdbf44a78aa83f8a7d8cfbf369d04611a673d5af41', 'teacher', '2024-12-14 10:50:51', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user1479@lums.edu.pk' OR phone = '32542283646')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user1479@lums.edu.pk', '32542283646', 'Sadaf Hussain', 'b4257abaa82d139bd13159ba9a6c2adfebccae3eaac37d34b0e5fce8c373397f', 'worker', '2024-09-12 22:06:23', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user1480@lums.edu.pk' OR phone = '37338953551')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user1480@lums.edu.pk', '37338953551', 'Amjad Chaudhry', '71654f60090b6a549c784dfbd594c2fef69feff4f16ed124f6788b34d3359bbd', NULL, '2025-06-24 15:13:11', 1, '2025-10-23 20:52:19');
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '01481@lums.edu.pk' OR phone = '30733938962')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('01481@lums.edu.pk', '30733938962', 'Usman Hussain', '0500d8d0cc6eaf765a52f23db633424072112a32692d275e564398c5d51d377f', 'teacher', '2025-04-18 10:50:37', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user1482@lums.edu.pk' OR phone = '38581821994')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user1482@lums.edu.pk', '38581821994', 'Aisha Ayub', 'deb553aa339f299046a581525b804a82b6a6d1b5f7ef4f063e829f9c848c5db9', 'worker', '2024-07-27 08:18:00', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums1483@lums.edu.pk' OR phone = '33832577941')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums1483@lums.edu.pk', '33832577941', 'Abdullah Shah', '9d233ef875351eebdb792ca87f8f0de8d3fa632dd60ca0510a86ada380e05ed7', 'teacher', '2025-04-26 14:57:36', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '01484@lums.edu.pk' OR phone = '32585531283')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('01484@lums.edu.pk', '32585531283', 'Shakeel Hussain', 'e9f5c2006b7769f8756c4dacbed0266a48c2822521cf7814bf8c546ebd6984d2', 'admin', '2024-02-22 04:16:05', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user1485@lums.edu.pk' OR phone = '32374455920')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user1485@lums.edu.pk', '32374455920', 'Irfan Khan', '4fb8b9adabd6402ea6498d6e89cb6b2e22bd39d71396eab3cad46c52659b387c', 'admin', '2025-10-04 13:58:40', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user1486@lums.edu.pk' OR phone = '34006815663')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user1486@lums.edu.pk', '34006815663', 'Hassan Waseem', '10628aab5481b237d2c50a29dfe4606a6851b5728d99b9f4242c0699008b6048', 'admin', '2024-12-03 11:06:48', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '01487@lums.edu.pk' OR phone = '34289767714')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('01487@lums.edu.pk', '34289767714', 'Arshad Siddiqui', '11c2d964c1ce5081b8d90d81bb5bda8d924357db7823de518eb0131c32dd039d', 'admin', '2025-03-31 05:30:18', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student1488@lums.edu.pk' OR phone = '34686129738')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student1488@lums.edu.pk', '34686129738', 'Alina Anwar', '6499d41878e2394561bc073125ccd9b4b903eb159b370fe118c02b2ebf1ee98c', 'student', '2024-09-20 07:51:02', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '01489@lums.edu.pk' OR phone = '38813155129')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('01489@lums.edu.pk', '38813155129', 'Majid Akhtar', '27ea7bb953da1b9f75a2f26c3f1eac6aaef2c3d892cb8f4d10a433b79a191f63', 'admin', '2024-12-08 16:33:47', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '01490@lums.edu.pk' OR phone = '31571682630')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('01490@lums.edu.pk', '31571682630', 'Aamir Sadiq', 'ac43e12f87f0f55f0732f29e62d2a331093bbfbd24d1be983c6c77ae983181ef', 'worker', '2024-01-02 21:39:29', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user1491@lums.edu.pk' OR phone = '30481110058')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user1491@lums.edu.pk', '30481110058', 'Hassan Zaidi', '523b8048a5fe4a078e6a4215a30e6e72bfff632bb1bbe5d2b84f804fb82ce280', 'admin', '2024-03-09 13:53:37', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '01492@lums.edu.pk' OR phone = '37854844414')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('01492@lums.edu.pk', '37854844414', 'Abdullah Farooq', '7ac413fbc35587c3cd7533ae1d206530ddd3c8aac6a9b7c8954952d50b199622', 'worker', '2025-05-27 19:34:01', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student1493@lums.edu.pk' OR phone = '37375672117')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student1493@lums.edu.pk', '37375672117', 'Talha Qadir', '112f1e2435055f8bd110743111bcc18b65c66d024476603a842cf6cc41a190be', 'worker', '2024-09-04 19:27:54', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums1494@lums.edu.pk' OR phone = '36875972323')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums1494@lums.edu.pk', '36875972323', 'Muhammad Karim', '1690e689eabf5c872e8de1ff1c32b904f2cac163566a6718edd485160cbf6f1d', 'admin', '2025-03-25 16:04:56', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user1495@lums.edu.pk' OR phone = '30208818079')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user1495@lums.edu.pk', '30208818079', 'Shamsa Mirza', '09d44db9f3cde7ecd650392e994e50f1a5f8b7550205c09a87d61e2b3070247e', 'student', '2025-07-03 13:37:45', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums1496@lums.edu.pk' OR phone = '31241800367')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums1496@lums.edu.pk', '31241800367', 'Sadaf Chaudhry', '7b78755975b341db23d0324d53c13b6046aaea2c125a280445ba8da7cab4b8a9', 'teacher', '2024-04-05 21:33:42', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student1497@lums.edu.pk' OR phone = '38978051129')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student1497@lums.edu.pk', '38978051129', 'Asad Rafiq', '503fd1387d9f00def2ae6de16d9e00f2f2f5805534af191388d9261eca3a772d', 'teacher', '2025-08-23 21:31:07', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '01498@lums.edu.pk' OR phone = '33543721892')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('01498@lums.edu.pk', '33543721892', 'Riffat Waheed', '3b38619e9df84d01d8d8746da77943259a335d66b1d13fcd1103acbe16b900a9', NULL, '2024-07-01 03:00:50', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums1499@lums.edu.pk' OR phone = '31937659160')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums1499@lums.edu.pk', '31937659160', 'Parveen Ali', '7ac7e34ed35f2cb71a6369ecf19ab1d4d10522038c8ba5fe056c6187cbdd21ff', 'worker', '2025-03-17 00:41:11', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums1500@lums.edu.pk' OR phone = '36721326620')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums1500@lums.edu.pk', '36721326620', 'Shafiq Karim', '500906ea5348082258ead31a325c3b06eafba5104a15be7f516318c3f7d27d54', 'student', '2025-02-05 01:44:31', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums1501@lums.edu.pk' OR phone = '33724713300')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums1501@lums.edu.pk', '33724713300', 'Shaista Aslam', '5d0a6896761c706453dc331751253adcfd488e7f77a067cb81f0d8fcf16d69a0', 'admin', '2025-01-19 02:53:16', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user1502@lums.edu.pk' OR phone = '30694778796')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user1502@lums.edu.pk', '30694778796', 'Yasmin Nadeem', '821dbb1a0cf49a4f658c6da8fb1cae992bd80b65b8650a92ad3ce498bc47dc46', 'student', '2024-03-26 18:32:33', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '01503@lums.edu.pk' OR phone = '39146366311')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('01503@lums.edu.pk', '39146366311', 'Samina Iqbal', '5c221f8040495a81b4c230365f4b85e8fd602b6b6febe40b1fc8d56c6db68f6a', 'admin', '2024-10-14 03:58:32', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user1504@lums.edu.pk' OR phone = '39605453397')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user1504@lums.edu.pk', '39605453397', 'Humaira Qadir', '8a0c1d1bc33e9fa4b5a47c4f6be8312a2b037e619c6dc8d6f3e93383bb51dbfc', 'worker', '2025-02-18 05:04:10', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user1505@lums.edu.pk' OR phone = '39497087010')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user1505@lums.edu.pk', '39497087010', 'Salman Chaudhry', 'e5d007f5d0eb95708e90dcf9619fc5b8cd6d57435f483dc42ab686956057deeb', NULL, '2023-12-30 19:48:38', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student1506@lums.edu.pk' OR phone = '36662711908')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student1506@lums.edu.pk', '36662711908', 'Hanif Abbas', '8eeaaba628629d8e1921efe3903cc9523fe7fe5386b8af8ae4502d97a24e28b8', 'teacher', '2025-04-08 15:58:04', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student1507@lums.edu.pk' OR phone = '36171242917')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student1507@lums.edu.pk', '36171242917', 'Muhammad Aslam', 'e4092e593148de618f3d703ca9711067686e7c98f65a0204f5324df511f04fd9', 'teacher', '2024-12-24 06:53:15', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user1508@lums.edu.pk' OR phone = '32900367211')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user1508@lums.edu.pk', '32900367211', 'Tahira Aziz', '8a06b6e9142ab716bb684cbe9806bed555966657c2baa75dcde4f2dc1ab5288c', 'admin', '2025-10-11 03:49:25', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '01509@lums.edu.pk' OR phone = '34897016569')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('01509@lums.edu.pk', '34897016569', 'Shafiq Akhtar', '581fa712a95fe9d858df51ba8c58744a87a0db94bf86244a3b1bcd2832f1b35a', 'worker', '2025-03-28 16:59:18', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '01510@lums.edu.pk' OR phone = '31907659347')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('01510@lums.edu.pk', '31907659347', 'Naseem Aziz', 'e572250c5d4dc58425ebda860933e7e770812263aaf7e0eee8d1b2ecd1fa84fc', 'student', '2024-05-23 17:03:40', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums1511@lums.edu.pk' OR phone = '30322220015')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums1511@lums.edu.pk', '30322220015', 'Noor Yousaf', '0112d0aa966d89d66d772ba2304bd7c983f856982296846fc486c7b6569ba301', 'student', '2025-04-13 13:35:03', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user1512@lums.edu.pk' OR phone = '31081693709')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user1512@lums.edu.pk', '31081693709', 'Arshad Siddiqui', '6859e4b83ee888cd21b12be2353b3b194ce773bd08989ed57aae674b71e7ce48', 'student', '2024-12-01 07:04:15', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '01513@lums.edu.pk' OR phone = '39805882321')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('01513@lums.edu.pk', '39805882321', 'Adnan Hussain', '7b14024495f40564d369b643a1d76f26137819cdf4f4065c0d28aec54a1b294e', 'admin', '2025-03-06 08:22:10', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '01514@lums.edu.pk' OR phone = '38660515979')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('01514@lums.edu.pk', '38660515979', 'Parveen Sadiq', 'bfa38bc5e8c26043338892f1d721a47df8bf4b4e191f1a0cb9e870d49ab9961e', 'student', '2024-03-24 14:12:26', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user1515@lums.edu.pk' OR phone = '32060916126')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user1515@lums.edu.pk', '32060916126', 'Waqas Zia', 'ced26c7ba4ae3bb84daa09117ce14d8c9060a4414e7f3bae549b47e623363c90', 'teacher', '2025-07-01 12:22:31', 1, '2025-11-12 12:37:19');
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student1516@lums.edu.pk' OR phone = '37467177994')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student1516@lums.edu.pk', '37467177994', 'Farooq Jamil', '6287f6678c09d14e4aacf66dc396f9303dcb5797dd375412725570cd91e0fb48', 'teacher', '2025-03-22 14:42:25', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student1517@lums.edu.pk' OR phone = '37399867908')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student1517@lums.edu.pk', '37399867908', 'Zaheer Yousaf', 'f3ffb0c9d2ced62865c135d986abd19c3e2369b5f501311177ba5e0a7b62af46', 'teacher', '2024-07-20 23:18:20', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums1518@lums.edu.pk' OR phone = '32131904969')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums1518@lums.edu.pk', '32131904969', 'Faisal Hussain', '9f9e4d047694ebf01c55a6b4ff5fc9d1614eaefbafb251887e6ee6d3f144c65f', 'student', '2023-11-25 05:21:37', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user1519@lums.edu.pk' OR phone = '34913251451')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user1519@lums.edu.pk', '34913251451', 'Yusuf Khan', '963ba7014adcd43029169efe795ad505450f388b1d63740eabe7fe6be9a46b19', 'teacher', '2024-10-23 20:56:05', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums1520@lums.edu.pk' OR phone = '38946330442')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums1520@lums.edu.pk', '38946330442', 'Nadia Ayub', '9a35020b70fee9800fe991add1036f686743dae4bc07e2a40105e7b9c030b9c3', 'admin', '2023-12-16 07:18:21', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '01521@lums.edu.pk' OR phone = '37200462212')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('01521@lums.edu.pk', '37200462212', 'Khadija Ilyas', '873b64f7c07cde7d518ac534054b0688844ef729adce971b6ac51b9568aeb811', 'student', '2024-11-06 04:15:13', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '01522@lums.edu.pk' OR phone = '32112467301')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('01522@lums.edu.pk', '32112467301', 'Nazia Zaidi', '2e10497dd4b59e9dc33634bfb2deaa5d4edd75995d14ea180b0673c45a54afce', 'worker', '2025-06-10 21:45:10', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums1523@lums.edu.pk' OR phone = '31104359924')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums1523@lums.edu.pk', '31104359924', 'Shahzad Khan', 'bfa94d59651c4accc35e165a78c9f05bc75dea7812b9c74f47e03f77bbb71835', 'student', '2025-06-28 11:41:42', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user1524@lums.edu.pk' OR phone = '34662245387')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user1524@lums.edu.pk', '34662245387', 'Irfan Ali', '26f4d097c64aaf91742e7fd43d7641e89270fd048ff02dec82b8fd8782fd58df', 'teacher', '2024-01-01 20:19:29', 1, '2024-03-07 16:52:34');
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student1525@lums.edu.pk' OR phone = '39470613002')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student1525@lums.edu.pk', '39470613002', 'Parveen Naqvi', '555ea66e42166f6d02b139a8c4a8b7b7d804e9c0bd24a8f842ff2dbe7da57718', 'worker', '2025-04-14 12:43:43', 1, '2025-08-12 00:08:31');
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '01526@lums.edu.pk' OR phone = '37203723139')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('01526@lums.edu.pk', '37203723139', 'Khalid Abbas', '5f5676d9ff4f9e8fdfb387715006c33e244b1c04a6b154e9100a870badd38619', NULL, '2025-07-17 11:39:57', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user1527@lums.edu.pk' OR phone = '38453152168')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user1527@lums.edu.pk', '38453152168', 'Sara Zaidi', '1c368a4730d8eeff24cffed12f68d02918aa58d17826b639faf3b147a29d2abe', 'student', '2024-08-21 01:40:13', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student1528@lums.edu.pk' OR phone = '38104757333')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student1528@lums.edu.pk', '38104757333', 'Shazia Umar', '1707ef50254ee7d12972b695aee0ade577c00ec09068612fcf7088f4f69793cf', 'admin', '2025-03-07 05:10:36', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user1529@lums.edu.pk' OR phone = '34926529030')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user1529@lums.edu.pk', '34926529030', 'Arshad Abbas', 'dd5bf2d9360153f18c2455f2223e88adc9757f84374fe5324e16926b7e2dcef0', NULL, '2024-12-06 05:11:50', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user1530@lums.edu.pk' OR phone = '36508417547')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user1530@lums.edu.pk', '36508417547', 'Nazia Naqvi', '35264a3ce7e627b17d77fc3afbde82101df7289e8371b6a1434969ba6425d163', 'student', '2025-04-14 20:32:54', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '01531@lums.edu.pk' OR phone = '34173237461')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('01531@lums.edu.pk', '34173237461', 'Rabia Jamil', '4243b666058487e1fc1bf89ce67e8b04296f0526bd2b7fd8912d459a3b12637f', 'teacher', '2024-01-28 07:19:22', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student1532@lums.edu.pk' OR phone = '30941917656')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student1532@lums.edu.pk', '30941917656', 'Arshad Mahmood', '8a54a8c8d52a9c0a82f7d910a010e0a3c5fd053b04312dd32101f412f0720447', 'admin', '2024-03-16 16:41:26', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '01533@lums.edu.pk' OR phone = '31531447988')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('01533@lums.edu.pk', '31531447988', 'Aisha Zaidi', '18a239d549a160c5734d3833212f38dc513b57c8e18dffc4f5dba22455c0a5aa', 'teacher', '2024-07-13 20:42:33', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user1534@lums.edu.pk' OR phone = '37759364199')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user1534@lums.edu.pk', '37759364199', 'Naseem Yaqoob', 'd3e943632830177b84deba66101703a703b71a7520cc09360c56721277fd4e34', 'teacher', '2025-02-23 12:36:05', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '01535@lums.edu.pk' OR phone = '34331709566')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('01535@lums.edu.pk', '34331709566', 'Aslam Aslam', '7b9baaf0e4904d8eb7d11cc05a62645438e4659ee89f8f6ddd4956530fead8c0', NULL, '2024-02-03 19:37:00', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '01536@lums.edu.pk' OR phone = '35807186819')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('01536@lums.edu.pk', '35807186819', 'Asad Malik', '3becbfab70e4328c1b632b18ba9148493c6e11c385c245f3ad19de0dff2f651a', 'student', '2023-12-27 12:24:07', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '01537@lums.edu.pk' OR phone = '35005956441')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('01537@lums.edu.pk', '35005956441', 'Riffat Sadiq', 'c23e66b50fcbf33bec62730faa75afe93b3ad5e12f961db746cb6ce681faebb0', 'admin', '2024-03-17 21:06:54', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums1538@lums.edu.pk' OR phone = '33426215040')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums1538@lums.edu.pk', '33426215040', 'Sumera Butt', '0323210c8a05ceb32dc7a49f3edfbb0e38ce98bcc1a2127b4a229b43eddc3d20', NULL, '2025-03-28 19:57:39', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student1539@lums.edu.pk' OR phone = '31701309258')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student1539@lums.edu.pk', '31701309258', 'Usman Ghani', '74d8a0e34e826b8459cc284e96c4db59f6cd4f659820976c2673e2064a900a40', NULL, '2024-06-05 08:04:51', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user1540@lums.edu.pk' OR phone = '34352227635')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user1540@lums.edu.pk', '34352227635', 'Maria Rasheed', 'fb549729a41d31fb7f3f1d7bcb9dfbf71e24dba06766112db0a54c510f5f4803', NULL, '2024-04-11 16:08:16', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '01541@lums.edu.pk' OR phone = '31499218009')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('01541@lums.edu.pk', '31499218009', 'Shahid Nadeem', 'a43a2c2abe965da77562efd5f685b0b523a4a144853acc796f1b61e6f280c802', 'worker', '2025-10-21 21:33:44', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student1542@lums.edu.pk' OR phone = '35000826833')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student1542@lums.edu.pk', '35000826833', 'Bushra Javed', '1f5373fe12b7fc646e858e16ff2e1e9c3e0ae7490f4c948d8d4c41e01609867f', 'student', '2025-05-31 11:17:33', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums1543@lums.edu.pk' OR phone = '37454336809')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums1543@lums.edu.pk', '37454336809', 'Qamar Yousaf', '7b239116fc95e4f90a5c232ffb94099ba358503b330c9f2ef28d9cb9846a6503', 'teacher', '2024-06-24 17:11:21', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student1544@lums.edu.pk' OR phone = '30093342473')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student1544@lums.edu.pk', '30093342473', 'Talha Yaqoob', '678ad205dd4d4980ed588fd05ba7364c45fb56d0cb341e1232dc4b19b6e10527', 'admin', '2025-09-12 15:05:50', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user1545@lums.edu.pk' OR phone = '32269342645')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user1545@lums.edu.pk', '32269342645', 'Nadeem Ayub', '9465426539934d464335a3d8531fd84625b14e93a5f49550271a6c2b773d2953', NULL, '2025-06-16 20:34:49', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user1546@lums.edu.pk' OR phone = '31320257942')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user1546@lums.edu.pk', '31320257942', 'Nadeem Ilyas', '9ad87dbd3d06fd4bef80d4eefd4674e4b9420770b4253114c795d071ac650c4f', 'worker', '2024-10-27 06:56:34', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user1547@lums.edu.pk' OR phone = '33979871405')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user1547@lums.edu.pk', '33979871405', 'Fouzia Zia', 'a1d212352adf9577d293df69cccac6f8b2dd0679367c893b23fa79eedb713090', 'teacher', '2025-07-09 05:34:16', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user1548@lums.edu.pk' OR phone = '30700008954')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user1548@lums.edu.pk', '30700008954', 'Nimra Hassan', 'f487039773f20eb91504bfe6a57655931bcf34ec517b6e1be49ddfa2c6cb8470', NULL, '2024-04-11 05:17:56', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student1549@lums.edu.pk' OR phone = '35185874366')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student1549@lums.edu.pk', '35185874366', 'Ayesha Zaidi', 'b12a742ecafaf2437903578ba56bfec1787029426b5b58303a2a97a5041cf055', 'teacher', '2024-02-29 09:36:07', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '01550@lums.edu.pk' OR phone = '31670247564')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('01550@lums.edu.pk', '31670247564', 'Irfan Mahmood', 'dad45e371b966c9fedf2f8d287d5e4890c763df94503a6f493387d941459a34d', 'student', '2024-12-18 19:35:15', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '01551@lums.edu.pk' OR phone = '33338591488')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('01551@lums.edu.pk', '33338591488', 'Farooq Aslam', '6535f585033f868b3860b0ddf2b667e0fb024dca878a3f47d31d182cc027eff9', 'worker', '2025-01-29 17:48:01', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student1552@lums.edu.pk' OR phone = '30802558508')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student1552@lums.edu.pk', '30802558508', 'Shakeel Ghani', '31151a9fb4cc6f755262e86457ca69479329f2f0037353aea85db8ba0a5358b8', 'student', '2025-06-11 11:32:01', 1, '2025-10-03 03:34:58');
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '01553@lums.edu.pk' OR phone = '36983602217')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('01553@lums.edu.pk', '36983602217', 'Imran Siddiqui', '294ecd52792241612180d7d860455328b88fe8b793aa801ce9538b026848d013', NULL, '2024-07-23 12:30:58', 1, '2025-08-06 07:18:11');
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user1554@lums.edu.pk' OR phone = '38518092190')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user1554@lums.edu.pk', '38518092190', 'Fouzia Shah', '88adb46495175e20d9089b43f868d1eafce975656ad94b353c2cde417cd2a801', 'admin', '2024-07-11 19:01:18', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '01555@lums.edu.pk' OR phone = '39140488370')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('01555@lums.edu.pk', '39140488370', 'Sidra Umar', '4eab3fc01387ef26673798ed7c01296c2334d3d42a3cc36b9c802fb0f38a579d', 'student', '2025-09-11 07:46:50', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '01556@lums.edu.pk' OR phone = '36574752894')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('01556@lums.edu.pk', '36574752894', 'Farooq Ayub', '8d6640e8a14c2988704fb7888a2adc7a88a7ae7bca7262957aa0e7fae9055915', NULL, '2023-12-24 08:41:42', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user1557@lums.edu.pk' OR phone = '34329385392')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user1557@lums.edu.pk', '34329385392', 'Abdullah Tariq', 'd9e9ff5f938b7c6f0e35f499de87846325daa35d1546427b5e954c25d515de32', NULL, '2025-04-08 10:38:45', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student1558@lums.edu.pk' OR phone = '34132445881')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student1558@lums.edu.pk', '34132445881', 'Shahzad Bashir', 'dee7fa9baa5b38a980f15f1d75313060c6905aafab35bc660e2a82c0e311b43f', 'worker', '2025-02-18 21:03:29', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user1559@lums.edu.pk' OR phone = '39524084547')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user1559@lums.edu.pk', '39524084547', 'Khalid Haider', '3c8c563075270eda2b9b49e606da481124c10915515e72fe974628a670108d08', 'student', '2024-09-16 13:25:46', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student1560@lums.edu.pk' OR phone = '34978970032')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student1560@lums.edu.pk', '34978970032', 'Majid Sheikh', '7020044bac8c6821c216ad2053976b07b057d1a5f4b9c7b408e4b5e3e80964c7', 'admin', '2024-08-26 04:27:47', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student1561@lums.edu.pk' OR phone = '32079419228')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student1561@lums.edu.pk', '32079419228', 'Sara Raza', '4329c08008b57f78b478d1f6b0cdf424a09d0b66c42165d6765431eca88817a0', 'admin', '2024-10-21 23:40:26', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student1562@lums.edu.pk' OR phone = '36363872873')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student1562@lums.edu.pk', '36363872873', 'Hamza Ayub', '33044ecab42a8dfda9d79b1db26d2b80656c7b23c5c2d51f76af124f5941f2de', 'teacher', '2025-04-18 07:27:10', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user1563@lums.edu.pk' OR phone = '32203087083')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user1563@lums.edu.pk', '32203087083', 'Ahmed Karim', '30136febd58c0e0b4677a371101c2a33b7d6c73b8b1855fe9cf5ffe079b4f33c', 'worker', '2024-09-19 12:04:20', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student1564@lums.edu.pk' OR phone = '38418266363')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student1564@lums.edu.pk', '38418266363', 'Arslan Khan', '6e4244eb41fb139d5dc717c5f88ce870635974e61a23084f32070a6e4e652fa4', 'teacher', '2024-04-25 09:30:42', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student1565@lums.edu.pk' OR phone = '39185595503')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student1565@lums.edu.pk', '39185595503', 'Mahnoor Hameed', '5db6cbce2663fb56c77855de8edf30ec70c3110535eafd958fbd4885b8744784', 'student', '2024-08-02 03:14:36', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user1566@lums.edu.pk' OR phone = '32450201070')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user1566@lums.edu.pk', '32450201070', 'Omar Sheikh', '54e65dc1d36ca6ecf8f21dcc29ee73b543f95aed84de9856b8ef8ea27a8993ec', NULL, '2024-03-24 08:37:14', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student1567@lums.edu.pk' OR phone = '30671706084')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student1567@lums.edu.pk', '30671706084', 'Anwar Haider', '75bf4777eced1f270747ca8669c8bac94aff16d473aad7dfa389da1e878cc39e', 'worker', '2024-04-28 03:02:22', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums1568@lums.edu.pk' OR phone = '36082027179')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums1568@lums.edu.pk', '36082027179', 'Rafiq Hameed', '90ac57d0d696b6f8ded49c042666a14edb2e727715ebaea83d93c65bc6480c0d', 'teacher', '2024-10-23 21:47:43', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user1569@lums.edu.pk' OR phone = '34514873923')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user1569@lums.edu.pk', '34514873923', 'Yasmin Saeed', '7435d6560c59434223081149365118b32a2e7b34445a5141893db6ec82bcd294', 'worker', '2024-09-04 05:12:13', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user1570@lums.edu.pk' OR phone = '32975545050')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user1570@lums.edu.pk', '32975545050', 'Shama Masood', '1b07442ba304d65b76d32b22df7fead08b4c5f8ae96ca3236643ba76e123a4de', 'admin', '2023-12-20 14:56:17', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '01571@lums.edu.pk' OR phone = '33896228242')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('01571@lums.edu.pk', '33896228242', 'Asad Abbas', '772f902221484d087a847cb994ae4f8e2e5039de8d046459beb40fec980ff583', 'admin', '2025-10-08 07:30:10', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums1572@lums.edu.pk' OR phone = '38112158812')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums1572@lums.edu.pk', '38112158812', 'Rubina Nadeem', '7dd09a94db315361c9d7f6ecad32c45c1fe72c21ca4886e8830727791f77b4a4', 'worker', '2025-02-18 13:06:21', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user1573@lums.edu.pk' OR phone = '36504606246')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user1573@lums.edu.pk', '36504606246', 'Farooq Rasheed', '1e79d3f9a1046429bd4944270273e55f4b944bfb9e9a2fbe0de61c28341366ea', 'worker', '2025-08-28 03:21:33', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums1574@lums.edu.pk' OR phone = '32918377824')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums1574@lums.edu.pk', '32918377824', 'Shama Masood', 'e60bb9649f8614c241624e41ca33e55e50d0c94fbe0216581cf3a810e9afcc77', 'worker', '2024-03-26 18:03:36', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student1575@lums.edu.pk' OR phone = '33149171641')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student1575@lums.edu.pk', '33149171641', 'Aslam Khan', '5ce591994dbd21400808230fe0ed10851c911f1a7b2d87e49ec0326866251b7c', 'worker', '2024-06-17 10:05:37', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user1576@lums.edu.pk' OR phone = '38599153410')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user1576@lums.edu.pk', '38599153410', 'Maryam Hussain', 'ab38084b5008c0b8dc5bce204ea01b43532ba28c6451ac6a6896f19aefcf9748', NULL, '2024-12-28 02:04:49', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '01577@lums.edu.pk' OR phone = '38780710227')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('01577@lums.edu.pk', '38780710227', 'Riffat Haider', 'd123180ad3b3813fd34b949373a9d26e928352ca8157c8bf19e114a54c5eb627', 'worker', '2024-06-24 03:35:34', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student1578@lums.edu.pk' OR phone = '34169811547')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student1578@lums.edu.pk', '34169811547', 'Zahid Mirza', '4a142039f403177a4f9e879a4408f94f1847cae8b9b4a006318257e62bf269c7', 'admin', '2025-04-09 06:57:34', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student1579@lums.edu.pk' OR phone = '32519444746')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student1579@lums.edu.pk', '32519444746', 'Fahad Qadir', '01145a3242223f8cf87a858547b7207fa5f7cec8a70663ef8095b0448fd5bb95', 'student', '2025-08-16 19:34:24', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student1580@lums.edu.pk' OR phone = '37981339341')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student1580@lums.edu.pk', '37981339341', 'Wasim Hameed', '395566cf7d727c2440442865e1d4caf48eb622777fb390c93c1c1fb1d322aaea', 'teacher', '2025-06-24 20:00:19', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '01581@lums.edu.pk' OR phone = '33968395704')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('01581@lums.edu.pk', '33968395704', 'Tuba Yaqoob', '416ed0152e1a4cdd85955cb64a235e61e6ae5a6cc2ca24757684807282e20353', 'worker', '2024-07-20 22:59:54', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student1582@lums.edu.pk' OR phone = '37760198605')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student1582@lums.edu.pk', '37760198605', 'Aslam Ghani', '2b8bcdb45e8e54f7c50ba3e64e26bee5e3c0e208b1017eb06f9fc25f09a7aba8', 'worker', '2025-05-19 14:25:59', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user1583@lums.edu.pk' OR phone = '39029571934')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user1583@lums.edu.pk', '39029571934', 'Nadia Abbas', 'f9900ea16fa3b25c189b38318d11dd8c0174c24828b6edbd80ab4cc79ba4f714', 'worker', '2025-04-21 22:12:42', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student1584@lums.edu.pk' OR phone = '36248927925')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student1584@lums.edu.pk', '36248927925', 'Tuba Karim', 'ad723b54f7d843ec15315d385372874533bcf6621030c8e4681f01ddba20e343', 'teacher', '2025-07-21 20:11:55', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student1585@lums.edu.pk' OR phone = '32458106983')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student1585@lums.edu.pk', '32458106983', 'Shafiq Yaqoob', '34af5f865143e48bebab8ca1e4f637a77eb4639266ded2049236afcaf7e251a8', 'teacher', '2024-06-12 07:36:08', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '01586@lums.edu.pk' OR phone = '39404257086')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('01586@lums.edu.pk', '39404257086', 'Shahzad Bashir', 'df934985d174d575903df9b12c5d0ca33365a5ac49a206bddf10b3cce07963b1', NULL, '2025-10-31 13:47:45', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student1587@lums.edu.pk' OR phone = '38195038981')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student1587@lums.edu.pk', '38195038981', 'Zain Hussain', '0fbe20f4f7ea6da405d16679607b27f42f7a23107542415a239cb7d79e7faa93', 'student', '2024-08-29 18:46:38', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '01588@lums.edu.pk' OR phone = '30586585204')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('01588@lums.edu.pk', '30586585204', 'Asim Malik', 'de9c2dd0a465cac63b88bec6f0e3266b79b93176ba61fc5d61dbe606a9eb8e97', 'admin', '2025-11-05 14:49:42', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums1589@lums.edu.pk' OR phone = '30381227951')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums1589@lums.edu.pk', '30381227951', 'Maria Rafiq', '71c3464a9e75c5bb7b88d1d2c65a42d9f4d6d15908c2e556cafc818544d7d1b8', 'teacher', '2023-12-16 07:09:47', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums1590@lums.edu.pk' OR phone = '35399637219')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums1590@lums.edu.pk', '35399637219', 'Shahzad Haider', '2e29a0d65eece5025035a3b9e25f9562d6eabb289ccd2e2db1a0cba076d17a31', NULL, '2024-12-13 13:30:22', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user1591@lums.edu.pk' OR phone = '30077797872')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user1591@lums.edu.pk', '30077797872', 'Yusuf Umar', '1565a9265e1d3af0fc69b34fa471061ed474591dc83c6aa59b401d5b05abb329', 'admin', '2024-10-02 14:58:58', 1, '2025-03-29 13:21:07');
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '01592@lums.edu.pk' OR phone = '33343508539')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('01592@lums.edu.pk', '33343508539', 'Sana Khan', 'ec0824102a4a60eaa0d884011bb4da31385aed96dd62575477fbac4261f92e8f', 'admin', '2024-07-01 08:47:22', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '01593@lums.edu.pk' OR phone = '39216005787')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('01593@lums.edu.pk', '39216005787', 'Sami Shah', '66332220f71b7a92b0cd96ffedf7007fdb3737081371b5543a459bb22cf88886', NULL, '2025-06-12 18:28:30', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums1594@lums.edu.pk' OR phone = '34122389646')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums1594@lums.edu.pk', '34122389646', 'Sumera Rasheed', '543fea171a8324539a6e628da0ac172d69202ea151eb71dd3c7aeeaef695991e', 'teacher', '2025-04-11 00:00:34', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student1595@lums.edu.pk' OR phone = '36644370002')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student1595@lums.edu.pk', '36644370002', 'Alina Butt', '30c7ea4cc0e5b58d9000d619c78578b1720ec22b68d24cb9799d1e9b578a5c13', 'admin', '2025-01-06 11:55:29', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '01596@lums.edu.pk' OR phone = '35169684865')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('01596@lums.edu.pk', '35169684865', 'Muhammad Butt', 'e131caca07cf52f9dcc760b48be640a15fca5d0408b6c6db6df0e49d68988c12', 'worker', '2025-07-23 05:09:10', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student1597@lums.edu.pk' OR phone = '36606593765')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student1597@lums.edu.pk', '36606593765', 'Shama Waheed', 'fd133e55fd52e3c5246b0af1075aa6d90b727d223db10118551c55bb88c6c524', 'admin', '2025-10-18 07:06:43', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums1598@lums.edu.pk' OR phone = '30662579521')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums1598@lums.edu.pk', '30662579521', 'Khalid Ayub', 'da44199920e78b2194ec6480212b894df051705e0bf9942a4309307ab838d767', 'teacher', '2023-12-11 12:38:54', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student1599@lums.edu.pk' OR phone = '39285537995')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student1599@lums.edu.pk', '39285537995', 'Raza Zaidi', '19d7f04f55b49e7ba8f539f9c56a34c19f3cd05715039b53ae2cbd89d8a1fa88', 'admin', '2025-02-22 10:39:07', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student1600@lums.edu.pk' OR phone = '39131240697')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student1600@lums.edu.pk', '39131240697', 'Zaheer Sadiq', 'b4eb1f784bc41852139724c4af545c6a4ba72b7faa852c81591e51c525fffde1', 'teacher', '2025-08-04 00:30:19', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums1601@lums.edu.pk' OR phone = '36141558062')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums1601@lums.edu.pk', '36141558062', 'Adnan Mahmood', 'e037b38e49660a6a45781dcb60def21e921c998fe91cd3a27d128853b192e840', 'worker', '2025-10-16 16:37:04', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user1602@lums.edu.pk' OR phone = '36397532832')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user1602@lums.edu.pk', '36397532832', 'Zaheer Khan', 'f267e886e6ff5693f06f12b2233948868f64111bcf9bd73ca8ff5a52be1bfcfc', 'teacher', '2025-05-01 16:22:13', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '01603@lums.edu.pk' OR phone = '35517307756')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('01603@lums.edu.pk', '35517307756', 'Zainab Hassan', '06082a2c282198ed7329f43b3a877333510161e73dab0785f78f7b782e099a64', 'student', '2024-03-13 13:44:24', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '01604@lums.edu.pk' OR phone = '37861106788')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('01604@lums.edu.pk', '37861106788', 'Imran Zaidi', 'fb4855ffb8c791b8a24fe966c57e4efb271dddc07ecc7f8f13009b78b510e897', 'admin', '2024-12-31 16:30:03', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student1605@lums.edu.pk' OR phone = '36675632261')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student1605@lums.edu.pk', '36675632261', 'Nadeem Tahir', 'cd0d4d512b329d0cc9ae187ed05d06ead628cf077004c1d70c8c8c0ebdf53189', 'worker', '2024-08-17 01:13:55', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '01606@lums.edu.pk' OR phone = '35566938037')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('01606@lums.edu.pk', '35566938037', 'Amjad Raza', '35798d3b2d3a823a2438f31f30a59913441ff63ff0b0b8119157b91836287d75', 'teacher', '2025-01-30 04:15:53', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user1607@lums.edu.pk' OR phone = '37281823232')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user1607@lums.edu.pk', '37281823232', 'Amna Rafiq', 'd9c0048cc384f5912cd6f218f6f611340fbb90ad217df4ddc13b23ece2b17111', 'teacher', '2023-11-29 20:04:54', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '01608@lums.edu.pk' OR phone = '39529531351')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('01608@lums.edu.pk', '39529531351', 'Ibrahim Hussain', 'b2696ac3cc4e311bbd6cf3a009cfe8b6882de0034d6dac2cea828f191fb479ad', 'student', '2024-11-18 09:02:23', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums1609@lums.edu.pk' OR phone = '36797581497')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums1609@lums.edu.pk', '36797581497', 'Zain Shah', '4c60dd3415bde0fad67d1ec1ad8cfdb76b8a5fa4dd311554b02247ca3f3d80e1', 'teacher', '2025-08-18 10:35:19', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user1610@lums.edu.pk' OR phone = '37339269968')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user1610@lums.edu.pk', '37339269968', 'Iqra Chaudhry', 'eec6a9e6a91dc03182ef13b8938ad9edce369a1e1620e494101895bb3404fde4', 'admin', '2025-07-28 20:43:32', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student1611@lums.edu.pk' OR phone = '36820213150')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student1611@lums.edu.pk', '36820213150', 'Naila Malik', 'fe480a8ffaeb554d6ea19ba7110f86c2745c960b7fe862f3d5fc33eba2dd6f07', 'student', '2025-07-17 02:38:11', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums1612@lums.edu.pk' OR phone = '39720456647')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums1612@lums.edu.pk', '39720456647', 'Arshad Farooq', 'e13c84343da9494df5c352c828da4adbea2976ef1b42f83030bdb6bc18d0d612', 'worker', '2024-08-20 07:54:52', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums1613@lums.edu.pk' OR phone = '31616618714')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums1613@lums.edu.pk', '31616618714', 'Shakeel Zaidi', 'e2d857b5f817d28ab08c53d60c55ede30eb255e61e6d3f63ef14755f566bf187', 'worker', '2025-02-03 08:20:56', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums1614@lums.edu.pk' OR phone = '35000005741')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums1614@lums.edu.pk', '35000005741', 'Sidra Ilyas', 'eba4d8c3754149d3197f7a1b51b0f27b77dc4e40024b445dc2851fae74a757d4', 'admin', '2024-02-11 08:59:43', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums1615@lums.edu.pk' OR phone = '34308138237')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums1615@lums.edu.pk', '34308138237', 'Asad Ali', '221ca014e34f4a3a87422501136c274b56c046656405c7a8c4202c33d29ea98e', 'teacher', '2025-09-17 14:54:41', 1, '2025-10-29 22:02:42');
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student1616@lums.edu.pk' OR phone = '30220115775')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student1616@lums.edu.pk', '30220115775', 'Fouzia Sheikh', '60364461952257207a5724a1a5fd5964db8d8daa557ad7cf4993d783b7fd500d', 'worker', '2025-09-11 00:16:09', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student1617@lums.edu.pk' OR phone = '30077251391')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student1617@lums.edu.pk', '30077251391', 'Kashif Jamil', '65d8a8be14b1bb5c45052cdfdebc5b7d28a74d02310886ec5dce7a1e7c94b065', 'admin', '2025-04-10 16:56:41', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student1618@lums.edu.pk' OR phone = '38870480818')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student1618@lums.edu.pk', '38870480818', 'Nadia Malik', '07734836617ec5d6799e75ab66b85b94791447139ac0210a4f4c34adcc017c4c', 'student', '2024-10-05 06:03:25', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '01619@lums.edu.pk' OR phone = '35106788008')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('01619@lums.edu.pk', '35106788008', 'Wasim Mahmood', '08b6b22663c3d3ca4549841a12a15d135acde07a7f4ae1781a328167468688f2', 'teacher', '2024-09-27 13:59:54', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '01620@lums.edu.pk' OR phone = '35371470262')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('01620@lums.edu.pk', '35371470262', 'Sadaf Ahmed', 'fb286d87abaaee0ddee6b3ff3b44f84515bd6d35ffe866c4eb5f293075b15bd2', 'student', '2023-12-22 23:04:42', 1, '2024-07-24 12:33:09');
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user1621@lums.edu.pk' OR phone = '39397996485')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user1621@lums.edu.pk', '39397996485', 'Waqas Ilyas', '01c60e137c625fdeff16b653bcba44d21d7b4796d8994fdf4afca34b3706e540', 'student', '2024-08-02 01:59:57', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student1622@lums.edu.pk' OR phone = '33982109326')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student1622@lums.edu.pk', '33982109326', 'Zaheer Tahir', '83b73e12c06d0dfc6219382f8a76286db0c7368f09b5907bdaa055433af0b3da', 'teacher', '2024-04-04 20:44:56', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '01623@lums.edu.pk' OR phone = '37329212058')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('01623@lums.edu.pk', '37329212058', 'Rubina Zia', '13148327017a90ae980cfcf0bd1c29720dca3746dc8d317d26805d4a9f81090f', 'student', '2025-08-07 00:17:01', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums1624@lums.edu.pk' OR phone = '37629257590')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums1624@lums.edu.pk', '37629257590', 'Aisha Latif', 'c9b5759f5e2599897c2ef9fef2fd609a8f586d3df0f53e25b1bb177372e78893', 'worker', '2024-02-03 20:10:41', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '01625@lums.edu.pk' OR phone = '33985777760')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('01625@lums.edu.pk', '33985777760', 'Rafiq Abbas', 'c8ea89f47d0ef9dedc76a17e4612b0955e609ac86213731859f995ba5baad7ed', NULL, '2024-12-01 16:45:32', 1, '2025-09-19 06:58:07');
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums1626@lums.edu.pk' OR phone = '36769247278')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums1626@lums.edu.pk', '36769247278', 'Kamran Abbas', 'fef87d1671668443d3f7f6374344f792d2f213575a22bc14d7c4195eeb9ebe34', NULL, '2025-11-01 15:38:11', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums1627@lums.edu.pk' OR phone = '31979391326')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums1627@lums.edu.pk', '31979391326', 'Yasmin Haider', '915825bdd4a34b67ed4ff81b1086ea7198ddeb5c6b0faedaf050c745985159fe', 'teacher', '2025-08-19 12:29:08', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student1628@lums.edu.pk' OR phone = '37408788932')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student1628@lums.edu.pk', '37408788932', 'Bilal Ali', '7a96f07a7e333f1a3db7cf922e6c8a54a9c5ed719ee5428c813354ab194ddefe', 'admin', '2025-01-25 05:52:54', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user1629@lums.edu.pk' OR phone = '33256117813')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user1629@lums.edu.pk', '33256117813', 'Azhar Rafiq', 'a95db68dd5a806f3ea344817c0523d79097d303c562b2deb918de7b0e173a5b5', 'teacher', '2025-01-31 15:29:20', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user1630@lums.edu.pk' OR phone = '31515921008')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user1630@lums.edu.pk', '31515921008', 'Zahid Chaudhry', '76051d968df8dcd2d6ebaf07f91c29ba56dad8a0731c30f325cc022158620926', 'worker', '2024-02-23 15:14:33', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user1631@lums.edu.pk' OR phone = '31128130210')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user1631@lums.edu.pk', '31128130210', 'Sami Qureshi', '30f2956b54322ef780eabd8a5111146747f1c3fcc1e7d1ef8f87c01a939da000', 'teacher', '2025-06-20 10:07:08', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums1632@lums.edu.pk' OR phone = '38470924478')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums1632@lums.edu.pk', '38470924478', 'Uzma Akbar', 'e998ce63ffd6e65fcc2e8ed788ede9184195493e2eeb93652d134d3705c55498', 'teacher', '2025-10-19 15:02:20', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '01633@lums.edu.pk' OR phone = '35415893616')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('01633@lums.edu.pk', '35415893616', 'Tuba Qadir', 'cd3060fad1dbdd98615911a342cffb3982c8e29dfb0f9293ed4cb027e7151795', 'admin', '2025-05-24 20:58:23', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student1634@lums.edu.pk' OR phone = '39382476416')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student1634@lums.edu.pk', '39382476416', 'Shahid Akhtar', '610d23b980dd49f456aadfff4b89e9b47330ab608ca79ca8f073af5c4553c941', 'worker', '2024-11-19 20:17:19', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums1635@lums.edu.pk' OR phone = '34567531617')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums1635@lums.edu.pk', '34567531617', 'Nadia Hussain', '75a57972996c1961f5033f59551218d8349cb3bd401341b9245c8525bc1f3ff1', 'teacher', '2024-07-27 02:20:30', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student1636@lums.edu.pk' OR phone = '34505967303')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student1636@lums.edu.pk', '34505967303', 'Bilal Farooq', 'd46bb9dbb52b2b4980698cf19810b8522cc6643b7f109c64dec85a354108c209', 'admin', '2025-01-31 00:17:10', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user1637@lums.edu.pk' OR phone = '34600430725')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user1637@lums.edu.pk', '34600430725', 'Hassan Ali', '91e9be2908fc175fe53a6d394859423e2187d61085f76759974dcf96dd5ed1df', 'student', '2024-09-07 08:57:54', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '01638@lums.edu.pk' OR phone = '31480857261')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('01638@lums.edu.pk', '31480857261', 'Maryam Naqvi', '17bd28a1df4ac90f440546c1b377e7dad2e55c1710998192ebfbe855bc08eb86', 'teacher', '2025-03-10 15:53:17', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user1639@lums.edu.pk' OR phone = '32697985896')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user1639@lums.edu.pk', '32697985896', 'Sara Ghani', 'b958f24c357261b07981b256c88fcc0d3ce3dbd3565437d4a2cafa804a3f5311', NULL, '2025-06-13 17:32:26', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums1640@lums.edu.pk' OR phone = '31785560232')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums1640@lums.edu.pk', '31785560232', 'Amjad Saeed', '7aa7de9d3a542be66e01057a1328d24778face09e6ebea95db242201d5de812b', 'student', '2024-05-17 08:43:34', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user1641@lums.edu.pk' OR phone = '37588330255')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user1641@lums.edu.pk', '37588330255', 'Saima Chaudhry', '0fbf38581dfa41fed98bf563707dcf695e8eeba2d571f7d54d84f3095bfdfb64', 'admin', '2025-11-20 07:34:48', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student1642@lums.edu.pk' OR phone = '32623286335')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student1642@lums.edu.pk', '32623286335', 'Maryam Javed', 'd3f2a3f66ab44ee4f0f53f820e3c42960590442868c62f56b1361d97b1470940', 'worker', '2024-09-22 17:01:05', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '01643@lums.edu.pk' OR phone = '32324221470')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('01643@lums.edu.pk', '32324221470', 'Sara Zaidi', 'c1454406decd22a20fddf9c5d3421f03d71d810e04fa143459be5cf1d1d07bcc', 'student', '2024-10-16 19:03:19', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user1644@lums.edu.pk' OR phone = '36060707539')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user1644@lums.edu.pk', '36060707539', 'Naseem Aziz', 'c68a09ab95c7899aeef3a24a9f874a3c509cd470ad623794e2210751f1d8116d', 'teacher', '2025-01-11 05:35:16', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums1645@lums.edu.pk' OR phone = '37103757500')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums1645@lums.edu.pk', '37103757500', 'Irfan Bashir', 'd65947b5a26fac269f8342fd30ea98f25935976e8501b4614efc4b33c79a1e17', 'student', '2025-11-06 13:33:59', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '01646@lums.edu.pk' OR phone = '38414526208')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('01646@lums.edu.pk', '38414526208', 'Ahmed Yousaf', 'c0589ecc993954bc0479fe3534170d7d204cea11b58278dffd5457a2b046391c', 'student', '2024-03-16 05:24:37', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums1647@lums.edu.pk' OR phone = '36807167424')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums1647@lums.edu.pk', '36807167424', 'Imran Zaidi', '3bd18eb89856987cfac07e4aa8cb76c8989820f142634b8cade0dd84ac2bc548', NULL, '2025-07-27 08:10:41', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user1648@lums.edu.pk' OR phone = '33103626052')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user1648@lums.edu.pk', '33103626052', 'Naveed Latif', 'd80f8fcf8567bd11454b4e9e1ecfa13a0a42f4256c3cdd0ca097ff8c52b92189', 'worker', '2024-05-21 05:33:07', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums1649@lums.edu.pk' OR phone = '36602359448')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums1649@lums.edu.pk', '36602359448', 'Farhan Yousaf', 'dc03e03ebacdf907bbfce8913528f03119dbffc8f185bcba3ff1c2e1bde0bb1a', 'teacher', '2025-11-04 09:18:30', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user1650@lums.edu.pk' OR phone = '33686742418')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user1650@lums.edu.pk', '33686742418', 'Amjad Hassan', 'e9cecad2e5fccf9156bc01bc843288f5b2035b66fbb1454b39905085c6bfac37', 'student', '2025-06-17 22:41:13', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '01651@lums.edu.pk' OR phone = '38256169394')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('01651@lums.edu.pk', '38256169394', 'Rafiq Khan', 'f3141dc2c654118b5b975c068f245fde225f42c2768dfd508755a9ab5afaaf2d', 'worker', '2024-01-25 14:13:32', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student1652@lums.edu.pk' OR phone = '39204195616')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student1652@lums.edu.pk', '39204195616', 'Majid Rafiq', '37bd69552b6ebd22d97d8c44be11caa83378dcd3dbc4c9551a1d313c513abfab', 'student', '2025-10-25 08:09:40', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user1653@lums.edu.pk' OR phone = '37226683989')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user1653@lums.edu.pk', '37226683989', 'Tariq Hussain', '80ea2a0d8a0d3c98dd42ac3d8e21d8bb09de2152c557015cf6a8a33e07ad4671', NULL, '2024-03-06 05:08:18', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums1654@lums.edu.pk' OR phone = '35296150629')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums1654@lums.edu.pk', '35296150629', 'Sana Nadeem', '1b8797ef43b6b7763a0a059014060747eda6b8eebf89ac4e7380cc442e5d4e72', 'student', '2024-10-26 21:37:29', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student1655@lums.edu.pk' OR phone = '33155358688')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student1655@lums.edu.pk', '33155358688', 'Parveen Ali', 'a36f9a319ae10736a3cc2da9b60581c29a1e00920b02e2c940a226d3a09a98f0', 'teacher', '2024-11-05 09:58:20', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '01656@lums.edu.pk' OR phone = '32110857833')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('01656@lums.edu.pk', '32110857833', 'Khadija Hussain', '9625b47783917eb9b0174161e31ad75a9d3bab4de5c3e2255c420666f3b47159', 'teacher', '2024-03-09 02:53:43', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user1657@lums.edu.pk' OR phone = '36051590508')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user1657@lums.edu.pk', '36051590508', 'Ayesha Raza', 'cc1ae69e9765bec3808e3bd82ead2839e97fda914a1d13dd26b92994692b5529', 'student', '2023-12-21 11:53:34', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student1658@lums.edu.pk' OR phone = '32644640327')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student1658@lums.edu.pk', '32644640327', 'Parveen Zaidi', 'f82fffc04e72b8e4b82b81892390317d7d15b10763e16f3277051f499d38c44b', 'admin', '2023-12-15 14:11:30', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums1659@lums.edu.pk' OR phone = '37724834180')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums1659@lums.edu.pk', '37724834180', 'Sumera Farooq', '62172049dd9149ba3de9487b35ad0401affb82b281fd63686645d403536ff5e6', NULL, '2024-03-07 18:06:10', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums1660@lums.edu.pk' OR phone = '33529201445')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums1660@lums.edu.pk', '33529201445', 'Shahid Raza', '0d902d0fc6ca2d88f4f252d890d844266deb68f5a86359e561c9463a5b6cac59', 'teacher', '2025-08-08 13:39:55', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '01661@lums.edu.pk' OR phone = '35182114589')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('01661@lums.edu.pk', '35182114589', 'Arslan Karim', '84d481124a637083eb1c3d470666119cafa5c44b0cd7a3c8a13d96ddf47166e9', 'teacher', '2025-05-14 21:10:31', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums1662@lums.edu.pk' OR phone = '34921569083')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums1662@lums.edu.pk', '34921569083', 'Amjad Chaudhry', '8cc69e08d413b4626cc7a8465239c3e7fc8603e2722aa2cb812147d5ffd8aa8b', 'admin', '2024-08-20 05:29:31', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student1663@lums.edu.pk' OR phone = '33250578695')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student1663@lums.edu.pk', '33250578695', 'Alina Bashir', 'c279a8429d6c6dc8f1f8991e9cca38c99f2f5a55134a34c29df6c8580875431d', 'worker', '2025-11-08 17:33:25', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user1664@lums.edu.pk' OR phone = '39200938369')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user1664@lums.edu.pk', '39200938369', 'Sadaf Raza', '1310a1b76bbcfd4f33cb514de8e8dafb6981c22a55224a051c5245bca55c4a6e', 'admin', '2025-02-02 12:49:08', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '01665@lums.edu.pk' OR phone = '31312658636')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('01665@lums.edu.pk', '31312658636', 'Bushra Aslam', '1586eede26a5947a6439736f5b47072ee23c9c07effde63e53a4122825c547b4', 'admin', '2024-06-16 19:49:10', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '01666@lums.edu.pk' OR phone = '30536448853')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('01666@lums.edu.pk', '30536448853', 'Hanif Sheikh', '4133e1f342dd556e9d7d647e8358a5855c10f89db3e53bc2d531f6e93b1ab02e', NULL, '2024-05-16 10:32:47', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '01667@lums.edu.pk' OR phone = '39710038034')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('01667@lums.edu.pk', '39710038034', 'Sami Waseem', 'a2c04d6cd424bdac9cae1dc8e2f2e7ed0ee15dc461ad233301d937d3b18549ad', 'admin', '2025-06-12 21:08:34', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums1668@lums.edu.pk' OR phone = '32757178778')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums1668@lums.edu.pk', '32757178778', 'Azhar Abbas', 'c0898b59a7f91b72eb65f94b7b1381338c95a7d996271508e8a01eebebeedb50', 'admin', '2025-04-23 23:45:52', 1, '2025-10-22 19:11:23');
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user1669@lums.edu.pk' OR phone = '34913216333')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user1669@lums.edu.pk', '34913216333', 'Maryam Qadir', 'cae2253ee9cd6fd1f86455ff380e52ffc41631417d8c4d8acabe0e203043d25e', 'student', '2025-06-24 13:49:29', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student1670@lums.edu.pk' OR phone = '39377071396')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student1670@lums.edu.pk', '39377071396', 'Aamir Hameed', '54d948a29093e78afbbd90a61a081640090b70aa3f7ed2422c227cf6f096c7b9', 'worker', '2025-04-04 03:18:39', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user1671@lums.edu.pk' OR phone = '34310826096')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user1671@lums.edu.pk', '34310826096', 'Farooq Shah', '101c038bc5e8e2fe497a83b11f73641cfa53f1c20b6f71c0692629cced5f78b7', 'worker', '2024-06-16 01:13:18', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user1672@lums.edu.pk' OR phone = '39722691989')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user1672@lums.edu.pk', '39722691989', 'Raza Chaudhry', '58b1e1947339d34429fd899ba9ce005ee1eabd9142470282aba437725bd55651', 'student', '2025-09-03 03:10:54', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user1673@lums.edu.pk' OR phone = '37154830362')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user1673@lums.edu.pk', '37154830362', 'Fahad Latif', '062bdae08846884ccaa1f002362842b5095e5b52c79c814e80ff7f97625338c9', 'teacher', '2025-08-17 01:07:47', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user1674@lums.edu.pk' OR phone = '33876670396')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user1674@lums.edu.pk', '33876670396', 'Arslan Javed', '7a87ada66574b5afe18345d5668cebe0fbb558c6d2c5ad4d983a9fc51d88c2b8', 'admin', '2025-07-12 09:12:33', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums1675@lums.edu.pk' OR phone = '38577415047')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums1675@lums.edu.pk', '38577415047', 'Zain Shah', 'f0726f6e440bb3b07411309b20d4cf1d340cb59742013d515d85ce45fd9d3741', 'worker', '2024-01-29 19:40:14', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user1676@lums.edu.pk' OR phone = '39104089922')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user1676@lums.edu.pk', '39104089922', 'Anwar Rasheed', '664d4ca3242f1962ed72c2d728c7e8367e0e81d45b56e14e3b0d71627355ca9f', 'worker', '2024-05-12 23:50:12', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student1677@lums.edu.pk' OR phone = '35349848420')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student1677@lums.edu.pk', '35349848420', 'Zaheer Anwar', '658e903a00e015ac480f57c3296ae77507d52afe07ba2d3638fa2bd2a764bd9a', 'worker', '2024-02-19 16:03:57', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums1678@lums.edu.pk' OR phone = '39992829550')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums1678@lums.edu.pk', '39992829550', 'Mahnoor Raza', 'f59bd17d07bb94f1b0bc34f9068189fffe1dfd3361a1b567d3175f1e0f2b55f3', 'teacher', '2024-04-03 22:13:51', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums1679@lums.edu.pk' OR phone = '31380776835')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums1679@lums.edu.pk', '31380776835', 'Rashid Hussain', '4daf5275761745b85ea3581814309c753ee59970e9f82fc003dd2d3587953b19', 'worker', '2024-01-05 01:37:22', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums1680@lums.edu.pk' OR phone = '38964407671')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums1680@lums.edu.pk', '38964407671', 'Samina Waheed', '48e34b50ef778a1ead2559b1b441607487dc9e8d4a3fca7457c891c4218c72d5', 'student', '2024-08-14 05:27:30', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user1681@lums.edu.pk' OR phone = '37882778798')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user1681@lums.edu.pk', '37882778798', 'Saima Zaidi', 'bd54cc981a65139aeb474a24fb91331726d1bb11443f94b37651c5d77be5551c', 'worker', '2024-08-06 13:35:39', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user1682@lums.edu.pk' OR phone = '36239435129')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user1682@lums.edu.pk', '36239435129', 'Muhammad Anwar', '299ab639efdc242ae995d3bcddd66120d04c722213da4d25c497e8c6306b8c32', NULL, '2025-06-03 09:15:33', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums1683@lums.edu.pk' OR phone = '30543769784')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums1683@lums.edu.pk', '30543769784', 'Nimra Waheed', 'a05fe7766429357a197f1b7d2b59cad53d97f044dca8bca66e9ea666470249e6', 'teacher', '2025-03-22 10:02:56', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums1684@lums.edu.pk' OR phone = '38620866415')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums1684@lums.edu.pk', '38620866415', 'Khalid Tariq', '035fd2e23175be99648d8b9b79711f6e86982a423e41c51e32b03c437148a6c8', 'admin', '2024-05-22 05:49:47', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '01685@lums.edu.pk' OR phone = '34485162088')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('01685@lums.edu.pk', '34485162088', 'Sami Anwar', '46e698e75c0e3f4205e4ea114555ffe75b606ac8d715ab5c2f6144555e31f845', 'worker', '2024-09-18 08:49:44', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user1686@lums.edu.pk' OR phone = '33639913604')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user1686@lums.edu.pk', '33639913604', 'Maria Yaqoob', 'db10e152301db989be7799fdab9dd8876875c55c971b2a3d43bddaf55bc78699', 'teacher', '2025-01-27 11:42:37', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student1687@lums.edu.pk' OR phone = '36616833976')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student1687@lums.edu.pk', '36616833976', 'Kamran Iqbal', 'b24ac37cb3bbec9fb88a9d0448ba67194a29adf17fde08d3d734e3813a22f894', 'student', '2024-09-09 02:31:09', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums1688@lums.edu.pk' OR phone = '39620565217')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums1688@lums.edu.pk', '39620565217', 'Alina Mirza', '8a9029971b2314e65ad24ac19ad97b810d290c502b3aa5eb6c636ddde620ac4b', 'worker', '2025-09-28 17:41:14', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '01689@lums.edu.pk' OR phone = '37354093376')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('01689@lums.edu.pk', '37354093376', 'Naveed Qadir', 'b55e114365a47401b232b1d06f0296476607184834317795562a0be1ab720ad1', 'admin', '2024-08-09 12:41:41', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student1690@lums.edu.pk' OR phone = '36265862307')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student1690@lums.edu.pk', '36265862307', 'Khadija Saeed', 'd3b96784be4b80b8df80a2d5bca2bec4ff1a45b3754cbda373d45d67ea2d1467', 'student', '2024-11-01 22:16:08', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user1691@lums.edu.pk' OR phone = '36209930249')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user1691@lums.edu.pk', '36209930249', 'Noor Yaqoob', 'f599d6a1fce434c76c65efb9e412bec974b67027ae78e5f7548605903585ae2a', 'teacher', '2024-03-31 21:01:39', 1, '2024-10-28 16:02:13');
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student1692@lums.edu.pk' OR phone = '35373316519')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student1692@lums.edu.pk', '35373316519', 'Aisha Haider', 'cb3bd4374da8a2c45ab1bbc2a21fd067b6a54236b3d8797f392fb2531ce68256', 'admin', '2025-02-13 08:16:54', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student1693@lums.edu.pk' OR phone = '32275636991')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student1693@lums.edu.pk', '32275636991', 'Hassan Hussain', 'e8c9493ecc63272cb9abbebe19b6cdee80aa07c93f2117c2da0b07cdb498d608', 'worker', '2025-11-04 04:34:03', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '01694@lums.edu.pk' OR phone = '30144111115')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('01694@lums.edu.pk', '30144111115', 'Hassan Sheikh', '373a1c3cb6bb958ae5cc16165841741b5f8f0e09e925de7b3d2fba9810451747', 'worker', '2025-09-10 21:12:32', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '01695@lums.edu.pk' OR phone = '37354001979')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('01695@lums.edu.pk', '37354001979', 'Ali Akhtar', '9ce23d6e95909e99b31823104d8bffbe4f70d379eaf8f2ee44e5288a4bad93e8', 'worker', '2024-07-13 17:56:50', 1, '2024-09-06 09:05:12');
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '01696@lums.edu.pk' OR phone = '38725344462')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('01696@lums.edu.pk', '38725344462', 'Sami Sadiq', '660e1ec94ee205beaae43a80f86910a25b942389eb5e60755075aa23a7696ca9', 'worker', '2025-10-04 23:02:25', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums1697@lums.edu.pk' OR phone = '36413104579')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums1697@lums.edu.pk', '36413104579', 'Akram Mahmood', '45c50c559b4656fab6b13e3e1f58fc9a600501d14727e2a7814f8e4dc423103d', 'teacher', '2024-11-02 15:54:56', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums1698@lums.edu.pk' OR phone = '39971694678')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums1698@lums.edu.pk', '39971694678', 'Fouzia Zaidi', '436b0b82f4b23f2964d2a3d230f43fd6984e0e1cc85c13ee06dbee56db5d6e61', 'worker', '2025-01-10 20:30:57', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user1699@lums.edu.pk' OR phone = '36029465495')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user1699@lums.edu.pk', '36029465495', 'Shahzad Yaqoob', 'e3df5398e1fa5573d6bf8b4f8accfb6d3e8dd9d4d753da83da8bd80ac0520984', 'worker', '2025-05-31 21:20:19', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user1700@lums.edu.pk' OR phone = '38224907424')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user1700@lums.edu.pk', '38224907424', 'Alina Yousaf', 'dcf28b62f8cbb9a30a268d65322076ecf7eed1a4dde265587cff78fb947aeaaf', 'teacher', '2024-08-13 18:39:48', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student1701@lums.edu.pk' OR phone = '35987806647')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student1701@lums.edu.pk', '35987806647', 'Yasmin Yaqoob', 'a740c3dcfc5e6c73ff3eeccbeffb217dd4bd288643ce4f4e7904f998ef618ea2', 'teacher', '2025-03-08 16:52:16', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums1702@lums.edu.pk' OR phone = '33214368600')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums1702@lums.edu.pk', '33214368600', 'Shahid Farooq', 'da125c2c3e9b8650eb61a78f6f69255a9cbe5d82d2fd9e62c28112d68098999e', 'teacher', '2024-03-01 12:42:29', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student1703@lums.edu.pk' OR phone = '30014971659')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student1703@lums.edu.pk', '30014971659', 'Nadia Javed', '28f57be0bccef7c6e5cb2afc43688831c28dc3aae174ca66139febd5b669a90a', 'student', '2024-10-07 06:45:07', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user1704@lums.edu.pk' OR phone = '34701854015')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user1704@lums.edu.pk', '34701854015', 'Shamsa Yousaf', '82ac0541c671d5e542399764ebd263cf6507b67d56655248af88561b900d41a7', 'student', '2025-11-18 12:45:36', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user1705@lums.edu.pk' OR phone = '36249641332')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user1705@lums.edu.pk', '36249641332', 'Humaira Malik', 'd1cc48b8d6825d4e7f9587bcc52dc9b1cfdf7c3ebea5ef0b624c2e7bf8abf165', 'teacher', '2023-12-10 07:28:58', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '01706@lums.edu.pk' OR phone = '33897297449')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('01706@lums.edu.pk', '33897297449', 'Hanif Ahmed', '167a845dc2ee54d7eaf9acd0bd9c5fed7e325531ab27e2bf36c1075b6856dc6f', 'worker', '2024-05-09 17:16:08', 1, '2025-06-25 06:05:45');
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums1707@lums.edu.pk' OR phone = '37866175991')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums1707@lums.edu.pk', '37866175991', 'Rubina Jamil', 'f7447ab118eb84e632fccc4e170225fcbf4a364993973910b7b86737d7144359', 'worker', '2024-03-17 19:30:17', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums1708@lums.edu.pk' OR phone = '39634718732')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums1708@lums.edu.pk', '39634718732', 'Farzana Hussain', '4423ac5a71e14379121d28201a0dc64969e5569f639c3faebfe5eb9fe75a8611', 'admin', '2025-01-07 22:27:29', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '01709@lums.edu.pk' OR phone = '35587292804')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('01709@lums.edu.pk', '35587292804', 'Amjad Shah', '3cb0cb8dafa8423c64d6c24a0f537e2988de101e94e0e56069c500b4de9820a6', 'student', '2025-10-28 17:20:36', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user1710@lums.edu.pk' OR phone = '31220274429')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user1710@lums.edu.pk', '31220274429', 'Khadija Zaidi', 'f45744ceed51d7c659dc436db6eff8ed82d657a0ee0a9ee1ef9f405185906396', 'worker', '2024-06-04 09:08:38', 1, '2025-09-13 18:31:00');
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user1711@lums.edu.pk' OR phone = '31044861011')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user1711@lums.edu.pk', '31044861011', 'Mahnoor Hameed', '097429ba767dc786b28bc1ec5a3b85177a2aab36c6117c125077cc40ed0e9338', 'admin', '2024-07-30 14:19:16', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '01712@lums.edu.pk' OR phone = '39535132071')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('01712@lums.edu.pk', '39535132071', 'Wasim Aziz', 'b5393bcd448a39a070cba47348efcf07bf04a8e696d4ceddc3a4b95c99532144', 'teacher', '2025-03-02 13:40:27', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student1713@lums.edu.pk' OR phone = '37331179316')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student1713@lums.edu.pk', '37331179316', 'Hassan Javed', 'd0b196c3e583fa4889a1f4c74140591c4d0575d25df5cb3e4b3bb2fc07500659', 'worker', '2025-01-24 11:38:00', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '01714@lums.edu.pk' OR phone = '30592938852')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('01714@lums.edu.pk', '30592938852', 'Kashif Bashir', 'c02f8a927a8810c17cd42a191bab2376eb88465305850390beb0d0cd80a9518f', 'worker', '2024-12-05 04:46:16', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '01715@lums.edu.pk' OR phone = '31463241519')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('01715@lums.edu.pk', '31463241519', 'Maryam Umar', 'f17079d54b5876437bf4055ac7ffa4a0a9bdfe48cf02f7a69eebc3db598970ed', 'worker', '2024-04-25 19:42:47', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '01716@lums.edu.pk' OR phone = '33712437774')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('01716@lums.edu.pk', '33712437774', 'Parveen Saeed', '340ac2249a96edfd0945d1a07aa5749bccaae04a41a769fb2a76873231c79b2b', 'admin', '2023-11-30 15:43:07', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '01717@lums.edu.pk' OR phone = '32829657570')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('01717@lums.edu.pk', '32829657570', 'Junaid Anwar', 'c62efa97d2c7d2fac15e708c9d7c093b9fe3f81427d89dcf4fcd4f9057fcaf3f', NULL, '2025-09-01 09:57:03', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums1718@lums.edu.pk' OR phone = '30783976815')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums1718@lums.edu.pk', '30783976815', 'Hanif Saeed', '6354549d84775876e061996e60b93fe8c85130e70281eb34205f2224ce84b619', 'teacher', '2023-12-04 15:35:39', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student1719@lums.edu.pk' OR phone = '36120456307')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student1719@lums.edu.pk', '36120456307', 'Salman Javed', '6692370f433eb4f6501791201e9119f2bd9eba4473f1fda4298a956b8b9ccb5c', 'teacher', '2025-07-19 21:51:05', 1, '2025-10-18 02:28:17');
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student1720@lums.edu.pk' OR phone = '37322377637')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student1720@lums.edu.pk', '37322377637', 'Saleem Hussain', '930a5d6391d6a0bf5d649701cdf5647c855f4957c14e3298d32aa25286ec9ff1', 'teacher', '2024-08-11 10:23:33', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user1721@lums.edu.pk' OR phone = '37275272098')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user1721@lums.edu.pk', '37275272098', 'Amjad Farooq', '602241e2b4a3b66a1749fa63cc529432de652da55a0f52a672f819c95940ea9b', 'admin', '2024-05-31 02:59:56', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student1722@lums.edu.pk' OR phone = '30249529926')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student1722@lums.edu.pk', '30249529926', 'Tahira Ilyas', '1d9cc498ca12b9f4550659e7c504c50f031504feca071e76322dd6c77dee4a68', 'teacher', '2025-08-22 06:46:43', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user1723@lums.edu.pk' OR phone = '35620132602')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user1723@lums.edu.pk', '35620132602', 'Aftab Qureshi', '58f87ef8de724279d1fa5f1d29295a4ff975ad2f3953b88f95f3dde2dd925584', 'teacher', '2025-10-23 00:40:42', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '01724@lums.edu.pk' OR phone = '35034527457')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('01724@lums.edu.pk', '35034527457', 'Naveed Abbas', 'db3a180fe107b601b16e03ce73ad9400dbd44a0de206dfc39a598782c09716f8', 'admin', '2025-04-06 11:19:24', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student1725@lums.edu.pk' OR phone = '36414816246')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student1725@lums.edu.pk', '36414816246', 'Shamsa Ayub', '38189fcc70542906a0ed03199c582a68d7735b0b2ad080389c951ee4d96eb3f1', 'student', '2024-12-09 22:04:14', 1, '2025-05-23 19:27:23');
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '01726@lums.edu.pk' OR phone = '34224540737')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('01726@lums.edu.pk', '34224540737', 'Tariq Ahmed', 'be9bc5a2e040a9f617f40aaea60982060cb85ce74d10c49d30903bb895c5d0cc', 'teacher', '2024-10-18 20:44:12', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums1727@lums.edu.pk' OR phone = '35723956711')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums1727@lums.edu.pk', '35723956711', 'Farzana Umar', '31e77666d64e5c9974759e4b8a219f439743f72030325641bbc8fa2070acd079', 'worker', '2024-11-17 11:12:10', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user1728@lums.edu.pk' OR phone = '33059375099')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user1728@lums.edu.pk', '33059375099', 'Aamir Ghani', '0febed7f5f6d9e169ab9cb0c9ed806e3e949c0bc3a9d910a3b2be24bc719eab7', 'teacher', '2024-09-30 07:02:04', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '01729@lums.edu.pk' OR phone = '30594358877')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('01729@lums.edu.pk', '30594358877', 'Asim Aziz', '3f807eb06a8b1f6ebae7e1e052e1ac97a83aeda9dbc50db35ce949f1909eadc8', 'student', '2024-06-25 11:49:55', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user1730@lums.edu.pk' OR phone = '38671686592')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user1730@lums.edu.pk', '38671686592', 'Bilal Butt', 'b8abe62d6a2fc7aa554cf325f6454b25bad1e26da047adddc1e9afef86826a95', 'admin', '2025-09-06 00:08:00', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '01731@lums.edu.pk' OR phone = '31791515414')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('01731@lums.edu.pk', '31791515414', 'Aslam Saeed', 'a2ce52d9ec65565ef3da1c2dad33112c8a1c105a5535dd6b374391b4f28a319a', 'student', '2024-05-28 16:55:19', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '01732@lums.edu.pk' OR phone = '37506833249')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('01732@lums.edu.pk', '37506833249', 'Sumera Saeed', '9819f4285a833bb83ae0013b1888ceaa06a61138eba342f90655421c4d83e10b', 'student', '2024-01-13 22:39:08', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums1733@lums.edu.pk' OR phone = '34788862907')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums1733@lums.edu.pk', '34788862907', 'Uzma Yousaf', '1408f47d4c6201b48e818767f5fda2d9abb16e0759359c4f71907378448bf680', 'worker', '2024-10-05 19:26:50', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums1734@lums.edu.pk' OR phone = '38562678181')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums1734@lums.edu.pk', '38562678181', 'Aslam Mahmood', '9a8a16d22581beb9ec2b29402557387d3b12e7dcdab2c3f8c1b1bd5fbd51b5ea', 'admin', '2024-04-26 07:08:07', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums1735@lums.edu.pk' OR phone = '39048255809')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums1735@lums.edu.pk', '39048255809', 'Humaira Latif', 'cc324092f47b87905aa5f3a591c209681b1ce5951b9ff67aa636f0d2e8a3b0e2', 'teacher', '2025-01-19 06:01:38', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums1736@lums.edu.pk' OR phone = '37456909336')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums1736@lums.edu.pk', '37456909336', 'Fouzia Ghani', '6ac0b9a4aa9954f118564e2166fe0da8f342b08f249ba1d5444e7aec26a1d156', 'teacher', '2024-07-21 16:00:49', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student1737@lums.edu.pk' OR phone = '38844989240')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student1737@lums.edu.pk', '38844989240', 'Sana Yousaf', '12e6ce16bfaa14e7357e5859d33ab6a51ea51208d743c61247985964cd9fb4ee', NULL, '2025-04-09 22:09:03', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user1738@lums.edu.pk' OR phone = '34672566828')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user1738@lums.edu.pk', '34672566828', 'Shafiq Mirza', 'f92f57533a1db22585476542316d079a8060405c2ee2dbd43c710436bf642975', 'worker', '2024-09-07 03:00:19', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums1739@lums.edu.pk' OR phone = '38653879534')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums1739@lums.edu.pk', '38653879534', 'Sara Zia', '6c1577bece0ea1e85cb105156c5e144a9d047b36f216c9933ccd03801997786c', 'student', '2025-06-05 15:56:09', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums1740@lums.edu.pk' OR phone = '31777992282')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums1740@lums.edu.pk', '31777992282', 'Noor Haider', '7c71e741de9fb99984a6e9f37f842fb89247d9129f17e47252b9275ae2300dd7', 'admin', '2025-01-27 15:57:13', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums1741@lums.edu.pk' OR phone = '36760652033')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums1741@lums.edu.pk', '36760652033', 'Tanvir Mahmood', '46bd5bec480245584b70f89b2f584eaeea0bc9552ff853884750d874bb5d9187', 'teacher', '2025-01-10 09:21:03', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student1742@lums.edu.pk' OR phone = '35502713585')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student1742@lums.edu.pk', '35502713585', 'Kamran Farooq', '51d0e0a2aeb9051c96413e8d424122581feeab295638ae41a27b31ca4b5d893e', 'worker', '2024-09-28 06:52:55', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '01743@lums.edu.pk' OR phone = '37169860738')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('01743@lums.edu.pk', '37169860738', 'Shahid Malik', '4d42f871a092c78be7392b63f166c7b4f9fc451221b0b3be90b9b50374db2d36', 'student', '2024-07-31 04:43:43', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '01744@lums.edu.pk' OR phone = '35332439812')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('01744@lums.edu.pk', '35332439812', 'Fouzia Shah', '5e5c2d290ba6be5cdba4996f6989ce0a347b31ba516f73814f729a7c119d532c', 'worker', '2024-12-26 11:39:01', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums1745@lums.edu.pk' OR phone = '33839320234')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums1745@lums.edu.pk', '33839320234', 'Hamza Ayub', '4e17510641cc67b5a7756d1cbba64fe8fec23306d998ad9930cfd81fe28409f9', 'admin', '2025-03-19 13:51:38', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user1746@lums.edu.pk' OR phone = '33302332536')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user1746@lums.edu.pk', '33302332536', 'Noor Tariq', '3068a9ae31b5edabbc46325c0988701ac39750cc62dca94935c161dc7e3547ab', 'admin', '2024-06-14 16:30:18', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student1747@lums.edu.pk' OR phone = '33752902262')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student1747@lums.edu.pk', '33752902262', 'Irfan Jamil', '8d2171ebd8ffa118404627b1fb1126baf3a442b89bfd7dee27519a97b8a2281c', 'worker', '2024-12-07 09:17:40', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student1748@lums.edu.pk' OR phone = '34248848858')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student1748@lums.edu.pk', '34248848858', 'Azhar Saeed', 'aa3b7c16cc63702a21a9e8e5d45bc5eb53667ea45177125d74a9d33679b87c37', 'teacher', '2024-05-23 00:12:14', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums1749@lums.edu.pk' OR phone = '32096553581')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums1749@lums.edu.pk', '32096553581', 'Zainab Qadir', '1995a61783c49bc5736b5dea60fb008028cc8c76968cd28330ff4d3875be7667', 'worker', '2024-08-13 16:26:13', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student1750@lums.edu.pk' OR phone = '34484101354')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student1750@lums.edu.pk', '34484101354', 'Samina Farooq', 'd9ad22484e46fad3ac4c0a434f13280be530087f8f0f5a83d33a7b6ec62b2ee6', 'student', '2023-12-25 15:14:52', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '01751@lums.edu.pk' OR phone = '30763948196')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('01751@lums.edu.pk', '30763948196', 'Nadeem Mirza', '4f6a93941097c22887e0fc1df2c4632a501ee6d226525644739a674eb6624535', 'student', '2024-02-26 15:21:59', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student1752@lums.edu.pk' OR phone = '32273566069')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student1752@lums.edu.pk', '32273566069', 'Majid Sheikh', '3e277562aec092ffb67b8cbd40f5451f59039f7b1c385af86e13e7acf6ab59a2', 'teacher', '2024-04-29 00:38:10', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '01753@lums.edu.pk' OR phone = '39084687761')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('01753@lums.edu.pk', '39084687761', 'Rashid Abbas', '7bf4d82266330d34c4a64758fc6ee47f023a18c1e65a75845a50ff28b6f52ea3', 'student', '2025-07-30 04:22:57', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums1754@lums.edu.pk' OR phone = '36331204933')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums1754@lums.edu.pk', '36331204933', 'Abdullah Mahmood', 'a9e0ab7ebfa0611eba8f1ed7d6e21eecae296c98e54245b54da6f632255f9d6b', 'teacher', '2024-12-18 07:24:14', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums1755@lums.edu.pk' OR phone = '30425980913')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums1755@lums.edu.pk', '30425980913', 'Parveen Chaudhry', '50f3f9309ad8125092375defb12367f20697fc350fead112e548f950114f679c', 'worker', '2024-09-25 07:42:49', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student1756@lums.edu.pk' OR phone = '34449360705')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student1756@lums.edu.pk', '34449360705', 'Shahid Karim', 'a3101dd46a0afb716627a03ecf39fa47b8ed1c65c038641c9fbc989afe54c60f', 'admin', '2024-01-30 09:20:17', 1, '2024-12-05 10:40:46');
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user1757@lums.edu.pk' OR phone = '32538846366')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user1757@lums.edu.pk', '32538846366', 'Sidra Ghani', '9ed85b82c6bfd86661ade0157a436b36e6afdaf714c0b7839bdec07296980a1f', 'teacher', '2025-08-08 02:39:50', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums1758@lums.edu.pk' OR phone = '31757162372')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums1758@lums.edu.pk', '31757162372', 'Sumera Malik', 'f36af4ef1052df723d2bff898f3def48965fc310be9f5a9324d1f33ee4a0485b', 'admin', '2025-04-05 14:29:19', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '01759@lums.edu.pk' OR phone = '33869316726')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('01759@lums.edu.pk', '33869316726', 'Raza Zaidi', '5c18ceebc45fd466fc9d531366698135e41c81c3135529d7881d249bef1da389', 'admin', '2024-02-12 15:42:35', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '01760@lums.edu.pk' OR phone = '31213869585')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('01760@lums.edu.pk', '31213869585', 'Maria Aslam', 'a920c8b04bf340920f148764d894d0e92526fa14451f2239c35c0c3806ae728d', 'worker', '2024-09-25 08:22:57', 1, '2025-08-14 17:05:33');
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums1761@lums.edu.pk' OR phone = '39318364465')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums1761@lums.edu.pk', '39318364465', 'Sadaf Tahir', '4c2b4e20131916680b5c62d89e0779e81bfa5c70c85ea5985bfceb98302b2d8a', 'admin', '2024-05-24 21:41:19', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user1762@lums.edu.pk' OR phone = '38854777899')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user1762@lums.edu.pk', '38854777899', 'Bilal Zaidi', '48e7529cfcb9dae7d157fd2488aba5b78c1333639c001fe1f955ba19d4c01d89', 'admin', '2024-06-18 05:03:08', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student1763@lums.edu.pk' OR phone = '36401899095')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student1763@lums.edu.pk', '36401899095', 'Tanvir Qadir', 'fcb352b2f6cd5ffb9a3bd925f668ea84797812d67e0bf2d0579ca159ce8a64a4', 'student', '2024-02-28 04:19:39', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user1764@lums.edu.pk' OR phone = '36397416045')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user1764@lums.edu.pk', '36397416045', 'Hassan Umar', '364f8c0c8ea672a30f7a94df27362fd8f988b94f76ad8ffdf44c431abf6bb511', 'student', '2025-06-10 22:05:42', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user1765@lums.edu.pk' OR phone = '35777967470')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user1765@lums.edu.pk', '35777967470', 'Asad Akhtar', '28fd35b8889a9a105cb50b93f837d118a1ec853eb80183e57b0f44eb444c33b1', NULL, '2023-12-05 04:37:48', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '01766@lums.edu.pk' OR phone = '31194270524')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('01766@lums.edu.pk', '31194270524', 'Aamir Javed', 'b557667359bcc2ba7bc5ce882bbc4ae6215df2c21357982c2a24d50522066da8', 'student', '2024-02-02 12:24:33', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user1767@lums.edu.pk' OR phone = '33739417989')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user1767@lums.edu.pk', '33739417989', 'Aisha Tahir', '8500729cb1c2567371500aca06d54e79aae7ab73f91895e4ba01b6e5aa90d88e', 'worker', '2025-05-09 20:38:54', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums1768@lums.edu.pk' OR phone = '38445625471')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums1768@lums.edu.pk', '38445625471', 'Sara Khan', '170feedf8b9646121b450b1b3681ea674c67fe172d88ef953120a949d7dc0df1', 'worker', '2025-10-07 14:57:03', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user1769@lums.edu.pk' OR phone = '38395245084')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user1769@lums.edu.pk', '38395245084', 'Qamar Sadiq', 'd2aeb911c0779bc043affc354d3c51cb86097e1e796a3c6a6b81f77ab8e3c083', 'teacher', '2024-07-24 10:19:09', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user1770@lums.edu.pk' OR phone = '34105301537')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user1770@lums.edu.pk', '34105301537', 'Yusuf Sadiq', '07cd44cec89be0e65d9d4e036d44b21c570c030b7bae08a2915c586a4b9336d7', 'student', '2024-08-18 10:26:05', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums1771@lums.edu.pk' OR phone = '39512396519')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums1771@lums.edu.pk', '39512396519', 'Sadaf Nadeem', '76d7c5b3a7900faf811c0e511a6ee8173c5a1436f23cbd97c716cde671a91238', NULL, '2025-07-05 10:51:33', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '01772@lums.edu.pk' OR phone = '31529613370')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('01772@lums.edu.pk', '31529613370', 'Bilal Latif', 'de8c14abeff1c0dac2adfb021f5bdcce1b8562a4d8a02c250f38559ed1afa44c', 'admin', '2024-07-06 11:14:07', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student1773@lums.edu.pk' OR phone = '35661891164')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student1773@lums.edu.pk', '35661891164', 'Waqas Javed', '709af17e9e4a3acae9d4f348a7dc62f9d868eae4673871f14c0121fd48c4d782', 'student', '2024-01-27 11:10:45', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums1774@lums.edu.pk' OR phone = '38305606130')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums1774@lums.edu.pk', '38305606130', 'Hassan Iqbal', '3b32477bd1eb87bf8d391cb896fb033c9f99c21ec253d9268672827bdf9a6ff1', 'student', '2024-03-17 12:23:10', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums1775@lums.edu.pk' OR phone = '37548276866')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums1775@lums.edu.pk', '37548276866', 'Arslan Rasheed', 'c498cc9d1268dd4d5fed193aaebc2d00a6060401b961679aa6a3eb0d1e45a11f', 'teacher', '2025-04-26 15:39:07', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums1776@lums.edu.pk' OR phone = '37606054080')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums1776@lums.edu.pk', '37606054080', 'Wasim Shah', '7977ddf172ce20af0c3733a24d4c7fd756b5052871233f7eb8dbf93a30c0913b', 'admin', '2024-12-18 00:16:16', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student1777@lums.edu.pk' OR phone = '32530151517')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student1777@lums.edu.pk', '32530151517', 'Naveed Karim', '5e60b9a99492eae54ac2a028c6e06b1655d4c36b35e5456ccaea71de4dac3a85', 'worker', '2025-10-06 21:41:46', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user1778@lums.edu.pk' OR phone = '30104544685')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user1778@lums.edu.pk', '30104544685', 'Zahid Masood', '447f9c4dae3a348cfbab5bcd62365a688ce3b6ebfd71a5b3259175150d869036', 'admin', '2024-01-30 15:49:51', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums1779@lums.edu.pk' OR phone = '35973573205')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums1779@lums.edu.pk', '35973573205', 'Alina Ghani', '8214cf7674535cd07a32f9de7ee03715d2eba8d2543cc7bad46fb58f9e2d9f91', NULL, '2024-06-09 11:50:22', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user1780@lums.edu.pk' OR phone = '34223098864')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user1780@lums.edu.pk', '34223098864', 'Saleem Qureshi', '01a99df3337a987120a4defda5e0631b40830c249dea1954ffb57a06983d36f4', 'teacher', '2024-02-29 11:28:38', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums1781@lums.edu.pk' OR phone = '30890363416')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums1781@lums.edu.pk', '30890363416', 'Naseem Tahir', '74c436489dbd79cbdc5a0fd25fc2ffee5d96915d85c8f789a90e63c1dacf1ad8', 'student', '2025-02-20 05:32:29', 1, '2025-07-08 00:05:07');
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums1782@lums.edu.pk' OR phone = '34835233148')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums1782@lums.edu.pk', '34835233148', 'Saad Haider', 'ec112b3e02e041e3d1cf70ecc72bcab640460fd0a85f144223c6ac1f85239682', 'worker', '2025-11-04 21:49:22', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student1783@lums.edu.pk' OR phone = '35305629034')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student1783@lums.edu.pk', '35305629034', 'Uzma Tariq', '09d66a8b86e94107d843ee17c74fbdc6f40a849fa49b72f067cb0b963f94fc11', 'teacher', '2025-01-15 11:25:30', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student1784@lums.edu.pk' OR phone = '30980808258')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student1784@lums.edu.pk', '30980808258', 'Wasim Nadeem', '1856985e41c14df2c013bd173de6147eaf23708374cc16223e4e6c6595e809ba', 'admin', '2025-06-20 05:32:56', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user1785@lums.edu.pk' OR phone = '31945955153')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user1785@lums.edu.pk', '31945955153', 'Tariq Qureshi', '094aaeb2bb84645d4862ebf24d232296b48fc2bbd1408119bf699edb22deddf2', 'student', '2024-12-19 13:36:59', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user1786@lums.edu.pk' OR phone = '32811278437')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user1786@lums.edu.pk', '32811278437', 'Ibrahim Ahmed', '36fd6b2c3566770db2dde976bf8c5b8ca97634326fdc7bdec60ee5631a27674d', 'teacher', '2024-01-27 00:07:09', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user1787@lums.edu.pk' OR phone = '32998916165')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user1787@lums.edu.pk', '32998916165', 'Kamran Anwar', 'ab69071a883d84cf80e4100eeba4730a880e657f5f711ff6050bb218c5c260ef', 'teacher', '2025-04-14 12:50:00', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student1788@lums.edu.pk' OR phone = '39241739051')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student1788@lums.edu.pk', '39241739051', 'Talha Anwar', 'c79bc32ab585dd1f7ca3c99217ee556c00dc165562558313c9ff2bc0263e3aee', 'admin', '2024-04-23 18:56:17', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user1789@lums.edu.pk' OR phone = '37225781405')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user1789@lums.edu.pk', '37225781405', 'Noor Abbas', 'f3121392aa7547b2686bf4a7c61d876f9442eb37f5531c1292f1c21302984493', 'teacher', '2025-04-13 20:13:24', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums1790@lums.edu.pk' OR phone = '30784289127')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums1790@lums.edu.pk', '30784289127', 'Aftab Farooq', '53f280d27dcf2429770c1ba627bb5330705af2454f0fff1b7f2af31bd98e0085', 'teacher', '2024-06-04 03:56:36', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user1791@lums.edu.pk' OR phone = '37097209981')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user1791@lums.edu.pk', '37097209981', 'Sara Siddiqui', '368080243eacb0841b302d8ae61b25006dd9784f79bd9dbdf648bf25b56c77bf', NULL, '2025-01-13 07:52:55', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user1792@lums.edu.pk' OR phone = '31484928653')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user1792@lums.edu.pk', '31484928653', 'Muhammad Zia', '8f2d7b9d37fabf9ab1411c0f921fcb34cce508f30f30d8eeb5b950e5d55535e1', 'student', '2024-03-12 19:42:55', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student1793@lums.edu.pk' OR phone = '33543335815')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student1793@lums.edu.pk', '33543335815', 'Uzma Ali', 'c4859e301b844fa3103e74ccde66973fa339b2c0454e51c7e5cadc5a128a174b', 'teacher', '2024-02-16 22:54:26', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user1794@lums.edu.pk' OR phone = '33032676327')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user1794@lums.edu.pk', '33032676327', 'Adnan Yousaf', '77e45068825c726575ea191bd6d5fca199a3c05434f9729b8ff87ea756c1f77e', 'admin', '2024-07-06 07:52:38', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student1795@lums.edu.pk' OR phone = '38877182094')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student1795@lums.edu.pk', '38877182094', 'Rizwan Waheed', 'fab21873536805adf9bf8a5af3bdf005d0b72785b1290caaadfb205a2a58ef68', 'teacher', '2025-07-28 02:07:33', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user1796@lums.edu.pk' OR phone = '35606381707')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user1796@lums.edu.pk', '35606381707', 'Khadija Tariq', '93cca587ef875008112caa6c4da7ffa77bbc3cdb5d83a32bc99d8ebf2cbd5e7d', 'teacher', '2024-03-15 23:22:25', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums1797@lums.edu.pk' OR phone = '34514857478')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums1797@lums.edu.pk', '34514857478', 'Iqra Masood', '0e10caadbc620822cf986e2534d2c25aae610b502d2818c340af8db0665c8ed2', NULL, '2024-02-22 09:54:32', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user1798@lums.edu.pk' OR phone = '30912685920')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user1798@lums.edu.pk', '30912685920', 'Sadaf Malik', '7d2e2197dd1210e399c318f4bf975f188cb6b71c6bdd9d84176ae5a28dd59484', 'worker', '2024-08-24 03:42:06', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user1799@lums.edu.pk' OR phone = '36609170493')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user1799@lums.edu.pk', '36609170493', 'Akram Haider', '5afead7a89a1de4617fdbeb2fb774957f9b3fb72ba6e20124f07c2be51ae27c4', 'student', '2025-08-27 14:25:19', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student1800@lums.edu.pk' OR phone = '36154544180')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student1800@lums.edu.pk', '36154544180', 'Nadeem Ali', 'b02c7c920a774cf20f06ffd006f2cc77b9206ba4dbbdc59bf7f6260ede8becfe', 'teacher', '2025-10-09 16:45:32', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user1801@lums.edu.pk' OR phone = '30599446133')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user1801@lums.edu.pk', '30599446133', 'Samina Khan', 'c3d2a910cce4a23e4c3bb45e36f40c7b365fa7f25ee1395564397cddd3906f84', 'student', '2025-02-13 03:40:42', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums1802@lums.edu.pk' OR phone = '34529532146')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums1802@lums.edu.pk', '34529532146', 'Parveen Sadiq', 'c15bae0c16c0ffed6fc6dfb7b2477a993fc98b717a6b46b105b97979d3d426bb', 'admin', '2024-08-21 10:21:06', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums1803@lums.edu.pk' OR phone = '36713194890')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums1803@lums.edu.pk', '36713194890', 'Riffat Ahmed', 'ae55aa53ef4bb9fa241bf073dd57cf7776431ca13b657c9fbc18cbb4f329004c', 'teacher', '2024-03-29 22:57:21', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums1804@lums.edu.pk' OR phone = '36316354224')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums1804@lums.edu.pk', '36316354224', 'Asim Latif', '98ba115ba1ddc896daf9efd0e9f8d6fb929ebdab8cc0944b92049aaa5750252b', 'student', '2024-08-30 04:12:35', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student1805@lums.edu.pk' OR phone = '30480814839')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student1805@lums.edu.pk', '30480814839', 'Shamsa Saeed', '0f690d932d2f20ed30d86b729cbb90af10dc6d30518dd91b5b8ac69dae9eb4dd', 'worker', '2025-04-16 13:28:27', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums1806@lums.edu.pk' OR phone = '31937195138')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums1806@lums.edu.pk', '31937195138', 'Muhammad Saeed', 'a55daa0c12d7c44beda3b382632fc5803b136df13717b11a34a5eddce28dd0af', 'worker', '2025-11-16 20:49:06', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '01807@lums.edu.pk' OR phone = '35862106639')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('01807@lums.edu.pk', '35862106639', 'Asad Abbas', 'a6099a20cc8c984cada1602e169f7d97f5e87175424703d5de129e9d91d95b5a', 'student', '2025-09-01 13:04:46', 1, '2025-10-29 21:42:22');
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student1808@lums.edu.pk' OR phone = '37722024363')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student1808@lums.edu.pk', '37722024363', 'Abdullah Bashir', '621ca0d2f2f5425a5d213f43a7865f4c5aa1d759277adf408896d9e46f90be30', 'teacher', '2024-09-13 07:37:50', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user1809@lums.edu.pk' OR phone = '33049072446')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user1809@lums.edu.pk', '33049072446', 'Nadeem Ahmed', 'd2cc32b58ba168e65003a204e7d7842d2098f75722c2512441ce7b4e321ab6c4', 'worker', '2025-08-06 09:28:13', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums1810@lums.edu.pk' OR phone = '37569733764')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums1810@lums.edu.pk', '37569733764', 'Muhammad Mirza', '2ea7d5e18e2ba6098457da9266084d0ec3f41809ff40baaf055bd0cda1344128', NULL, '2025-10-14 06:05:16', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '01811@lums.edu.pk' OR phone = '31998111594')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('01811@lums.edu.pk', '31998111594', 'Salman Bashir', 'b76a405bbb2d3c1a5b697e7cb43d9a81adc64a778da4be0d89939ea701837411', 'student', '2024-03-31 14:24:06', 1, '2024-04-12 10:21:56');
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student1812@lums.edu.pk' OR phone = '34239477769')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student1812@lums.edu.pk', '34239477769', 'Omar Tariq', '7e0edfe06b754b4b78f45906d58d9808c73dbb6b6787e436c8c9f0bc64d9c836', 'student', '2025-07-13 23:38:31', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student1813@lums.edu.pk' OR phone = '39528056400')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student1813@lums.edu.pk', '39528056400', 'Shaista Raza', '0aa52e7db81095cb4f608cf46c85268c0cfeeae5f0041903025a802da44d6a6b', 'student', '2024-02-19 14:22:14', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '01814@lums.edu.pk' OR phone = '31272768180')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('01814@lums.edu.pk', '31272768180', 'Aftab Zaidi', 'e95a14cfd84c083b6242df87c904de3d4b800f37a39a1c01527d02051c866148', 'student', '2024-08-15 05:37:25', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '01815@lums.edu.pk' OR phone = '34370761891')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('01815@lums.edu.pk', '34370761891', 'Tuba Iqbal', '73b0c10e874b9f4af0b4a59ce16910d7f41787eb7cdc9f62154080558c702d1b', 'student', '2025-02-08 03:05:22', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums1816@lums.edu.pk' OR phone = '36464634526')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums1816@lums.edu.pk', '36464634526', 'Naseem Nadeem', 'd25eba220d7ce9a9348a25b82d54632c2d0b3eb049d6f031ebf0af9f2b98c1ac', 'worker', '2024-02-29 10:05:55', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums1817@lums.edu.pk' OR phone = '37667954782')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums1817@lums.edu.pk', '37667954782', 'Akram Waseem', 'b3187e9a91050b94c7b3511c0114e4ac2c078d47ed655c87523de27c036c5cec', 'teacher', '2024-02-03 12:36:11', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student1818@lums.edu.pk' OR phone = '37629147514')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student1818@lums.edu.pk', '37629147514', 'Zainab Tahir', '3cc6df0c3c372b9ae98aa527208677b5da82775889c30ed27464db5ba20b0c12', 'admin', '2024-01-10 02:29:00', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '01819@lums.edu.pk' OR phone = '31654730863')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('01819@lums.edu.pk', '31654730863', 'Arslan Chaudhry', 'da288d2dae3cba80c62d074963bf1b3c4b7c233b0c41985943888a7c6800e213', 'worker', '2024-05-10 16:50:49', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user1820@lums.edu.pk' OR phone = '37008575028')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user1820@lums.edu.pk', '37008575028', 'Jamil Hussain', 'd1b4d1ec2088a5eb474041c3cb9ba69f4388e6010f6f027faf088be569f6d7e9', 'student', '2024-05-07 22:06:04', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums1821@lums.edu.pk' OR phone = '32329825159')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums1821@lums.edu.pk', '32329825159', 'Aisha Qadir', '4a6f95e402fb7a506dd0fb20a2253c781501fddfcf1ee6815cdcdf6f6b5c4c5b', 'teacher', '2025-04-01 22:27:36', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '01822@lums.edu.pk' OR phone = '30373686997')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('01822@lums.edu.pk', '30373686997', 'Amna Aslam', 'bc8760a496be023693b5e326415c01006572dc508d1f0ee6c585c0aa3180626a', 'student', '2024-03-01 00:49:08', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums1823@lums.edu.pk' OR phone = '30827118326')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums1823@lums.edu.pk', '30827118326', 'Shaista Mahmood', '0753d2116e6c30a453c629d91efe68673d5e063686463c788f86a2064981e135', 'worker', '2025-07-12 15:53:30', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student1824@lums.edu.pk' OR phone = '34387168320')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student1824@lums.edu.pk', '34387168320', 'Aamir Tariq', '36c02941544e9ec63b236f894c5029e61331495de80d5383b2ca6f3d850bf63a', 'student', '2024-02-05 14:48:51', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user1825@lums.edu.pk' OR phone = '31593329323')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user1825@lums.edu.pk', '31593329323', 'Maryam Hassan', '9a8774d4d786108e6cc1ace51f958fe4c7ba0d55134b864f8636f7b6d688ce87', 'teacher', '2025-11-08 23:11:23', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums1826@lums.edu.pk' OR phone = '37318686763')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums1826@lums.edu.pk', '37318686763', 'Sadaf Butt', '5655a49cdc069e13c35b459843de36f3629f4fcb2505a2c9984e34034cfd946d', 'teacher', '2025-02-15 04:03:06', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '01827@lums.edu.pk' OR phone = '38681213286')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('01827@lums.edu.pk', '38681213286', 'Amna Hassan', '2de8a2f4e31f1d7e0d2beff26c0c868e0d8f5c869bdd2b23fc4e18c037a427a7', 'worker', '2025-03-08 09:43:12', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student1828@lums.edu.pk' OR phone = '32457811369')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student1828@lums.edu.pk', '32457811369', 'Nazia Ilyas', 'de0f6b8ce36410020cddf9127af83bfeb9e8e42c34a2e11bab94023fbe7b2f43', 'student', '2024-07-06 23:50:44', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums1829@lums.edu.pk' OR phone = '35911036903')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums1829@lums.edu.pk', '35911036903', 'Irfan Ali', '0103779f4dadd4866e25de60701bb0dd2a6af66335b329d000753337638e2735', NULL, '2025-10-24 19:16:35', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user1830@lums.edu.pk' OR phone = '31021315517')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user1830@lums.edu.pk', '31021315517', 'Usman Naqvi', 'a039f39ff748fb3ec088fe2a3eb1afb41ac3b7a259e82d60d928971e4fb8fa47', 'student', '2023-12-13 04:34:46', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums1831@lums.edu.pk' OR phone = '30067215442')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums1831@lums.edu.pk', '30067215442', 'Naseem Qureshi', 'c0089bb9fec49971100d5a2bf90a4b998076a622d35282ee9b560346c22714bd', 'admin', '2024-03-26 09:08:41', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '01832@lums.edu.pk' OR phone = '38421925772')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('01832@lums.edu.pk', '38421925772', 'Nadia Qureshi', 'b59dc864dc279f1410a5f157cf675fa4caf1efc3f0cf558edb21b6fc9cb89ac2', 'teacher', '2025-10-23 22:51:34', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user1833@lums.edu.pk' OR phone = '37259474098')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user1833@lums.edu.pk', '37259474098', 'Saleem Javed', 'c5b63bc1d5037a3cdcf421d8c56559f5935af158cc0b88081e586f62bf4433d8', 'admin', '2025-04-22 13:09:42', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums1834@lums.edu.pk' OR phone = '31553539229')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums1834@lums.edu.pk', '31553539229', 'Farooq Jamil', 'ed3ba318d9f23d5f1991b698425c4828572a5422b3f79d1fafccbd56875e9221', 'teacher', '2024-04-28 22:24:21', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '01835@lums.edu.pk' OR phone = '31816154172')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('01835@lums.edu.pk', '31816154172', 'Arslan Ayub', '852b021023b5d9a89af15c1842f3bc7a734ac72c4362df5e812299236ead2c34', 'student', '2025-03-27 08:45:23', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '01836@lums.edu.pk' OR phone = '39885763610')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('01836@lums.edu.pk', '39885763610', 'Alina Karim', 'b82ba30aafee07923706adf1c05d945b2fdddd7fa39d14f80edec38cf6299832', 'student', '2025-09-12 11:41:45', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '01837@lums.edu.pk' OR phone = '30081981153')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('01837@lums.edu.pk', '30081981153', 'Talha Bashir', '66bf404f197e8d67e8d2710deef4fd79cd6f84b0cf624cd250a3b9b382de85d2', NULL, '2025-08-07 17:28:09', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student1838@lums.edu.pk' OR phone = '38806934483')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student1838@lums.edu.pk', '38806934483', 'Farooq Iqbal', '277a58f53f53b21cc8c03d600cd55532f460fd68bd5e856d4962a3171b52eddf', 'teacher', '2025-02-09 23:58:27', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '01839@lums.edu.pk' OR phone = '36364350701')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('01839@lums.edu.pk', '36364350701', 'Naseem Hussain', 'b7767e377f5467b32a91133b8c9fa4067e75a018d47f973c708e8aa94d00b609', 'admin', '2024-02-05 23:14:18', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student1840@lums.edu.pk' OR phone = '34008970348')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student1840@lums.edu.pk', '34008970348', 'Farhan Abbas', '55827819560cf11819dc8a9c7f9d2ffe8c3a6d57e81b881e44e40c7d404cfd85', 'worker', '2025-10-04 03:02:59', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user1841@lums.edu.pk' OR phone = '34053331842')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user1841@lums.edu.pk', '34053331842', 'Shazia Malik', '4e1b39177f2c117241a01022252c097e7180c18c9098cc58f1dca8dfc2c1fe8f', 'worker', '2025-08-12 14:38:30', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user1842@lums.edu.pk' OR phone = '33512729872')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user1842@lums.edu.pk', '33512729872', 'Muhammad Masood', '25c60e85b0cabebe14a850134f63ed061854cf3d0ffeb91730fe01c8a06a6e91', 'admin', '2025-05-11 16:22:02', 1, '2025-08-28 17:03:44');
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums1843@lums.edu.pk' OR phone = '33490899922')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums1843@lums.edu.pk', '33490899922', 'Tahira Aslam', 'cd39e4e28afb2c25db4da1f841955baa7f504df71d8128986419d043ea6ffd09', 'teacher', '2024-12-27 08:26:45', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '01844@lums.edu.pk' OR phone = '39690927888')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('01844@lums.edu.pk', '39690927888', 'Tuba Rafiq', '69f9dbe42ed1f96182fa624a5b554e9c5fc7775467e47278b56fd5388dda7a92', 'student', '2025-05-31 18:14:01', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student1845@lums.edu.pk' OR phone = '34068465352')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student1845@lums.edu.pk', '34068465352', 'Saima Zia', 'ac7692b9c6977dc3b248f9973856bf1b051bdee458a12ece05c734b3d7e861d4', 'admin', '2025-03-05 10:26:35', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student1846@lums.edu.pk' OR phone = '33764248052')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student1846@lums.edu.pk', '33764248052', 'Muhammad Khan', 'c528ac8a626830e8910f996c2240fdd30c12668431d5d5140b5bfb0dc90dc6f5', 'teacher', '2024-12-02 11:45:25', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums1847@lums.edu.pk' OR phone = '38989642766')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums1847@lums.edu.pk', '38989642766', 'Hanif Akhtar', 'ee558bd7afdbbaf3f8d0a012f00bf3fc7418f5d5cdec0c544d3204c9e7844890', 'admin', '2024-05-15 12:37:10', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user1848@lums.edu.pk' OR phone = '30916116236')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user1848@lums.edu.pk', '30916116236', 'Noor Butt', 'cf7dc6ac772c49df96c444890266f6052dfe8ad7a4fb0b8587b32ac23b097c76', 'admin', '2024-11-07 00:24:23', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums1849@lums.edu.pk' OR phone = '34660916974')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums1849@lums.edu.pk', '34660916974', 'Muhammad Saeed', '1622e95390ed1bb61d011cac596479433c244809f6180c0cf837ce561e0c0d28', NULL, '2024-09-22 13:03:52', 1, '2025-07-31 05:32:16');
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums1850@lums.edu.pk' OR phone = '39898954243')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums1850@lums.edu.pk', '39898954243', 'Aamir Saeed', '36d29c91d8beb298e62e62120f813bad266f893445464e151654217c5b91e521', 'student', '2024-03-08 11:13:33', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums1851@lums.edu.pk' OR phone = '39725723438')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums1851@lums.edu.pk', '39725723438', 'Noor Saeed', 'e963bdba16cb0171d761dd217253865397c8178bab898d60d70b16ecfd7aa3e3', 'student', '2025-11-22 02:51:32', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user1852@lums.edu.pk' OR phone = '34315657174')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user1852@lums.edu.pk', '34315657174', 'Raza Hameed', 'ed7115ee93e0676bc25a82218739beb0363fabb7e2c0c48e4b7a70f6ce85db3f', NULL, '2025-02-10 06:33:47', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums1853@lums.edu.pk' OR phone = '35598812524')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums1853@lums.edu.pk', '35598812524', 'Ali Raza', '5cb18062b44a853696127fff5224185e7c9522c27fac8ad688676efb90fa7a25', 'admin', '2024-07-15 08:50:22', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student1854@lums.edu.pk' OR phone = '30085121728')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student1854@lums.edu.pk', '30085121728', 'Omar Tahir', 'f1c8976c1f6477fd907470d64a7e5fe6e0a897bffb9489f0ac5be8b5c6acfd4d', 'worker', '2024-06-06 10:57:36', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '01855@lums.edu.pk' OR phone = '30187280102')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('01855@lums.edu.pk', '30187280102', 'Parveen Shah', '6f9a4abd5a65ad58bae959c7e839298a9aba55c25714ea2ae3b5d094911843be', NULL, '2024-02-09 22:33:48', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums1856@lums.edu.pk' OR phone = '33685750387')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums1856@lums.edu.pk', '33685750387', 'Sami Hassan', '1f975fdafe689012b932c3ae2e0041ceeb348bf90861abf9aa1c371a3cd5a4bd', 'teacher', '2024-09-01 15:51:42', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums1857@lums.edu.pk' OR phone = '30053105922')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums1857@lums.edu.pk', '30053105922', 'Aamir Tahir', '7c4165e66e512be0a3b9dbdacd1d8590f462016335622cf277aaaca476c0b88b', 'student', '2025-05-23 23:47:38', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '01858@lums.edu.pk' OR phone = '31692727987')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('01858@lums.edu.pk', '31692727987', 'Yusuf Shah', '505a4904169e3f3674d87e61d2805725878b54b742c34b0a9178724359ac0679', 'student', '2024-07-28 00:55:19', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student1859@lums.edu.pk' OR phone = '34482261435')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student1859@lums.edu.pk', '34482261435', 'Sara Siddiqui', '3ffe954a83f692e3d01cffa6184d579256773493aeeca9333baeab470cb1183b', 'admin', '2025-05-19 18:03:15', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums1860@lums.edu.pk' OR phone = '37983411321')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums1860@lums.edu.pk', '37983411321', 'Raza Akhtar', '589cc8df0c889ea382642853acfbe75ec3cb91bb3d9afdc9ddcf7144135f810e', 'teacher', '2024-01-31 10:11:15', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student1861@lums.edu.pk' OR phone = '31215744655')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student1861@lums.edu.pk', '31215744655', 'Hamza Ghani', '05473c2eaf8ef72e225271db76ab9f38168995b6b019c25d64e43e1c0290486d', 'admin', '2024-01-02 10:02:49', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user1862@lums.edu.pk' OR phone = '36902064673')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user1862@lums.edu.pk', '36902064673', 'Amna Zia', '16a41b396b7747597a8b8b5911e0e174501dd6797cbd55e5c2554cc8f95406ce', 'student', '2025-03-06 23:47:47', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '01863@lums.edu.pk' OR phone = '31647992175')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('01863@lums.edu.pk', '31647992175', 'Nadia Qureshi', 'c2ef9000dc644e87b7a6d0377a9f914bbadfbe8a97504e4bd4d2a1fb8f536ffd', 'worker', '2024-06-26 19:01:09', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student1864@lums.edu.pk' OR phone = '36098422391')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student1864@lums.edu.pk', '36098422391', 'Faisal Karim', '29cfd41b3346580295c3b211418a6ef5773cc28729ea05a251fc8f4ddf004eb1', 'admin', '2023-12-15 16:08:26', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student1865@lums.edu.pk' OR phone = '37087535045')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student1865@lums.edu.pk', '37087535045', 'Shafiq Karim', '3344576beecee6362dcebb60f5643f1e72f29bbec26e4871f11b4a6b08d863d7', NULL, '2024-03-29 15:30:28', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums1866@lums.edu.pk' OR phone = '38081842384')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums1866@lums.edu.pk', '38081842384', 'Faisal Rafiq', '6ab6e5ddc98df6fbb975e880b8cb7638ce2ec190ad5ed7dbe818834b22b6a2c3', 'student', '2024-09-05 02:57:38', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user1867@lums.edu.pk' OR phone = '33945097223')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user1867@lums.edu.pk', '33945097223', 'Naseem Umar', 'ac1d6484fdd956f4ef2ae446ae79b2f5f7d2b498df2a23007c9efb96f77a390c', NULL, '2024-08-12 21:48:26', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user1868@lums.edu.pk' OR phone = '36794945537')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user1868@lums.edu.pk', '36794945537', 'Muhammad Chaudhry', '0169c3dd6d76509392b0a3fb1eaa7079fd53521f813787f7a9802fef2d9e3727', 'student', '2025-01-05 20:49:34', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user1869@lums.edu.pk' OR phone = '35069843018')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user1869@lums.edu.pk', '35069843018', 'Farooq Akhtar', 'abf72d83df66cc3842ea42ff5eb1904966d965092f4eb077b6694b0ff5461bb6', 'admin', '2025-09-01 00:20:16', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student1870@lums.edu.pk' OR phone = '36647268928')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student1870@lums.edu.pk', '36647268928', 'Majid Bashir', '2b230028448f8828e4b9366bfbb4cdd51c7eccbd1a3c4f3e93e8731bf3463fa3', 'teacher', '2025-05-18 07:35:02', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student1871@lums.edu.pk' OR phone = '37121833427')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student1871@lums.edu.pk', '37121833427', 'Rubina Qadir', 'c355cf0d850aa602f65c381a9d05bb746b930e13dbfef280bb7c035746aeab78', 'admin', '2025-06-27 07:41:35', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '01872@lums.edu.pk' OR phone = '35342202834')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('01872@lums.edu.pk', '35342202834', 'Yusuf Hassan', 'a5cf941b418c846db7bf0cb5a2eac3f63bfec8001d31f348d39a8c0de27cf7df', 'admin', '2024-06-24 16:07:42', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '01873@lums.edu.pk' OR phone = '34770058248')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('01873@lums.edu.pk', '34770058248', 'Riffat Siddiqui', '6f30992db1e655d8f8c0b80868b33ce8c51aad2020fae30f66ebc96cbde740b3', 'admin', '2025-01-09 16:47:42', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums1874@lums.edu.pk' OR phone = '34637309775')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums1874@lums.edu.pk', '34637309775', 'Rafiq Latif', 'a985a85ceb10648e9c2defcfb563018ee660fd85e5eccb39d2bdb5be6f3e1edf', 'teacher', '2024-04-21 22:53:47', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user1875@lums.edu.pk' OR phone = '37665264653')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user1875@lums.edu.pk', '37665264653', 'Zahid Qadir', '89125fada87f75a5457f1938f0f211c3290ed41d94aacb261b559c811ca708db', 'worker', '2025-05-14 22:44:44', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums1876@lums.edu.pk' OR phone = '33145932470')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums1876@lums.edu.pk', '33145932470', 'Rabia Hussain', '922efd845f45dc3c2e1866ec0bbbb3e6ed4febdd3339fcaf268893afd2a21c0b', 'admin', '2025-09-21 20:04:11', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '01877@lums.edu.pk' OR phone = '36906908729')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('01877@lums.edu.pk', '36906908729', 'Raza Khan', '1f1ae1beb1b172c3fcd560792e0764e683dae217cf0ee6e4244459be55c47fc0', 'student', '2024-02-03 16:23:27', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '01878@lums.edu.pk' OR phone = '33619603001')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('01878@lums.edu.pk', '33619603001', 'Iqra Qadir', 'ff28f000a34a0f1c6c2e2384b719f909ae8dfc8713fd934dbc994d89ca88ce73', 'worker', '2024-04-05 05:01:14', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student1879@lums.edu.pk' OR phone = '33018114389')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student1879@lums.edu.pk', '33018114389', 'Talha Shah', '7325a24a2b7e65525c03ee0466ae4a7f66fd852c7eb543b208080632c3f58b52', 'teacher', '2025-05-09 03:38:36', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user1880@lums.edu.pk' OR phone = '33096407596')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user1880@lums.edu.pk', '33096407596', 'Fatima Anwar', '5422959ec209b4ada96fc53f4de4860a2d7920ff6d4c1455b37a700cffcda7d6', 'student', '2025-09-09 00:47:46', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student1881@lums.edu.pk' OR phone = '39205145015')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student1881@lums.edu.pk', '39205145015', 'Ibrahim Abbas', '574b92b3fd7b1bb9e5ebdea70d47e72da4ff1b923a267c50c9b72a1fc7038cb6', 'teacher', '2025-09-15 17:12:19', 1, '2025-11-22 21:58:28');
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student1882@lums.edu.pk' OR phone = '36109135480')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student1882@lums.edu.pk', '36109135480', 'Muhammad Rafiq', '1a6c086c3ddbf895834f3860c5f5e736a3602e780f848087307139e2773e7db8', 'teacher', '2025-03-21 07:04:57', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student1883@lums.edu.pk' OR phone = '39311934676')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student1883@lums.edu.pk', '39311934676', 'Talha Qadir', '1af3b8f0fa65b584d847bc667370537f174f5787573ea4258e814491b66f2d73', NULL, '2025-03-05 05:45:31', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums1884@lums.edu.pk' OR phone = '34859091555')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums1884@lums.edu.pk', '34859091555', 'Abdullah Ali', '507f4fef6d0b133ed878b786c7b598f2eebc206a86460b10738c2b97d9177bcf', 'admin', '2024-06-10 09:46:32', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user1885@lums.edu.pk' OR phone = '39208695057')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user1885@lums.edu.pk', '39208695057', 'Zahid Ali', '90d753baaf2cd31478c3e5e11de3f67c77cb9232edebdaa69bb3b380084ef49c', 'student', '2025-09-15 18:21:22', 1, '2025-10-10 12:07:29');
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student1886@lums.edu.pk' OR phone = '36056849606')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student1886@lums.edu.pk', '36056849606', 'Humaira Akhtar', '04b23151e81ce0ddc50bde80f474c3208576b81ee9c8d15a1ed681e30c0c2e2f', 'worker', '2024-12-22 13:23:04', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student1887@lums.edu.pk' OR phone = '35786527666')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student1887@lums.edu.pk', '35786527666', 'Rafiq Hassan', '5c6ea2612aca04378454a7e9091d1ffd28ac8b4639e55c09fc0a030e2dcb7df5', NULL, '2024-12-15 03:00:50', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student1888@lums.edu.pk' OR phone = '37344037733')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student1888@lums.edu.pk', '37344037733', 'Naveed Nadeem', '99ceacf8d5af96b5631303169938ea47120a63837ad25747f5cace6017c6a00b', 'admin', '2025-02-19 04:50:26', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums1889@lums.edu.pk' OR phone = '33640854060')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums1889@lums.edu.pk', '33640854060', 'Hanif Nadeem', 'eb27a0573de22faed67457c850a7d16127b695f28c0ba1ba59a43d1c7e0ae378', 'admin', '2025-10-14 23:21:43', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums1890@lums.edu.pk' OR phone = '30580065004')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums1890@lums.edu.pk', '30580065004', 'Rizwan Qadir', '2479fa7553af3a17b804f61cda239be144247096e605a4836b6ac6245052392b', 'teacher', '2024-06-29 01:07:59', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user1891@lums.edu.pk' OR phone = '38684148535')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user1891@lums.edu.pk', '38684148535', 'Hanif Ilyas', '0f4aefd70e4a235086d44f409d0b1c6fab26de0b7b47917583bb4d84de39241a', 'student', '2025-03-12 00:02:03', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student1892@lums.edu.pk' OR phone = '30403778538')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student1892@lums.edu.pk', '30403778538', 'Tahira Hussain', '3d9c4867c2cbf5e351ade1aa511b504c735d96cd3ab7adb5b5353123ebe02556', 'teacher', '2024-01-11 05:04:41', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user1893@lums.edu.pk' OR phone = '39973911452')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user1893@lums.edu.pk', '39973911452', 'Humaira Hussain', 'f2e15d9331096cc38af72afc9624a0f6c1a60e9e48680b986ca2f3cecddfc7fc', 'admin', '2024-05-02 05:57:45', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums1894@lums.edu.pk' OR phone = '36623957128')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums1894@lums.edu.pk', '36623957128', 'Uzma Tariq', '9486b952c231671ade899a14d50cf97855f5d9a9d021d6f053b9eca07e1c09fa', 'worker', '2024-04-24 05:54:50', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student1895@lums.edu.pk' OR phone = '31160079570')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student1895@lums.edu.pk', '31160079570', 'Kamran Ahmed', '88f19e1615654b9178dc195fc075d323236726ae04dd721239b5237716872f1e', NULL, '2024-01-19 13:48:32', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student1896@lums.edu.pk' OR phone = '32086518516')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student1896@lums.edu.pk', '32086518516', 'Akram Yousaf', '551c8585617c2c14bf3402c8d8d238c991a140a3f85b39e98bb81106419d5ce3', 'teacher', '2025-02-21 07:24:36', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums1897@lums.edu.pk' OR phone = '34185904242')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums1897@lums.edu.pk', '34185904242', 'Wasim Butt', '5a5236dc8e636859a4b3566df4f1d6139455f228b978a5058ac75a19406f5662', 'worker', '2025-03-08 18:12:57', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student1898@lums.edu.pk' OR phone = '37914330272')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student1898@lums.edu.pk', '37914330272', 'Zahid Aziz', '1acf55b1d0b8e01db178c824002dba71061c9f776e24a56ff5da20a6893facc5', 'student', '2025-09-28 02:36:08', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums1899@lums.edu.pk' OR phone = '33272099855')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums1899@lums.edu.pk', '33272099855', 'Jamil Nadeem', '2655513ceb4ea6a95c68c2f659df89b51ebcc6ca44ec2bb02343a01698264c56', 'worker', '2024-10-10 14:13:10', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student1900@lums.edu.pk' OR phone = '34279264476')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student1900@lums.edu.pk', '34279264476', 'Raza Zaidi', 'f92f17b0903deb89ccc288b2e20a169b5a51c713a9be9abb0755c4c77a9affa1', 'admin', '2025-06-13 17:11:40', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums1901@lums.edu.pk' OR phone = '35048985451')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums1901@lums.edu.pk', '35048985451', 'Talha Sheikh', '5cccbb72578ed3248d454aebb28f2ed9e6f75adf605cee4a45c10a313a709af6', 'admin', '2024-10-26 13:34:57', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums1902@lums.edu.pk' OR phone = '37806837100')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums1902@lums.edu.pk', '37806837100', 'Sumera Naqvi', 'b68eb697eab5671077925f307f127d0c3344a5a04764fe3925b12e83291fc2fa', 'admin', '2025-08-30 04:33:19', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums1903@lums.edu.pk' OR phone = '37784035199')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums1903@lums.edu.pk', '37784035199', 'Kashif Raza', '7833cbd584f3b38cac3f1f2ccb8d216a5708dbda0e3f9ed38849761233e6c132', 'teacher', '2024-07-26 14:58:56', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student1904@lums.edu.pk' OR phone = '30213608533')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student1904@lums.edu.pk', '30213608533', 'Ali Akbar', '762e36ad19818213fb95cc83df64b519ddf58b2d270572e69d2cac2500c5c91c', 'worker', '2025-04-20 15:41:38', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums1905@lums.edu.pk' OR phone = '31187454131')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums1905@lums.edu.pk', '31187454131', 'Sara Qadir', '0180f85d7235b4779c63a156c86ebb8f79923d1e87ea419c29b218afd7c46a81', NULL, '2025-09-08 00:18:08', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user1906@lums.edu.pk' OR phone = '36575833563')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user1906@lums.edu.pk', '36575833563', 'Nadeem Haider', '1bc84a0f33c81b8494a6b086607ed14265fc3ef2ef39e47cf2ec0c74df8fab01', 'teacher', '2025-03-03 09:06:26', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '01907@lums.edu.pk' OR phone = '37470304362')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('01907@lums.edu.pk', '37470304362', 'Naveed Iqbal', '7c8b1983d1f7a0f31f665866378253da33eae43d49b620016380fbdea123f1d4', 'admin', '2025-08-27 06:13:02', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '01908@lums.edu.pk' OR phone = '37755389870')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('01908@lums.edu.pk', '37755389870', 'Aamir Ilyas', 'b813ec47576803534240562a3526fdd00f94ee761a213cc4267ce67ba5cf7a08', NULL, '2024-01-04 17:59:59', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user1909@lums.edu.pk' OR phone = '31844701328')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user1909@lums.edu.pk', '31844701328', 'Sami Nadeem', '8a2b935c6836705797d08ac376a3bb59113c5024a8f589b108b040cd4a1128f4', 'teacher', '2025-03-08 08:03:41', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums1910@lums.edu.pk' OR phone = '31666173005')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums1910@lums.edu.pk', '31666173005', 'Sana Ghani', '8dc0ffc45ce2945d0e7a84badf1b404a25e89f6acfefc42733de3ff6cfc4081c', 'teacher', '2024-04-04 16:38:12', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student1911@lums.edu.pk' OR phone = '36672024737')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student1911@lums.edu.pk', '36672024737', 'Hassan Masood', 'ce001596a2a25e699cd59e6ad69eebfdffe57075a11babef4130ad60b001fab8', 'worker', '2024-11-15 23:14:55', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student1912@lums.edu.pk' OR phone = '33028460869')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student1912@lums.edu.pk', '33028460869', 'Farooq Khan', 'f6770e93bb496abf4e45c72299f02fe7655b00fbf82b810fd9f7bf4788889fe2', 'worker', '2024-10-10 16:31:15', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '01913@lums.edu.pk' OR phone = '31065410758')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('01913@lums.edu.pk', '31065410758', 'Parveen Waheed', 'effa5a1d2c7cdb40ffd39ccf75dc28a2b43d2754d628df2bcf2c092a480ba290', 'teacher', '2024-04-11 10:05:48', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '01914@lums.edu.pk' OR phone = '38399774486')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('01914@lums.edu.pk', '38399774486', 'Shahzad Bashir', '139d97be8f1360d835e2ab16b5bdf689dcae8c6a3c2069cbc766b4fb3b27267b', 'worker', '2024-02-25 14:31:31', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums1915@lums.edu.pk' OR phone = '33833357293')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums1915@lums.edu.pk', '33833357293', 'Nimra Sadiq', '239dd307e3795d4cf7f153b96ee8b7fade32f12699fdd99a307ac96cca2db70c', NULL, '2025-09-07 21:00:42', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student1916@lums.edu.pk' OR phone = '32846033922')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student1916@lums.edu.pk', '32846033922', 'Shahzad Haider', '5c985afcd1410e07720c2179d0d005a7d6b2447d9c482d8590a9fd81b1a3dbfd', 'admin', '2024-12-08 02:11:36', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student1917@lums.edu.pk' OR phone = '39197728865')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student1917@lums.edu.pk', '39197728865', 'Naseem Ghani', '839276c9d5eea41c7a2d0d1d8a929533612272eb33f9f4d0582ec7c1b3135d76', 'worker', '2024-02-09 22:43:36', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums1918@lums.edu.pk' OR phone = '35626561775')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums1918@lums.edu.pk', '35626561775', 'Ahmed Mirza', 'ccadf3cd0d88f83834a571977f5dc61100b0088aaa44764ef345ac122eb3039d', 'worker', '2025-06-04 13:49:10', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user1919@lums.edu.pk' OR phone = '30719018022')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user1919@lums.edu.pk', '30719018022', 'Mahnoor Jamil', 'f44e2b47889a014a99028d01f89091d6d8eaf195eea6678676efb769ed41e77b', 'worker', '2024-12-16 12:32:52', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user1920@lums.edu.pk' OR phone = '39393188135')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user1920@lums.edu.pk', '39393188135', 'Hassan Nadeem', 'a9c350d4186f445042cb154db9c22394ac93a68ce388a9caed75827d4060855a', 'teacher', '2024-09-01 04:14:05', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user1921@lums.edu.pk' OR phone = '35771760344')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user1921@lums.edu.pk', '35771760344', 'Zainab Hussain', 'f398d2eab2ca605c6d950a0be2cdc8ea9c9fca0506480e058acdb939c9dd9422', 'teacher', '2025-03-04 23:46:53', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums1922@lums.edu.pk' OR phone = '33486461792')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums1922@lums.edu.pk', '33486461792', 'Aisha Abbas', '90e3b2d8357ebe220e5bbe3dbd14b24cc1d824eb87911b1a215ca36843308ae5', 'teacher', '2024-01-27 15:31:45', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user1923@lums.edu.pk' OR phone = '33340227299')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user1923@lums.edu.pk', '33340227299', 'Ahmed Shah', '064eccb91c0b5d4fabdac780cef26b4452aebd71643ec1f9e2e89d11f9e3dbd5', NULL, '2025-01-22 14:41:42', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '01924@lums.edu.pk' OR phone = '38701538488')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('01924@lums.edu.pk', '38701538488', 'Shafiq Qadir', '7c66e0c306e51fe844897a89ddf4aec9129589134be13d91a10e78f5c652e3a3', 'worker', '2025-04-15 18:29:14', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student1925@lums.edu.pk' OR phone = '31333460695')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student1925@lums.edu.pk', '31333460695', 'Sadaf Waseem', '49b13e41844bddd0f5e7151a23bd71ba7d3fa8b8ee2fb8dd931648dca0b77d75', NULL, '2025-04-04 18:01:12', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '01926@lums.edu.pk' OR phone = '30256922535')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('01926@lums.edu.pk', '30256922535', 'Raza Javed', '570c266e4e6894735aba8b82970a2d853221627412c940fe6784c788390a8320', 'worker', '2024-01-05 06:08:42', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user1927@lums.edu.pk' OR phone = '35575421556')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user1927@lums.edu.pk', '35575421556', 'Zain Sadiq', 'c33fd38d0f644408f7072c773ffb655d9e67d0b1f202ee3880cf567489f1a0ab', 'teacher', '2024-10-23 20:04:32', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user1928@lums.edu.pk' OR phone = '30142384941')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user1928@lums.edu.pk', '30142384941', 'Majid Tahir', 'aa39a3d8ccdfa99b95ace51ae73564ed2b9a76a085936b327f952680a91e0c65', 'teacher', '2023-11-24 06:35:19', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student1929@lums.edu.pk' OR phone = '33903972627')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student1929@lums.edu.pk', '33903972627', 'Farzana Ghani', '0e0b6ddfa2cd254727cd23931287f9f6c2a7f6e935365d4aaf4a91c8023b2f1c', 'teacher', '2025-11-05 14:43:59', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums1930@lums.edu.pk' OR phone = '39933468329')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums1930@lums.edu.pk', '39933468329', 'Alina Rafiq', '794e3f0e6650c859997a73f3a963bf95baab536bb2b86cc66fb87e2a2d5604b4', NULL, '2024-01-27 18:20:38', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '01931@lums.edu.pk' OR phone = '34724284955')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('01931@lums.edu.pk', '34724284955', 'Shahid Yousaf', '20cb7fb3c55025dc998b71b969ecc96819896bdc9729656c2e58d6d66de704af', 'admin', '2023-12-13 13:26:23', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student1932@lums.edu.pk' OR phone = '31950518471')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student1932@lums.edu.pk', '31950518471', 'Nimra Bashir', 'be783656ec30ac881cd5133df9483da53eac7223b286b5740c1b2e20b5b9cf23', 'teacher', '2024-10-13 00:10:43', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user1933@lums.edu.pk' OR phone = '37688249230')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user1933@lums.edu.pk', '37688249230', 'Sami Nadeem', 'caecc172b40c29d8c8905c8393e20d5b38c8c4aa3d40ea2f15ae3d3009234c02', 'worker', '2024-05-19 23:14:02', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student1934@lums.edu.pk' OR phone = '38165228803')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student1934@lums.edu.pk', '38165228803', 'Rafiq Waheed', '14aa7f85a3fd4e9a705dfe88565e64965ac3e0854a3e794e663d5593e4d46cd8', 'worker', '2024-12-03 15:18:30', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums1935@lums.edu.pk' OR phone = '38355836986')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums1935@lums.edu.pk', '38355836986', 'Fahad Ali', '6a384ec53a5ec872fc7c753f17d5295ec3ed8e49821f30150c6d3a9480144917', 'teacher', '2023-12-17 03:38:26', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user1936@lums.edu.pk' OR phone = '32456843831')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user1936@lums.edu.pk', '32456843831', 'Bilal Tahir', '46a2306677240703a8cbf35690694ce80d700b1dbdae89e4b9d76ff24029a8ea', 'teacher', '2025-07-25 16:48:35', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user1937@lums.edu.pk' OR phone = '31997420532')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user1937@lums.edu.pk', '31997420532', 'Aamir Malik', '10dffa5a5982c77e034acdd67e2b97bd09d101d7f9491baba50a2a28905eab1e', NULL, '2024-07-03 19:48:53', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user1938@lums.edu.pk' OR phone = '38607484192')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user1938@lums.edu.pk', '38607484192', 'Kashif Latif', 'bf4ea57c31af393f4ef721d9c7a29e97d2c1ea2ab5c1eadc056f6fe899d79c47', 'teacher', '2025-06-08 18:34:27', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student1939@lums.edu.pk' OR phone = '36489560518')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student1939@lums.edu.pk', '36489560518', 'Ayesha Umar', 'db54427b419398f2636793d6a9408994a6353e0d23a25ce2f41ac6bb1ecf0071', 'admin', '2024-09-12 14:13:15', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '01940@lums.edu.pk' OR phone = '37983796086')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('01940@lums.edu.pk', '37983796086', 'Sidra Butt', '0b4b7c95766b3a10016e654b964a7369ce509a33b4a98ffb0b86c785aa44eb14', 'admin', '2024-04-07 17:47:47', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums1941@lums.edu.pk' OR phone = '37708799774')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums1941@lums.edu.pk', '37708799774', 'Wasim Rafiq', '117e64fe786ad6f2dca855d82d53324777533a63804e19757da98adae98f3464', 'worker', '2024-08-29 17:20:35', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '01942@lums.edu.pk' OR phone = '35750384123')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('01942@lums.edu.pk', '35750384123', 'Rabia Sheikh', '40dbfa29235765b20636225ed95a1f74e6896988d9ca6a1307f550eb63ef8de0', 'admin', '2024-12-29 02:52:47', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '01943@lums.edu.pk' OR phone = '38492651655')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('01943@lums.edu.pk', '38492651655', 'Tariq Zia', 'a868c59a031b68c46f865ddc5b244e546c7ecee240b2ac134d683f522d1a9aaa', 'worker', '2024-07-15 14:16:00', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student1944@lums.edu.pk' OR phone = '34204839016')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student1944@lums.edu.pk', '34204839016', 'Naseem Umar', '4c4fa094a668251ea296cf36c2adee63f0ea7e84fa81f3ec88f90441e4d525be', 'admin', '2024-01-10 07:12:03', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '01945@lums.edu.pk' OR phone = '32445034218')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('01945@lums.edu.pk', '32445034218', 'Shahzad Haider', 'cfc956baeedc4e9f9d5402e006bbfb6440b775a7a1552f471c22a7bf30ba6cc4', NULL, '2025-11-17 21:40:16', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '01946@lums.edu.pk' OR phone = '39335244973')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('01946@lums.edu.pk', '39335244973', 'Ahmed Malik', 'a8411de7ac1325da03b837f66f1c7f111d84742a1ef89a80e592b2c508b89c25', 'admin', '2024-03-29 18:38:33', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user1947@lums.edu.pk' OR phone = '31722832822')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user1947@lums.edu.pk', '31722832822', 'Tanvir Tariq', '0f4ff07b766596012afc2080fba3d8bc37bc1068f8a2ed7b4b09509438496429', NULL, '2025-05-02 05:50:32', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user1948@lums.edu.pk' OR phone = '39006013310')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user1948@lums.edu.pk', '39006013310', 'Akram Khan', '914c4ecb9370dca58a52867cb37c368cfba14decefcbcb9a70614d3c6e036cd2', 'teacher', '2024-03-02 02:44:26', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '01949@lums.edu.pk' OR phone = '36111909703')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('01949@lums.edu.pk', '36111909703', 'Shama Tahir', '5ef70359af641cd5612625771e2461b17e469abee007481eaddf3bc783b3fb13', 'admin', '2025-08-09 22:31:15', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums1950@lums.edu.pk' OR phone = '32568170305')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums1950@lums.edu.pk', '32568170305', 'Maryam Hameed', '9337b8d01e0c98fc103e3f6aa56d293734a1dc6e4421f68be8b07127c1949391', NULL, '2025-07-22 07:08:25', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student1951@lums.edu.pk' OR phone = '38065383334')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student1951@lums.edu.pk', '38065383334', 'Bushra Latif', 'ff6c4e3236b5a48a6362ba66f7882c06b960f300370b5d7e1d3df74ea830de31', 'worker', '2025-05-10 23:51:14', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user1952@lums.edu.pk' OR phone = '35582593981')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user1952@lums.edu.pk', '35582593981', 'Shama Qureshi', 'a36a45d443776ebf6ea3bf8863cc742dc95993f806a55c65fff93d567c722aa0', 'worker', '2024-01-18 21:46:12', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user1953@lums.edu.pk' OR phone = '34923047629')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user1953@lums.edu.pk', '34923047629', 'Sumera Mahmood', 'c2b127053998828ec95b2e24d6d1bb1be82b9f41cf8feb1dcfbb7c568bd3e85e', 'worker', '2024-10-07 04:54:51', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user1954@lums.edu.pk' OR phone = '30497266297')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user1954@lums.edu.pk', '30497266297', 'Tahira Umar', 'd691ee6a44b70906a1e329f10e4d4475eef52c617eddeda273adffadf28ea2fa', 'student', '2025-07-30 14:59:28', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums1955@lums.edu.pk' OR phone = '39925837797')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums1955@lums.edu.pk', '39925837797', 'Yusuf Ahmed', '6576ef9a88e6050292d7d37ba6a9487a5c41a17b272fc4dacd8aaf5f2362c6be', 'teacher', '2025-08-02 17:24:13', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user1956@lums.edu.pk' OR phone = '35232742963')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user1956@lums.edu.pk', '35232742963', 'Kashif Ahmed', '821411cbc7d76881d2a9a99cfcdcc7c9dca82bda14f03cecaec5c52a55850470', 'teacher', '2025-05-10 01:16:58', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums1957@lums.edu.pk' OR phone = '34942107707')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums1957@lums.edu.pk', '34942107707', 'Jamil Aslam', 'f03e2425b8c1d5f061650ddf5147673263b65cca731e36ecb096d7f12d3f7484', NULL, '2024-12-04 12:16:52', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user1958@lums.edu.pk' OR phone = '35910597265')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user1958@lums.edu.pk', '35910597265', 'Raza Akbar', '0d0a0f40d3cdc23a31edd3bd6391ef725a4b24b5135e769e45cba8eaa15cde45', 'admin', '2025-06-13 18:45:14', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student1959@lums.edu.pk' OR phone = '32700561049')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student1959@lums.edu.pk', '32700561049', 'Parveen Ahmed', '75629ae5cf107d15d3bf7a4b9dc0cbdc0ae97e85c5282afe90845364d3d2e6ab', NULL, '2024-04-11 00:40:41', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '01960@lums.edu.pk' OR phone = '34954012611')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('01960@lums.edu.pk', '34954012611', 'Yasmin Latif', 'eafd10cfb1b8387ccc1c7cc219e15cc8eb1ea3ae7719b2c8c4d9a957ea59cc1d', 'admin', '2023-12-02 23:05:20', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student1961@lums.edu.pk' OR phone = '35736380593')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student1961@lums.edu.pk', '35736380593', 'Maryam Yousaf', '25984698853c238ae7f3f9a4af73af3376826f46fea962b9d0eebd897c18243f', 'student', '2023-12-31 09:19:06', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student1962@lums.edu.pk' OR phone = '39822069409')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student1962@lums.edu.pk', '39822069409', 'Yusuf Chaudhry', '7bfffc3b108f10b9df9486fbd95f03f0a56013c2530cd381b41729c94a355a1d', 'student', '2024-09-05 16:58:39', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums1963@lums.edu.pk' OR phone = '32558162370')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums1963@lums.edu.pk', '32558162370', 'Naila Chaudhry', '37d93d7534799caa0bc94fa240d16356e71a41d034cd6f16211d2270dd0e9601', 'student', '2025-10-20 07:19:38', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student1964@lums.edu.pk' OR phone = '34304582501')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student1964@lums.edu.pk', '34304582501', 'Maria Farooq', 'da13933bca19ee7562b410d294d1a3ea242b5a915ffc91aa984043417b4d797e', 'teacher', '2025-06-20 07:01:10', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums1965@lums.edu.pk' OR phone = '35008692058')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums1965@lums.edu.pk', '35008692058', 'Rubina Qureshi', '3ccfa1a87ff4b7c09766d76c113efc2aa719295b676583b3865f7c72a4d10e98', 'admin', '2025-01-11 00:31:41', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student1966@lums.edu.pk' OR phone = '37010789909')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student1966@lums.edu.pk', '37010789909', 'Waqas Mahmood', 'add94fe5d2ca42167acd78e85e48411f419146530ab9985775a02718b6059e21', 'worker', '2024-04-21 16:36:36', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums1967@lums.edu.pk' OR phone = '30434360091')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums1967@lums.edu.pk', '30434360091', 'Arshad Nadeem', 'fdc5d83964200e204d516bf73e8065123a721afab4a0858397e31b24481ad69f', 'teacher', '2024-03-25 20:00:11', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user1968@lums.edu.pk' OR phone = '34624139340')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user1968@lums.edu.pk', '34624139340', 'Sumera Bashir', '2d4971271f3ace451cbe9441914f10e8d12e62d2f7c1d4995378ec64071703cd', 'admin', '2025-01-04 13:32:58', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user1969@lums.edu.pk' OR phone = '32525437064')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user1969@lums.edu.pk', '32525437064', 'Rabia Haider', 'db6939aa52389ef1f010405fab99bb0b33fc426e2e854bd53d46444fd28b01f9', 'worker', '2024-03-09 17:23:35', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '01970@lums.edu.pk' OR phone = '30038171359')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('01970@lums.edu.pk', '30038171359', 'Kashif Rafiq', 'b800d29c4ef650d42a0124835301421e933f15e265a7bf3313353eef2d392b7b', 'student', '2025-07-28 23:23:49', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums1971@lums.edu.pk' OR phone = '39227687374')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums1971@lums.edu.pk', '39227687374', 'Imran Tahir', '50c85501c7756acda7243d28ef2fce4571e2eb0676953530fe8dc07e96eb3e4e', 'student', '2024-06-12 13:14:20', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user1972@lums.edu.pk' OR phone = '31313013736')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user1972@lums.edu.pk', '31313013736', 'Ayesha Zia', '850d75fecd75db6330fdca61d8584af27428e57071959e82b472ea067e50c56d', 'student', '2024-05-02 06:19:22', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '01973@lums.edu.pk' OR phone = '30677551825')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('01973@lums.edu.pk', '30677551825', 'Azhar Chaudhry', '38a455d129130581d1e49d89261e7b7f6179cb0feb981a4a6b2aadf872f4b798', 'admin', '2024-03-15 17:15:35', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums1974@lums.edu.pk' OR phone = '35237273511')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums1974@lums.edu.pk', '35237273511', 'Fahad Karim', 'f88ede4f4cd3a09e1f58ef4fcda76db0ff007cf1074161520ea79408d1cc7420', 'worker', '2024-04-25 11:49:02', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student1975@lums.edu.pk' OR phone = '36819876006')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student1975@lums.edu.pk', '36819876006', 'Akram Rafiq', '3c6bb51fc7fa5a80f217ad5625a4adf03d8244428e7f9387a97d4286190f6ed6', 'admin', '2024-03-19 06:04:51', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student1976@lums.edu.pk' OR phone = '34751103848')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student1976@lums.edu.pk', '34751103848', 'Saad Nadeem', 'e8f3fab2133821285afdf7b33dad60515a327d0558cadf826471f90f1c1161b4', NULL, '2024-02-17 23:13:43', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums1977@lums.edu.pk' OR phone = '33765888080')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums1977@lums.edu.pk', '33765888080', 'Nadia Haider', '012ff31b0e58c6aafc2d2bee04faa0da7e7b23051c1546ad66a101e7d0c53f09', 'admin', '2025-04-11 09:51:36', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student1978@lums.edu.pk' OR phone = '30317808946')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student1978@lums.edu.pk', '30317808946', 'Yusuf Mirza', 'f47141492bef3b2d447943f7071c8b84e8da9cabd94f1ef9f2d6bd75a41dba70', 'admin', '2025-11-16 11:18:24', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums1979@lums.edu.pk' OR phone = '37618385624')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums1979@lums.edu.pk', '37618385624', 'Anwar Aslam', 'd3631d2b0d1c6a95b92592d0102fa5cc4721eef20f3a70d9fce85cceacaf411e', 'teacher', '2024-04-15 00:58:59', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '01980@lums.edu.pk' OR phone = '34924532309')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('01980@lums.edu.pk', '34924532309', 'Kashif Farooq', 'bde6a33d3a1b594425107e89a9f98269b3b4455ee0c86896886eaab1b22e6522', 'worker', '2025-08-04 19:33:51', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user1981@lums.edu.pk' OR phone = '38003497909')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user1981@lums.edu.pk', '38003497909', 'Noor Akbar', '33ed7b226c3c4c8f59b119436a0e79717d29f524689b094c4d6304009a0d6cd8', 'student', '2024-03-21 06:17:13', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user1982@lums.edu.pk' OR phone = '32349323678')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user1982@lums.edu.pk', '32349323678', 'Iqra Zaidi', '3a17ca51ae6cf00becf11db235b8f90f62c2443f936b2a0a845a1c20e002c175', NULL, '2024-03-03 22:18:23', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user1983@lums.edu.pk' OR phone = '38731131571')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user1983@lums.edu.pk', '38731131571', 'Maria Ilyas', '09a0923e26413ffa8986b12a05b1f7926ef1ad4853774265cfe2d2447a935e88', 'worker', '2024-02-15 14:53:00', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '01984@lums.edu.pk' OR phone = '34552520620')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('01984@lums.edu.pk', '34552520620', 'Sumera Latif', 'cfcb2fff96bd874422f3ab932b7af9ead5001f4c2cb05be1e882fecd26854b04', 'worker', '2025-08-06 03:39:21', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user1985@lums.edu.pk' OR phone = '34316015745')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user1985@lums.edu.pk', '34316015745', 'Riffat Bashir', 'ce73d5db65e507fc261527c2bdc4fba8bab53c00492539dab0fddaf3c5d747f7', 'student', '2025-04-10 04:20:59', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user1986@lums.edu.pk' OR phone = '31919633205')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user1986@lums.edu.pk', '31919633205', 'Talha Tariq', '066547380f01be4a119512c9e02c2da4436361b98c22225f3071a5d452e9862a', 'student', '2025-09-13 18:18:17', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user1987@lums.edu.pk' OR phone = '37496795450')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user1987@lums.edu.pk', '37496795450', 'Tuba Javed', '1dac280d27408c4d055f3b34d99cfacc785c556deed6933f856c95151ee510e5', 'worker', '2024-11-04 16:24:05', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'user1988@lums.edu.pk' OR phone = '38759300364')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('user1988@lums.edu.pk', '38759300364', 'Shahzad Qadir', '217572a21f38a39bacdbb684d608e603883da4ce311bd46fea9a6f99a4a742a3', 'teacher', '2025-10-09 16:33:38', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student1989@lums.edu.pk' OR phone = '36780362542')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student1989@lums.edu.pk', '36780362542', 'Riffat Akbar', 'ae5add0bccffd8dd0799abd67f5cd6717ba9a3c702fa58bd87905604c292d04e', 'student', '2025-09-15 04:20:16', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums1990@lums.edu.pk' OR phone = '32837386209')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums1990@lums.edu.pk', '32837386209', 'Rizwan Siddiqui', '20a1ef48e3719b119fe9051416ac410a42b55e21d137a7dae73d6fce4d3b0922', 'worker', '2024-01-18 14:18:41', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '01991@lums.edu.pk' OR phone = '37955066947')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('01991@lums.edu.pk', '37955066947', 'Farzana Akbar', '96d577a44fba18c34ef62f419bcf54d194ff6d5b6cdc119e9a10bff580ed16e2', 'student', '2024-03-03 19:47:21', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums1992@lums.edu.pk' OR phone = '31353186612')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums1992@lums.edu.pk', '31353186612', 'Bilal Haider', 'abf3b737971b337c61c8becbf87d5166430a2a2c303b4dedf9f5ab67b287e940', 'teacher', '2024-03-27 15:55:22', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student1993@lums.edu.pk' OR phone = '35626700301')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student1993@lums.edu.pk', '35626700301', 'Shahid Rasheed', 'a0b5b16ae8b966950ea49b137d54985d5eb991ba5e6970bd8ab5d1e88e5f22e4', 'worker', '2025-02-19 13:40:35', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '01994@lums.edu.pk' OR phone = '36284589862')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('01994@lums.edu.pk', '36284589862', 'Qamar Tariq', 'f15b1a1db1f28fe07bcd0cc7d31424726ed9a9ecba5ce9c1878566c270d3c993', 'admin', '2024-04-10 22:54:20', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '01995@lums.edu.pk' OR phone = '36669627606')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('01995@lums.edu.pk', '36669627606', 'Salman Malik', '537c23f16573f33a2047bfc5dcaebf656d3159aea7ee592ed136b1e0a4b10562', NULL, '2024-12-18 06:39:09', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums1996@lums.edu.pk' OR phone = '34714695378')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums1996@lums.edu.pk', '34714695378', 'Rabia Karim', 'a2cc158ae671131fa8b1d2f1899ec1618057a6546190622e6bd29146385e2049', 'worker', '2024-02-09 15:34:31', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '01997@lums.edu.pk' OR phone = '31616598952')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('01997@lums.edu.pk', '31616598952', 'Zahid Akbar', '050449f24401f07d13f291e89b7d4f094bc6512bfc3c63c51599d0937743178e', 'worker', '2025-06-02 19:44:57', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'lums1998@lums.edu.pk' OR phone = '32288271570')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('lums1998@lums.edu.pk', '32288271570', 'Sana Tariq', '442676d83589fc642ba0f4af2a2b748fd99e58eeb59555fa0a8a4bda43251d21', 'worker', '2025-11-10 00:06:41', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = 'student1999@lums.edu.pk' OR phone = '34811183984')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('student1999@lums.edu.pk', '34811183984', 'Talha Mirza', 'f38ec74f004807bb39f4b2efcfdadc7e1e6091763a1f63a0c1ce1fca0e6d8cfd', 'student', '2024-10-03 02:13:01', 0, NULL);
END
IF NOT EXISTS (SELECT 1 FROM Users WHERE email = '02000@lums.edu.pk' OR phone = '39621200146')
BEGIN
    INSERT INTO Users (email, phone, fullName, passwordHash, userType, dateCreated, IsDeleted, deletedAt)
    VALUES ('02000@lums.edu.pk', '39621200146', 'Amna Qureshi', '89a288cc8a1efcffed6d6c57d1a3682bb8a0bda9ac8da716a151044686dbb056', 'admin', '2023-12-18 00:16:19', 0, NULL);
END

GO

-- Successfully generated 2000 INSERT statements
-- Approximately 200 records have NULL userType (10.0%)
-- 100 records marked as deleted (5.0%)
SELECT * FROM Users
GO