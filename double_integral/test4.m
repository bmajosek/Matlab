function [] = test4
% Projekt 1, zadanie 34
% Bartosz Maj, 320710
% Test 4
%
% Test sprawdzajacy blad kwadratury dla tych samych funkcji, dla roznej
% ilosci wezlow, korzystajac ze wzoru: 
% |S(f) - I(f)| <= (d - c) * delta1 + (b - a) * delta2, powinnismy otrzymac
% im wieksza ilosc wezlow tym mniejszy blad, chcemy sprawdzic rowniez ile
% potrzeba wezlow oraz czasu, aby otrzymac blad mniejszy niz 1e-8.
%
fprintf("Test sprawdzajacy blad kwadratury dla tych samych funkcji,\n");
fprintf("dla roznej ilosci wezlow,\n");
fprintf("korzystajac ze wzoru:\n");
fprintf("|S(f) - I(f)| <= (d - c) * delta1 + (b - a) * delta2\n");
fprintf("powinnismy otrzymac im wieksza ilosc wezlow tym mniejszy blad,\n");
fprintf("chcemy sprawdzic rowniez ile potrzeba wezlow oraz czasu,\n");
fprintf("aby otrzymac blad mniejszy niz 1e-8.\n");
fprintf("---------------------------------------\n");
fprintf("f(x, y) = (xy)^4\n");
fprintf("[a, b] = [0, 2]\n");
fprintf("[c, d] = [0, 2]\n");
fprintf("liczba wezlow na przedziale [a, b] = 10\n");
fprintf("liczba wezlow na przedziale [c, d] = 10\n");
tic
f = @(x, y) (x .* y).^4;
H1 = (2 - 0) / 10;
delta1 = (2 - 0) * H1^4 * 24 * 16 / (180 * 2^4); % blad zlozonej kwadratury Simpsona
H2 = (2 - 0) / 10;
delta2 = (2 - 0) * H2^2 * 12 * 4 * 16 / 24; % blad zlozonej kwadratury prostokatow (z punktem srodkowym)
res = abs(P1Z34_BMA_double_integral(f, 0, 2, 0, 2, 10, 10) - 1024/25);
right = delta1 * (2 - 0) + delta2 * (2 - 0); % sumaryczny blad
czyok = res <= right;
fprintf("blad maksymalny: " + abs(right) + "\n");
fprintf("blad wynosi: " + res + "\n");
fprintf("czy blad sie zgadza: " + czyok + "\n");
toc
fprintf("---------------------------------------\n");
input("");
fprintf("f(x, y) = (xy)^4\n");
fprintf("[a, b] = [0, 2]\n");
fprintf("[c, d] = [0, 2]\n");
fprintf("liczba wezlow na przedziale [a, b] = 100\n");
fprintf("liczba wezlow na przedziale [c, d] = 10\n");
tic
f = @(x, y) (x .* y).^4;
H1 = (2 - 0) / 100;
delta1 = (2 - 0) * H1^4 * 24 * 16 / (180 * 2^4); % blad zlozonej kwadratury Simpsona
H2 = (2 - 0) / 10;
delta2 = (2 - 0) * H2^2 * 12 * 4 * 16 / 24; % blad zlozonej kwadratury prostokatow (z punktem srodkowym)
res = abs(P1Z34_BMA_double_integral(f, 0, 2, 0, 2, 100, 10) - 1024/25);
right = delta1 * (2 - 0) + delta2 * (2 - 0); % sumaryczny blad
czyok = res <= right;
fprintf("blad maksymalny: " + abs(right) + "\n");
fprintf("blad wynosi: " + res + "\n");
fprintf("czy blad sie zgadza: " + czyok + "\n");
toc
fprintf("---------------------------------------\n");
input("");
fprintf("f(x, y) = (xy)^4\n");
fprintf("[a, b] = [0, 2]\n");
fprintf("[c, d] = [0, 2]\n");
fprintf("liczba wezlow na przedziale [a, b] = 10\n");
fprintf("liczba wezlow na przedziale [c, d] = 100\n");
tic
f = @(x, y) (x .* y).^4;
H1 = (2 - 0) / 10;
delta1 = (2 - 0) * H1^4 * 24 * 16 / (180 * 2^4); % blad zlozonej kwadratury Simpsona
H2 = (2 - 0) / 100;
delta2 = (2 - 0) * H2^2 * 12 * 4 * 16 / 24; % blad zlozonej kwadratury prostokatow (z punktem srodkowym)
res = abs(P1Z34_BMA_double_integral(f, 0, 2, 0, 2, 10, 100) - 1024/25);
right = delta1 * (2 - 0) + delta2 * (2 - 0); % sumaryczny blad
czyok = res <= right;
fprintf("blad maksymalny: " + abs(right) + "\n");
fprintf("blad wynosi: " + res + "\n");
fprintf("czy blad sie zgadza: " + czyok + "\n");
toc
fprintf("---------------------------------------\n");
input("");
fprintf("f(x, y) = (xy)^4\n");
fprintf("[a, b] = [0, 2]\n");
fprintf("[c, d] = [0, 2]\n");
fprintf("liczba wezlow na przedziale [a, b] = 1000\n");
fprintf("liczba wezlow na przedziale [c, d] = 10\n");
tic
f = @(x, y) (x .* y).^4;
H1 = (2 - 0) / 1000;
delta1 = (2 - 0) * H1^4 * 24 * 16 / (180 * 2^4); % blad zlozonej kwadratury Simpsona
H2 = (2 - 0) / 10;
delta2 = (2 - 0) * H2^2 * 12 * 4 * 16 / 24; % blad zlozonej kwadratury prostokatow (z punktem srodkowym)
res = abs(P1Z34_BMA_double_integral(f, 0, 2, 0, 2, 1000, 10) - 1024/25);
right = delta1 * (2 - 0) + delta2 * (2 - 0); % sumaryczny blad
czyok = res <= right;
fprintf("blad maksymalny: " + abs(right) + "\n");
fprintf("blad wynosi: " + res + "\n");
fprintf("czy blad sie zgadza: " + czyok + "\n");
toc
fprintf("---------------------------------------\n");
input("");
fprintf("f(x, y) = (xy)^4\n");
fprintf("[a, b] = [0, 2]\n");
fprintf("[c, d] = [0, 2]\n");
fprintf("liczba wezlow na przedziale [a, b] = 10\n");
fprintf("liczba wezlow na przedziale [c, d] = 1000\n");
tic
f = @(x, y) (x .* y).^4;
H1 = (2 - 0) / 10;
delta1 = (2 - 0) * H1^4 * 24 * 16 / (180 * 2^4); % blad zlozonej kwadratury Simpsona
H2 = (2 - 0) / 1000;
delta2 = (2 - 0) * H2^2 * 12 * 4 * 16 / 24; % blad zlozonej kwadratury prostokatow (z punktem srodkowym)
res = abs(P1Z34_BMA_double_integral(f, 0, 2, 0, 2, 10, 1000) - 1024/25);
right = delta1 * (2 - 0) + delta2 * (2 - 0); % sumaryczny blad
czyok = res <= right;
fprintf("blad maksymalny: " + abs(right) + "\n");
fprintf("blad wynosi: " + res + "\n");
fprintf("czy blad sie zgadza: " + czyok + "\n");
toc
fprintf("---------------------------------------\n");
input("");
fprintf("f(x, y) = (xy)^4\n");
fprintf("[a, b] = [0, 2]\n");
fprintf("[c, d] = [0, 2]\n");
fprintf("liczba wezlow na przedziale [a, b] = 1000\n");
fprintf("liczba wezlow na przedziale [c, d] = 1000\n");
tic
f = @(x, y) (x .* y).^4;
H1 = (2 - 0) / 1000;
delta1 = (2 - 0) * H1^4 * 24 * 16 / (180 * 2^4); % blad zlozonej kwadratury Simpsona
H2 = (2 - 0) / 1000;
delta2 = (2 - 0) * H2^2 * 12 * 4 * 16 / 24; % blad zlozonej kwadratury prostokatow (z punktem srodkowym)
res = abs(P1Z34_BMA_double_integral(f, 0, 2, 0, 2, 1000, 1000) - 1024/25);
right = delta1 * (2 - 0) + delta2 * (2 - 0); % sumaryczny blad
czyok = res <= right;
fprintf("blad maksymalny: " + abs(right) + "\n");
fprintf("blad wynosi: " + res + "\n");
fprintf("czy blad sie zgadza: " + czyok + "\n");
toc
fprintf("---------------------------------------\n");
input("");
fprintf("f(x, y) = (xy)^4\n");
fprintf("[a, b] = [0, 2]\n");
fprintf("[c, d] = [0, 2]\n");
fprintf("liczba wezlow na przedziale [a, b] = 10000\n");
fprintf("liczba wezlow na przedziale [c, d] = 10000\n");
fprintf("prosze zaczekac, moze to potrwac minute\n");
tic
f = @(x, y) (x .* y).^4;
H1 = (2 - 0) / 10000;
delta1 = (2 - 0) * H1^4 * 24 * 16 / (180 * 2^4); % blad zlozonej kwadratury Simpsona
H2 = (2 - 0) / 10000;
delta2 = (2 - 0) * H2^2 * 12 * 4 * 16 / 24; % blad zlozonej kwadratury prostokatow (z punktem srodkowym)
res = abs(P1Z34_BMA_double_integral(f, 0, 2, 0, 2, 10000, 10000) - 1024/25);
right = delta1 * (2 - 0) + delta2 * (2 - 0); % sumaryczny blad
czyok = res <= right;
fprintf("blad maksymalny: " + abs(right) + "\n");
fprintf("blad wynosi: " + res + "\n");
fprintf("czy blad sie zgadza: " + czyok + "\n");
toc
fprintf("---------------------------------------\n");
input("");
fprintf("f(x, y) = (xy)^4\n");
fprintf("[a, b] = [0, 2]\n");
fprintf("[c, d] = [0, 2]\n");
fprintf("liczba wezlow na przedziale [a, b] = 15000\n");
fprintf("liczba wezlow na przedziale [c, d] = 15000\n");
fprintf("prosze zaczekac, moze to potrwac minute\n");
tic
f = @(x, y) (x .* y).^4;
H1 = (2 - 0) / 15000;
delta1 = (2 - 0) * H1^4 * 24 * 16 / (180 * 2^4); % blad zlozonej kwadratury Simpsona
H2 = (2 - 0) / 15000;
delta2 = (2 - 0) * H2^2 * 12 * 4 * 16 / 24; % blad zlozonej kwadratury prostokatow (z punktem srodkowym)
res = abs(P1Z34_BMA_double_integral(f, 0, 2, 0, 2, 15000, 15000) - 1024/25);
right = delta1 * (2 - 0) + delta2 * (2 - 0); % sumaryczny blad
czyok = res <= right;
fprintf("blad maksymalny: " + abs(right) + "\n");
fprintf("blad wynosi: " + res + "\n");
fprintf("czy blad sie zgadza: " + czyok + "\n");
toc
fprintf("---------------------------------------\n");
input("");
fprintf("f(x, y) = (xy)^4\n");
fprintf("[a, b] = [0, 2]\n");
fprintf("[c, d] = [0, 2]\n");
fprintf("liczba wezlow na przedziale [a, b] = 25000\n");
fprintf("liczba wezlow na przedziale [c, d] = 25000\n");
fprintf("prosze zaczekac, moze to potrwac minute\n");
tic
f = @(x, y) (x .* y).^4;
H1 = (2 - 0) / 25000;
delta1 = (2 - 0) * H1^4 * 24 * 16 / (180 * 2^4); % blad zlozonej kwadratury Simpsona
H2 = (2 - 0) / 25000;
delta2 = (2 - 0) * H2^2 * 12 * 4 * 16 / 24; % blad zlozonej kwadratury prostokatow (z punktem srodkowym)
res = abs(P1Z34_BMA_double_integral(f, 0, 2, 0, 2, 25000, 25000) - 1024/25);
right = delta1 * (2 - 0) + delta2 * (2 - 0); % sumaryczny blad
czyok = res <= right;
fprintf("blad maksymalny: " + abs(right) + "\n");
fprintf("blad wynosi: " + res + "\n");
fprintf("czy blad sie zgadza: " + czyok + "\n");
toc
fprintf("---------------------------------------\n");
input("");
fprintf("f(x, y) = exp(x + y + 8)\n");
fprintf("[a, b] = [0, 1]\n");
fprintf("[c, d] = [0, 1]\n");
fprintf("liczba wezlow na przedziale [a, b] = 1000\n");
fprintf("liczba wezlow na przedziale [c, d] = 1000\n");
tic
f = @(x, y) exp(x + y + 8);
H1 = (1 - 0) / 1000;
delta1 = (1 - 0) * H1^4 * exp(10) / (180 * 2^4); % blad zlozonej kwadratury Simpsona
H2 = (1 - 0) / 1000;
delta2 = (1 - 0) * H2^2 * exp(10) / 24; % blad zlozonej kwadratury prostokatow (z punktem srodkowym)
res = abs(P1Z34_BMA_double_integral(f, 0, 1, 0, 1, 1000, 1000) - ...
    exp(8) * (exp(1) - 1)^2);
right = delta1 * (1 - 0) + delta2 * (1 - 0);
czyok = res <= right;
fprintf("blad maksymalny: " + abs(right) + "\n");
fprintf("blad wynosi: " + res + "\n");
fprintf("czy blad sie zgadza: " + czyok + "\n");
toc
fprintf("---------------------------------------\n");
input("");
fprintf("f(x, y) = exp(x + y + 8)\n");
fprintf("[a, b] = [0, 1]\n");
fprintf("[c, d] = [0, 1]\n");
fprintf("liczba wezlow na przedziale [a, b] = 8000\n");
fprintf("liczba wezlow na przedziale [c, d] = 8000\n");
tic
f = @(x, y) exp(x + y + 8);
H1 = (1 - 0) / 8000;
delta1 = (1 - 0) * H1^4 * exp(10) / (180 * 2^4); % blad zlozonej kwadratury Simpsona
H2 = (1 - 0) / 8000;
delta2 = (1 - 0) * H2^2 * exp(10) / 24; % blad zlozonej kwadratury prostokatow (z punktem srodkowym)
res = abs(P1Z34_BMA_double_integral(f, 0, 1, 0, 1, 8000, 8000) - ...
    exp(8) * (exp(1) - 1)^2);
right = delta1 * (1 - 0) + delta2 * (1 - 0);
czyok = res <= right;
fprintf("blad maksymalny: " + abs(right) + "\n");
fprintf("blad wynosi: " + res + "\n");
fprintf("czy blad sie zgadza: " + czyok + "\n");
toc
fprintf("---------------------------------------\n");
input("");
fprintf("f(x, y) = exp(x + y + 8)\n");
fprintf("[a, b] = [0, 1]\n");
fprintf("[c, d] = [0, 1]\n");
fprintf("liczba wezlow na przedziale [a, b] = 15000\n");
fprintf("liczba wezlow na przedziale [c, d] = 15000\n");
fprintf("prosze zaczekac, moze to potrwac minute\n");
tic
f = @(x, y) exp(x + y + 8);
H1 = (1 - 0) / 15000;
delta1 = (1 - 0) * H1^4 * exp(10) / (180 * 2^4); % blad zlozonej kwadratury Simpsona
H2 = (1 - 0) / 15000;
delta2 = (1 - 0) * H2^2 * exp(10) / 24; % blad zlozonej kwadratury prostokatow (z punktem srodkowym)
res = abs(P1Z34_BMA_double_integral(f, 0, 1, 0, 1, 15000, 15000) - ...
    exp(8) * (exp(1) - 1)^2);
right = delta1 * (1 - 0) + delta2 * (1 - 0);
czyok = res <= right;
fprintf("blad maksymalny: " + abs(right) + "\n");
fprintf("blad wynosi: " + res + "\n");
fprintf("czy blad sie zgadza: " + czyok + "\n");
toc
fprintf("---------------------------------------\n");
input("");
fprintf("f(x, y) = exp(x + y + 8)\n");
fprintf("[a, b] = [0, 1]\n");
fprintf("[c, d] = [0, 1]\n");
fprintf("liczba wezlow na przedziale [a, b] = 25000\n");
fprintf("liczba wezlow na przedziale [c, d] = 25000\n");
fprintf("prosze zaczekac, moze to potrwac minute\n");
tic
f = @(x, y) exp(x + y + 8);
H1 = (1 - 0) / 25000;
delta1 = (1 - 0) * H1^4 * exp(10) / (180 * 2^4); % blad zlozonej kwadratury Simpsona
H2 = (1 - 0) / 25000;
delta2 = (1 - 0) * H2^2 * exp(10) / 24; % blad zlozonej kwadratury prostokatow (z punktem srodkowym)
res = abs(P1Z34_BMA_double_integral(f, 0, 1, 0, 1, 25000, 25000) - ...
    exp(8) * (exp(1) - 1)^2);
right = delta1 * (1 - 0) + delta2 * (1 - 0);
czyok = res <= right;
fprintf("blad maksymalny: " + abs(right) + "\n");
fprintf("blad wynosi: " + res + "\n");
fprintf("czy blad sie zgadza: " + czyok + "\n");
toc
fprintf("---------------------------------------\n");
input("");
fprintf("f(x, y) = (x^4 + y^2)^5\n");
fprintf("[a, b] = [0, 1]\n");
fprintf("[c, d] = [0, 1]\n");
fprintf("liczba wezlow na przedziale [a, b] = 1000\n");
fprintf("liczba wezlow na przedziale [c, d] = 1000\n");
tic
f = @(x, y) (x.^4 + y.^2).^5;
H1 = (1 - 0) / 1000;
delta1 = (1 - 0) * H1^4 * 20699 / (180 * 2^4); % blad zlozonej kwadratury Simpsona
H2 = (1 - 0) / 1000;
delta2 = (1 - 0) * H2^2 * 3520 / 24; % blad zlozonej kwadratury prostokatow (z punktem srodkowym)
res = abs(P1Z34_BMA_double_integral(f, 0, 1, 0, 1, 1000, 1000) - 101120/153153);
right = delta1 * (1 - 0) + delta2 * (1 - 0);
czyok = res <= right;
fprintf("blad maksymalny: " + abs(right) + "\n");
fprintf("blad wynosi: " + res + "\n");
fprintf("czy blad sie zgadza: " + czyok + "\n");
toc
fprintf("---------------------------------------\n");
input("");
fprintf("f(x, y) = (x^4 + y^2)^5\n");
fprintf("[a, b] = [0, 1]\n");
fprintf("[c, d] = [0, 1]\n");
fprintf("liczba wezlow na przedziale [a, b] = 5000\n");
fprintf("liczba wezlow na przedziale [c, d] = 5000\n");
tic
f = @(x, y) (x.^4 + y.^2).^5;
H1 = (1 - 0) / 5000;
delta1 = (1 - 0) * H1^4 * 20699 / (180 * 2^4); % blad zlozonej kwadratury Simpsona
H2 = (1 - 0) / 5000;
delta2 = (1 - 0) * H2^2 * 3520 / 24; % blad zlozonej kwadratury prostokatow (z punktem srodkowym)
res = abs(P1Z34_BMA_double_integral(f, 0, 1, 0, 1, 5000, 5000) - 101120/153153);
right = delta1 * (1 - 0) + delta2 * (1 - 0);
czyok = res <= right;
fprintf("blad maksymalny: " + abs(right) + "\n");
fprintf("blad wynosi: " + res + "\n");
fprintf("czy blad sie zgadza: " + czyok + "\n");
toc
fprintf("---------------------------------------\n");
input("");
fprintf("f(x, y) = (x^4 + y^2)^5\n");
fprintf("[a, b] = [0, 1]\n");
fprintf("[c, d] = [0, 1]\n");
fprintf("liczba wezlow na przedziale [a, b] = 15000\n");
fprintf("liczba wezlow na przedziale [c, d] = 15000\n");
fprintf("prosze zaczekac, moze to potrwac minute\n");
tic
f = @(x, y) (x.^4 + y.^2).^5;
H1 = (1 - 0) / 15000;
delta1 = (1 - 0) * H1^4 * 20699 / (180 * 2^4); % blad zlozonej kwadratury Simpsona
H2 = (1 - 0) / 15000;
delta2 = (1 - 0) * H2^2 * 3520 / 24; % blad zlozonej kwadratury prostokatow (z punktem srodkowym)
res = abs(P1Z34_BMA_double_integral(f, 0, 1, 0, 1, 15000, 15000) - 101120/153153);
right = delta1 * (1 - 0) + delta2 * (1 - 0);
czyok = res <= right;
fprintf("blad maksymalny: " + abs(right) + "\n");
fprintf("blad wynosi: " + res + "\n");
fprintf("czy blad sie zgadza: " + czyok + "\n");
toc
fprintf("---------------------------------------\n");
input("");
fprintf("f(x, y) = (x^2 + y^2)^5\n");
fprintf("[a, b] = [0, 1]\n");
fprintf("[c, d] = [0, 1]\n");
fprintf("liczba wezlow na przedziale [a, b] = 25000\n");
fprintf("liczba wezlow na przedziale [c, d] = 25000\n");
fprintf("prosze zaczekac, moze to potrwac minute\n");
tic
f = @(x, y) (x.^4 + y.^2).^5;
H1 = (1 - 0) / 25000;
delta1 = (1 - 0) * H1^4 * 20699 / (180 * 2^4); % blad zlozonej kwadratury Simpsona
H2 = (1 - 0) / 25000;
delta2 = (1 - 0) * H2^2 * 3520 / 24; % blad zlozonej kwadratury prostokatow (z punktem srodkowym)
res = abs(P1Z34_BMA_double_integral(f, 0, 1, 0, 1, 25000, 25000) - 101120/153153);
right = delta1 * (1 - 0) + delta2 * (1 - 0);
czyok = res <= right;
fprintf("blad maksymalny: " + abs(right) + "\n");
fprintf("blad wynosi: " + res + "\n");
fprintf("czy blad sie zgadza: " + czyok + "\n");
toc
fprintf("---------------------------------------\n");
end % function