data = load('IndividuosS1-S27.mat');

fmuestreo = 128;
%Etiquetas palabra 1.
p1 = ones(33,1);
%Etiquetas palabra 2.
p2 = ones(33,1)*2;
%Etiquetas palabra 3.
p3 = ones(33,1)*3;
%Etiquetas palabra 4.
p4 = ones(33,1)*4;
%Etiquetas palabra 5.
p5 = ones(33,1)*5;

ventanas = 2;
tam_ventana = 0.6;
desp = 0.6;

%{
%Bandas Palabra 1.
%s1_p1 = vectoresPalabra(data, sujeto, palabra, ventanas, %tamaño ventana, %avance, fmuestreo, epocas);
s2_p1 = vectoresPalabra(data, 2, 1, ventanas, tam_ventana, desp, fmuestreo, 33);
s2_p1 = [s2_p1 p1]; save('s2_p1.mat','s2_p1');

%Bandas Palabra 2.
s2_p2 = vectoresPalabra(data, 2, 2, ventanas, tam_ventana, desp, fmuestreo, 33);
s2_p2 = [s2_p2 p2]; save('s2_p2.mat','s2_p2');

%Bandas Palabra 3.
s2_p3 = vectoresPalabra(data, 2, 3, ventanas, tam_ventana, desp, fmuestreo, 33);
s2_p3 = [s2_p3 p3]; save('s2_p3.mat','s2_p3');

%Bandas Palabra 4.
s2_p4 = vectoresPalabra(data, 2, 4, ventanas, tam_ventana, desp, fmuestreo, 33);
s2_p4 = [s2_p4 p4]; save('s2_p4.mat','s2_p4');

%Bandas Palabra 5.
s2_p5 = vectoresPalabra(data, 2, 5, ventanas, tam_ventana, desp, fmuestreo, 33);
s2_p5 = [s2_p5 p5]; save('s2_p5.mat','s2_p5');
%}


%Estadistica Palabra 1.
%s1_p1_est = vectoresPalabraEst(data, sujeto, palabra, ventanas, %tamaño ventana, %avance, epocas);
s2_p1_est = vectoresPalabraEst(data, 2, 1, ventanas, tam_ventana, desp, 33, fmuestreo);
s2_p1_est = [s2_p1_est p1]; save('s2_p1_est.mat','s2_p1_est');

%Estadistica Palabra 2.
s2_p2_est = vectoresPalabraEst(data, 2, 2, ventanas, tam_ventana, desp, 33, fmuestreo);
s2_p2_est = [s2_p2_est p2]; save('s2_p2_est.mat','s2_p2_est');

%Estadistica Palabra 3.
s2_p3_est = vectoresPalabraEst(data, 2, 3, ventanas, tam_ventana, desp, 33, fmuestreo);
s2_p3_est = [s2_p3_est p3]; save('s2_p3_est.mat','s2_p3_est');

%Estadistica Palabra 4.
s2_p4_est = vectoresPalabraEst(data, 2, 4, ventanas, tam_ventana, desp, 33, fmuestreo);
s2_p4_est = [s2_p4_est p4]; save('s2_p4_est.mat','s2_p4_est');

%Estadistica Palabra 5.
s2_p5_est = vectoresPalabraEst(data, 2, 5, ventanas, tam_ventana, desp, 33, fmuestreo);
s2_p5_est = [s2_p5_est p5]; save('s2_p5_est.mat','s2_p5_est');
