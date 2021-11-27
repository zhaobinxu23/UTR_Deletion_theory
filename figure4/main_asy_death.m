
model_ref = fastaread('reference_genome.fasta');
model = fastaread('overall.fasta');
death_number = 0;
dd = 1;
xxx1 = (find(PatientStatus(:) == 'Deceased'));
xxx2 = (find(PatientStatus(:) == 'deceased'));
xxx = [xxx1',xxx2'];
length(xxx)

for i = 1:length(xxx)
    i
for kk = 1:length(model)
    if (contains(model(kk).Header,num2str(AccessionID(xxx(i)))) == 1)
        y(i) = kk;
       
        
    end
end
end
%% 

for k = 1:19:(length(model_ref(1).Sequence)-19)
    k
    dd
    for i = 1:length(y)
    

          
              if  (contains(model(y(i)).Sequence,model_ref(1).Sequence(k:k+18)) == 1) %% (contains(model(j).Header,num2str(AccessionID(xxx(i)))) == 1)  &&
                
                    
                 death_number = death_number + 1;
               
              end
          
     end
    
    death(dd) = death_number;
    dd = dd+1;
    death_number = 0;
end
save('death','death');
death_mut = length(xxx)-death;
save('death_mut','death_mut');
%% 

asy_number = 0;
dd = 1;
zzz1 = (find(PatientStatus(:) == 'Asymptomatic'));
zzz2 = (find(PatientStatus(:) == 'asymptomatic'));
zzz = [zzz1',zzz2'];
length(zzz)
for i = 1:length(zzz)
    i
for kk = 1:length(model)
    if (contains(model(kk).Header,num2str(AccessionID(zzz(i)))) == 1)
        yy(i) = kk;
       
        
    end
end
end
%% 

for k = 1:19:(length(model_ref(1).Sequence)-19)
    k
    dd
    for i = 1:length(yy)
    

          
              if  (contains(model(yy(i)).Sequence,model_ref(1).Sequence(k:k+18)) == 1) %% (contains(model(j).Header,num2str(AccessionID(xxx(i)))) == 1)  &&
                
                    
                 asy_number = asy_number + 1;
               
              end
          
     end
    
    asy(dd) = asy_number;
    dd = dd+1;
    asy_number = 0;
end

save('asy','asy');
asy_mut = length(zzz)-asy;
save('asy_mut','asy_mut');
        
        


        