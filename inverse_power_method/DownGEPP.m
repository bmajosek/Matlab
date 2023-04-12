function [x] = DownGEPP(A, b)
% Projekt 2, zadanie 39
% Bartosz Maj, 320710
% 
% Modul odpowiadajacy za rozwiazywanie ukladu rownan Ax = b, gdzie A ...
% jest macierza trojkatna dolna za pomoca metody eliminacji Gaussa ...
% z czesciowym wyborem. 
% Wejście:
%   A       - zespolona, trojkatna dolna macierz kwadratowa, nieosobliwa
%   b       - pionowy wektor wspolczynnikow
% Wyjście:
%   x       - wynik uzyskany za pomoca tej metody 

n = length(A);
x = zeros(n, 1);
for i = 1:n
    % wyliczam kolejna wartosc x
    x(i) = (b(i) - A(i, (i - 1):-1:1) * x((i - 1):-1:1)) / A(i, i);
end % for
end % function

