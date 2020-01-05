function [bandas_epocas] = vectoresPalabraEst(data, sujeto, palabra, v, tv, desp, ep, fmuestreo)
    bandas_epocas = [];

    for i=1:ep
        epoca = data.S(sujeto).Palabra(palabra).Epoca(i).SenalesEEG(:,1:14);
        
        vector_epoca = generarVectorEst(epoca, v, tv, desp, fmuestreo);

        bandas_epocas = [bandas_epocas; vector_epoca];
    end
end