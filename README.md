# Analisis Data Koperasi Nasional (2019–2025)

## Gambaran Umum
Repository ini berisi portfolio analisis data yang berfokus pada pengolahan dan analisis data koperasi 
skala nasional dalam periode 2019–2025.
“Hasil analisis digunakan untuk mendukung monitoring kinerja koperasi dan pengambilan keputusan berbasis data.”

Project ini menunjukkan proses pengolahan data historis mulai dari pembersihan data, 
agregasi, hingga penyajian insight dalam bentuk dashboard interaktif menggunakan Power BI.

> ⚠️ Catatan: Seluruh data yang digunakan dalam repository ini telah dianonimkan dan/atau 
> disajikan dalam bentuk agregat. Project ini dibuat semata-mata untuk menunjukkan metode 
> dan kemampuan analisis data, tanpa menampilkan data rahasia atau sensitif.

---
## Dashboard Overview
![Dashboard Kinerja Koperasi Nasional](powerbi/dashboard_page1.png)

---

## Tujuan Analisis
- Menganalisis tren pertumbuhan koperasi dari tahun ke tahun
- Membandingkan kinerja koperasi secara nasional, per provinsi dan per kabupaten/kota
- Mendukung kebutuhan pelaporan berbasis data

---

## Tools & Teknologi
- SQL – validasi data, filtering, dan agregasi
- Power BI – data modeling, DAX, dan visualisasi dashboard
- Microsoft Excel – pelaporan terstruktur dan pemenuhan permintaan data

---

## Ruang Lingkup Project
- Periode data: 2019–2025
- Level analisis: Nasional dan provinsi
- Indikator utama:
  - Jumlah koperasi aktif
  - Jumlah anggota
  - Aset
  - Selisih Hasil Usaha (SHU)
  - Modal
  - Volume Usaha Koperasi

---

## Struktur Repository
- `sql/` → Query SQL untuk persiapan dan agregasi data  
- `powerbi/` → Screenshot dashboard Power BI  
- `dax/` → Penjelasan perhitungan indikator menggunakan DAX  
- `documentation/` → Alur analisis dan data dictionary 
- `notes/` → Insight dan temuan analisis
