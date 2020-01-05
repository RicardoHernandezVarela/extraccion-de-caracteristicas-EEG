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

ventanas = 3;
tam_ventana = 0.5;
desp = 0.5;

%{
%Bandas Palabra 1.
%s1_p1 = vectoresPalabra(data, sujeto, palabra, ventanas, %tamaño ventana, %avance, fmuestreo, epocas);
s1_p1 = vectoresPalabra(data, 1, 1, ventanas, tam_ventana, desp, fmuestreo, 33);
s1_p1 = [s1_p1 p1]; save('s1_p1.mat','s1_p1');

%Bandas Palabra 2.
s1_p2 = vectoresPalabra(data, 1, 2, ventanas, tam_ventana, desp, fmuestreo, 33);
s1_p2 = [s1_p2 p2]; save('s1_p2.mat','s1_p2');

%Bandas Palabra 3.
s1_p3 = vectoresPalabra(data, 1, 3, ventanas, tam_ventana, desp, fmuestreo, 33);
s1_p3 = [s1_p3 p3]; save('s1_p3.mat','s1_p3');

%Bandas Palabra 4.
s1_p4 = vectoresPalabra(data, 1, 4, ventanas, tam_ventana, desp, fmuestreo, 33);
s1_p4 = [s1_p4 p4]; save('s1_p4.mat','s1_p4');

%Bandas Palabra 5.
s1_p5 = vectoresPalabra(data, 1, 5, ventanas, tam_ventana, desp, fmuestreo, 33);
s1_p5 = [s1_p5 p5]; save('s1_p5.mat','s1_p5');
%}


%Estadistica Palabra 1.
%s1_p1_est = vectoresPalabraEst(data, sujeto, palabra, ventanas, %tamaño ventana, %avance, epocas);
s1_p1_est = vectoresPalabraEst(data, 1, 1, ventanas, tam_ventana, desp, 33, fmuestreo);
s1_p1_est = [s1_p1_est p1]; save('s1_p1_est.mat','s1_p1_est');

%Estadistica Palabra 2.
s1_p2_est = vectoresPalabraEst(data, 1, 2, ventanas, tam_ventana, desp, 33, fmuestreo);
s1_p2_est = [s1_p2_est p2]; save('s1_p2_est.mat','s1_p2_est');

%Estadistica Palabra 3.
s1_p3_est = vectoresPalabraEst(data, 1, 3, ventanas, tam_ventana, desp, 33, fmuestreo);
s1_p3_est = [s1_p3_est p3]; save('s1_p3_est.mat','s1_p3_est');

%Estadistica Palabra 4.
s1_p4_est = vectoresPalabraEst(data, 1, 4, ventanas, tam_ventana, desp, 33, fmuestreo);
s1_p4_est = [s1_p4_est p4]; save('s1_p4_est.mat','s1_p4_est');

%Estadistica Palabra 5.
s1_p5_est = vectoresPalabraEst(data, 1, 5, ventanas, tam_ventana, desp, 33, fmuestreo);
s1_p5_est = [s1_p5_est p5]; save('s1_p5_est.mat','s1_p5_est');
