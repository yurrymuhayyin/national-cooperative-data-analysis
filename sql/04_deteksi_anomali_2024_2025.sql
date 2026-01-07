-- =========================================================
-- Deskripsi:
-- Query ini digunakan untuk mendeteksi potensi anomali pertumbuhan data koperasi antara tahun 2024 dan 2025.
--
-- Fokus:
-- - Perbandingan Year-over-Year (YoY)
-- - Identifikasi lonjakan ekstrem (>100%)
--
-- Catatan:
-- Query ini digunakan sebagai validasi awal.
-- Visualisasi dan analisis lanjutan dilakukan di Power BI.
-- =========================================================

WITH base_data AS (
    SELECT
        f.cooperative_id,
        r.province_name,
        r.regency_name,

        SUM(CASE WHEN f.report_year = 2024 THEN f.total_members ELSE 0 END) AS anggota_2024,
        SUM(CASE WHEN f.report_year = 2025 THEN f.total_members ELSE 0 END) AS anggota_2025,

        SUM(CASE WHEN f.report_year = 2024 THEN f.total_assets ELSE 0 END) AS aset_2024,
        SUM(CASE WHEN f.report_year = 2025 THEN f.total_assets ELSE 0 END) AS aset_2025,

        SUM(CASE WHEN f.report_year = 2024 THEN f.shu ELSE 0 END) AS shu_2024,
        SUM(CASE WHEN f.report_year = 2025 THEN f.shu ELSE 0 END) AS shu_2025
    FROM fact_cooperative_performance f
    JOIN dim_region r
        ON f.region_id = r.region_id
    WHERE f.status = 'Aktif'
      AND f.report_year IN (2024, 2025)
    GROUP BY
        f.cooperative_id,
        r.province_name,
        r.regency_name
)

SELECT
    province_name,
    regency_name,
    cooperative_id,

    anggota_2024,
    anggota_2025,
    CASE
        WHEN anggota_2024 = 0 THEN NULL
        ELSE ROUND(
            (anggota_2025 - anggota_2024) * 100.0 / anggota_2024, 2
        )
    END AS yoy_anggota_pct,

    aset_2024,
    aset_2025,
    CASE
        WHEN aset_2024 = 0 THEN NULL
        ELSE ROUND(
            (aset_2025 - aset_2024) * 100.0 / aset_2024, 2
        )
    END AS yoy_aset_pct,

    shu_2024,
    shu_2025,
    CASE
        WHEN shu_2024 = 0 THEN NULL
        ELSE ROUND(
            (shu_2025 - shu_2024) * 100.0 / shu_2024, 2
        )
    END AS yoy_shu_pct

FROM base_data
WHERE
    (
        anggota_2024 > 0 AND anggota_2025 > 0
        AND (anggota_2025 - anggota_2024) * 100.0 / anggota_2024 >= 100
    )
    OR
    (
        aset_2024 > 0 AND aset_2025 > 0
        AND (aset_2025 - aset_2024) * 100.0 / aset_2024 >= 100
    )
    OR
    (
        shu_2024 > 0 AND shu_2025 > 0
        AND (shu_2025 - shu_2024) * 100.0 / shu_2024 >= 100
    )
ORDER BY
    province_name,
    regency_name;
