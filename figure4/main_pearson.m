%%
clc
clear

for kkk = 1:19
    kkk

dd = 1;
model_ref = fastaread('reference_genome.fasta');
filename = strcat('gisaid_hcov-19_',int2str(kkk),'.fasta');
model = fastaread(filename);
original_number = 0;
original_number_new = 0;


for k = 1:19:(length(model_ref(1).Sequence)-19)

    for i = 1:length(model)
    

          
              if  (contains(model(i).Sequence,model_ref(1).Sequence(k:k+18)) == 1) %% (contains(model(j).Header,num2str(AccessionID(xxx(i)))) == 1)  &&
                
                    
                 original_number = original_number + 1;
               
              end
%               if  (contains(model(i).Sequence,model_ref(1).Sequence(k+1:k+18)) == 1) %% (contains(model(j).Header,num2str(AccessionID(xxx(i)))) == 1)  &&
%                 
%                     
%                  original_number_new = original_number_new + 1;
%                
%               end
     end
    
    original(dd) = original_number/length(model);
    dd = dd+1;
   
    original_number = 0;
%     original_number_new = 0;
end
new_filename = strcat(int2str(kkk),'_data');

save(new_filename,'original');
clear original
end


%%
clc
clear
zz = load('death_tend.mat');
zz = zz.death_tend;

model = load('1_data.mat');
model = model.original;

model1 = load('2_data.mat');
model1 = model1.original;

model2 = load('3_data.mat');
model2 = model2.original;

model3 = load('4_data.mat');
model3 = model3.original;

model4 = load('5_data.mat');
model4 = model4.original;

model5 = load('6_data.mat');
model5 = model5.original;

model6 = load('7_data.mat');
model6 = model6.original;

model7 = load('8_data.mat');
model7 = model7.original;

model8 = load('9_data.mat');
model8 = model8.original;

model9 = load('10_data.mat');
model9 = model9.original;

model10 = load('11_data.mat');
model10 = model10.original;

model11 = load('12_data.mat');
model11 = model11.original;

model12 = load('13_data.mat');
model12 = model12.original;

model13 = load('14_data.mat');
model13 = model13.original;

model14 = load('15_data.mat');
model14 = model14.original;

model15 = load('16_data.mat');
model15 = model15.original;

model16 = load('17_data.mat');
model16 = model16.original;

model17 = load('18_data.mat');
model17 = model17.original;

model18 = load('19_data.mat');
model18 = model18.original;



mutation_matrix = zeros(1573,19);
for i = 1:length(model)
    mutation_matrix(i,:) = [model(i),model1(i),model2(i),model3(i),model4(i),model5(i),model6(i),model7(i),model8(i),model9(i),model10(i),model11(i),model12(i),model13(i),model14(i),model15(i),model16(i),model17(i),model18(i)];
    r(i) = corr(mutation_matrix(i,:)',zz,'type','pearson');
end
save('correlation','r');
