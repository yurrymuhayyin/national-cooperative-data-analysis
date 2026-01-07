-- =========================================================
-- Deskripsi:
-- Query ini digunakan untuk memfilter data koperasi berdasarkan status operasional (aktif).
--
-- Tujuan:
-- - Memastikan analisis hanya menggunakan koperasi aktif
-- - Menghindari bias agregasi akibat koperasi tidak aktif
--
-- Catatan:
-- Pada implementasi dashboard, filter status koperasi dilakukan di Power BI.
-- Query ini merepresentasikan proses validasi awal.
-- =========================================================

SELECT
    f.cooperative_id,
    f.report_year,
    r.province_name,
    r.regency_name,

    f.total_members,
    f.male_members,
    f.female_members,

    f.total_assets,
    f.shu,
    f.total_capital,
    f.business_volume,

    f.status
FROM fact_cooperative_performance f
JOIN dim_region r
    ON f.region_id = r.region_id
WHERE f.status = 'Aktif'
  AND f.report_year BETWEEN 2019 AND 2025
ORDER BY
    r.province_name,
    r.regency_name,
    f.report_year;
