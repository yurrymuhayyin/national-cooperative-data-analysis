## Year-over-Year (YoY) Growth

### DAX Measure
```DAX
YoY Growth (%) :=
VAR NilaiSekarang =
    SUM('FactKoperasi'[TotalAnggota])
VAR NilaiTahunLalu =
    CALCULATE(
        SUM('FactKoperasi'[TotalAnggota]),
        SAMEPERIODLASTYEAR('DimDate'[Date])
    )
RETURN
DIVIDE(NilaiSekarang - NilaiTahunLalu, NilaiTahunLalu)


##catatan
Measure ini digunakan untuk menghitung pertumbuhan tahun ke tahun (YoY)
berdasarkan indikator jumlah anggota.
