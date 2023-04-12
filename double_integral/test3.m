function [] = test3
% Projekt 1, zadanie 34
% Bartosz Maj, 320710
% Test 3
%
% Test sprawdzajacy blad kwadratury dla roznych funkcji, dla tej samej
% ilosci wezlow, dla tych samych przedzialow, korzystajac ze wzoru: 
% |S(f) - I(f)| <= (d - c) * delta1 + (b - a) * delta2, spodziewamy sie, ze
% dla kazdego bledu bedzie wyswietlone true, poniewaz to oznacza ze jest
% spelniona powyzsza nierownosc.
%
fprintf("Test sprawdzajacy blad kwadratury dla roznych funkcji,\n");
fprintf("dla tej samej ilosci wezlow, dla tych samych przedzialow,\n");
fprintf("korzystajac ze wzoru:\n");
fprintf("|S(f) - I(f)| <= (d - c) * delta1 + (b - a) * delta2\n");
fprintf("spodziewamy sie, ze dla kazdego bledu bedzie wyswietlone\n");
fprintf("true, poniewaz to oznacza ze jest spelniona powyzsza nierownosc.\n");
fprintf("---------------------------------------\n");
fprintf("f(x, y) = x^5 + y^5\n");
fprintf("[a, b] = [-1, 5]\n");
fprintf("[c, d] = [0, 2]\n");
fprintf("liczba wezlow na przedziale [a, b] = 10\n");
fprintf("liczba wezlow na przedziale [c, d] = 5\n");
f = @(x, y) x.^5 + y.^5;
H1 = (5 + 1) / 10;
delta1 = (5 + 1) * H1^4 * 120 * 5 / (180 * 2^4); % blad zlozonej kwadratury Simpsona
H2 = (2 - 0) / 5;
delta2 = (2 - 0) * H2^2 * 20 * 8 / 24;
res = abs(P1Z34_BMA_double_integral(f, -1, 5, 0, 2, 10, 5) - 5272);
right = delta1 * (2 - 0) + delta2 * (5 + 1);
czyok = res <= right;
fprintf("blad maksymalny: " + abs(right) + "\n");
fprintf("blad wynosi: " + res + "\n");
fprintf("czy blad sie zgadza: " + czyok + "\n");
fprintf("---------------------------------------\n");
input("");
fprintf("f(x, y) = (x + y)^5\n");
fprintf("[a, b] = [-1, 5]\n");
fprintf("[c, d] = [0, 2]\n");
fprintf("liczba wezlow na przedziale [a, b] = 10\n");
fprintf("liczba wezlow na przedziale [c, d] = 5\n");
f = @(x, y) (x + y).^5;
H1 = (5 + 1) / 10;
delta1 = (5 + 1) * H1^4 * 120 * 7 / (180 * 2^4); % blad zlozonej kwadratury Simpsona
H2 = (2 - 0) / 5;
delta2 = (2 - 0) * H2^2 * 20 * 7^3 / 24;
res = abs(P1Z34_BMA_double_integral(f, -1, 5, 0, 2, 10, 5) - 17748);
right = delta1 * (2 - 0) + delta2 * (5 + 1);
czyok = res <= right;
fprintf("blad maksymalny: " + abs(right) + "\n");
fprintf("blad wynosi: " + res + "\n");
fprintf("czy blad sie zgadza: " + czyok + "\n");
fprintf("---------------------------------------\n");
input("");
fprintf("f(x, y) = exp(x + y)\n");
fprintf("[a, b] = [-1, 5]\n");
fprintf("[c, d] = [0, 2]\n");
fprintf("liczba wezlow na przedziale [a, b] = 10\n");
fprintf("liczba wezlow na przedziale [c, d] = 5\n");
f = @(x, y) exp(x + y);
H1 = (5 + 1) / 10;
delta1 = (5 + 1) * H1^4 * exp(7) / (180 * 2^4); % blad zlozonej kwadratury Simpsona
H2 = (2 - 0) / 5;
delta2 = (2 - 0) * H2^2 * exp(7) / 24;
res = abs(P1Z34_BMA_double_integral(f, -1, 5, 0, 2, 10, 5) - (1/exp(1) ...
    - exp(1) - exp(5) + exp(7)));
right = delta1 * (2 - 0) + delta2 * (5 + 1);
czyok = res <= right;
fprintf("blad maksymalny: " + abs(right) + "\n");
fprintf("blad wynosi: " + res + "\n");
fprintf("czy blad sie zgadza: " + czyok + "\n");
fprintf("---------------------------------------\n");
input("");
fprintf("f(x, y) = sin(x) + sin(y)\n");
fprintf("[a, b] = [-1, 5]\n");
fprintf("[c, d] = [0, 2]\n");
fprintf("liczba wezlow na przedziale [a, b] = 10\n");
fprintf("liczba wezlow na przedziale [c, d] = 5\n");
f = @(x, y) sin(x) + sin(y);
H1 = (5 + 1) / 10;
delta1 = (5 + 1) * H1^4 * 1 / (180 * 2^4); % blad zlozonej kwadratury Simpsona
H2 = (2 - 0) / 5;
delta2 = (2 - 0) * H2^2 * 1 / 24;
res = abs(P1Z34_BMA_double_integral(f, -1, 5, 0, 2, 10, 5) - 4 ...
    * sin(1)^2 * (3 + 4 * cos(1) + 2 * cos(3)));
right = delta1 * (2 - 0) + delta2 * (5 + 1);
czyok = res <= right;
fprintf("blad maksymalny: " + abs(right) + "\n");
fprintf("blad wynosi: " + res + "\n");
fprintf("czy blad sie zgadza: " + czyok + "\n");
fprintf("---------------------------------------\n");
end % function