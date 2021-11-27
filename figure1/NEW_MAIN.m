%% before run this program, you have to load the data 'metadata.xlsx' into matlab. 
%% we did this manually by using the matlab import data menu.
%% 
kk = 1;



for i = 1: 4383882
    if strcmp(metadata(i,3),'True') == 1  

        if strncmp(metadata(i,1),'2021-06',7) == 1
           if contains(metadata(i,2),'USA') == 1
            data1(kk) = SequenceLength(i);  
            
            kk = kk+1;
           end
        end

    end        
end

kk = 1;



for i = 1: 4383882
    if strcmp(metadata(i,3),'True') == 1  

        if strncmp(metadata(i,1),'2021-07',7) == 1
           if contains(metadata(i,2),'USA') == 1
            data2(kk) = SequenceLength(i);  
            
            kk = kk+1;
           end
        end

    end        
end

kk = 1;



for i = 1: 4383882
    if strcmp(metadata(i,3),'True') == 1  

        if strncmp(metadata(i,1),'2021-08',7) == 1
           if contains(metadata(i,2),'USA') == 1
            data3(kk) = SequenceLength(i);  
            
            kk = kk+1;
           end
        end

    end        
end

kk = 1;



for i = 1: 4383882
    if strcmp(metadata(i,3),'True') == 1  

        if strncmp(metadata(i,1),'2021-09',7) == 1
           if contains(metadata(i,2),'USA') == 1
            data4(kk) = SequenceLength(i);  
            
            kk = kk+1;
           end
        end

    end        
end

kk = 1;



for i = 1: 4383882
    if strcmp(metadata(i,3),'True') == 1  

        if strncmp(metadata(i,1),'2021-10',7) == 1
           if contains(metadata(i,2),'USA') == 1
            data5(kk) = SequenceLength(i);  
            
            kk = kk+1;
           end
        end

    end        
end


%%
kk = 1;



for i = 1: 4383882
    if strcmp(metadata(i,3),'True') == 1  

        if strncmp(metadata(i,1),'2021-05',7) == 1
           if contains(metadata(i,2),'USA') == 1
            data0(kk) = SequenceLength(i);  
            
            kk = kk+1;
           end
        end

    end        
end