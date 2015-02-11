[Y,Fs]=wavread('enrpirate.wav');
disp (Fs);

disp('La longueur du vecteur Y est')
disp(length(Y));

X = reshape (Y , [],375);
disp (X(5));

disp(length(X));
% découpe du veccteur en 30*25 sous vecteurs