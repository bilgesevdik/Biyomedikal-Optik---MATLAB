%% 
% Veri Tanımlamaları

I0=100
x=linspace(0,50,1000)
dokular = {"Deri","Beyin","Meme","Karaciğer","Kas","Kemik"}
katsayilar = [0.2, 0.2, 0.05, 0.4, 0.15, 0.1]
%% 
% Denklem Uygulaması

for i = 1:length(katsayilar)
    secilen_katsayi = katsayilar(i);
    Ix=I0*exp(-secilen_katsayi*x);
    plot(x,Ix, LineWidth=2);
    hold on;
end
%% 
% Grafik Düzenleme

xlabel("Mesafe x(cm)")
ylabel("Işık Şiddeti I(x)")
title('Farklı Dokularda Işığın Üstel Azalması')
legend(dokular)
