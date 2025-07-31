R = 1e3;                 
C = 1e-6;                

mdl = gcs;

res= sim(mdl);

    plot(res.logsout.get("X").Values);
    

legend('The voltage across the capacitor');