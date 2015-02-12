[Y,Fs]=wavread('enrpirate.wav');

tpech=0.02;
%la durée déchantllonage

disp ('la fréquence déchantillonage est ')
disp (Fs);

disp('La longueur du vecteur Y est')
disp(length(Y));

disp (Y);

X=decoupe(Y, Fs, tpech);
[longueurvecteurechantillon, nombredevecteurechantillon]=size(X);

disp(X);

%les trois lignes suivantes sont à supprimer
disp('les dimmenssions de la matrice sont');
disp(longueurvecteurechantillon);
disp(nombredevecteurechantillon);

G=[4,7,9,19];
disp(G(2));


Z=zeros(1,nombredevecteurechantillon);


for i = 1:nombredevecteurechantillon
Z(i) = decodeDTMF(X(:,1), longueurvecteurechantillon, Fs) ;
endfor


disp (Z);


% A(:,2) extraction de la colonne 2 
