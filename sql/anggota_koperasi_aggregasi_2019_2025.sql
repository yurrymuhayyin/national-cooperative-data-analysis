-- =========================================================
-- Deskripsi:
-- Query agregasi data anggota koperasi berdasarkan wilayah
-- dan tahun laporan (2019–2025).
-- Struktur dan logika disederhanakan untuk keperluan portfolio.
-- =========================================================

SELECT
    r.province_id,
    r.province_name,
    r.regency_id,
    r.regency_name,
    r.district_id,
    r.district_name,
    r.village_id,
    r.village_name,

    SUM(CASE WHEN f.report_year = 2019 THEN f.total_members ELSE 0 END) AS anggota_2019,
    SUM(CASE WHEN f.report_year = 2019 THEN f.female_members ELSE 0 END) AS anggota_wanita_2019,
    SUM(CASE WHEN f.report_year = 2019 THEN f.male_members ELSE 0 END) AS anggota_pria_2019,

    SUM(CASE WHEN f.report_year = 2020 THEN f.total_members ELSE 0 END) AS anggota_2020,
    SUM(CASE WHEN f.report_year = 2020 THEN f.female_members ELSE 0 END) AS anggota_wanita_2020,
    SUM(CASE WHEN f.report_year = 2020 THEN f.male_members ELSE 0 END) AS anggota_pria_2020,

    SUM(CASE WHEN f.report_year = 2021 THEN f.total_members ELSE 0 END) AS anggota_2021,
    SUM(CASE WHEN f.report_year = 2021 THEN f.female_members ELSE 0 END) AS anggota_wanita_2021,
    SUM(CASE WHEN f.report_year = 2021 THEN f.male_members ELSE 0 END) AS anggota_pria_2021,

    SUM(CASE WHEN f.report_year = 2022 THEN f.total_members ELSE 0 END) AS anggota_2022,
    SUM(CASE WHEN f.report_year = 2022 THEN f.female_members ELSE 0 END) AS anggota_wanita_2022,
    SUM(CASE WHEN f.report_year = 2022 THEN f.male_members ELSE 0 END) AS anggota_pria_2022,

    SUM(CASE WHEN f.report_year = 2023 THEN f.total_members ELSE 0 END) AS anggota_2023,
    SUM(CASE WHEN f.report_year = 2023 THEN f.female_members ELSE 0 END) AS anggota_wanita_2023,
    SUM(CASE WHEN f.report_year = 2023 THEN f.male_members ELSE 0 END) AS anggota_pria_2023,

    SUM(CASE WHEN f.report_year = 2024 THEN f.total_members ELSE 0 END) AS anggota_2024,
    SUM(CASE WHEN f.report_year = 2024 THEN f.female_members ELSE 0 END) AS anggota_wanita_2024,
    SUM(CASE WHEN f.report_year = 2024 THEN f.male_members ELSE 0 END) AS anggota_pria_2024,

    SUM(CASE WHEN f.report_year = 2025 THEN f.total_members ELSE 0 END) AS anggota_2025,
    SUM(CASE WHEN f.report_year = 2025 THEN f.female_members ELSE 0 END) AS anggota_wanita_2025,
    SUM(CASE WHEN f.report_year = 2025 THEN f.male_members ELSE 0 END) AS anggota_pria_2025

FROM fact_cooperative_members f
JOIN dim_region r
    ON f.region_id = r.region_id
WHERE f.report_year BETWEEN 2019 AND 2025
GROUP BY
    r.province_id,
    r.province_name,
    r.regency_id,
    r.regency_name,
    r.district_id,
    r.district_name,
    r.village_id,
    r.village_name
ORDER BY
    r.province_name,
    r.regency_name,
    r.district_name,
    r.village_name;
