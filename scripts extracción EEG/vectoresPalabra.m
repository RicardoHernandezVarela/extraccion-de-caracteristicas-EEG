function [bandas_epocas] = vectoresPalabra(data, sujeto, palabra, v, tv, desp, fmuestreo, ep)
    bandas_epocas = [];

    for i=1:ep
        epoca = data.S(sujeto).Palabra(palabra).Epoca(i).SenalesEEG(:,1:14);
        vector_epoca = generarVector(epoca, v, tv, desp, fmuestreo);

        bandas_epocas = [bandas_epocas; vector_epoca];
    end
end