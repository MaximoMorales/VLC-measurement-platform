 clc
clear all
close all



Vpp_input = 3;
% Ventana de analisis
wind = 10; 

% TABLA 1
load('datos.mat');
date = tabla111052022{1:wind:end,1};
date = date(1:end-1);
signal = tabla111052022{:,2};
measuredDistance = tabla111052022{:,3};
measuredAngRadiacion = tabla111052022{:,4};
measuredAngIncidencia = tabla111052022{:,5};
measuredLuxes = tabla111052022{:,6};
measuredPersonas = tabla111052022{:,7};
measuredLente = tabla111052022{:,8};
% Dos columnas con el valor máximo y mínimo
Lon_tabla = 1e5;
Vpp_output = zeros(Lon_tabla,1);
pathloss = zeros(Lon_tabla,1);
distancia = zeros(Lon_tabla,1);
angRadiacion = zeros(Lon_tabla,1);
angIncidencia = zeros(Lon_tabla,1);
ambientLight = zeros(Lon_tabla,1);
presenciaPersonas = zeros(Lon_tabla,1);
lente = zeros(Lon_tabla,1);
entorno = tabla111052022{1:wind:end,11};
entorno = entorno(1:end-1)

for i = 1:floor(length(signal)/wind)
    % Calculo path loss
    signal_window = signal((i-1)*wind+1:i*wind);
    Vpp_output(i) = max(signal_window) - min (signal_window);
    pathloss(i) = 10*log10(0.6*Vpp_output(i)/(Vpp_input*10^6));
    % Calculo luminosidad+
    distancia(i) = mean(measuredDistance((i-1)*wind+1:i*wind));
    % Angulo radiacion medio
    angRadiacion(i) = mean(measuredAngRadiacion((i-1)*wind+1:i*wind));
    % Angulo incidencia medio
    angIncidencia(i) = mean(measuredAngIncidencia((i-1)*wind+1:i*wind));
    % Luz ambiente
    ambientLight(i) = mean(measuredLuxes((i-1)*wind+1:i*wind)); 
    % Presencia personas
    presenciaPersonas(i) = mean(measuredPersonas((i-1)*wind+1:i*wind)); 
    % Lente de momento no hemos probado distintas lentes
    lente(i) = mean(measuredLente((i-1)*wind+1:i*wind)); 
end
% Guardamos un contador con el último valor
conta = floor(length(signal)/wind);


% TABLA 2
date2 = tabla211052022{1:wind:end,1};
date = [date(1:end-1); date2]
signal = tabla211052022{:,2};
measuredDistance = tabla211052022{:,3};
measuredAngRadiacion = tabla211052022{:,4};
measuredAngIncidencia = tabla211052022{:,5};
measuredLuxes = tabla211052022{:,6};
measuredPersonas = tabla211052022{:,7};
measuredLente = tabla211052022{:,8};
entorno2 = tabla211052022{1:wind:end,11};
entorno = [entorno(1:end-1); entorno2]
for i = 1:floor(length(signal)/wind)
    % Calculo path loss
    signal_window = signal((i-1)*wind+1:i*wind);
    Vpp_output = max(signal_window) - min (signal_window);
    pathloss(conta+i) = 10*log10(0.6*Vpp_output/(Vpp_input*10^5));
    % Calculo luminosidad+
    distancia(conta+i) = mean(measuredDistance((i-1)*wind+1:i*wind));
    % Angulo radiacion medio
    angRadiacion(conta+i) = mean(measuredAngRadiacion((i-1)*wind+1:i*wind));
    % Angulo incidencia medio
    angIncidencia(conta+i) = mean(measuredAngIncidencia((i-1)*wind+1:i*wind));
    % Luz ambiente
    ambientLight(conta+i) = mean(measuredLuxes((i-1)*wind+1:i*wind)); 
    % Presencia personas
    presenciaPersonas(conta+i) = mean(measuredPersonas((i-1)*wind+1:i*wind)); 
    % Lente de momento no hemos probado distintas lentes
    lente(conta+i) = mean(measuredLente((i-1)*wind+1:i*wind)); 
end
conta = conta + floor(length(signal)/wind);


% TABLA 3
date3 = tabla311052022{1:wind:end,1};
date = [date(1:end-1); date3]
signal = tabla311052022{:,2};
measuredDistance = tabla311052022{:,3};
measuredAngRadiacion = tabla311052022{:,4};
measuredAngIncidencia = tabla311052022{:,5};
measuredLuxes = tabla311052022{:,6};
measuredPersonas = tabla311052022{:,7};
measuredLente = tabla311052022{:,8};
entorno3 = tabla311052022{1:wind:end,11};
entorno = [entorno(1:end-1); entorno3]
for i = 1:floor(length(signal)/wind)
    % Calculo path loss
    signal_window = signal((i-1)*wind+1:i*wind);
    Vpp_output = max(signal_window) - min (signal_window);
    pathloss(conta+i) = 10*log10(0.6*Vpp_output/(Vpp_input*10^5));
    % Calculo luminosidad+
    distancia(conta+i) = mean(measuredDistance((i-1)*wind+1:i*wind));
    % Angulo radiacion medio
    angRadiacion(conta+i) = mean(measuredAngRadiacion((i-1)*wind+1:i*wind));
    % Angulo incidencia medio
    angIncidencia(conta+i) = mean(measuredAngIncidencia((i-1)*wind+1:i*wind));
    % Luz ambiente
    ambientLight(conta+i) = mean(measuredLuxes((i-1)*wind+1:i*wind)); 
    % Presencia personas
    presenciaPersonas(conta+i) = mean(measuredPersonas((i-1)*wind+1:i*wind)); 
    % Lente de momento no hemos probado distintas lentes
    lente(conta+i) = mean(measuredLente((i-1)*wind+1:i*wind)); 
end
conta = conta + floor(length(signal)/wind);

% TABLA 4
date4 = tabla411052022{1:wind:end,1};
date = [date(1:end-1); date4]
signal = tabla411052022{:,2};
measuredDistance = tabla411052022{:,3};
measuredAngRadiacion = tabla411052022{:,4};
measuredAngIncidencia = tabla411052022{:,5};
measuredLuxes = tabla411052022{:,6};
measuredPersonas = tabla411052022{:,7};
measuredLente = tabla411052022{:,8};
entorno4 = tabla411052022{1:wind:end,11};
entorno = [entorno(1:end-1); entorno4]
for i = 1:floor(length(signal)/wind)
    % Calculo path loss
    signal_window = signal((i-1)*wind+1:i*wind);
    Vpp_output = max(signal_window) - min (signal_window);
    pathloss(conta+i) = 10*log10(0.6*Vpp_output/(Vpp_input*10^5));
    % Calculo luminosidad+
    distancia(conta+i) = mean(measuredDistance((i-1)*wind+1:i*wind));
    % Angulo radiacion medio
    angRadiacion(conta+i) = mean(measuredAngRadiacion((i-1)*wind+1:i*wind));
    % Angulo incidencia medio
    angIncidencia(conta+i) = mean(measuredAngIncidencia((i-1)*wind+1:i*wind));
    % Luz ambiente
    ambientLight(conta+i) = mean(measuredLuxes((i-1)*wind+1:i*wind)); 
    % Presencia personas
    presenciaPersonas(conta+i) = mean(measuredPersonas((i-1)*wind+1:i*wind)); 
    % Lente de momento no hemos probado distintas lentes
    lente(conta+i) = mean(measuredLente((i-1)*wind+1:i*wind)); 
end
conta = conta + floor(length(signal)/wind);

% TABLA 5
date5 = tabla511052022{1:wind:end,1};
date = [date(1:end-1); date5]
signal = tabla511052022{:,2};
measuredDistance = tabla511052022{:,3};
measuredAngRadiacion = tabla511052022{:,4};
measuredAngIncidencia = tabla511052022{:,5};
measuredLuxes = tabla511052022{:,6};
measuredPersonas = tabla511052022{:,7};
measuredLente = tabla511052022{:,8};
entorno5 = tabla511052022{1:wind:end,11};
entorno = [entorno(1:end-1); entorno5]
for i = 1:floor(length(signal)/wind)
    % Calculo path loss
    signal_window = signal((i-1)*wind+1:i*wind);
    Vpp_output = max(signal_window) - min (signal_window);
    pathloss(conta+i) = 10*log10(0.6*Vpp_output/(Vpp_input*10^5));
    % Calculo luminosidad+
    distancia(conta+i) = mean(measuredDistance((i-1)*wind+1:i*wind));
    % Angulo radiacion medio
    angRadiacion(conta+i) = mean(measuredAngRadiacion((i-1)*wind+1:i*wind));
    % Angulo incidencia medio
    angIncidencia(conta+i) = mean(measuredAngIncidencia((i-1)*wind+1:i*wind));
    % Luz ambiente
    ambientLight(conta+i) = mean(measuredLuxes((i-1)*wind+1:i*wind)); 
    % Presencia personas
    presenciaPersonas(conta+i) = mean(measuredPersonas((i-1)*wind+1:i*wind)); 
    % Lente de momento no hemos probado distintas lentes
    lente(conta+i) = mean(measuredLente((i-1)*wind+1:i*wind)); 
end
conta = conta + floor(length(signal)/wind);

% TABLA 6
date6 = tabla611052022{1:wind:end,1};
date = [date(1:end-1); date6]
signal = tabla611052022{:,2};
measuredDistance = tabla611052022{:,3};
measuredAngRadiacion = tabla611052022{:,4};
measuredAngIncidencia = tabla611052022{:,5};
measuredLuxes = tabla611052022{:,6};
measuredPersonas = tabla611052022{:,7};
measuredLente = tabla611052022{:,8};
entorno6 = tabla611052022{1:wind:end,11};
entorno = [entorno(1:end-1); entorno6]
for i = 1:floor(length(signal)/wind)
    % Calculo path loss
    signal_window = signal((i-1)*wind+1:i*wind);
    Vpp_output = max(signal_window) - min (signal_window);
    pathloss(conta+i) = 10*log10(0.6*Vpp_output/(Vpp_input*10^5));
    % Calculo luminosidad+
    distancia(conta+i) = mean(measuredDistance((i-1)*wind+1:i*wind));
    % Angulo radiacion medio
    angRadiacion(conta+i) = mean(measuredAngRadiacion((i-1)*wind+1:i*wind));
    % Angulo incidencia medio
    angIncidencia(conta+i) = mean(measuredAngIncidencia((i-1)*wind+1:i*wind));
    % Luz ambiente
    ambientLight(conta+i) = mean(measuredLuxes((i-1)*wind+1:i*wind)); 
    % Presencia personas
    presenciaPersonas(conta+i) = mean(measuredPersonas((i-1)*wind+1:i*wind)); 
    % Lente de momento no hemos probado distintas lentes
    lente(conta+i) = mean(measuredLente((i-1)*wind+1:i*wind)); 
end
conta = conta + floor(length(signal)/wind);

% TABLA 7
date7 = tabla711052022{1:wind:end,1};
date = [date(1:end-1); date7]
signal = tabla711052022{:,2};
measuredDistance = tabla711052022{:,3};
measuredAngRadiacion = tabla711052022{:,4};
measuredAngIncidencia = tabla711052022{:,5};
measuredLuxes = tabla711052022{:,6};
measuredPersonas = tabla711052022{:,7};
measuredLente = tabla711052022{:,8};
entorno7 = tabla711052022{1:wind:end,11};
entorno = [entorno(1:end-1); entorno7]
for i = 1:floor(length(signal)/wind)
    % Calculo path loss
    signal_window = signal((i-1)*wind+1:i*wind);
    Vpp_output = max(signal_window) - min (signal_window);
    pathloss(conta+i) = 10*log10(0.6*Vpp_output/(Vpp_input*10^5));
    % Calculo luminosidad+
    distancia(conta+i) = mean(measuredDistance((i-1)*wind+1:i*wind));
    % Angulo radiacion medio
    angRadiacion(conta+i) = mean(measuredAngRadiacion((i-1)*wind+1:i*wind));
    % Angulo incidencia medio
    angIncidencia(conta+i) = mean(measuredAngIncidencia((i-1)*wind+1:i*wind));
    % Luz ambiente
    ambientLight(conta+i) = mean(measuredLuxes((i-1)*wind+1:i*wind)); 
    % Presencia personas
    presenciaPersonas(conta+i) = mean(measuredPersonas((i-1)*wind+1:i*wind)); 
    % Lente de momento no hemos probado distintas lentes
    lente(conta+i) = mean(measuredLente((i-1)*wind+1:i*wind)); 
end
conta = conta + floor(length(signal)/wind);

% TABLA 8
date8 = tabla811052022{1:wind:end,1};
date = [date(1:end-1); date8]
signal = tabla811052022{:,2};
measuredDistance = tabla811052022{:,3};
measuredAngRadiacion = tabla811052022{:,4};
measuredAngIncidencia = tabla811052022{:,5};
measuredLuxes = tabla811052022{:,6};
measuredPersonas = tabla811052022{:,7};
measuredLente = tabla811052022{:,8};
entorno8 = tabla811052022{1:wind:end,11};
entorno = [entorno(1:end-1); entorno8]
for i = 1:floor(length(signal)/wind)
    % Calculo path loss
    signal_window = signal((i-1)*wind+1:i*wind);
    Vpp_output = max(signal_window) - min (signal_window);
    pathloss(conta+i) = 10*log10(0.6*Vpp_output/(Vpp_input*10^5));
    % Calculo luminosidad+
    distancia(conta+i) = mean(measuredDistance((i-1)*wind+1:i*wind));
    % Angulo radiacion medio
    angRadiacion(conta+i) = mean(measuredAngRadiacion((i-1)*wind+1:i*wind));
    % Angulo incidencia medio
    angIncidencia(conta+i) = mean(measuredAngIncidencia((i-1)*wind+1:i*wind));
    % Luz ambiente
    ambientLight(conta+i) = mean(measuredLuxes((i-1)*wind+1:i*wind)); 
    % Presencia personas
    presenciaPersonas(conta+i) = mean(measuredPersonas((i-1)*wind+1:i*wind)); 
    % Lente de momento no hemos probado distintas lentes
    lente(conta+i) = mean(measuredLente((i-1)*wind+1:i*wind)); 
end
conta = conta + floor(length(signal)/wind);

% TABLA 9
date9 = tabla911052022{1:wind:end,1};
date = [date(1:end-1); date9]
signal = tabla911052022{:,2};
measuredDistance = tabla911052022{:,3};
measuredAngRadiacion = tabla911052022{:,4};
measuredAngIncidencia = tabla911052022{:,5};
measuredLuxes = tabla911052022{:,6};
measuredPersonas = tabla911052022{:,7};
measuredLente = tabla911052022{:,8};
entorno9 = tabla911052022{1:wind:end,11};
entorno = [entorno(1:end-1); entorno9]
for i = 1:floor(length(signal)/wind)
    % Calculo path loss
    signal_window = signal((i-1)*wind+1:i*wind);
    Vpp_output = max(signal_window) - min (signal_window);
    pathloss(conta+i) = 10*log10(0.6*Vpp_output/(Vpp_input*10^5));
    % Calculo luminosidad+
    distancia(conta+i) = mean(measuredDistance((i-1)*wind+1:i*wind));
    % Angulo radiacion medio
    angRadiacion(conta+i) = mean(measuredAngRadiacion((i-1)*wind+1:i*wind));
    % Angulo incidencia medio
    angIncidencia(conta+i) = mean(measuredAngIncidencia((i-1)*wind+1:i*wind));
    % Luz ambiente
    ambientLight(conta+i) = mean(measuredLuxes((i-1)*wind+1:i*wind)); 
    % Presencia personas
    presenciaPersonas(conta+i) = mean(measuredPersonas((i-1)*wind+1:i*wind)); 
    % Lente de momento no hemos probado distintas lentes
    lente(conta+i) = mean(measuredLente((i-1)*wind+1:i*wind)); 
end
conta = conta + floor(length(signal)/wind);

% TABLA 10
date10 = tabla1011052022{1:wind:end,1};
date = [date(1:end-1); date10]
signal = tabla1011052022{:,2};
measuredDistance = tabla1011052022{:,3};
measuredAngRadiacion = tabla1011052022{:,4};
measuredAngIncidencia = tabla1011052022{:,5};
measuredLuxes = tabla1011052022{:,6};
measuredPersonas = tabla1011052022{:,7};
measuredLente = tabla1011052022{:,8};
entorno10 = tabla1011052022{1:wind:end,11};
entorno = [entorno(1:end-1); entorno10]
for i = 1:floor(length(signal)/wind)
    % Calculo path loss
    signal_window = signal((i-1)*wind+1:i*wind);
    Vpp_output = max(signal_window) - min (signal_window);
    pathloss(conta+i) = 10*log10(0.6*Vpp_output/(Vpp_input*10^5));
    % Calculo luminosidad+
    distancia(conta+i) = mean(measuredDistance((i-1)*wind+1:i*wind));
    % Angulo radiacion medio
    angRadiacion(conta+i) = mean(measuredAngRadiacion((i-1)*wind+1:i*wind));
    % Angulo incidencia medio
    angIncidencia(conta+i) = mean(measuredAngIncidencia((i-1)*wind+1:i*wind));
    % Luz ambiente
    ambientLight(conta+i) = mean(measuredLuxes((i-1)*wind+1:i*wind)); 
    % Presencia personas
    presenciaPersonas(conta+i) = mean(measuredPersonas((i-1)*wind+1:i*wind)); 
    % Lente de momento no hemos probado distintas lentes
    lente(conta+i) = mean(measuredLente((i-1)*wind+1:i*wind)); 
end
conta = conta + floor(length(signal)/wind);

% TABLA 11
date11 = tabla1111052022{1:wind:end,1};
date = [date(1:end-1); date11]
signal = tabla1111052022{:,2};
measuredDistance = tabla1111052022{:,3};
measuredAngRadiacion = tabla1111052022{:,4};
measuredAngIncidencia = tabla1111052022{:,5};
measuredLuxes = tabla1111052022{:,6};
measuredPersonas = tabla1111052022{:,7};
measuredLente = tabla1111052022{:,8};
entorno11 = tabla1111052022{1:wind:end,11};
entorno = [entorno(1:end-1); entorno11]
for i = 1:floor(length(signal)/wind)
    % Calculo path loss
    signal_window = signal((i-1)*wind+1:i*wind);
    Vpp_output = max(signal_window) - min (signal_window);
    pathloss(conta+i) = 10*log10(0.6*Vpp_output/(Vpp_input*10^5));
    % Calculo luminosidad+
    distancia(conta+i) = mean(measuredDistance((i-1)*wind+1:i*wind));
    % Angulo radiacion medio
    angRadiacion(conta+i) = mean(measuredAngRadiacion((i-1)*wind+1:i*wind));
    % Angulo incidencia medio
    angIncidencia(conta+i) = mean(measuredAngIncidencia((i-1)*wind+1:i*wind));
    % Luz ambiente
    ambientLight(conta+i) = mean(measuredLuxes((i-1)*wind+1:i*wind)); 
    % Presencia personas
    presenciaPersonas(conta+i) = mean(measuredPersonas((i-1)*wind+1:i*wind)); 
    % Lente de momento no hemos probado distintas lentes
    lente(conta+i) = mean(measuredLente((i-1)*wind+1:i*wind)); 
end
conta = conta + floor(length(signal)/wind);

% TABLA 12
date12 = tabla1211052022{1:wind:end,1};
date = [date(1:end-1); date12]
signal = tabla1211052022{:,2};
measuredDistance = tabla1211052022{:,3};
measuredAngRadiacion = tabla1211052022{:,4};
measuredAngIncidencia = tabla1211052022{:,5};
measuredLuxes = tabla1211052022{:,6};
measuredPersonas = tabla1211052022{:,7};
measuredLente = tabla1211052022{:,8};
entorno12 = tabla1211052022{1:wind:end,11};
entorno = [entorno(1:end-1); entorno12]
for i = 1:floor(length(signal)/wind)
    % Calculo path loss
    signal_window = signal((i-1)*wind+1:i*wind);
    Vpp_output = max(signal_window) - min (signal_window);
    pathloss(conta+i) = 10*log10(0.6*Vpp_output/(Vpp_input*10^5));
    % Calculo luminosidad+
    distancia(conta+i) = mean(measuredDistance((i-1)*wind+1:i*wind));
    % Angulo radiacion medio
    angRadiacion(conta+i) = mean(measuredAngRadiacion((i-1)*wind+1:i*wind));
    % Angulo incidencia medio
    angIncidencia(conta+i) = mean(measuredAngIncidencia((i-1)*wind+1:i*wind));
    % Luz ambiente
    ambientLight(conta+i) = mean(measuredLuxes((i-1)*wind+1:i*wind)); 
    % Presencia personas
    presenciaPersonas(conta+i) = mean(measuredPersonas((i-1)*wind+1:i*wind)); 
    % Lente de momento no hemos probado distintas lentes
    lente(conta+i) = mean(measuredLente((i-1)*wind+1:i*wind)); 
end
conta = conta + floor(length(signal)/wind);

date = date(1:conta);
pathloss = pathloss(1:conta);
distancia = distancia(1:conta);
angRadiacion = angRadiacion(1:conta);
angIncidencia = angIncidencia(1:conta);
ambientLight = ambientLight(1:conta);
presenciaPersonas = presenciaPersonas(1:conta);
lente=lente(1:conta);
entorno = entorno(1:conta);
% Construcción de la tabla
tablaTotal = table(date, distancia,angRadiacion,angIncidencia,ambientLight,presenciaPersonas,lente,entorno, pathloss)
