model = load('death.mat');
death_2 = model.death;

model = load('death_mut.mat');
death_2_mut = model.death_mut;

model = load('asy.mat');
asy_2 = model.asy;

model = load('asy_mut.mat');
asy_2_mut = model.asy_mut;


for i = 1:length(death_2)
    [p,q] = chi2test([death_2(i) asy_2(i); death_2_mut(i) asy_2_mut(i)]);
    pro_2(i) = p;
end
