function [vector_epoca] = generarVector(epoca, v, tv, desp, fmuestreo)
    vector_epoca = [];

    for i=1:14
        proc = ventanas(epoca(:,i), v, tv, desp);
        bandas = extraerBandas(proc, v, fmuestreo);
        vector_epoca = [vector_epoca bandas];
    end
end