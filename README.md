# Modul Praktikum Algoritma dan Pemrograman

Buku Praktikum: Pascal, C & C++  
**Program Studi S1 Sistem Informasi**  
**Fakultas Teknologi Informasi**  
**Universitas Bale Bandung**

## Deskripsi

Repositori ini berisi buku modul praktikum untuk mata kuliah **Algoritma dan Pemrograman** yang mengajarkan tiga bahasa pemrograman penting: **Pascal**, **C**, dan **C++**. Modul ini dirancang untuk memberikan pemahaman menyeluruh tentang konsep pemrograman dasar hingga lanjutan dengan pendekatan praktis dan terintegrasi.

## Struktur Proyek

```
Modul_Praktikum_Algo/
├── main.tex              # File LaTeX utama
├── rps.tex               # Rencana Pembelajaran Semester (RPS)
├── references.bib        # Database referensi bibliografi
├── Makefile              # Skrip build untuk kompilasi LaTeX
├── LICENSE               # Lisensi GNU GPL v3
├── README.md             # Dokumentasi proyek (file ini)
└── chapters/             # Direktori berisi 12 bab modul
    ├── bab01.tex         # Pengantar & Persiapan Lingkungan
    ├── bab02.tex         # Tipe Data, Variabel, Input/Output
    ├── bab03.tex         # Operator & Ekspresi
    ├── bab04.tex         # Struktur Kontrol Kondisional
    ├── bab05.tex         # Struktur Kontrol Perulangan & Lainnya
    ├── bab06.tex         # Array & Multidimensi
    ├── bab07.tex         # String/Karakter & Operasi String
    ├── bab08.tex         # Struktur Data Dasar & Pointer Dasar
    ├── bab09.tex         # Fungsi & Prosedur/Metode
    ├── bab10.tex         # Alokasi Dinamis & Pointer Lanjutan
    ├── bab11.tex         # File & Operasi I/O Lanjutan
    └── bab12.tex         # Modul/Unit/Header & Manajemen Proyek
```

## Daftar Isi Modul

### Bab 1: Pengantar & Persiapan Lingkungan
- Sejarah dan posisi Pascal, C, C++
- Menyiapkan lingkungan pengembangan (compiler/IDE)
- Program pertama: "Hello, World!"

### Bab 2: Tipe Data, Variabel, Input/Output
- Tipe data dasar (integer, real, char, boolean, dll.)
- Deklarasi & inisialisasi variabel
- Input/output dasar
- Konversi tipe

### Bab 3: Operator & Ekspresi
- Operator aritmetika, relasional, logika
- Operator bitwise
- Precedence dan asosiasi
- Operator overloading (pendahuluan)

### Bab 4: Struktur Kontrol Kondisional
- Pernyataan `if`/`else`
- Pernyataan `case`/`switch`

### Bab 5: Struktur Kontrol Perulangan & Lainnya
- Perulangan: `for`, `while`, `repeat`/`do-while`
- Penggunaan `break`, `continue`
- Operator ternary/conditional (C/C++)

### Bab 6: Array & Multidimensi
- Array satu dimensi
- Array multidimensi
- Operasi dasar (iterasi, traversal)
- Alokasi dinamis pada array

### Bab 7: String/Karakter & Operasi String
- String sebagai array karakter
- Operasi dasar string (concat, substring, length)
- Pengolahan karakter, escape sequences
- Fungsi/prosedur string library

### Bab 8: Struktur Data Dasar & Pointer Dasar
- Record/`struct`, enumerasi, set
- Pointer & referensi dasar
- Pointer ke record/struct
- Akses anggota via pointer/referensi

### Bab 9: Fungsi & Prosedur/Metode
- Deklarasi & definisi fungsi/prosedur
- Parameter: by value/by reference
- Fungsi rekursif
- Metode & fungsi dalam C++

### Bab 10: Alokasi Dinamis & Pointer Lanjutan
- Alokasi memori dinamis
- Pointer & dereferensi
- Pointer ke array/pointer ke pointer
- Pointer ke fungsi/smart pointers

### Bab 11: File & Operasi I/O Lanjutan
- File teks & biner
- Mode file, seek, ftell
- Penanganan kesalahan file

### Bab 12: Modul/Unit/Header & Manajemen Proyek
- Unit dan "uses" (Pascal)
- Header/implementasi (C/C++)
- Include guards/`#pragma once`
- Organisasi proyek modular

## Teknologi & Tools

### LaTeX Packages
- **documentclass**: `book` (12pt, A4 paper, oneside)
- **babel**: Bahasa Indonesia
- **geometry**: Margin 1 inch
- **listings**: Code highlighting dengan custom style
- **biblatex**: Manajemen bibliografi dengan backend biber
- **subfiles**: Kompilasi per-bab yang independen
- **tikz**: Diagram dan visualisasi
- **hyperref & cleveref**: Referensi silang interaktif

### Build System
- **Makefile** dengan dukungan untuk:
  - Build lengkap: `make` atau `make all`
  - Build per bab: `make chapter CH=bab01`
  - Clean build artifacts: `make clean`
  - Deteksi otomatis: `latexmk`, `pdflatex`, `biber`

### Compiler & IDE yang Didukung
- **Pascal**: Free Pascal Compiler (FPC), Lazarus IDE
- **C**: GCC, Clang
- **C++**: G++, Clang++
- **Editor**: Visual Studio Code, Vim, Emacs, atau IDE pilihan lainnya

## Cara Menggunakan

### Prasyarat
Pastikan Anda telah menginstal:
- LaTeX distribution (TeX Live, MiKTeX, atau MacTeX)
- `latexmk` (opsional, untuk build otomatis)
- `biber` (untuk bibliografi)
- `make` (untuk menggunakan Makefile)

### Kompilasi Dokumen

#### 1. Build seluruh buku:
```bash
make
```
atau
```bash
make all
```

Hasil: `build/main.pdf`

#### 2. Build bab tertentu:
```bash
make chapter CH=bab01
```

Hasil: `build/bab01.pdf`

#### 3. Membersihkan file build:
```bash
make clean
```

### Kompilasi Manual (tanpa Make)

#### Dengan latexmk:
```bash
latexmk -pdf -interaction=nonstopmode -halt-on-error -outdir=build main.tex
```

#### Dengan pdflatex:
```bash
mkdir -p build
pdflatex -output-directory=build main.tex
biber --output-directory build main
pdflatex -output-directory=build main.tex
pdflatex -output-directory=build main.tex
```

## Referensi

Modul ini menggunakan referensi open-access dan standar industri:
- **Pascal**: Wikibooks Pascal Programming, Free Pascal Documentation
- **C**: GNU C Reference Manual, ISO/IEC 9899:2011 (C11) Draft n1570
- **C++**: cppreference.com, C++ Standard
- **Klasik**: Kernighan & Ritchie - The C Programming Language (2nd ed.)

Semua referensi tercantum lengkap dalam `references.bib`.

## Kontribusi

Proyek ini merupakan materi pendidikan untuk mahasiswa S1 Sistem Informasi. Kontribusi untuk perbaikan dan pengembangan sangat diterima melalui:
- Perbaikan konten atau typo
- Penambahan contoh program
- Perbaikan struktur dan formatting
- Penambahan soal latihan dan studi kasus

## Lisensi

Proyek ini dilisensikan di bawah **GNU General Public License v3.0** (GPL-3.0).  
Lihat file [LICENSE](LICENSE) untuk detail lengkap.

Anda bebas untuk:
- Menggunakan materi ini untuk pembelajaran
- Memodifikasi dan mendistribusikan ulang
- Menggunakan untuk keperluan komersial

Dengan syarat:
- Menyertakan lisensi dan copyright notice yang sama
- Membuka source code dari modifikasi Anda
- Mendokumentasikan perubahan yang dilakukan

## Author

**Tim Pengajar Algoritma dan Pemrograman**  
Fakultas Teknologi Informasi  
Universitas Bale Bandung

---

**Catatan**: Modul ini dirancang untuk memberikan fondasi yang kuat dalam pemrograman prosedural dan sistem. Mahasiswa diharapkan aktif bereksperimen dengan kode, membaca dokumentasi referensi, dan mengembangkan kemampuan problem-solving melalui praktik langsung.

**Tanggal Update**: Oktober 2025
