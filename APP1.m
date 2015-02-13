[Y,Fs]=wavread('enrpirate.wav');

tpech=0.02;
%la durée déchantllonage

disp ('la fréquence déchantillonage est ')
disp (Fs);

disp('La longueur du vecteur Y est')
disp(length(Y));


X=decoupe(Y, Fs, tpech);
[longueurvecteurechantillon , nombredevecteurechantillon ]=size(X);

%les trois lignes suivantes sont à supprimer
disp('les dimmenssions de la matrice sont');
disp(longueurvecteurechantillon);
disp(nombredevecteurechantillon);


Z=zeros(1,nombredevecteurechantillon)';

for i = 1:nombredevecteurechantillon
Z(i) = decodeDTMF(X(:,i), longueurvecteurechantillon, Fs) ;
endfor


disp (Z);

