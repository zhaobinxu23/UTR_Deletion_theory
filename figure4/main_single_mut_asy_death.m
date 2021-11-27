%% single mutation asy vs death

model_ref = fastaread('reference_genome.fasta');
model = fastaread('overall.fasta');
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
death_number = zeros(length(y),length(model_ref.Sequence));
% for k = 1:19:(length(model_ref(1).Sequence)-19)
%     k
%     dd
for i = 1:length(y)
    i
        [dd,cc] = nwalign(model_ref.Sequence,model(y(i)).Sequence);
           for k = 1:length(model_ref.Sequence)
              if strcmp(cc(2,k),'|') == 1
                  death_number(i,k) =  1;
              end
           end
end
    
             
save('death_single','death_number');

%% 


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

asy_number = zeros(length(yy),length(model_ref.Sequence));

for i = 1:length(yy)
    i
        [dd,cc] = nwalign(model_ref.Sequence,model(yy(i)).Sequence);
           for k = 1:length(model_ref.Sequence)
              if strcmp(cc(2,k),'|') == 1
                  asy_number(i,k) =  1;
              end
           end
end
save('asy_single','asy_number');  

        
        


        