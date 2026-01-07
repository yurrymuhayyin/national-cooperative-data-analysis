-- =========================================================
-- Catatan Portfolio:
-- Query ini merepresentasikan pendekatan awal dalam menyiapkan dataset agregat multi-tahun untuk kebutuhan analisis dan pelaporan.
-- Pada implementasi dashboard, agregasi dilakukan langsung di Power BI untuk fleksibilitas analisis.
-- =========================================================

SELECT
    r.province_name,
    r.regency_name,
    f.report_year,
    SUM(f.total_members) AS total_anggota,
    SUM(f.male_members) AS anggota_pria,
    SUM(f.female_members) AS anggota_wanita
FROM fact_cooperative_members f
JOIN dim_region r
    ON f.region_id = r.region_id
WHERE f.report_year BETWEEN 2019 AND 2025
GROUP BY
    r.province_name,
    r.regency_name,
    f.report_year
ORDER BY
    r.province_name,
    r.regency_name,
    f.report_year;
