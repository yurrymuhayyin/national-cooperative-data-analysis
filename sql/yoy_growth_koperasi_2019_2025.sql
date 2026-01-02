-- =========================================================
-- Deskripsi:
-- Query ini digunakan untuk menghitung pertumbuhan Year-over-Year (YoY)
-- indikator utama koperasi pada level nasional.
--
-- Catatan:
-- Nama tabel dan kolom telah disederhanakan untuk keperluan portfolio.
-- =========================================================

WITH yearly_summary AS (
    SELECT
        report_year,
        COUNT(DISTINCT cooperative_id) AS koperasi_aktif,
        SUM(total_members) AS jumlah_anggota,
        SUM(total_assets) AS aset,
        SUM(shu) AS shu,
        SUM(total_capital) AS modal,
        SUM(business_volume) AS volume_usaha
    FROM fact_cooperative_performance
    WHERE status = 'Aktif'
      AND report_year BETWEEN 2019 AND 2025
    GROUP BY report_year
)

SELECT
    report_year,

    koperasi_aktif,
    LAG(koperasi_aktif) OVER (ORDER BY report_year) AS koperasi_aktif_tahun_lalu,
    ROUND(
        (koperasi_aktif - LAG(koperasi_aktif) OVER (ORDER BY report_year))
        * 100.0 / NULLIF(LAG(koperasi_aktif) OVER (ORDER BY report_year), 0),
        2
    ) AS yoy_koperasi_aktif_persen,

    jumlah_anggota,
    ROUND(
        (jumlah_anggota - LAG(jumlah_anggota) OVER (ORDER BY report_year))
        * 100.0 / NULLIF(LAG(jumlah_anggota) OVER (ORDER BY report_year), 0),
        2
    ) AS yoy_anggota_persen,

    aset,
    ROUND(
        (aset - LAG(aset) OVER (ORDER BY report_year))
        * 100.0 / NULLIF(LAG(aset) OVER (ORDER BY report_year), 0),
        2
    ) AS yoy_aset_persen,

    shu,
    ROUND(
        (shu - LAG(shu) OVER (ORDER BY report_year))
        * 100.0 / NULLIF(LAG(shu) OVER (ORDER BY report_year), 0),
        2
    ) AS yoy_shu_persen,

    modal,
    ROUND(
        (modal - LAG(modal) OVER (ORDER BY report_year))
        * 100.0 / NULLIF(LAG(modal) OVER (ORDER BY report_year), 0),
        2
    ) AS yoy_modal_persen,

    volume_usaha,
    ROUND(
        (volume_usaha - LAG(volume_usaha) OVER (ORDER BY report_year))
        * 100.0 / NULLIF(LAG(volume_usaha) OVER (ORDER BY report_year), 0),
        2
    ) AS yoy_volume_usaha_persen

FROM yearly_summary
ORDER BY report_year;
