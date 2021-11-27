
%% load death_single.mat&& asy_single.mat first

for i = 1:29903
    [p,q] = chi2test([sum(death_number(:,i)) sum(asy_number(:,i)); 2468-sum(death_number(:,i)) 1386-sum(asy_number(:,i))]);
    pro_single_2(i,1) = p;
    pro_single_2(i,2) = (sum(death_number(:,i))/sum(asy_number(:,i)))/((2468-sum(death_number(:,i)))/(1386-sum(asy_number(:,i))));
    
end
dd = 1;

for i = 1:29903
    if pro_single_2(i,1) < 0.01 && pro_single_2(i,2) > 1 &&  mean(mutation_single_matrix(i,:)) < 0.8
        pool_mutation(dd,3) = i;
        pool_mutation(dd,1) =  pro_single_2(i,2);
        pool_mutation(dd,2) =  mean(mutation_single_matrix(i,:));
        dd = dd +1;
    end
end
% ccc = 1;
% for k = 1:length(pool_mutation)
%     if mean(mutation_single_matrix(pool_mutation(k),:)) < 0.8
%         % sum(death_number(:,pool_mutation(k)))/2468 < 0.9 && sum(asy_number(:,pool_mutation(k)))/1386 < 0.9
%        xx(ccc) =  pool_mutation(k);
%        ccc = ccc+1;
%     end
% end

scatter(pool_mutation(:,1),pool_mutation(:,2),'r.');
hold on
for i = 1:length(pool_mutation(:,1))
    c = num2str(pool_mutation(i,3));
    text(pool_mutation(i,1),pool_mutation(i,2),c);
end
hold off