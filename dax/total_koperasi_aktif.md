## Total Koperasi Aktif

### DAX Measure
```DAX
Total Koperasi Aktif :=
CALCULATE(
    DISTINCTCOUNT('FactKoperasi'[CooperativeID]),
    'FactKoperasi'[Status] = "Aktif"
)
