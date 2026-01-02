## Total Koperasi Aktif

### DAX Measure
```DAX
Total Koperasi Aktif :=
CALCULATE(
    DISTINCTCOUNT('FactKoperasi'[CooperativeID]),
    'FactKoperasi'[Status] = "Aktif"
)

## Catatan
Digunakan sebagai indikator utama pada dashboard nasional
untuk memonitor jumlah koperasi dengan status aktif.
