function dd = sum_death(kk)
if kk > 100
    dd = 1;
else
syms c

a = 2.2;
b = 0.14;
d = int(c^(a-1)*exp(-c),0,inf);
for i = 1:kk
  temp(i) = double(b^a*((i)^(a-1)).*exp(-b*(i))/d);  
end
dd = sum(temp);
end

end

