function [nouv_freq]=approche(anc_freq)

  table=[697,770,852,941,1209,1336,1477];
  nouv_freq=anc_freq;
  for i=1:7
      if abs(table(i)-anc_freq)<10
	  
          nouv_freq=table(i);
      end;
  end;
end;

disp(approche(735));
