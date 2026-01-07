# Dokumentasi Query SQL

Folder ini berisi kumpulan query SQL yang digunakan sebagai bagian dari proses analisis data koperasi dalam project **Analisis Data Koperasi Nasional (2019–2025)**.

Query SQL pada folder ini tidak digunakan secara langsung sebagai sumber visualisasi dashboard, melainkan berfungsi sebagai fondasi eksplorasi, validasi kualitas data, dan deteksi awal anomali sebelum analisis lanjutan dilakukan di Power BI.

---

## Tujuan Penggunaan SQL

Penggunaan SQL dalam project ini bertujuan untuk:

- Melakukan pemeriksaan kualitas data (*data quality checks*)
- Memvalidasi kelengkapan dan konsistensi data historis
- Memastikan definisi populasi analisis (misalnya koperasi aktif)
- Mengidentifikasi potensi anomali sebelum visualisasi
- Mendukung analisis ad-hoc pada tahap awal project

Pendekatan ini membantu memastikan bahwa insight yang ditampilkan pada dashboard berbasis pada data yang telah dipahami dan divalidasi.

---

## Struktur dan Deskripsi Query

### 1️. `01_data_quality_checks.sql`
Berisi rangkaian pemeriksaan kualitas data, meliputi:
- Deteksi nilai NULL atau nol
- Identifikasi nilai tidak masuk akal (negatif)
- Pemeriksaan inkonsistensi logis antar indikator
- Deteksi duplikasi entitas per tahun laporan

Query ini digunakan sebagai langkah awal untuk memahami kondisi dan keterbatasan data sebelum dilakukan analisis lebih lanjut.

---

### 2️. `02_aggregasi_anggota_wilayah.sql`
Merepresentasikan pendekatan awal dalam menyiapkan dataset agregat multi-tahun berdasarkan wilayah dan tahun laporan.

Query ini disertakan sebagai contoh proses persiapan data untuk kebutuhan analisis dan pelaporan sebelum dilakukan pemodelan di Power BI.

---

### 3️. `03_filter_koperasi_aktif.sql`
Digunakan untuk memisahkan koperasi aktif dari koperasi tidak aktif sebagai dasar analisis kinerja.

Query ini membantu menghindari bias agregasi yang dapat muncul apabila data koperasi tidak aktif ikut terhitung dalam analisis.

---

### 4️. `04_deteksi_anomali_2024_2025.sql`
Digunakan untuk mendeteksi potensi anomali pertumbuhan data koperasi antara tahun 2024 dan 2025 berdasarkan perhitungan pertumbuhan Year-over-Year (YoY).

Query ini berfungsi sebagai *early warning* sebelum analisis dan eksplorasi visual dilakukan melalui dashboard Power BI.

---

## Catatan Penting

- Struktur tabel dan nama kolom telah disederhanakan untuk keperluan dokumentasi portfolio
- Query disertakan secara selektif untuk merepresentasikan pendekatan analisis, bukan sebagai arsip seluruh query operasional
- Visualisasi dan analisis lanjutan dilakukan menggunakan Power BI

---

## Ringkasan

Query SQL dalam folder ini menunjukkan bagaimana proses analisis data dimulai dari pemahaman kualitas data, penentuan ruang lingkup analisis, hingga identifikasi awal pola dan anomali, sebelum hasil akhir disajikan dalam bentuk dashboard interaktif.
