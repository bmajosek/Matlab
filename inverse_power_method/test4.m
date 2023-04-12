function [] = test4
% Projekt 2, zadanie 39
% Bartosz Maj, 320710
% Test 4
%
% Test sprawdzajacy zbieznosc odwrotnej metody potęgowej z normowaniem,
% gdy istnieja dwie lub wiecej najmniejszych wartosci (co do wartości bezwzględnej).
% Kazde wywolanie funkcji jest z argumentem maxIter = 1e3 oraz maxErr = 1e-9.
% W tym tescie sprawdzamy tylko macierze nieosobliwe.
% Powinnismy otrzymac za kazdym razem niedokladny wynik, poniewaz kazde
% kolejne przyblizenie zapetli program.

fprintf("Test sprawdzajacy zbieznosc odwrotnej metody potęgowej z normowaniem,\n");
fprintf("gdy istnieja dwie lub wiecej najmniejszych wartosci (co do wartości bezwzględnej).\n");
fprintf("Kazde wywolanie funkcji jest z argumentem maxIter = 1e3 oraz maxErr = 1e-9.\n");
fprintf("W tym tescie sprawdzamy tylko macierze nieosobliwe.\n");
fprintf("Powinnismy otrzymac za kazdym razem niedokladny wynik, poniewaz kazde\n");
fprintf("kolejne przyblizenie zapetli metode.\n");
fprintf("---------------------------------------\n");
input("");
fprintf("Macierz A:\n");
fprintf("| 1   0 |\n");
fprintf("| 5  -1 |\n");
fprintf("Poczatkowy wektor przyblizen x:\n")
fprintf("| 3 |\n");
fprintf("| 7 |\n");
A = [1 0; 5 -1];
x = [3; 7];
resAcc = 1;
[res, errOfres] = P2Z39_BMA_inverse_method(A, x, 1000, 1e-9);
err = abs(resAcc - res);
fprintf("wynik uzyskany za pomoca metody: %e\n", res);
fprintf("uzyskany blad metody: %e\n", errOfres);
fprintf("dokladny wynik: %e\n", resAcc);
fprintf("blad miedzy dokladnym wynikiem, a przyblizonym: %e\n", err);
fprintf("Roznica miedzy druga najmniejsza wartoscia (co do wartości bezwzględnej).\n");
resAcc = -1;
err = abs(resAcc - res);
fprintf("dokladny wynik: %e\n", resAcc);
fprintf("blad miedzy dokladnym wynikiem, a przyblizonym: %e\n", err);
fprintf("---------------------------------------\n");
input("");
fprintf("Macierz A:\n");
fprintf("| 2   0   0 |\n");
fprintf("| 2  -2   0 |\n");
fprintf("| 9  77  -2 |\n");
fprintf("Poczatkowy wektor przyblizen x:\n")
fprintf("| 7 |\n");
fprintf("| 5 |\n");
fprintf("| 3 |\n");
A = [2 0 0; 2 -2 0; 9 77 -2];
x = [7; 5; 3];
resAcc = -2;
[res, errOfres] = P2Z39_BMA_inverse_method(A, x, 1000, 1e-9);
err = abs(resAcc - res);
fprintf("wynik uzyskany za pomoca metody: %e\n", res);
fprintf("uzyskany blad metody: %e\n", errOfres);
fprintf("dokladny wynik: %e\n", resAcc);
fprintf("blad miedzy dokladnym wynikiem, a przyblizonym: %e\n", err);
fprintf("Roznica miedzy druga najmniejsza wartoscia (co do wartości bezwzględnej).\n");
resAcc = 2;
err = abs(resAcc - res);
fprintf("dokladny wynik: %e\n", resAcc);
fprintf("blad miedzy dokladnym wynikiem, a przyblizonym: %e\n", err);
fprintf("---------------------------------------\n");
input("");
fprintf("Macierz A:\n");
fprintf("|5i   3 |\n");
fprintf("| 5  -i |\n");
fprintf("Poczatkowy wektor przyblizen x:\n")
fprintf("| 1 |\n");
fprintf("| 4 |\n");
A = [5i 3; 5 -1i];
x = [1; 4];
resAcc = sqrt(6) + 2i;
[res, errOfres] = P2Z39_BMA_inverse_method(A, x, 1000, 1e-9);
err = abs(resAcc - res);
fprintf("wynik uzyskany za pomoca metody: %e + %ei\n", real(res), imag(res));
fprintf("uzyskany blad metody: %e\n", errOfres);
fprintf("dokladny wynik: %e + %ei\n", real(resAcc), imag(resAcc));
fprintf("blad miedzy dokladnym wynikiem, a przyblizonym: %e\n", err);
fprintf("Roznica miedzy druga najmniejsza wartoscia (co do wartości bezwzględnej).\n");
resAcc = -sqrt(6) + 2i;
err = abs(resAcc - res);
fprintf("dokladny wynik: %e + %ei\n", real(resAcc), imag(resAcc));
fprintf("blad miedzy dokladnym wynikiem, a przyblizonym: %e\n", err);
fprintf("---------------------------------------\n");
end % function