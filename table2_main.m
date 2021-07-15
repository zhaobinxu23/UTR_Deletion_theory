data1 = load('data1');
data1 = data1.data1;

data2 = load('data2');
data2 = data2.data2;

data3 = load('data3');
data3 = data3.data3;

data4 = load('data4');
data4 = data4.data4;

data5 = load('data5');
data5 = data5.data5;

data6 = load('data6');
data6 = data6.data6;

data7 = load('data7');
data7 = data7.data7;

data8 = load('data8');
data8 = data8.data8;

data9 = load('data9');
data9 = data9.data9;

data10 = load('data10');
data10 = data10.data10;

data11 = load('data11');
data11 = data11.data11;

data12 = load('data12');
data12 = data12.data12;

data13 = load('data13');
data13 = data13.data13;

data14 = load('data14');
data14 = data14.data14;

data15 = load('data15');
data15 = data15.data15;

data16 = load('data16');
data16 = data16.data16;

data17 = load('data17');
data17 = data17.data17;


zz = [0.132746303
0.169830531
0.135377711
0.051810235
0.023252006
0.014453713
0.010401628
0.006963322
0.004974439
0.004928606
0.004961646
0.004466311
0.003886971
0.002397138
0.002597999
0.002544374
0.001965528];%% this data is the transformed death rate per month

for i = 1:10  
yyy(1) = length(find(data1>29845+5*i))/length(data1);
yyy(2) = length(find(data2>29845+5*i))/length(data2);
yyy(3) = length(find(data3>29845+5*i))/length(data3);
yyy(4) = length(find(data4>29845+5*i))/length(data4);
yyy(5) = length(find(data5>29845+5*i))/length(data5);
yyy(6) = length(find(data6>29845+5*i))/length(data6);
yyy(7) = length(find(data7>29845+5*i))/length(data7);
yyy(8) = length(find(data8>29845+5*i))/length(data8);
yyy(9) = length(find(data9>29845+5*i))/length(data9);
yyy(10) = length(find(data10>29845+5*i))/length(data10);
yyy(11) = length(find(data11>29845+5*i))/length(data11);
yyy(12) = length(find(data12>29845+5*i))/length(data12);
yyy(13) = length(find(data13>29845+5*i))/length(data13);
yyy(14) = length(find(data14>29845+5*i))/length(data14);
yyy(15) = length(find(data15>29845+5*i))/length(data15);
yyy(16) = length(find(data16>29845+5*i))/length(data16);
yyy(17) = length(find(data17>29845+5*i))/length(data17);

r(i) = corr(yyy(1:17),zz,'type','pearson');
end
