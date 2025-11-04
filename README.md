<img width="624" height="907" alt="Dashboard" src="https://github.com/user-attachments/assets/7024a127-5008-4ec9-b503-6bdaf2534ee8" />
<img width="623" height="910" alt="Dashboard  2" src="https://github.com/user-attachments/assets/efdd246d-98ba-43cd-b971-78688ecaa2ba" />
<img width="622" height="911" alt="konfirm logout" src="https://github.com/user-attachments/assets/527bfcf3-b9c8-4312-bfa2-d85e05548799" />
<img width="622" height="909" alt="Riwayat Pesanan" src="https://github.com/user-attachments/assets/83d7eb26-bec4-4567-8e38-a98030090d50" />
<img width="625" height="913" alt="akun" src="https://github.com/user-attachments/assets/18c2dbe2-da95-45bf-9511-c01f43313059" />
<img width="623" height="904" alt="screen awal" src="https://github.com/user-attachments/assets/0b745996-f118-4c2a-be0e-679f30217878" />
# 🧰 Tukang.com App

Aplikasi **Tukang.com** adalah aplikasi layanan jasa tukang digital yang memudahkan pengguna untuk menemukan dan memesan berbagai layanan tukang seperti listrik, ledeng, cat, bangunan, dan lainnya.  
Aplikasi ini dibuat menggunakan **Flutter** dengan desain antarmuka yang sederhana, bersih, dan responsif.

---

## 🚀 Fitur Utama

- **Splash Screen** – Tampilan pembuka sebelum masuk ke aplikasi.  
- **Home Page** – Menampilkan kategori tukang populer, berita, dan tips.  
- **Service Card** – Komponen kartu layanan tukang (harga, deskripsi, dan ikon).  
- **Category Card** – Daftar kategori layanan tukang.  
- **Partner Card** – Menampilkan mitra atau tukang populer.  
- **Pesanan Page** – Halaman untuk melihat dan mengelola pesanan pengguna.  
- **Akun Page** – Menampilkan informasi akun pengguna.  
- **Dummy Data** – Sumber data sementara untuk pengujian UI.  

---

## 🧩 Struktur Folder

lib/
│
├── main.dart # Entry point aplikasi Flutter
│
├── screens/
│ ├── splash_screen.dart # Halaman splash screen
│ ├── home_page.dart # Halaman utama aplikasi
│ ├── pesanan_page.dart # Halaman pesanan
│ └── akun_page.dart # Halaman akun pengguna
│
├── widgets/
│ ├── category_card.dart # Widget kartu kategori tukang
│ ├── service_card.dart # Widget kartu layanan tukang
│ ├── partner_card.dart # Widget kartu mitra tukang
│ └── news_and_tips.dart # Widget berita dan tips
│
└── data/
└── dummy_data.dart # Data dummy untuk testing


---

## 🧠 Teknologi yang Digunakan

- **Flutter SDK** (>=3.0.0)
- **Dart** Language
- **Material Design**
- **Assets (Images & Icons)** untuk ilustrasi layanan dan berita

---

## 📦 Instalasi & Menjalankan Aplikasi

1. Clone repositori ini:
   ```bash
   git clone https://github.com/username/tukang-app.git
   cd tukang-app

assets/
 ├── images/
 │   ├── news1.jpg
 │   ├── news2.png
 │   ├── tips1.jpg
 │   └── ...

 ## 🧰 Dependencies

- cupertino_icons: ^1.0.2
- flutter_svg: ^2.0.7
- google_fonts: ^6.2.0
- provider: ^6.0.5

## 👩‍💻 Panduan Developer

Untuk menambahkan halaman baru:
1. Buat file di folder `screens/`.
2. Tambahkan route baru di `main.dart`.
3. Gunakan widget yang sudah ada di folder `widgets/` untuk konsistensi UI.

## 🕒 Changelog

**v1.0.0** – Rilis awal  
**v1.1.0** – Tambah fitur Berita & Tips  
**v1.2.0** – Perbaikan tampilan dan bug fix

## 🐞 Known Issues

- Gambar tidak muncul jika asset belum ditambahkan di `pubspec.yaml`.
- Scroll horizontal kadang menyebabkan overflow kecil di emulator.

## 🌐 Link Tambahan

- [Demo Video](https://youtu.be/xxxxx)
- [Figma Design](https://www.figma.com/file/xxxxx)
- [API Reference](https://example.com/api-docs)
