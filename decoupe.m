function [mat] = decoupe(signal, Fe, temps)
  %decoupe signal de frequence d echantillonage Fe
  %en un certain nombre de morceaux de duree temps
  longueur = length(signal);
  nbr_points=temps*Fe;  
  nbr_vecteur=floor(longueur/nbr_points);
  mat=zeros(nbr_points,nbr_vecteur);
  for i=1:nbr_vecteur-1
	  mat(:,i)=signal(((i-1)*nbr_points+1):(i*nbr_points));
  end;
mat(1:(longueur-(nbr_vecteur-1)*nbr_points),nbr_vecteur)=signal(((nbr_vecteur-1)*nbr_points+1):longueur);
end;
