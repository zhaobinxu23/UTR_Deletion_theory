clc
clear
hos_length = load('hos_length.mat');
hos_length = hos_length.hos_length;

sym_length = load('sym_length.mat');
sym_length = sym_length.sym_length;

asy_length = load('asy_length.mat');
asy_length = asy_length.asy_length;

[h12,p12] = kstest2(hos_length,sym_length);
[h13,p13] = kstest2(hos_length,asy_length);
[h23,p23] = kstest2(sym_length,asy_length);

random_hos_length1 = hos_length(randi(numel(hos_length),1,fix(length(hos_length)/2)));
random_hos_length2 = hos_length(randi(numel(hos_length),1,fix(length(hos_length)/2)));
[h1,p1] = kstest2(random_hos_length1,random_hos_length2);


random_sym_length1 = hos_length(randi(numel(sym_length),1,fix(length(sym_length)/2)));
random_sym_length2 = hos_length(randi(numel(sym_length),1,fix(length(sym_length)/2)));
[h2,p2] = kstest2(random_sym_length1,random_sym_length2);

random_asy_length1 = hos_length(randi(numel(asy_length),1,fix(length(asy_length)/2)));
random_asy_length2 = hos_length(randi(numel(asy_length),1,fix(length(asy_length)/2)));
[h3,p3] = kstest2(random_asy_length1,random_asy_length2);