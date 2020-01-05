function [filtrada] = pasabandaButter(orden, fc1, fc2, fmuestreo, senal)
    %fc1 = frecuencia de corte inferior
    %fc2 = frecuencia de corte superior
    %orden = orden del filtro
    %fmuestreo = frecuencia de muestreo de la señal
    
    [b,a] = butter(orden,[fc1 fc2]/(fmuestreo/2),'bandpass'); %Diseño del filtro para obtener los coeficientes
    filtrada = filtfilt(b,a,senal); %Aplicación del filtro
end