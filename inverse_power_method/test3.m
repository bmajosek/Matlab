function [] = test3
% Projekt 2, zadanie 39
% Bartosz Maj, 320710
% Test 3
%
% Test sprawdzajacy poprawnosc odwrotnej metody potęgowej z normowaniem.
% Kazde wywolanie funkcji jest z argumentem maxIter = 500 oraz maxErr = 1e-9.
% Powinnismy otrzymac za kazdym razem, gdy macierz A jest nieosobliwa,
% blad miedzy dokladnym wynikiem, a obliczonym za pomoca metody jest co najwyzej 1e-9,
% w przeciwnym wypadku powinnismy otrzymac blad metody Nan, a wynik Nan.

fprintf("Test sprawdzajacy poprawnosc odwrotnej metody potęgowej z normowaniem.\n");
fprintf("Kazde wywolanie funkcji jest z argumentem maxIter = 500 oraz maxErr = 1e-9.\n");
fprintf("Powinnismy otrzymac za kazdym razem, gdy macierz A jest nieosobliwa,\n");
fprintf("blad miedzy dokladnym wynikiem, a obliczonym za pomoca metody jest co najwyzej 1e-9,\n");
fprintf("w przeciwnym wypadku powinnismy otrzymac blad metody Nan, a wynik Nan.\n")
fprintf("---------------------------------------\n");
input("");
fprintf("Macierz A:\n");
fprintf("| 5i  0 |\n");
fprintf("| 9   i |\n");
fprintf("Poczatkowy wektor przyblizen x:\n")
fprintf("| 3 |\n");
fprintf("| 7 |\n");
A = [5i 0; 9 1i];
x = [3; 7];
resAcc = 1i;
[res, errOfres] = P2Z39_BMA_inverse_method(A, x, 500, 1e-9);
err = abs(resAcc - res);
fprintf("wynik uzyskany za pomoca metody: %e + %ei\n", real(res), imag(res));
fprintf("uzyskany blad metody: %e\n", errOfres);
fprintf("dokladny wynik: %e + %ei\n", real(resAcc), imag(resAcc));
fprintf("blad miedzy dokladnym wynikiem, a przyblizonym: %e\n", err);
fprintf("---------------------------------------\n");
input("");
fprintf("Macierz A:\n");
fprintf("| 2   0   0 |\n");
fprintf("| 2  -1   0 |\n");
fprintf("| 9  77   9 |\n");
fprintf("Poczatkowy wektor przyblizen x:\n")
fprintf("| 7 |\n");
fprintf("| 5 |\n");
fprintf("| 3 |\n");
A = [2 0 0; 2 -1 0; 9 77 9];
x = [7; 5; 3];
resAcc = -1;
[res, errOfres] = P2Z39_BMA_inverse_method(A, x, 500, 1e-9);
err = abs(resAcc - res);
fprintf("wynik uzyskany za pomoca metody: %e\n", res);
fprintf("uzyskany blad metody: %e\n", errOfres);
fprintf("dokladny wynik: %e\n", resAcc);
fprintf("blad miedzy dokladnym wynikiem, a przyblizonym: %e\n", err);
fprintf("---------------------------------------\n");
input("");
fprintf("Macierz A:\n");
fprintf("|89   0   0 |\n");
fprintf("| 7  99   0 |\n");
fprintf("| 7  77   9 |\n");
fprintf("Poczatkowy wektor przyblizen x:\n")
fprintf("|199|\n");
fprintf("|199|\n");
fprintf("|199|\n");
A = [89 0 0; 7 99 0; 7 77 9];
x = [199; 199; 199];
resAcc = 9;
[res, errOfres] = P2Z39_BMA_inverse_method(A, x, 500, 1e-9);
err = abs(resAcc - res);
fprintf("wynik uzyskany za pomoca metody: %e\n", res);
fprintf("uzyskany blad metody: %e\n", errOfres);
fprintf("dokladny wynik: %e\n", resAcc);
fprintf("blad miedzy dokladnym wynikiem, a przyblizonym: %e\n", err);
fprintf("---------------------------------------\n");
input("");
fprintf("Macierz A:\n");
fprintf("| 2   1   0   1 |\n");
fprintf("| 1   2   1   0 |\n");
fprintf("| 0   1   2   1 |\n");
fprintf("| 1   0   2   2 |\n");
fprintf("Poczatkowy wektor przyblizen x:\n")
fprintf("| 1 |\n");
fprintf("| 5 |\n");
fprintf("| 3 |\n");
fprintf("|10 |\n");
A = [2 1 0 1; 1 2 1 0; 0 1 2 1; 1 0 1 2];
x = [1; 5; 3; 10];
resAcc = 0;
[res, errOfres] = P2Z39_BMA_inverse_method(A, x, 500, 1e-9);
err = abs(resAcc - res);
fprintf("wynik uzyskany za pomoca metody: %e\n", res);
fprintf("uzyskany blad metody: %e\n", errOfres);
fprintf("dokladny wynik: %e\n", resAcc);
fprintf("blad miedzy dokladnym wynikiem, a przyblizonym: %e\n", err);
fprintf("---------------------------------------\n");
end % function