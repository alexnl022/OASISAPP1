function [nouv_freq]=approche(anc_freq)
  nouv_freq=697;
  diff=abs(anc_freq-697);
  table=[770,852,941,1209,1336,1477];
  for i=1:6
      if abs(table(i)-anc_freq)<diff
	  diff=abs(table(i)-anc_freq);
          nouv_freq=table(i);
      end;
  end;
end;
