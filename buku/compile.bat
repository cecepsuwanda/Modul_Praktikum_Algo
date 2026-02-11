@echo off
REM ========================================
REM Script Kompilasi Buku Modul Praktikum
REM Universitas Bale Bandung
REM ========================================

echo.
echo ========================================
echo Kompilasi Buku Modul Praktikum
echo ========================================
echo.

REM Buat folder output jika belum ada
if not exist "output" mkdir output
if not exist "output\pdf" mkdir output\pdf
if not exist "output\log" mkdir output\log

REM Bersihkan file temporary lama
echo [1/6] Membersihkan file temporary lama...
del /Q main.aux main.bbl main.bcf main.blg main.log main.out main.run.xml main.toc 2>nul

REM Kompilasi pertama
echo [2/6] Kompilasi pertama (pdflatex)...
pdflatex -interaction=nonstopmode -halt-on-error -file-line-error -output-directory=output main.tex
if errorlevel 1 (
    echo ERROR: Kompilasi pertama gagal!
    goto :error
)

REM Jalankan biber untuk bibliografi
echo [3/6] Memproses bibliografi (biber)...
biber --output-directory output main
if errorlevel 1 (
    echo WARNING: Biber gagal, melanjutkan tanpa bibliografi...
)

REM Kompilasi kedua
echo [4/6] Kompilasi kedua (pdflatex)...
pdflatex -interaction=nonstopmode -halt-on-error -file-line-error -output-directory=output main.tex
if errorlevel 1 (
    echo ERROR: Kompilasi kedua gagal!
    goto :error
)

REM Kompilasi ketiga untuk finalisasi referensi
echo [5/6] Kompilasi ketiga (finalisasi)...
pdflatex -interaction=nonstopmode -halt-on-error -file-line-error -output-directory=output main.tex
if errorlevel 1 (
    echo ERROR: Kompilasi ketiga gagal!
    goto :error
)

REM Pindahkan file PDF ke folder output/pdf
echo [6/6] Memindahkan file hasil kompilasi...
if exist "output\main.pdf" (
    move /Y "output\main.pdf" "output\pdf\main.pdf" >nul
    echo    - PDF: output\pdf\main.pdf [OK]
) else (
    echo ERROR: File main.pdf tidak ditemukan!
    goto :error
)

REM Pindahkan file log ke folder output/log
if exist "output\main.log" (
    move /Y "output\main.log" "output\log\main.log" >nul
    echo    - LOG: output\log\main.log [OK]
)

if exist "output\main.blg" (
    move /Y "output\main.blg" "output\log\main.blg" >nul
    echo    - BIBER LOG: output\log\main.blg [OK]
)

echo.
echo ========================================
echo KOMPILASI BERHASIL!
echo ========================================
echo.
echo File PDF: output\pdf\main.pdf
echo File LOG: output\log\main.log
echo.
goto :end

:error
echo.
echo ========================================
echo KOMPILASI GAGAL!
echo ========================================
echo.
echo Periksa file log untuk detail error:
echo    output\log\main.log
echo.
REM Tetap simpan log meskipun gagal
if exist "output\main.log" move /Y "output\main.log" "output\log\main.log" >nul
exit /b 1

:end
exit /b 0

