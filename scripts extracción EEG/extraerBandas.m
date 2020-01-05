function [bandas] = extraerBandas(dataset, v, fmuestreo)
    bandas = [];

    for i=1:v
        gamma = mean((pasabandaButter(4, 30, 60, fmuestreo, dataset(:,i))).^2);
        beta = mean((pasabandaButter(4, 12, 30, fmuestreo, dataset(:,i))).^2);
        alfa = mean((pasabandaButter(4, 8, 12, fmuestreo, dataset(:,i))).^2);
        theta = mean((pasabandaButter(4, 4, 8, fmuestreo, dataset(:,i))).^2);
        delta = mean((pasabandaButter(4, 0.5, 4, fmuestreo, dataset(:,i))).^2);
        bandas = [bandas gamma beta alfa theta delta];
    end

end