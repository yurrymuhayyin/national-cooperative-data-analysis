# Power BI Dashboard Overview

## Tujuan Dashboard
Dashboard ini dirancang untuk mendukung analisis kinerja koperasi
berdasarkan data historis periode 2019–2025.

Fokus utama dashboard adalah:
- Monitoring tren pertumbuhan koperasi
- Perbandingan kinerja antar wilayah
- Evaluasi indikator utama koperasi
- Memudahkan kerja dalam penyajian dan distribusi data request

---

## Struktur Dashboard

### 1. Dashboard Nasional
Menampilkan ringkasan indikator utama secara nasional:
- Jumlah koperasi aktif
- Jumlah anggota
- Aset
- Selisih Hasil Usaha (SHU)
- Modal

Visual utama:
- KPI cards
- Line chart tren tahunan
- YoY growth indicator

---

### 2. Dashboard Perbandingan Wilayah
Digunakan untuk membandingkan kinerja koperasi antar provinsi:
- Ranking provinsi berdasarkan indikator utama
- Tren pertumbuhan per provinsi
- Identifikasi wilayah dengan pertumbuhan tertinggi dan terendah

Visual utama:
- Bar chart per provinsi
- Table dengan conditional formatting
- Filter tahun dan wilayah

---

### 3. Dashboard Analisis Tren
Berfokus pada analisis perubahan dari tahun ke tahun:
- Year-over-Year (YoY) growth
- Pola pertumbuhan sebelum dan sesudah periode tertentu
- Deteksi anomali tren

Visual utama:
- Line chart YoY
- Highlight insight berbasis data

---

## Catatan Teknis
- Data telah melalui proses data cleaning dan validasi
- Perhitungan indikator menggunakan DAX
- Dashboard dirancang agar mudah dipahami oleh non-teknis user

> Catatan: Tampilan dashboard pada repository ini disajikan dalam bentuk
> screenshot dan dokumentasi, tanpa menyertakan file Power BI (.pbix).
