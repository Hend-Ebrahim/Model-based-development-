L = 1 ;
g = 9.81;
initialpos= pi/7;

mdl1= gcs;

lengths = [0.5, 1, 1.5, 2, 2.5]; 

for i = 1:numel(lengths)
   
        L = lengths(i);
        res=  sim(mdl1);
      plot(res.logsout.get("X").Values);
    hold on
    disp("Simulation " + num2str(i) + " complete");
    LegendLabels{i} = "L = " + num2str(L);


    
end
legend(LegendLabels);
    