function [estadistica] = estadisticaBandas(dataset)
    estadistica = [];
    
    media = mean(dataset);
    desviacion = std(dataset);
    varianza = var(dataset);
    minimo = min(dataset);
    maximo = max(dataset);
    
    estadistica = [estadistica media desviacion varianza minimo maximo];
    
end
