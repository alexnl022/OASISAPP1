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

W=zeros(1,nombredevecteurechantillon)';


k=1;
for j = 1:nombredevecteurechantillon
if (Z(j)<11) W(k)=Z(j); k=k+1;
endif;
endfor;

disp (W);


% A(:,2) extraction de la colonne 2 

G=[4,7,9,19];
disp(G(2));
%méthode extraction dune composante
G(2) = -5;
disp(G);

disp(decodeDTMF(X(:,1), longueurvecteurechantillon, Fs)) ;
%utilisation de decodeDTMF/ on rajoute un ' pour transposer le vecteur

