@echo off
REM ========================================
REM Script Pembersihan File Build
REM Buku Modul Praktikum
REM ========================================

echo.
echo ========================================
echo Membersihkan File Build
echo ========================================
echo.

REM Hapus file temporary di root
echo [1/2] Menghapus file temporary di root...
del /Q main.aux main.bbl main.bcf main.blg main.log main.out main.run.xml main.toc main.pdf 2>nul
del /Q chapters\*.aux 2>nul

REM Hapus folder output
echo [2/2] Menghapus folder output...
if exist "output" (
    rmdir /S /Q output
    echo    - Folder output dihapus
)

echo.
echo ========================================
echo PEMBERSIHAN SELESAI!
echo ========================================
echo.

