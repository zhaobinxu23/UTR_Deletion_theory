data1 = load('data1');
data1 = data1.data1;

    for j = 1:100
        yy1(j) = (length(find(data1 <= (29500+5*j)))-length(find(data1 < (29495+5*j))))/length(data1);
    end
%%    
data2 = load('data2');
data2 = data2.data2;

    for j = 1:100
        yy2(j) = (length(find(data2 <= (29500+5*j)))-length(find(data2 < (29495+5*j))))/length(data2);
    end
    %%    
data3 = load('data3');
data3 = data3.data3;

    for j = 1:100
        yy3(j) = (length(find(data3 <= (29500+5*j)))-length(find(data3 < (29495+5*j))))/length(data3);
    end
    %%    
data4 = load('data4');
data4 = data4.data4;

    for j = 1:100
        yy4(j) = (length(find(data4 <= (29500+5*j)))-length(find(data4 < (29495+5*j))))/length(data4);
    end
    %%    
data5 = load('data5');
data5 = data5.data5;

    for j = 1:100
        yy5(j) = (length(find(data5 <= (29500+5*j)))-length(find(data5 < (29495+5*j))))/length(data5);
    end
    %%    
data6 = load('data6');
data6 = data6.data6;

    for j = 1:100
        yy6(j) = (length(find(data6 <= (29500+5*j)))-length(find(data6 < (29495+5*j))))/length(data6);
    end
    %%    
data7 = load('data7');
data7 = data7.data7;

    for j = 1:100
        yy7(j) = (length(find(data7 <= (29500+5*j)))-length(find(data7 < (29495+5*j))))/length(data7);
    end
    %%    
data8 = load('data8');
data8 = data8.data8;

    for j = 1:100
        yy8(j) = (length(find(data8 <= (29500+5*j)))-length(find(data8 < (29495+5*j))))/length(data8);
    end
    %%    
data9 = load('data9');
data9 = data9.data9;

    for j = 1:100
        yy9(j) = (length(find(data9 <= (29500+5*j)))-length(find(data9 < (29495+5*j))))/length(data9);
    end
    %%    
data10 = load('data10');
data10 = data10.data10;

    for j = 1:100
        yy10(j) = (length(find(data10 <= (29500+5*j)))-length(find(data10 < (29495+5*j))))/length(data10);
    end
    %%    
data11 = load('data11');
data11 = data11.data11;

    for j = 1:100
        yy11(j) = (length(find(data11 <= (29500+5*j)))-length(find(data11 < (29495+5*j))))/length(data11);
    end
    %%    
data12 = load('data12');
data12 = data12.data12;

    for j = 1:100
        yy12(j) = (length(find(data12 <= (29500+5*j)))-length(find(data12 < (29495+5*j))))/length(data12);
    end
    %%    
data13 = load('data13');
data13 = data13.data13;

    for j = 1:100
        yy13(j) = (length(find(data13 <= (29500+5*j)))-length(find(data13 < (29495+5*j))))/length(data13);
    end
    %%    
data14 = load('data14');
data14 = data14.data14;

    for j = 1:100
        yy14(j) = (length(find(data14 <= (29500+5*j)))-length(find(data14 < (29495+5*j))))/length(data14);
    end
    %%    
data15 = load('data15');
data15 = data15.data15;

    for j = 1:100
        yy15(j) = (length(find(data15 <= (29500+5*j)))-length(find(data15 < (29495+5*j))))/length(data15);
    end
    %%    
data16 = load('data16');
data16 = data16.data16;

    for j = 1:100
        yy16(j) = (length(find(data16 <= (29500+5*j)))-length(find(data16 < (29495+5*j))))/length(data16);
    end
    %%    
data17 = load('data17');
data17 = data17.data17;

    for j = 1:100
        yy17(j) = (length(find(data17 <= (29500+5*j)))-length(find(data17 < (29495+5*j))))/length(data17);
    end
    %%    
data18 = load('data18');
data18 = data18.data18;

    for j = 1:100
        yy18(j) = (length(find(data18 <= (29500+5*j)))-length(find(data18 < (29495+5*j))))/length(data18);
    end
    %%    

    
    xxx = [29500:5:29995];
    plot(xxx,yy1,'DisplayName','COVID-19 Genome Length Distribution of Jan. 2020');%Figure1.A
     saveas(gcf,'figure1A.fig')
 
    plot(xxx,yy2,'DisplayName','COVID-19 Genome Length Distribution of Feb. 2020');%Figure1.B
     saveas(gcf,'figure1B.fig')
    
    plot(xxx,yy3,'DisplayName','COVID-19 Genome Length Distribution of Mar. 2020');%Figure1.C
      saveas(gcf,'figure1C.fig')
      
    plot(xxx,yy4,'DisplayName','COVID-19 Genome Length Distribution of Apr. 2020');%Figure1.D
      saveas(gcf,'figure1D.fig')
      
    plot(xxx,yy5,'DisplayName','COVID-19 Genome Length Distribution of May. 2020');%Figure1.E
      saveas(gcf,'figure1E.fig')
    plot(xxx,yy6,'DisplayName','COVID-19 Genome Length Distribution of Jun. 2020');%Figure1.F
      saveas(gcf,'figure1F.fig')
    plot(xxx,yy7,'DisplayName','COVID-19 Genome Length Distribution of Jul. 2020');%Figure1.G
    saveas(gcf,'figure1G.fig')
    plot(xxx,yy8,'DisplayName','COVID-19 Genome Length Distribution of Aug. 2020');%Figure1.H
      saveas(gcf,'figure1H.fig')
    plot(xxx,yy9,'DisplayName','COVID-19 Genome Length Distribution of Sept. 2020');%Figure1.I
     saveas(gcf,'figure1I.fig')
    plot(xxx,yy10,'DisplayName','COVID-19 Genome Length Distribution of Oct. 2020');%Figure1.J
    saveas(gcf,'figure1J.fig')
    plot(xxx,yy11,'DisplayName','COVID-19 Genome Length Distribution of Nov. 2020');%Figure1.K
     saveas(gcf,'figure1K.fig')
    plot(xxx,yy12,'DisplayName','COVID-19 Genome Length Distribution of Dec. 2020');%Figure1.L
      saveas(gcf,'figure1L.fig')
    plot(xxx,yy13,'DisplayName','COVID-19 Genome Length Distribution of Jan. 2021');%Figure1.M
     saveas(gcf,'figure1M.fig')
    plot(xxx,yy14,'DisplayName','COVID-19 Genome Length Distribution of Feb. 2021');%Figure1.N
     saveas(gcf,'figure1N.fig')
    plot(xxx,yy15,'DisplayName','COVID-19 Genome Length Distribution of Mar. 2021');%Figure1.O
      saveas(gcf,'figure1O.fig')
    plot(xxx,yy16,'DisplayName','COVID-19 Genome Length Distribution of Apr. 2021');%Figure1.P
      saveas(gcf,'figure1P.fig')
    plot(xxx,yy17,'DisplayName','COVID-19 Genome Length Distribution of May. 2021');%Figure1.Q
      saveas(gcf,'figure1Q.fig')
    plot(xxx,yy18,'DisplayName','COVID-19 Genome Length Distribution of Jun. 2021');%Figure1.R
      saveas(gcf,'figure1R.fig')
      
      
%% figure 1.S     
xx = [1:18];
yy = [mean(data1) mean(data2) mean(data3) mean(data4) mean(data5) mean(data6) mean(data7) mean(data8) mean(data9) mean(data10) mean(data11) mean(data12) mean(data13) mean(data14) mean(data15) mean(data16) mean(data17) mean(data18)];
plot(xx,yy)
