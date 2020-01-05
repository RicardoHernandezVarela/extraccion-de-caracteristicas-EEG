function [vent] = ventanas(dataset, v, tvent, desp)
    
    dims = size(dataset);

    filas = dims(1);

    ventana = floor(filas * tvent);
    desp = floor(ventana * desp);

    inicio = 1;
    final = inicio + ventana - 1;
    vent = [];

    for i=1:v
        vn = dataset(inicio:final);
        vent = [vent vn];
        inicio = inicio + desp;
        final = final + desp;
    end
end