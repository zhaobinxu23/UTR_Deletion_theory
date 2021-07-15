model1 = load('sym_length.mat');
model1 = model1.sym_length;

model2 = load('asy_length.mat');
model2 = model2.asy_length;

model3 = load('hos_length.mat');
model3 = model3.hos_length;


histogram(model1);
hold on
histogram(model2);
hold on
histogram(model3);
hold on