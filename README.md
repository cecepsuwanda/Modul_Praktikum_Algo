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
├── build/                # Output PDF hasil kompilasi
└── chapters/             # Direktori berisi 13 bab modul
    ├── bab01.tex         # Pengantar & Persiapan Lingkungan
    ├── bab02.tex         # Tipe Data, Variabel, dan I/O
    ├── bab03.tex         # Operator & Ekspresi
    ├── bab04.tex         # Percabangan
    ├── bab05.tex         # Perulangan
    ├── bab06.tex         # Array dan Matriks
    ├── bab07.tex         # String dan Karakter
    ├── bab08.tex         # Record dan Struct
    ├── bab09.tex         # Pointer dan Alamat Memori
    ├── bab10.tex         # Fungsi dan Prosedur
    ├── bab11.tex         # Alokasi Memori Dinamis
    ├── bab12.tex         # File dan I/O
    └── bab13.tex         # Modularisasi Program
```

## Daftar Isi Modul

### Bab 1: Pengantar & Persiapan Lingkungan
- Sejarah dan posisi Pascal, C, C++
- Menyiapkan lingkungan (OnlineGDB, Lazarus, Code::Blocks)
- Program pertama dan alur compile–link–run (dengan diagram)
- Perbandingan I/O dasar dan troubleshooting

### Bab 2: Tipe Data, Variabel, dan I/O
- Tipe data dasar dan model data (LP64 vs LLP64)
- Tipe tetap-lebar `<stdint.h>` dan `std::numeric_limits`
- Deklarasi & inisialisasi; pemformatan I/O
- Cheat sheet `printf/scanf`; parsing input yang tangguh

### Bab 3: Operator & Ekspresi
- Aritmetika, relasional, logika; operator bitwise
- Short-circuit dan operator kondisional (ternary)
- Precedence vs order of evaluation; contoh UB

### Bab 4: Percabangan
- `if/else`, `case/switch`, enum class, [[fallthrough]]
- Dangling else dan pola aman; bit flags dalam kondisi

### Bab 5: Perulangan
- `for`, `while`, `repeat`/`do-while`, `break/continue`
- Range-based for (C++11+), pola sentinel, baca hingga EOF

### Bab 6: Array dan Matriks
- Array 1D/2D, operasi umum dan kompleksitas
- Row-major mapping (diagram), flattened buffer, helper indeks
- Salin/banding array (C/C++)

### Bab 7: String dan Karakter
- Representasi string Pascal, C (null-terminated), C++ `std::string`
- Unicode dan UTF-8, `char8_t`, literal `u8"..."`
- Operasi dasar string, escape sequences, library string

### Bab 8: Record dan Struct
- Deklarasi/akses struct/record, enum
- Bit-field dan keterbatasannya; `std::bitset`
- Shallow vs deep copy; aturan lima (C++)
- Catatan serialisasi biner dan endianness

### Bab 9: Pointer dan Alamat Memori
- Pointer vs reference (C++), const-correctness
- Pointer arithmetic, hubungan array–pointer
- Aturan aliasing; diagram stack/heap; alat debugging

### Bab 10: Fungsi dan Prosedur
- Deklarasi/definisi, pass-by-value/reference, rekursi (diagram)
- Pointer ke fungsi dan `qsort` (C)
- Lambda dan `std::function` (C++)

### Bab 11: Alokasi Memori Dinamis
- Pola cleanup C; RAII & smart pointer (C++)
- Alokasi 2D: double pointer vs buffer datar
- Alignment/padding; move semantics; placement new
- Strict aliasing & type punning yang aman

### Bab 12: File dan I/O
- Teks vs biner; mode akses Pascal/C/C++
- Random access (seek/tell); portabilitas biner
- Penanganan kesalahan; atomic write

### Bab 13: Modularisasi Program
- Unit Pascal; header/implementasi C/C++
- Include guards vs `#pragma once`
- Struktur direktori, Makefile, CMake, dan praktik modularisasi

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
- **Online (resmi untuk buku ini)**: OnlineGDB — kompilasi dan debugging Pascal, C, C++ langsung di browser.
- **Pascal (offline)**: Lazarus IDE (berbasis Free Pascal Compiler).
- **C/C++ (offline)**: Code::Blocks (paket MinGW di Windows atau toolchain sistem di Linux/macOS).
- **Alternatif**: GCC/Clang + editor pilihan (VS Code, Vim, Emacs) tetap dapat digunakan.

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
### Menjalankan Contoh Kode

#### OnlineGDB (Pascal, C, C++)
- Buka `https://www.onlinegdb.com/`.
- Pilih bahasa: Pascal, C, atau C++.
- Tempel salah satu contoh dari bab terkait, klik Run.

#### Lazarus (Pascal)
- Buat proyek baru: Console Application.
- Salin kode Pascal ke `project1.lpr` atau unit utama.
- Tekan Run untuk kompilasi dan menjalankan program.

#### Code::Blocks (C/C++)
- File → New → Project → Console application → pilih C atau C++.
- Tempel kode ke `main.c` atau `main.cpp`.
- Build & Run.

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

### Instalasi Cepat Toolchain (Linux/Ubuntu)
```bash
sudo apt-get update && sudo apt-get install -y \
  latexmk biber texlive-latex-recommended texlive-latex-extra texlive-fonts-recommended
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
