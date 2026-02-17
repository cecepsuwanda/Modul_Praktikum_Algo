# Modul Praktikum Algoritma dan Pemrograman

Repositori ini berisi materi mata kuliah **Algoritma dan Pemrograman** dalam bentuk dua buku LaTeX dan dokumen pendukung: (1) **Buku Ajar OBE** (bahasa C, 17 bab), (2) **Buku Praktikum Pascal/C/C++** (13 bab), serta **RPS/Silabus** berbasis OBE dan file acuan struktur kurikulum.

---

## Isi Repositori

### 1. `buku_ajar/` — Buku Ajar Berbasis OBE (Bahasa C)

Buku ajar **Outcome-Based Education (OBE)** untuk Program Studi Teknik Informatika. Mata kuliah: Algoritma dan Pemrograman (kode TIF-101), bahasa pemrograman **C**.

- **Struktur:** 17 bab + lampiran + daftar pustaka  
- **Front matter:** sampul, kata pengantar, cara pakai buku, identitas mata kuliah, CPL–CPMK, matriks keterkaitan CPL–CPMK, daftar isi/gambar/tabel/kode  
- **Bab 1:** Pendahuluan dan orientasi buku  
- **Bab 2:** Landasan teori dan konsep dasar algoritma  
- **Bab 3–16:** Materi inti (flowchart, pseudocode, variabel & I/O, operator, percabangan if-else & switch, perulangan, fungsi, array 1D/2D, string, struct, sorting & searching)  
- **Bab 17:** Evaluasi, refleksi, dan integrasi kompetensi (asesmen UTS/UAS, rubrik, tinjauan capaian, rekomendasi)  
- **Lampiran:** Rubrik penilaian + pemetaan ke CPMK, template laporan, glosarium, cheat sheet C, modul praktikum 1, referensi tambahan, soal latihan, rubrik refleksi & portofolio  

Setiap bab inti memuat: **Sub-CPMK**, **Materi Pokok**, **Aktivitas**, **Latihan & Refleksi**, **Asesmen**, **Checklist**, **Rangkuman**. Acuan struktur per bab ada di `struktur_bab_buku_ajar_OBE.text`.

**File utama:**
- `buku_ajar/main.tex` — dokumen utama (memuat preamble, frontmatter, subfile tiap bab, lampiran, backmatter)
- `buku_ajar/preamble.tex` — paket LaTeX, gaya listing C, lingkungan (rangkuman, aktivitas, latihan, asesmen, checklist)
- `buku_ajar/frontmatter.tex` — halaman judul, kata pengantar, cara pakai, identitas, CPL/CPMK, matriks
- `buku_ajar/backmatter.tex` — daftar pustaka
- `buku_ajar/lampiran.tex` — lampiran A–H
- `buku_ajar/references.bib` — BibTeX (buku, situs, Wikipedia, cppreference, dll.)
- `buku_ajar/bab/bab-01.tex` … `bab-17.tex` — tiap bab (subfile); tiap bab memuat `\input` ke subfolder `bab-XX/` (section-XX-*.tex)

---

### 2. `buku/` — Buku Praktikum Pascal, C & C++

Buku praktikum **Pascal, C, dan C++** untuk Program Studi S1 Sistem Informasi (Fakultas Teknologi Informasi, Universitas Bale Bandung). 13 bab dengan `subfiles` dan bibliografi `biblatex`/biber.

- **Bab 1:** Pengantar & persiapan lingkungan  
- **Bab 2:** Tipe data, variabel, I/O  
- **Bab 3:** Operator & ekspresi  
- **Bab 4:** Percabangan  
- **Bab 5:** Perulangan  
- **Bab 6:** Array & matriks  
- **Bab 7:** String & karakter  
- **Bab 8:** Record / struct  
- **Bab 9:** Pointer  
- **Bab 10:** Fungsi & prosedur  
- **Bab 11:** Alokasi memori dinamis  
- **Bab 12:** File & I/O  
- **Bab 13:** Modularisasi program  

**File utama:**
- `buku/main.tex` — dokumen utama
- `buku/chapters/bab01.tex` … `bab13.tex` — bab per bab
- `buku/references.bib` — referensi
- `buku/rps.tex` — RPS (jika dipakai)
- `buku/Makefile` — build (all, chapter, clean); output ke `build/`
- `buku/compile.bat` — kompilasi Windows (pdflatex + biber); output ke `output/pdf/`
- `buku/clean.bat` — bersihkan artefak LaTeX

---

### 3. RPS & Silabus OBE

- **silabus_algoritma_dan_pemrograman.tex** — RPS (Rencana Pembelajaran Semester) berbasis OBE: identitas mata kuliah, CPL, CPMK, materi, metode, penilaian, referensi. Program studi Teknik Informatika, kode TIF-101, bahasa C.
- **silabus.tex** — file silabus lain (jika ada).
- **struktur_bab_buku_ajar_OBE.text** — panduan struktur isi per bab buku ajar OBE (pendahuluan, landasan teori, unit materi Sub-CPMK, bab evaluasi, lampiran).
- **struktur_silabus_OBE.text** — kerangka silabus OBE (identitas, CPL, CPMK, Sub-CPMK, materi, metode, pengalaman belajar, penilaian, referensi).

---

### 4. Skrip Build (Root)

- **compile_main.bat** — Kompilasi buku ajar (`buku_ajar/main.tex`). Pindah ke `buku_ajar/`, jalankan pdflatex (+ optional latexmk), bibtex, pdflatex lagi. Output ke `output/main.pdf` (jika tidak ada kendala tulis). Setelah selesai, cleanup aux/bbl/… di `output/` dan `buku_ajar/`.
- **compile_bab.bat** — Kompilasi per bab buku ajar: loop `bab/bab-*.tex`, pdflatex + bibtex + pdflatex, pindah PDF ke `output/`.
- **clean_buku_ajar.bat** — Hapus file hasil kompilasi di `buku_ajar/` (aux, log, bbl, pdf, dll.).

---

## Struktur Folder (Ringkas)

```
Modul_Praktikum_Algo/
├── README.md
├── LICENSE                    # GPL-3.0
├── compile_main.bat            # Build buku ajar → output/
├── compile_bab.bat             # Build per bab buku ajar → output/
├── clean_buku_ajar.bat        # Bersihkan artefak di buku_ajar/
├── struktur_bab_buku_ajar_OBE.text
├── struktur_silabus_OBE.text
├── silabus_algoritma_dan_pemrograman.tex   # RPS OBE
├── silabus.tex
├── output/                    # PDF/log dari compile_main.bat atau compile_bab.bat
├── buku_ajar/                 # Buku ajar OBE (C, 17 bab)
│   ├── main.tex
│   ├── preamble.tex
│   ├── frontmatter.tex
│   ├── backmatter.tex
│   ├── lampiran.tex
│   ├── references.bib
│   └── bab/
│       ├── bab-01.tex … bab-17.tex
│       └── bab-01/ … bab-17/   # section-*.tex per bab
└── buku/                      # Buku praktikum Pascal/C/C++ (13 bab)
    ├── main.tex
    ├── references.bib
    ├── rps.tex
    ├── Makefile
    ├── compile.bat
    ├── clean.bat
    └── chapters/
        └── bab01.tex … bab13.tex
```

---

## Cara Kompilasi

### Buku Ajar OBE (`buku_ajar`)

**Windows (dari root):**
```batch
compile_main.bat
```
Hasil: `output/main.pdf` (jika skrip menulis ke sana) atau `buku_ajar/main.pdf` setelah jalankan pdflatex di dalam `buku_ajar/`.

**Manual di dalam `buku_ajar/`:**
```batch
cd buku_ajar
pdflatex -interaction=nonstopmode -halt-on-error main.tex
bibtex main
pdflatex main.tex
pdflatex main.tex
```
PDF: `buku_ajar/main.pdf`.

**Per bab:**
```batch
compile_bab.bat
```
PDF per bab di `output/` (mis. `bab-01.pdf`, …).

### Buku Praktikum Pascal/C/C++ (`buku`)

**Dengan Make (Linux/macOS/Git Bash):**
```bash
cd buku
make          # atau make all  → build/main.pdf
make chapter CH=bab01
make clean
```

**Windows:**
```batch
cd buku
compile.bat
```
PDF di `buku/output/pdf/main.pdf`.

### RPS/Silabus

```batch
pdflatex silabus_algoritma_dan_pemrograman.tex
```
(atau gunakan skrip/IDE yang memanggil pdflatex pada file tersebut.)

---

## Prasyarat

- **LaTeX:** TeX Live, MiKTeX, atau MacTeX
- **Buku ajar:** `pdflatex`, `bibtex`
- **Buku praktikum:** `pdflatex`, `biber` (untuk bibliografi)
- **Makefile (buku):** `make`; opsional `latexmk`, `biber`

---

## Referensi & Lisensi

- Referensi tercantum di `buku_ajar/references.bib` dan `buku/references.bib` (buku, cppreference, Wikipedia, GeeksforGeeks, SPADA, dll.).
- Proyek ini berlisensi **GNU General Public License v3.0** (lihat [LICENSE](LICENSE)).

---

*Terakhir diperbarui sesuai isi codebase (buku_ajar OBE 17 bab, buku praktikum 13 bab, RPS/silabus, skrip build).*
