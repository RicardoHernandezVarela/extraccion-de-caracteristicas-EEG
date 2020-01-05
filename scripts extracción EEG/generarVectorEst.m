function [vector_epoca] = generarVectorEst(epoca, v, tv, desp, fmuestreo)
    vector_epoca = [];

    for i=1:14
        proc = ventanas(epoca(:,i), v, tv, desp);
        est = extraerEstadistica(proc, v, fmuestreo); 
        vector_epoca = [vector_epoca est];
    end
end