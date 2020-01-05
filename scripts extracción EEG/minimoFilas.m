function [minimo] = minimoFilas(dataset)
    minimo = 1000;
    for i=1:33
        dims = size(dataset(i).SenalesEEG);
        if dims(1) < minimo
            minimo = dims(1);
        end
    end
end