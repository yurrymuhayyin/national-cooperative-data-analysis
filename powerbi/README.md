# Dokumentasi Dashboard Power BI

Folder ini berisi dokumentasi dashboard Power BI yang dikembangkan sebagai bagian dari project  
**Analisis Data Koperasi Nasional (2019–2025)**.

Dashboard dirancang untuk mendukung kebutuhan analisis kinerja koperasi dalam berbagai level, mulai dari ringkasan nasional, perbandingan wilayah, hingga analisis lanjutan untuk validasi dan evaluasi pertumbuhan data.

---

## Tujuan Pengembangan Dashboard

Dashboard Power BI dikembangkan untuk:

- Menyediakan ringkasan kinerja koperasi secara cepat dan konsisten
- Memudahkan perbandingan kinerja antar wilayah
- Mendukung analisis tren dan pertumbuhan dari tahun ke tahun
- Mengurangi ketergantungan pada permintaan data ad-hoc berbasis query manual
- Menjadi alat bantu validasi dan evaluasi kualitas data

---

## Struktur Dashboard

Dashboard Power BI dalam project ini terdiri dari **3 halaman utama** yang saling melengkapi dan merepresentasikan alur analisis data dari level ringkasan hingga analisis lanjutan.

---

## 1️. Dashboard Nasional

Dashboard ini menyajikan gambaran umum kinerja koperasi secara nasional berdasarkan data historis periode 2019–2025.

### Fokus Analisis
- Monitoring indikator utama koperasi secara nasional
- Evaluasi tren jangka panjang
- Penyediaan ringkasan cepat untuk kebutuhan pimpinan

### Indikator Utama
- Jumlah koperasi aktif  
- Jumlah anggota  
- Aset  
- Selisih Hasil Usaha (SHU)  
- Modal  
- Volume Usaha Koperasi  

### Visual Utama
- KPI cards
- Line chart tren tahunan
- Indikator pertumbuhan Year-over-Year (YoY)

---

## 2️. Dashboard Perbandingan Wilayah

Dashboard ini digunakan untuk membandingkan kinerja koperasi antar wilayah sebagai tahap **screening awal** sebelum dilakukan analisis yang lebih mendalam.

### Fokus Analisis
- Perbandingan indikator utama antar provinsi
- Identifikasi wilayah dengan pertumbuhan tertinggi dan terendah
- Penentuan wilayah prioritas untuk analisis lanjutan

### Visual Utama
- Bar chart per provinsi
- Tabel perbandingan dengan conditional formatting
- Filter tahun dan wilayah

---

## 3️. Dashboard Analisis Perbandingan 2024–2025 (Deteksi Anomali)

Dashboard ini merupakan **fokus utama analisis lanjutan** yang dikembangkan untuk mengevaluasi perubahan data koperasi antara tahun 2024 dan 2025.

### Latar Belakang

Pada implementasi operasional, dashboard ini dikembangkan untuk menganalisis pertumbuhan data hingga **level koperasi (by-name by-address)**, dengan tujuan mengidentifikasi perubahan yang tidak wajar pada masing-masing unit koperasi.

Analisis per koperasi memungkinkan proses validasi data dan penelusuran langsung terhadap koperasi yang mengalami lonjakan atau penurunan ekstrem.

Namun, untuk keperluan dokumentasi dan portfolio publik, dashboard ini disajikan dalam bentuk **agregat wilayah** tanpa menampilkan identitas koperasi, dengan tetap mempertahankan logika analisis dan mekanisme deteksi anomali yang sama.

---

### Tujuan Dashboard
- Mengidentifikasi koperasi atau wilayah
  dengan pertumbuhan yang tidak wajar
- Menjadi alat bantu validasi kualitas data
- Memberikan sinyal awal sebelum dilakukan
  penelusuran data lanjutan hingga level koperasi
- Mendukung pengambilan keputusan berbasis data

---

### Cakupan Analisis

Perbandingan dilakukan antara tahun 2024 dan 2025 dengan fokus analisis utama pada level koperasi.

Untuk keperluan portfolio, hasil analisis ditampilkan dalam bentuk agregat wilayah dengan indikator berikut:

- Anggota koperasi (Pria & Wanita)
- Manajer koperasi (Pria & Wanita)
- Pertumbuhan Year-over-Year (YoY)

---

### Logika Deteksi Anomali

Untuk memudahkan identifikasi cepat, dashboard ini menggunakan pendekatan *rule-based* melalui conditional formatting:

- warna biru : Pertumbuhan 100% – 200% → Pertumbuhan tinggi
- warna kuning : Pertumbuhan 200% – 300% → Anomali kuat
- warna merah : Pertumbuhan >300% → Anomali ekstrem (perlu validasi)

Pendekatan ini memungkinkan pengguna langsung memfokuskan perhatian pada wilayah dengan indikasi anomali tanpa eksplorasi manual yang kompleks.

---

### Cara Membaca Dashboard
1. Pilih provinsi melalui filter
2. Amati perbandingan nilai 2024 dan 2025 per kabupaten/kota
3. Gunakan warna sebagai indikator awal anomali
4. Tentukan wilayah yang memerlukan validasi lanjutan

---

### Interpretasi Hasil

Pertumbuhan ekstrem tidak selalu mencerminkan peningkatan kinerja koperasi.

Nilai tersebut dapat dipengaruhi oleh:
- Perubahan struktur organisasi
- Perubahan status koperasi
- Perbaikan atau koreksi pelaporan data
- Kesalahan input data historis

Pada implementasi operasional, indikasi anomali ini menjadi dasar untuk penelusuran data lanjutan hingga level koperasi individual.

---

### Keterbatasan
Dashboard ini tidak membedakan antara pertumbuhan alami dan pertumbuhan akibat faktor struktural, seperti pemekaran wilayah atau perubahan definisi data.

---

### Rekomendasi Tindak Lanjut
Wilayah dengan pertumbuhan ekstrem direkomendasikan untuk:
- Validasi ulang data sumber
- Analisis tren multi-tahun (3–5 tahun)
- Penelusuran data hingga level koperasi (by-name by-address)

---

## Catatan Teknis
- Data telah melalui proses pembersihan dan validasi
- Perhitungan indikator menggunakan DAX
- Dashboard dirancang agar mudah dipahami oleh pengguna non-teknis

> Catatan: Dokumentasi dalam repository ini disajikan dalam bentuk screenshot dan narasi, tanpa menyertakan file Power BI (.pbix).
