% Tutorial Minggu ke-2 
% MENCARI AKAR-AKAR FUNGSI F(x) = 0 SECARA NUMERIK
% 
% File ini akan memanggil beberapa kode dan anda harus membuat kode tersebut
% agar anda dapat mencari akar dari fungsi F(x) dengan metode bisection
% 
% File latihan :    
%     1. fungsi.m
%     2. createGraph.m
%     3. bisection.m
%     
% Pada latihan ini, anda tidak perlu mengotak-atik code pada file ini 
% anda cukup membuat kode program pada file-file diatas.
% 
%==========================================================================
% PART 1: MENDEFINISIKAN FUNGSI
% Buatlah sebuah fungsi yang diberi nama fungsi.m yang nanti akan dicari akarnya
% Fungsi yang akan dibuat adalah  f(x) = x^6 - x - 1

clc;
clear;
close all;

fprintf('Part 1 : Mendefinisikan fungsi x^6 - x - 1\n');
x = [-1 0 1 2];
y = fungsi(x)
fprintf('Kode yang anda kerjakan adalah benar jika outputnya adalah \n');
fprintf('1 -1 -1 61 \n');
fprintf('Tekan tombol apapun untuk lanjut\n\n');
pause;

%==========================================================================
% PART 2: MEMBUAT GRAFIK FUNGSI YANG DIDEFINISIKAN
% Buatlah sebuah fungsi void yang diberinama createGraph.m yang inputnya adalah 
% fungsi yang telah didefiniskan diatas dan juga interval dimana grafik tersebut akan dibuat

fprintf('Part 2 : Menggambar grafik fungsi x^6 - x - 1 dari -1 sampai dengan 2\n');
a = -1;
b = 2;
createGraph(@(x)fungsi(x),a,b);
fprintf('Kode yang anda kerjakan adalah benar jika muncul window baru \n');
fprintf('yang berisi grafik fungsi yang anda definisikan di atas \n');
fprintf('Tekan tombol apapun untuk lanjut\n\n');
pause;

%==========================================================================
% PART 3: MENCARI AKAR DENGAN METODE BISECTION
% Buatlah sebuah fungsi yang diberimana bisection.m yang inputnya adalah fungsi yang telah 
% didefinisikan diatas dan juga batas kiri dan juga batas kanan dimana nilai fungsi pada
% batas kiri dan batas kanan berlawanan tanda.

fprintf('Part 3 : Mencari akar f(x) dengan metode bisection\n');
max_iter = 10; %dapat diubah sesuai kebutuhan
batas_kiri = 1; %dapat diubah tergantung dari fungsinya
batas_kanan = 2; %dapat diubah tergantung dari fungsinya
akar = bisection(@(x)fungsi(x),batas_kiri,batas_kanan,max_iter);
fprintf('Akar dari fungsi diatas didapatkan dari metode bisection adalah %f \n',akar(end));
fprintf('Kode yang anda kerjakan adalah benar jika outputnya adalah \n');
fprintf('1.133789\n');
fprintf('Program selesai. Tekan tombol apapun untuk lanjut\n\n');
pause;

% ==============================AKHIR KODE================================
% TIDAK MELAKUKAN PENGETIKAN KODE DI BAWAH GARIS INI AGAR LEBIH RAPI DALAM
% MELAKUKAN KODING DAN LEBIH DIMENGERTI.

% BONUS : 
% 1. COBALAH UNTUK MENCOBA FUNGSI YANG LAIN ATAU FUNGSI YANG SAMA TETAPI 
%    MENCARI AKAR YANG LAIN
% 2. COBALAH UNTUK MENGGANTI KRITERIA PENGHENTIAN ITERASI MENJADI TINGKAT
%	 KEAKURATAN SOLUSI DAN BUKANNYA MAKSIMUM ITERASI

