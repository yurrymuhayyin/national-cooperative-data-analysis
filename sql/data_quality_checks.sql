-- =========================================================
-- Deskripsi:
-- Query ini digunakan untuk melakukan pemeriksaan kualitas data
-- (data quality checks) pada data koperasi.
--
-- Fokus validasi:
-- 1. Nilai NULL atau kosong
-- 2. Nilai tidak masuk akal (negatif / nol)
-- 3. Inkonsistensi logis antar indikator
-- 4. Duplikasi entitas per tahun
--
-- Catatan:
-- Nama tabel dan kolom disederhanakan untuk keperluan portfolio.
-- =========================================================

-- 1. Cek data anggota kosong atau nol
SELECT
    report_year,
    COUNT(*) AS jumlah_record_bermasalah
FROM fact_cooperative_performance
WHERE total_members IS NULL
   OR total_members <= 0
GROUP BY report_year
ORDER BY report_year;


-- 2. Cek aset, SHU, modal, dan volume usaha bernilai negatif
SELECT
    report_year,
    COUNT(*) AS jumlah_record_negatif
FROM fact_cooperative_performance
WHERE total_assets < 0
   OR shu < 0
   OR total_capital < 0
   OR business_volume < 0
GROUP BY report_year
ORDER BY report_year;


-- 3. Cek inkonsistensi logis
-- Contoh: koperasi aktif tapi tidak memiliki anggota
SELECT
    report_year,
    COUNT(*) AS jumlah_data_tidak_konsisten
FROM fact_cooperative_performance
WHERE status = 'Aktif'
  AND (total_members IS NULL OR total_members = 0)
GROUP BY report_year
ORDER BY report_year;


-- 4. Cek duplikasi koperasi dalam satu tahun laporan
SELECT
    cooperative_id,
    report_year,
    COUNT(*) AS jumlah_duplikasi
FROM fact_cooperative_performance
GROUP BY cooperative_id, report_year
HAVING COUNT(*) > 1
ORDER BY report_year, jumlah_duplikasi DESC;
