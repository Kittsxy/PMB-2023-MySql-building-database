-- Data Collection & Cleaning --
-- (Mengecek kualitas data (kosong, duplikat, tidak valid)) --
-- Membersihkan data (data cleansing) --

select *from pmb where nilai_test is null;
select *from pmb where nilai_test < 0;

-- Exploratory Data Analysis (EDA) --
-- Rata - rata nilai test per program studi --
select id_prodi, avg(nilai_test) as rata_nilai
from pmb
group by id_prodi;

-- Berapa banyak mahasiswa per fakultas --
SELECT program_studi.id_fakultas, count(*) as jumlah_mahasiswa
FROM pmb
JOIN program_studi ON pmb.id_prodi = program_studi.id_prodi
GROUP BY program_studi.id_fakultas;
