use pmb_2023;
create	table status_registrasi(
id_status_registrasi int not null,
status_registrasi varchar(50) not null,
primary key (id_status_registrasi)
);
alter table status_registrasi
modify id_status_registrasi int not null;

create table pmb(
id_pmb int not null,
no_test int not null,
nilai_test int not null,
tanggal_test date not null,
id_status_registrasi int not null,
id_jenis_pendaftaran int not null,
sekolah_asal varchar(50) not null,
id_user int not null,
id_prodi int not null,
primary key (id_pmb)
);
alter table pmb
add foreign key (id_status_registrasi)
references status_registrasi (id_status_registrasi);

alter table pmb
add foreign key (id_user)
references user (id_user);

alter table pmb
add foreign key (id_jenis_pendaftaran)
references jenis_pendaftaran (id_jenis_pendaftaran);

alter table pmb
add foreign key (id_prodi)
references program_studi (id_prodi);

create	table jenis_pendaftaran(
id_jenis_pendaftaran int not null,
jenis_pendaftaran varchar(50) not null,
primary key (id_jenis_pendaftaran)
);
alter table jenis_pendaftaran
modify column id_jenis_pendaftaran varchar(10);

create	table program_studi(
id_prodi int not null,
program_studi varchar(50) not null,
id_fakultas int not null,
primary key (id_prodi)
);

create	table mahasiswa(
id_mahasiswa int not null,
id_user int not null,
id_prodi int not null,
id_tahun_akademik int not null,
id_kelas int not null,
id_waktu_kuliah int not null,
id_jenis_pendaftaran int not null,
sekolah_asal varchar(50) not null,
primary key (id_mahasiswa)
);
alter table mahasiswa
add foreign key (id_user)
references user	(id_user);

alter table mahasiswa
add foreign key (id_jenis_pendaftaran)
references jenis_pendaftaran (id_jenis_pendaftaran);

insert into jenis_pendaftaran values
('JP001', 'SBMPTN'),
('JP002', 'UTBK'),
('JP003', 'POSK'),
('JP004', 'Jalur Ketua OSIS'),
('JP005', 'Mandiri'),
('JP006', 'Internasional'),
('JP007', 'Pascasarjana');

select *from jenis_pendaftaran;

insert into status_registrasi values
('REG002', 'Berkas Lengkap'),
('REG003', 'Belum Upload Berkas'),
('REG004', 'Berkas Sedang Diverifikasi'),
('REG005', 'Berkas Telah Diverifikasi'),
('REG006', 'Berkas Bermasalah'),
('REG007', 'Data Tidak Lengkap'),
('REG008', 'Lulus'),
('REG009', 'Tidak Lulus');

insert into status_registrasi values
('REG001', 'User Terdaftar');

insert into program_studi values
('FEB001', 'Manajamen', 'UNMFEB'),
('FEB002', 'Bisnis Digital', 'UNMFEB'),
('FEB003', 'Kewirausahaan', 'UNMFEB'),
('FEB004', 'Ilmu Ekonomi', 'UNMFEB'),
('FEB005', 'Pendidikan Ekonomi', 'UNMFEB'),
('FEB006', 'Pendidikan Akuntansi', 'UNMFEB'),
('FEB007', 'Akuntansi (S1)', 'UNMFEB'),
('FEB008', 'Akuntansi (D4)', 'UNMFEB'),
('FIS001', 'Ilmu Sosial dan Politik', 'UNMFIS'),
('FIS002', 'Ilmu Hukum', 'UNMFIS'),
('FIS003', 'Ilmu Komunikasi', 'UNMFIS'),
('FIS004', 'Antropologi', 'UNMFIS'),
('FIS005', 'Ilmu Administrasi', 'UNMFIS'),
('KED001', 'Ilmu Kedokteran', 'UNMKED'),
('TEK001', 'Teknik Informatika', 'UNMTEK'),
('TEK002', 'Teknik Sipil', 'UNMTEK'),
('TEK003', 'Teknik Elektro', 'UNMTEK'),
('TEK004', 'Teknik Mesin', 'UNMTEK'),
('TEK005', 'Teknik Industri', 'UNMTEK'),
('TEK006', 'Teknik Perkapalan', 'UNMTEK'),
('TEK007', 'Teknik Pertambangan', 'UNMTEK');
select *from program_studi;

alter table mahasiswa
drop column sekolah_asal;

delete from mahasiswa;
SET SQL_SAFE_UPDATES = 0;
DELETE FROM mahasiswa;
SET SQL_SAFE_UPDATES = 1;

alter table mahasiswa
add foreign key (id_jenis_pendaftaran)
references jenis_pendaftaran (id_jenis_pendaftaran);

alter table mahasiswa
add foreign key (id_user)
references user (id_user);

INSERT INTO mahasiswa (
  id_mahasiswa, id_user, id_prodi, id_tahun_akademik,
  id_kelas, id_waktu_kuliah, id_jenis_pendaftaran
) VALUES (
  '230907500001', 'USER001', 'FEB001', '2023',
  'KLS001', 'WKT01', 'JP006'
);

alter table pmb
modify column nilai_test varchar(45);
select *from pmb;

alter table pmb
modify column nilai_test int;

alter table pmb
modify column no_test varchar(45);

alter table pmb
modify column id_pmb int;
desc pmb;

SET SQL_SAFE_UPDATES = 0;
DELETE FROM pmb;
SET SQL_SAFE_UPDATES = 1;

