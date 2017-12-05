function c = bisection(f,left,right,max_iter);
%BISECTION mencari akar dengan metode bisection
%   c=BISECTION(f,left,right,max_iter) menerima input fungsi f, batas kiri, batas kanan
%   dan maximum iterasi max_iter. Variable output c adalah vektor tebakan akar-akarnya 
a = zeros(max_iter,1);
b = zeros(max_iter,1);
c = zeros(max_iter,1);
fc = zeros(max_iter,1);
a(1) = left;
b(1) = right;
c(1) = (a(1)+b(1))/2;
% ===================== KODENYA MULAI DARI SINI============================
% ******************TULIS KODE DI BAWAH INSTRUKSI*************************
% ------------------------------------------------------------------------






% =========================================================================
[a c b fc]	
end
