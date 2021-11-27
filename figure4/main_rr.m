d = 1;
for i = 1:1573
    if min(mutation_matrix(i,:)) < 0.80
        rr(d,1) = i;
        rr(d,2) = r(i);
        rr(d,3) = mean(mutation_matrix(i,:));
        rr(d,4) = pro_2(i);
        rr(d,5) = death_2(i)/asy_2(i) /(death_2_mut(i)/asy_2_mut(i));
        d = d + 1;
    end
end
%%%
    
    for k = 1:length(rr)
        if rr(k,4) < 0.05 && rr(k,5) > 1 && rr(k,2) > 0.4 && rr(k,3) < 0.9
            rr(k,1)
        end
    end
    %% find i = 1, 1572
            

% death(1521)/asy(1521) - death_mut(1521)/asy_mut(1521);