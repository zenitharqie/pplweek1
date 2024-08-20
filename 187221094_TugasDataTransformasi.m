%Read Data
heart = readtable('/Users/zenitharq/Documents/Sistem Informasi Semester 4/Machine Learning Praktikum/Tugas 2/heart2.csv');

% Detect outliers
outlier = isoutlier(heart);

cpNO = rmoutliers(heart,'mean');

% Deteksi Data Hilang
fprintf("Deteksi Data Hilang")
cpMiss = ismissing(cpNO)

% Normalisasi
fprintf("Normalisasi")
norm = normalize(cpNO);
fprintf("Normalisasi Z-Score")
normz = normalize(cpNO, "zscore");
fprintf("Normalisasi Scale")
norms = normalize(cpNO,"Scale");
fprintf("Normalisasi Range")
normr = normalize(cpNO,"range");
