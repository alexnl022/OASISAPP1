[Y,Fs]=wavread('enrpirate.wav');
disp (Fs);

disp('La longueur du vecteur Y est')
disp(length(Y));

% découpe du veccteur en 30 sous vecteurs