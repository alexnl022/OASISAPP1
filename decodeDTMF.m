function [chiffre] = decodeDTMF(signal, M, Fe)
  % Fe est la frequence d echantillonage de 'signal' 
  % M est le nombre de points qu on considere dans la fft
  % le resultat est la touche correspondant au son DTMF donne par signal
 
  transf=abs(fft(signal,M));
  longueur=length(transf);
  transf(round(M/2):M)=[];
  [y1,x1] = max(transf);
  transf(x1)=[]; 
  [y2,x2] = max(transf);
  frequ1=x1*Fe/M;
  frequ2=x2*Fe/M;
  frequ_aproch1=approche(frequ1);
  frequ_aproch2=approche(frequ2);
  switch [frequ_aproch1, frequ_aproch2]
      case {[1209,697], [697, 1209]} 
           chiffre=1;
      case {[1336,697], [697, 1336]} 
            chiffre=2;
      case {[1477,697], [697, 1477]} 
             chiffre=3;
      case {[1209,770], [770, 1209]} 
             chiffre=4;
      case {[1336,770], [770, 1336]} 
             chiffre=5;
      case {[1477,770], [770, 1477]} 
             chiffre=6;
      case {[1209,852], [852, 1209]} 
             chiffre=7;
      case {[1336,852], [852, 1336]} 
             chiffre=8;
      case {[1477,852], [852, 1477]} 
             chiffre=9;
      case {[1336,941], [941, 1336]} 
             chiffre=0;
   end;
end;
