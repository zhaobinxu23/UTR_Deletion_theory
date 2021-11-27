   
%%    
d_start = min(data6);
d_end = max(data6);
mean_d = mean(data6);
std_d = std(data6);
sum_new = 0;
   for i = d_start:d_end
   
       length_real(i) = min(length(data6)*normpdf(i,mean_d,std_d),length(find((data6 == i))));
       sum_new = sum_new + i*length_real(i);
   end

mean_final = sum_new/(sum(length_real));

    
