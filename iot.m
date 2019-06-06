global X mu_X mu_xi;
altsinir_x=0; ustsinir_x=60; altsinir_y=0; ustsinir_y=1000;
altsinir_t=0; ustsinir_t=500; altsinir_z=0; ustsinir_z=100;
xi=20; yi=700; ti=180; zi=0;

%Giris - Temperature durumu ucgenleri
Ucgen(altsinir_x,0,30,45,ustsinir_x,xi); x_A=X; mu_XA=mu_X; mu_xi_XA=mu_xi;
Ucgen(altsinir_x,30,45,60,ustsinir_x,xi); x_C=X; mu_XC=mu_X; mu_xi_XC=mu_xi;

%Giris - Mq135 durumu ucgenleri
Ucgen(altsinir_y,0,0,200,ustsinir_y,yi); y_T=X; mu_YT=mu_X; mu_yi_YT=mu_xi;
Ucgen(altsinir_y,100,300,500,ustsinir_y,yi); y_O=X; mu_YO=mu_X; mu_yi_YO=mu_xi;
Ucgen(altsinir_y,300,600,900,ustsinir_y,yi); y_K=X; mu_YK=mu_X; mu_yi_YK=mu_xi;
Ucgen(altsinir_y,700,1000,1000,ustsinir_y,yi); y_A=X; mu_YA=mu_X; mu_yi_YA=mu_xi;

%Giris - Mq3 durumu ucgenleri
Ucgen(altsinir_t,0,0,200,ustsinir_t,ti); t_Y=X; mu_TY=mu_X; mu_ti_TY=mu_xi;
Ucgen(altsinir_t,120,200,280,ustsinir_t,ti); t_A=X; mu_TA=mu_X; mu_ti_TA=mu_xi;
Ucgen(altsinir_t,200,280,350,ustsinir_t,ti); t_O=X; mu_TO=mu_X; mu_ti_TO=mu_xi;
Ucgen(altsinir_t,280,360,450,ustsinir_t,ti); t_YK=X; mu_TYK=mu_X; mu_ti_TYK=mu_xi;
Ucgen(altsinir_t,400,500,500,ustsinir_t,ti); t_CY=X; mu_TCY=mu_X; mu_ti_TCY=mu_xi;

%Cikis - FireDetection sonuc ucgenleri
Ucgen(altsinir_z,0,0,25,ustsinir_z,zi); z_Y=X; mu_ZY=mu_X;
Ucgen(altsinir_z,0,25,50,ustsinir_z,zi); z_A=X; mu_ZA=mu_X;
Ucgen(altsinir_z,25,50,75,ustsinir_z,zi); z_O=X; mu_ZO=mu_X;
Ucgen(altsinir_z,50,75,100,ustsinir_z,zi); z_YK=X; mu_ZYK=mu_X;
Ucgen(altsinir_z,75,100,100,ustsinir_z,zi); z_CY=X; mu_ZCY=mu_X;

%Kurallar
mu_kural1=min(mu_xi_XA,min(mu_yi_YT,mu_ti_TY));%Sicalik Az Mq135 Temiz Mq3 Yok
mu_kural2=min(mu_xi_XA,min(mu_yi_YT,mu_ti_TA));%Sicalik Az Mq135 Temiz Mq3 Az
mu_kural3=min(mu_xi_XA,min(mu_yi_YT,mu_ti_TO));%Sicalik Az Mq135 Temiz Mq3 Orta
mu_kural4=min(mu_xi_XA,min(mu_yi_YT,mu_ti_TYK));%Sicalik Az Mq135 Temiz Mq3 Yuksek
mu_kural5=min(mu_xi_XA,min(mu_yi_YT,mu_ti_TCY));%Sicalik Az Mq135 Temiz Mq3 CokYuksek

mu_kural6=min(mu_xi_XA,min(mu_yi_YO,mu_ti_TY));%Sicalik Az Mq135 Olabilir Mq3 Yok
mu_kural7=min(mu_xi_XA,min(mu_yi_YO,mu_ti_TA));%Sicalik Az Mq135 Olabilir Mq3 Az
mu_kural8=min(mu_xi_XA,min(mu_yi_YO,mu_ti_TO));%Sicalik Az Mq135 Olabilir Mq3 Orta
mu_kural9=min(mu_xi_XA,min(mu_yi_YO,mu_ti_TYK));%Sicalik Az Mq135 Olabilir Mq3 Yuksek
mu_kural10=min(mu_xi_XA,min(mu_yi_YO,mu_ti_TCY));%Sicalik Az Mq135 Olabilir Mq3 CokYuksek

mu_kural11=min(mu_xi_XA,min(mu_yi_YK,mu_ti_TY));%Sicalik Az Mq135 Kotu Mq3 Yok
mu_kural12=min(mu_xi_XA,min(mu_yi_YK,mu_ti_TA));%Sicalik Az Mq135 Kotu Mq3 Az
mu_kural13=min(mu_xi_XA,min(mu_yi_YK,mu_ti_TO));%Sicalik Az Mq135 Kotu Mq3 Orta
mu_kural14=min(mu_xi_XA,min(mu_yi_YK,mu_ti_TYK));%Sicalik Az Mq135 Kotu Mq3 Yuksek
mu_kural15=min(mu_xi_XA,min(mu_yi_YK,mu_ti_TCY));%Sicalik Az Mq135 Kotu Mq3 CokYuksek

mu_kural16=min(mu_xi_XA,min(mu_yi_YA,mu_ti_TY));%Sicalik Az Mq135 Acil Mq3 Yok
mu_kural17=min(mu_xi_XA,min(mu_yi_YA,mu_ti_TA));%Sicalik Az Mq135 Acil Mq3 Az
mu_kural18=min(mu_xi_XA,min(mu_yi_YA,mu_ti_TO));%Sicalik Az Mq135 Acil Mq3 Orta
mu_kural19=min(mu_xi_XA,min(mu_yi_YA,mu_ti_TYK));%Sicalik Az Mq135 Acil Mq3 Yuksek
mu_kural20=min(mu_xi_XA,min(mu_yi_YA,mu_ti_TCY));%Sicalik Az Mq135 Acil Mq3 CokYuksek

mu_kural21=min(mu_xi_XC,min(mu_yi_YT,mu_ti_TY));%Sicalik Cok Mq135 Temiz Mq3 Yok
mu_kural22=min(mu_xi_XC,min(mu_yi_YT,mu_ti_TA));%Sicalik Cok Mq135 Temiz Mq3 Az
mu_kural23=min(mu_xi_XC,min(mu_yi_YT,mu_ti_TO));%Sicalik Cok Mq135 Temiz Mq3 Orta
mu_kural24=min(mu_xi_XC,min(mu_yi_YT,mu_ti_TYK));%Sicalik Cok Mq135 Temiz Mq3 Yuksek
mu_kural25=min(mu_xi_XC,min(mu_yi_YT,mu_ti_TCY));%Sicalik Cok Mq135 Temiz Mq3 CokYuksek

mu_kural26=min(mu_xi_XC,min(mu_yi_YO,mu_ti_TY));%Sicalik Cok Mq135 Olabilir Mq3 Yok
mu_kural27=min(mu_xi_XC,min(mu_yi_YO,mu_ti_TA));%Sicalik Cok Mq135 Olabilir Mq3 Az
mu_kural28=min(mu_xi_XC,min(mu_yi_YO,mu_ti_TO));%Sicalik Cok Mq135 Olabilir Mq3 Orta
mu_kural29=min(mu_xi_XC,min(mu_yi_YO,mu_ti_TYK));%Sicalik Cok Mq135 Olabilir Mq3 Yuksek
mu_kural30=min(mu_xi_XC,min(mu_yi_YO,mu_ti_TCY));%Sicalik Cok Mq135 Olabilir Mq3 CokYuksek

mu_kural31=min(mu_xi_XC,min(mu_yi_YK,mu_ti_TY));%Sicalik Cok Mq135 Kotu Mq3 Yok
mu_kural32=min(mu_xi_XC,min(mu_yi_YK,mu_ti_TA));%Sicalik Cok Mq135 Kotu Mq3 Az
mu_kural33=min(mu_xi_XC,min(mu_yi_YK,mu_ti_TO));%Sicalik Cok Mq135 Kotu Mq3 Orta
mu_kural34=min(mu_xi_XC,min(mu_yi_YK,mu_ti_TYK));%Sicalik Cok Mq135 Kotu Mq3 Yuksek
mu_kural35=min(mu_xi_XC,min(mu_yi_YK,mu_ti_TCY));%Sicalik Cok Mq135 Kotu Mq3 CokYuksek

mu_kural36=min(mu_xi_XC,min(mu_yi_YA,mu_ti_TY));%Sicalik Cok Mq135 Acil Mq3 Yok
mu_kural37=min(mu_xi_XC,min(mu_yi_YA,mu_ti_TA));%Sicalik Cok Mq135 Acil Mq3 Az
mu_kural38=min(mu_xi_XC,min(mu_yi_YA,mu_ti_TO));%Sicalik Cok Mq135 Acil Mq3 Orta
mu_kural39=min(mu_xi_XC,min(mu_yi_YA,mu_ti_TYK));%Sicalik Cok Mq135 Acil Mq3 Yuksek
mu_kural40=min(mu_xi_XC,min(mu_yi_YA,mu_ti_TCY));%Sicalik Cok Mq135 Acil Mq3 CokYuksek

%Sonuclar
mu_sonuc1=mu_kural1*mu_ZY;
mu_sonuc2=mu_kural2*mu_ZA;
mu_sonuc3=mu_kural3*mu_ZA;
mu_sonuc4=mu_kural4*mu_ZO;
mu_sonuc5=mu_kural5*mu_ZYK;

mu_sonuc6=mu_kural6*mu_ZA;
mu_sonuc7=mu_kural7*mu_ZA;
mu_sonuc8=mu_kural8*mu_ZO;
mu_sonuc9=mu_kural9*mu_ZYK;
mu_sonuc10=mu_kural10*mu_ZYK;

mu_sonuc11=mu_kural11*mu_ZA;
mu_sonuc12=mu_kural12*mu_ZO;
mu_sonuc13=mu_kural13*mu_ZO;
mu_sonuc14=mu_kural14*mu_ZYK;
mu_sonuc15=mu_kural15*mu_ZCY;

mu_sonuc16=mu_kural16*mu_ZO;
mu_sonuc17=mu_kural17*mu_ZYK;
mu_sonuc18=mu_kural18*mu_ZYK;
mu_sonuc19=mu_kural19*mu_ZCY;
mu_sonuc20=mu_kural20*mu_ZCY;

mu_sonuc21=mu_kural21*mu_ZY;
mu_sonuc22=mu_kural22*mu_ZA;
mu_sonuc23=mu_kural23*mu_ZO;
mu_sonuc24=mu_kural24*mu_ZO;
mu_sonuc25=mu_kural25*mu_ZYK;

mu_sonuc26=mu_kural26*mu_ZA;
mu_sonuc27=mu_kural27*mu_ZO;
mu_sonuc28=mu_kural28*mu_ZO;
mu_sonuc29=mu_kural29*mu_ZYK;
mu_sonuc30=mu_kural30*mu_ZCY;

mu_sonuc31=mu_kural31*mu_ZO;
mu_sonuc32=mu_kural32*mu_ZO;
mu_sonuc33=mu_kural33*mu_ZYK;
mu_sonuc34=mu_kural34*mu_ZYK;
mu_sonuc35=mu_kural35*mu_ZCY;

mu_sonuc36=mu_kural36*mu_ZYK;
mu_sonuc37=mu_kural37*mu_ZYK;
mu_sonuc38=mu_kural38*mu_ZCY;
mu_sonuc39=mu_kural39*mu_ZCY;
mu_sonuc40=mu_kural40*mu_ZCY;


mu_birlestirme1=max(max(mu_sonuc1,mu_sonuc2),max(mu_sonuc3,mu_sonuc4));
mu_birlestirme2=max(max(mu_sonuc5,mu_sonuc6),max(mu_sonuc7,mu_sonuc8));
mu_birlestirme3=max(max(mu_sonuc9,mu_sonuc10),max(mu_sonuc11,mu_sonuc12));
mu_birlestirme4=max(max(mu_sonuc13,mu_sonuc14),max(mu_sonuc15,mu_sonuc16));
mu_birlestirme5=max(max(mu_sonuc17,mu_sonuc18),max(mu_sonuc19,mu_sonuc20));
mu_birlestirme6=max(max(mu_sonuc21,mu_sonuc22),max(mu_sonuc23,mu_sonuc24));
mu_birlestirme7=max(max(mu_sonuc25,mu_sonuc26),max(mu_sonuc27,mu_sonuc28));
mu_birlestirme8=max(max(mu_sonuc29,mu_sonuc30),max(mu_sonuc31,mu_sonuc32));
mu_birlestirme9=max(max(mu_sonuc33,mu_sonuc34),max(mu_sonuc35,mu_sonuc36));
mu_birlestirme10=max(max(mu_sonuc37,mu_sonuc38),max(mu_sonuc39,mu_sonuc40));

mu_birlestirme11=max(max(mu_birlestirme1,mu_birlestirme2),max(mu_birlestirme3,mu_birlestirme4));
mu_birlestirme12=max(max(mu_birlestirme5,mu_birlestirme6),max(mu_birlestirme7,mu_birlestirme8));
mu_birlestirme13=max(mu_birlestirme9,mu_birlestirme10);

mu_birlestirme=max(max(mu_birlestirme11,mu_birlestirme12),mu_birlestirme13);

plot(X,mu_birlestirme);
toplam_alan = sum(mu_birlestirme);
z=sum(mu_birlestirme.*X)/toplam_alan;
line([z,z],[0,1]);

