function [] = test1
% Projekt 1, zadanie 34
% Bartosz Maj, 320710
% Test 1
%
% Test sprawdzajacy rzad kwadratury po zmiennej wewnetrznej x powinien ...
% wyjsc 4, poniewaz jest to kwadratura Simpsona, uzyskany blad powinien ...
% wyjsc 0 dla wszystkich funkcji stopnia mniejszego niz 4.
%
fprintf("Test sprawdzajacy rzad kwadratury po zmiennej wewnetrznej x\n");
fprintf("powinien wyjsc 4, poniewaz jest to kwadratura Simpsona,\n");
fprintf("uzyskany blad powinien wyjsc 0 dla wszystkich funkcji stopnia\n");
fprintf("mniejszego niz 4.\n");
fprintf("---------------------------------------\n");
fprintf("f(x, y) = 1\n");
fprintf("[a, b] = [0, 1]\n");
fprintf("[c, d] = [0, 1]\n");
fprintf("liczba wezlow na przedziale [a, b] = 1\n");
fprintf("liczba wezlow na przedziale [c, d] = 1\n");
f = @(x, y) 1;
res1 = P1Z34_BMA_double_integral(f, 0, 1, 0, 1, 1, 1);
fprintf("wynik uzyskany za pomoca kwadratury: " + res1 + "\n");
fprintf("wynik dokladny: " + 1 + "\n");
err = res1 - 1;
fprintf("uzyskany blad: " + abs(err) + "\n");
fprintf("---------------------------------------\n");
input("");
fprintf("f(x, y) = x\n");
fprintf("[a, b] = [0, 1]\n");
fprintf("[c, d] = [0, 1]\n");
fprintf("liczba wezlow na przedziale [a, b] = 1\n");
fprintf("liczba wezlow na przedziale [c, d] = 1\n");
f = @(x, y) x;
res2 = P1Z34_BMA_double_integral(f, 0, 1, 0, 1, 1, 1);
fprintf("wynik uzyskany za pomoca kwadratury: " + res2 + "\n");
fprintf("wynik dokladny: " + 1/2 + "\n");
err = res2 - 1/2;
fprintf("uzyskany blad: " + abs(err) + "\n");
fprintf("---------------------------------------\n");
input("");
fprintf("f(x, y) = x^2\n");
fprintf("[a, b] = [0, 1]\n");
fprintf("[c, d] = [0, 1]\n");
fprintf("liczba wezlow na przedziale [a, b] = 1\n");
fprintf("liczba wezlow na przedziale [c, d] = 1\n");
f = @(x, y) x.^2;
res3 = P1Z34_BMA_double_integral(f, 0, 1, 0, 1, 1, 1);
fprintf("wynik uzyskany za pomoca kwadratury: " + res3 + "\n");
fprintf("wynik dokladny: " + 1/3 + "\n");
err = res3 - 1/3;
fprintf("uzyskany blad: " + abs(err) + "\n");
fprintf("---------------------------------------\n");
input("");
fprintf("f(x, y) = x^3\n");
fprintf("[a, b] = [0, 1]\n");
fprintf("[c, d] = [0, 1]\n");
fprintf("liczba wezlow na przedziale [a, b] = 1\n");
fprintf("liczba wezlow na przedziale [c, d] = 1\n");
f = @(x, y) x.^3;
res4 = P1Z34_BMA_double_integral(f, 0, 1, 0, 1, 1, 1);
fprintf("wynik uzyskany za pomoca kwadratury: " + res4 + "\n");
fprintf("wynik dokladny: " + 1/4 + "\n");
err = res4 - 1/4;
fprintf("uzyskany blad: " + abs(err) + "\n");
fprintf("---------------------------------------\n");
input("");
fprintf("f(x, y) = x^4\n");
fprintf("[a, b] = [0, 1]\n");
fprintf("[c, d] = [0, 1]\n");
fprintf("liczba wezlow na przedziale [a, b] = 1\n");
fprintf("liczba wezlow na przedziale [c, d] = 1\n");
f = @(x, y) x.^4;
res5 = P1Z34_BMA_double_integral(f, 0, 1, 0, 1, 1, 1);
fprintf("wynik uzyskany za pomoca kwadratury: " + res5 + "\n");
fprintf("wynik dokladny: " + 1/5 + "\n");
err = res5 - 1/5;
fprintf("uzyskany blad: " + abs(err) + "\n");
fprintf("---------------------------------------\n");
end % function