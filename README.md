**Nama:** Ardiansyah  
**NIM:** 6304250091  
**Kelas:** RPL3D Rekayasa Perangkat Lunak (RPL)  
**Dosen Pengampu:** Depandi Enda, S.ST., M.Kom

# P07 - Widget pada Flutter

Praktikum 7 mata kuliah Pemrograman Multiplatform: mempelajari widget dasar pada Flutter framework, mencakup pengenalan StatelessWidget dan StatefulWidget, Text styling, ElevatedButton dan event handling dialog, penataan tata letak menggunakan Row dan Column, manajemen jarak (Margin, Border, Padding), penanganan aset gambar dan ikon, serta penyelesaian 3 studi kasus evaluasi mandiri.

## Tujuan

- Mengklasifikasikan jenis widget Flutter ke dalam kelompok StatelessWidget dan StatefulWidget secara tepat.
- Menggunakan dan mengonfigurasi Text Widget, ElevatedButton Widget, dan Event Handling AlertDialog.
- Mengelola state dan pembaruan antarmuka dinamis menggunakan StatefulWidget dan metode setState().
- Mengimplementasikan tata letak antarmuka multi-elemen menggunakan Row dan Column Widget.
- Mengatur jarak, batas, dan kerapian komponen menggunakan Margin, Border, dan Padding (EdgeInsets).
- Menampilkan dan memanipulasi komponen multimedia seperti Image.asset, Icon, dan Action Button pada AppBar.
- Menyelesaikan seluruh studi kasus evaluasi berupa tabel data, interaksi deskripsi hari, dan halaman profil biodata diri.

## Alat yang Digunakan

- macOS (Apple Silicon)
- Flutter SDK 3.47.2 / Dart 3.13.2
- Visual Studio Code + extension Flutter & Dart
- Git
- Terminal

## Struktur Folder

```text
P07_Widget/
├── images/                              # Berkas aset gambar aplikasi
│   ├── logo_polbeng.png                 # Logo kampus Politeknik Negeri Bengkalis
│   ├── logo_kemdikbud.jpg               # Logo Kemdikbud
│   └── logo_vokasi.jpg                  # Logo Vokasi Kuat (Pengujian Modul)
├── screenshots/                         # Tangkapan layar hasil eksekusi 18 step
│   ├── step_01.png s.d. step_18.png
├── lib/
│   ├── steps/                           # Berkas modular tiap tahapan percobaan
│   │   ├── step1_text.dart              # Step 1: Text Widget & Styling
│   │   ├── step2_elevated_button.dart   # Step 2: ElevatedButton & AlertDialog
│   │   ├── step3_stateful_counter.dart  # Step 3: StatefulWidget Counter
│   │   ├── step4_row.dart               # Step 4: Row Widget Horizontal
│   │   ├── step5_column.dart            # Step 5: Column Widget Vertikal
│   │   ├── step6_row_column.dart        # Step 6: Row di dalam Column
│   │   ├── step7_column_row.dart        # Step 7: Column di dalam Row
│   │   ├── step8_profil_polbeng.dart    # Step 8: Profil POLBENG (UI Komplit)
│   │   ├── step9_edgeinsets_all.dart    # Step 9: Jarak EdgeInsets.all
│   │   ├── step10_edgeinsets_only.dart  # Step 10: Jarak EdgeInsets.only
│   │   ├── step11_softwrap.dart         # Step 11: Text softWrap
│   │   ├── step12_text_align.dart       # Step 12: Text textAlign & Direction
│   │   ├── step13_listview_image.dart   # Step 13: ListView Image
│   │   ├── step14_action_button.dart    # Step 14: Action Button AppBar
│   │   ├── step15_pengujian_vokasi.dart # Step 15: Logo Vokasi & Ikon Jangkar
│   │   ├── step16_evaluasi_tabel.dart   # Step 16: Evaluasi 1 - Tabel Mahasiswa
│   │   ├── step17_evaluasi_hari.dart    # Step 17: Evaluasi 2 - Deskripsi Hari
│   │   └── step18_evaluasi_biodata.dart # Step 18: Evaluasi 3 - Biodata Diri
│   └── main.dart                        # Menu Beranda Peluncur Interaktif
├── test/
│   └── widget_test.dart                 # Smoke test pengujian widget
└── pubspec.yaml                         # Konfigurasi dependensi dan aset
```

## Daftar Percobaan dan Studi Kasus

| No | Modul / File | Materi Pembahasan |
|:--:|--------------|-------------------|
| 01 | `step1_text.dart` | Text Widget (fontSize 30, italic, red, ltr) |
| 02 | `step2_elevated_button.dart` | ElevatedButton & showDialog AlertDialog |
| 03 | `step3_stateful_counter.dart` | StatefulWidget counter dengan aksi `<<` dan `>>` |
| 04 | `step4_row.dart` | Row Widget (penyusunan 4 tombol mendatar) |
| 05 | `step5_column.dart` | Column Widget (penyusunan 4 tombol menurun) |
| 06 | `step6_row_column.dart` | 1 Row memuat 3 Column (kisi 3 kolom x 2 baris) |
| 07 | `step7_column_row.dart` | 1 Column memuat 3 Row (kisi 2 kolom x 3 baris) |
| 08 | `step8_profil_polbeng.dart` | Penerapan UI Profil POLBENG (Logo, Star, Deskripsi) |
| 09 | `step9_edgeinsets_all.dart` | Jarak seragam: EdgeInsets.all (Margin, Padding, Border) |
| 10 | `step10_edgeinsets_only.dart` | Jarak asimetris: EdgeInsets.only (top 50, left 70) |
| 11 | `step11_softwrap.dart` | Pembungkusan teks panjang otomatis (`softWrap: true`) |
| 12 | `step12_text_align.dart` | Eksperimen TextAlign (start/end) dan TextDirection (ltr/rtl) |
| 13 | `step13_listview_image.dart` | ListView scrollable berisi dua gambar dengan Divider |
| 14 | `step14_action_button.dart` | Ganti gambar dinamis via IconButton di actions AppBar |
| 15 | `step15_pengujian_vokasi.dart` | Tugas Pengujian: Penambahan logo vokasi & ikon jangkar |
| 16 | `step16_evaluasi_tabel.dart` | Evaluasi 1: Tabel data mahasiswa (No, NIM, Nama) |
| 17 | `step17_evaluasi_hari.dart` | Evaluasi 2: Pemilih hari interaktif dengan teks motivasi |
| 18 | `step18_evaluasi_biodata.dart` | Evaluasi 3: Halaman profil dan kartu biodata mahasiswa |

## Catatan

- Seluruh kode disesuaikan dengan standar sound null safety Dart 3 dan Flutter modern (`useMaterial3: false` untuk mempertahankan bilah AppBar biru solid sesuai modul).
- Proyek dilengkapi dengan antarmuka Beranda interaktif (`lib/main.dart`) yang memudahkan pengujian setiap step langsung dari layar aplikasi.
