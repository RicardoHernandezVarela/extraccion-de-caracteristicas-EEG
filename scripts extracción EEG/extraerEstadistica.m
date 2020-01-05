function [estadistica] = extraerEstadistica(dataset, v, fmuestreo)
    estadistica = [];

    for i=1:v
        gamma = estadisticaBandas(pasabandaButter(4, 30, 60, fmuestreo, dataset(:,i)));
        beta = estadisticaBandas(pasabandaButter(4, 30, 60, fmuestreo, dataset(:,i)));
        alfa = estadisticaBandas(pasabandaButter(4, 30, 60, fmuestreo, dataset(:,i)));
        theta = estadisticaBandas(pasabandaButter(4, 30, 60, fmuestreo, dataset(:,i)));
        delta = estadisticaBandas(pasabandaButter(4, 30, 60, fmuestreo, dataset(:,i)));
        
        estadistica = [estadistica gamma beta alfa theta delta];
    end

end