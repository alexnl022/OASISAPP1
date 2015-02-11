x = [1.2; 1; -1; -1.2];
A = [ 1 1 0 0; 1 -1 0 0; 0 0 1 1; 0 0 1 -1];
% pour passer a l'autre ligne de la mtrice il faut mettre un ;
y = A*x;
disp(y);

% A(n,m) coef nieme ligne mieme colone
%A(n,:) toute la ligne n

disp("les valeurs propres de A sont :");
disp(eig(A));

B = inv(A);
disp("la matrice inverse de A est :");
disp(B);

X1 = B(:,1);
disp("le premier vecteur de la matrice est");
disp (X1);

X2 = B(:,2);
disp("le second vecteur de la matrice est");
disp (X2);

X3 = B(:,3);
disp("le troisème vecteur de la matrice est");
disp (X3);

X4 = B(:,4);
disp("le quatrième vecteur de la matrice est");
disp (X4);

%pour déclarer une fonction il suffit simplement d'écrire function us=nomfunc(p1,P2,...) puis on fini par end et sauve sous nomfunc.m

g = i * i;
disp("le nombre complexe est");
disp(g);