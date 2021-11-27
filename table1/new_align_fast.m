function count_number = new_align_fast(new_sequence1,new_sequence2)
count_number = 0;
for i = 1:length(new_sequence1)
    if new_sequence1(i) ~= new_sequence2(i)
        count_number = count_number + 1;
    end
end
end
