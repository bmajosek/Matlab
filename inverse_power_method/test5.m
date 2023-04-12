function [] = test5
% Projekt 2, zadanie 39
% Bartosz Maj, 320710
% Test 5
%
% Test sprawdzajacy ile potrzeba iteracji oraz czasu, aby blad odwrotnej
% metody potegowej z normowaniem, byl co najwyzej 1e-10.
% Powinnismy otrzymac im wiecej iteracji, tym wieksza dokladnosc,
% jezeli jest metoda ta jest zbiezna dla danej macierzy.

fprintf("Test sprawdzajacy ile potrzeba iteracji oraz czasu, aby blad odwrotnej\n");
fprintf("metody potegowej z normowaniem, byl co najwyzej 1e-10.\n");
fprintf("Powinnismy otrzymac im wiecej iteracji, tym wieksza dokladnosc,\n");
fprintf("jezeli jest metoda ta jest zbiezna dla danej macierzy.\n");
fprintf("---------------------------------------\n");
input("");
fprintf("Macierz A:\n");
fprintf("| 1   8 |\n");
fprintf("| 5  -3 |\n");
fprintf("Poczatkowy wektor przyblizen x:\n")
fprintf("| 1 |\n");
fprintf("| 2 |\n");
A = [1 8; 5 -3];
x = [1; 2];
resAcc = 2*sqrt(11) - 1;
tic
[res, errOfres] = P2Z39_BMA_inverse_method(A, x, 5, 1e-10);
err = abs(resAcc - res);
toc
fprintf("liczba iteracji: 5\n");
fprintf("wynik uzyskany za pomoca metody: %e\n", res);
fprintf("uzyskany blad metody: %e\n", errOfres);
fprintf("dokladny wynik: %e\n", resAcc);
fprintf("blad miedzy dokladnym wynikiem, a przyblizonym: %e\n", err);
fprintf("---------------------------------------\n");
input("");
fprintf("Macierz A:\n");
fprintf("| 1   8 |\n");
fprintf("| 5  -3 |\n");
fprintf("Poczatkowy wektor przyblizen x:\n")
fprintf("| 1 |\n");
fprintf("| 2 |\n");
A = [1 8; 5 -3];
x = [1; 2];
resAcc = 2*sqrt(11) - 1;
tic
[res, errOfres] = P2Z39_BMA_inverse_method(A, x, 10, 1e-10);
err = abs(resAcc - res);
toc
fprintf("liczba iteracji: 10\n");
fprintf("wynik uzyskany za pomoca metody: %e\n", res);
fprintf("uzyskany blad metody: %e\n", errOfres);
fprintf("dokladny wynik: %e\n", resAcc);
fprintf("blad miedzy dokladnym wynikiem, a przyblizonym: %e\n", err);
fprintf("---------------------------------------\n");
input("");
fprintf("Macierz A:\n");
fprintf("| 1   8 |\n");
fprintf("| 5  -3 |\n");
fprintf("Poczatkowy wektor przyblizen x:\n")
fprintf("| 1 |\n");
fprintf("| 2 |\n");
A = [1 8; 5 -3];
x = [1; 2];
resAcc = 2*sqrt(11) - 1;
tic
[res, errOfres] = P2Z39_BMA_inverse_method(A, x, 50, 1e-10);
err = abs(resAcc - res);
toc
fprintf("liczba iteracji: 50\n");
fprintf("wynik uzyskany za pomoca metody: %e\n", res);
fprintf("uzyskany blad metody: %e\n", errOfres);
fprintf("dokladny wynik: %e\n", resAcc);
fprintf("blad miedzy dokladnym wynikiem, a przyblizonym: %e\n", err);
fprintf("---------------------------------------\n");
input("");
fprintf("Macierz A:\n");
fprintf("| 1   8 |\n");
fprintf("| 5  -3 |\n");
fprintf("Poczatkowy wektor przyblizen x:\n")
fprintf("| 1 |\n");
fprintf("| 2 |\n");
A = [1 8; 5 -3];
x = [1; 2];
resAcc = 2*sqrt(11) - 1;
tic
[res, errOfres] = P2Z39_BMA_inverse_method(A, x, 100, 1e-10);
err = abs(resAcc - res);
toc
fprintf("liczba iteracji: 100\n");
fprintf("wynik uzyskany za pomoca metody: %e\n", res);
fprintf("uzyskany blad metody: %e\n", errOfres);
fprintf("dokladny wynik: %e\n", resAcc);
fprintf("blad miedzy dokladnym wynikiem, a przyblizonym: %e\n", err);
fprintf("---------------------------------------\n");
input("");
fprintf("Macierz A:\n");
fprintf("| 1   1   1   0 |\n");
fprintf("| 1   0  -2   0 |\n");
fprintf("| 3   1  -2   3 |\n");
fprintf("| 0  -1   0   2 |\n");
fprintf("Poczatkowy wektor przyblizen x:\n")
fprintf("| 2 |\n");
fprintf("| 3 |\n");
fprintf("| 5 |\n");
fprintf("| 8 |\n");
A = [1 1 1 0; 1 0 -2 0; 3 1 -2 3; 0 -1 0 2];
x = [2; 3; 5; 8];
resAcc = -1;
tic
[res, errOfres] = P2Z39_BMA_inverse_method(A, x, 5, 1e-10);
err = abs(resAcc - res);
toc
fprintf("liczba iteracji: 5\n");
fprintf("wynik uzyskany za pomoca metody: %e\n", res);
fprintf("uzyskany blad metody: %e\n", errOfres);
fprintf("dokladny wynik: %e\n", resAcc);
fprintf("blad miedzy dokladnym wynikiem, a przyblizonym: %e\n", err);
fprintf("---------------------------------------\n");
input("");
fprintf("Macierz A:\n");
fprintf("| 1   1   1   0 |\n");
fprintf("| 1   0  -2   0 |\n");
fprintf("| 3   1  -2   3 |\n");
fprintf("| 0  -1   0   2 |\n");
fprintf("Poczatkowy wektor przyblizen x:\n")
fprintf("| 2 |\n");
fprintf("| 3 |\n");
fprintf("| 5 |\n");
fprintf("| 8 |\n");
A = [1 1 1 0; 1 0 -2 0; 3 1 -2 3; 0 -1 0 2];
x = [2; 3; 5; 8];
resAcc = -1;
tic
[res, errOfres] = P2Z39_BMA_inverse_method(A, x, 10, 1e-10);
err = abs(resAcc - res);
toc
fprintf("liczba iteracji: 10\n");
fprintf("wynik uzyskany za pomoca metody: %e\n", res);
fprintf("uzyskany blad metody: %e\n", errOfres);
fprintf("dokladny wynik: %e\n", resAcc);
fprintf("blad miedzy dokladnym wynikiem, a przyblizonym: %e\n", err);
fprintf("---------------------------------------\n");
input("");
fprintf("Macierz A:\n");
fprintf("| 1   1   1   0 |\n");
fprintf("| 1   0  -2   0 |\n");
fprintf("| 3   1  -2   3 |\n");
fprintf("| 0  -1   0   2 |\n");
fprintf("Poczatkowy wektor przyblizen x:\n")
fprintf("| 2 |\n");
fprintf("| 3 |\n");
fprintf("| 5 |\n");
fprintf("| 8 |\n");
A = [1 1 1 0; 1 0 -2 0; 3 1 -2 3; 0 -1 0 2];
x = [2; 3; 5; 8];
resAcc = -1;
tic
[res, errOfres] = P2Z39_BMA_inverse_method(A, x, 50, 1e-10);
err = abs(resAcc - res);
toc
fprintf("liczba iteracji: 50\n");
fprintf("wynik uzyskany za pomoca metody: %e\n", res);
fprintf("uzyskany blad metody: %e\n", errOfres);
fprintf("dokladny wynik: %e\n", resAcc);
fprintf("blad miedzy dokladnym wynikiem, a przyblizonym: %e\n", err);
fprintf("---------------------------------------\n");
input("");
fprintf("Macierz A:\n");
fprintf("| 1   1   1   0 |\n");
fprintf("| 1   0  -2   0 |\n");
fprintf("| 3   1  -2   3 |\n");
fprintf("| 0  -1   0   2 |\n");
fprintf("Poczatkowy wektor przyblizen x:\n")
fprintf("| 2 |\n");
fprintf("| 3 |\n");
fprintf("| 5 |\n");
fprintf("| 8 |\n");
A = [1 1 1 0; 1 0 -2 0; 3 1 -2 3; 0 -1 0 2];
x = [2; 3; 5; 8];
resAcc = -1;
tic
[res, errOfres] = P2Z39_BMA_inverse_method(A, x, 60, 1e-10);
err = abs(resAcc - res);
toc
fprintf("liczba iteracji: 60\n");
fprintf("wynik uzyskany za pomoca metody: %e\n", res);
fprintf("uzyskany blad metody: %e\n", errOfres);
fprintf("dokladny wynik: %e\n", resAcc);
fprintf("blad miedzy dokladnym wynikiem, a przyblizonym: %e\n", err);
fprintf("---------------------------------------\n");
end % function