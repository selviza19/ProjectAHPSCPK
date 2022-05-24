function [Max_Motor_Score] = ahp()
disp ('Matriks Perbandingan Berpasangan pada Kriteria'); 

MPBk = [1/1   2/1  4/1  3/1;
        1/2   1/1  3/1  2/1;
        1/4   1/3  1/1  1/2;
        1/3   1/2  2/1  1/1]
    
% normalisasi
w_MPB = calc_norm(MPBk)

% hitung eigenvector
[m n] = size(w_MPB);
   for i=1 : m, 
        sumRow = 0; 
        for j=1 :n, 
            sumRow = sumRow + w_MPB(i,j); 
        end;
 V(i)=(sumRow);
 end;
 
 disp('Eigenvecttor')
 w_MPB=transpose(V)/m
 
 
 % membandingkan rating
 disp ('perbandinan rating : alternatif berpasangan')
 AKB_R = [100/100 200/100 68/100  81/100;
          119/100 100/100 82/100  97/100;
          146/100 123/100 100/100 119/100;
          123/100 103/100 84/100  100/100]
 w_R = calc_norm(AKB_R)
 
 [m n] =  size(w_R);
    for i=1 : m,
        sumRow = 0;
        for j=1 :n,
            sumRow = sumRow + w_R(i,j);
        end;
     V(i)=sumRow;
    end;
    
    disp('Eigenvector')
    w_R=transpose(V)/m
    
       
% membandingkan displacement :
disp ('perbandingan displament : alternatif kualitatif berpasangan')
AKB_D = [100/100 131/100 108/100 261/100;
         76/100  100/100 83/100  261/100;
         92/100  121/100 100/100 240/100;
         38/100  38/100  42/100  100/100]

w_D = calc_norm(AKB_D) 

[m n] = size(w_D);
    for i=1 : m, 
        sumRow = 0; 
        for j=1 :n, 
            sumRow = sumRow + w_D(i,j); 
        end;
    V(i)=(sumRow);
    end;
 
 disp('Eigenvector')
 w_D=transpose(V)/m
 
 % membandingkan power :
disp ('perbandingan power : alternatif kualitatif berpasangan')
AKB_P = [100/100 588/100 361/100 933/100;
         17/100  100/100 61/100  159/100;
         28/100  163/100 100/100 250/100;
         11/100  63/100  39/100  100/100]

w_P = calc_norm(AKB_P) 

[m n] = size(w_P);
    for i=1 : m, 
        sumRow = 0; 
        for j=1 :n, 
            sumRow = sumRow + w_P(i,j); 
        end;
    V(i)=(sumRow);
    end;
 
 disp('Eigenvector')
 w_P=transpose(V)/m 

% membandingkan torque :
disp ('perbandingan torque : alternatif kualitatif berpasangan')
AKB_T = [100/100 494/100 356/100 892/100;
         20/100  100/100 72/100  180/100;
         28/100  139/100 100/100 251/100;
         11/100  55/100  40/100  100/100]

w_T = calc_norm(AKB_T) 

[m n] = size(w_T);
    for i=1 : m, 
        sumRow = 0; 
        for j=1 :n, 
            sumRow = sumRow + w_T(i,j); 
        end;
    V(i)=(sumRow);
    end;
 
 disp('Eigenvector')
 w_T=transpose(V)/m 
 
 wM = [w_R w_D w_P w_T];
 
 disp('Nilai hasil akhir')
 MC_Scores = wM * w_MPB
    
 disp('Nilai Motor terbaik terpilih berdasarkan spesifikasi')
 Max_MC_spec = max(MC_Scores)
 
    function[normvect] = calc_norm(M)
        sM = sum(M);
        normvect = M./sM;
        disp('Normalisasi Matriks');
    end
end