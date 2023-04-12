function [] = test6
% Projekt 2, zadanie 39
% Bartosz Maj, 320710
% Test 6
%
% Test sprawdzajacy ile czasu oraz jaka otrzymamy dokladnosc, dla odpowienio
% 10, 1e3, 1e5, 1e7 iteracji.
% Powinnismy otrzymac im wiecej iteracji, tym wieksza dokladnosc oraz
% wiecej czasu jezeli metoda ta jest zbiezna dla danej macierzy.
% Ponadto sprawdzam szczegolny przypadek co dla poczatkowego przyblizenia
% rownemu wektorowi wlasnemu, powinnismy otrzymac poprawny wynik w 1 iteracji

fprintf("Test sprawdzajacy ile czasu oraz jaka otrzymamy dokladnosc, dla odpowienio\n");
fprintf("10, 1e3, 1e5, 1e7 iteracji.\n");
fprintf("Powinnismy otrzymac im wiecej iteracji, tym wieksza dokladnosc oraz\n");
fprintf("wiecej czasu jezeli metoda ta jest zbiezna dla danej macierzy.\n");
fprintf("Ponadto sprawdzam szczegolny przypadek co dla poczatkowego przyblizenia\n");
fprintf("rownemu wektorowi wlasnemu, powinnismy otrzymac poprawny wynik w 1 iteracji\n");
fprintf("---------------------------------------\n");
input("");
fprintf("Macierz A:\n");
fprintf("| 1   2 |\n");
fprintf("| 3   4 |\n");
fprintf("Poczatkowy wektor przyblizen x:\n")
fprintf("| 5 |\n");
fprintf("| 6 |\n");
A = [1 4; 4 3];
x = [5; 6];
resAcc = 2 - sqrt(17);
tic
[res, errOfres] = P2Z39_BMA_inverse_method(A, x, 10, 0);
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
fprintf("| 1   2 |\n");
fprintf("| 3   4 |\n");
fprintf("Poczatkowy wektor przyblizen x:\n")
fprintf("| 5 |\n");
fprintf("| 6 |\n");
A = [1 4; 4 3];
x = [5; 6];
resAcc = 2 - sqrt(17);
tic
[res, errOfres] = P2Z39_BMA_inverse_method(A, x, 1e3, 0);
err = abs(resAcc - res);
toc
fprintf("liczba iteracji: 1e3\n");
fprintf("wynik uzyskany za pomoca metody: %e\n", res);
fprintf("uzyskany blad metody: %e\n", errOfres);
fprintf("dokladny wynik: %e\n", resAcc);
fprintf("blad miedzy dokladnym wynikiem, a przyblizonym: %e\n", err);
fprintf("---------------------------------------\n");
input("");
fprintf("Macierz A:\n");
fprintf("| 1   2 |\n");
fprintf("| 3   4 |\n");
fprintf("Poczatkowy wektor przyblizen x:\n")
fprintf("| 5 |\n");
fprintf("| 6 |\n");
A = [1 4; 4 3];
x = [5; 6];
resAcc = 2 - sqrt(17);
tic
[res, errOfres] = P2Z39_BMA_inverse_method(A, x, 1e5, 0);
err = abs(resAcc - res);
toc
fprintf("liczba iteracji: 1e5\n");
fprintf("wynik uzyskany za pomoca metody: %e\n", res);
fprintf("uzyskany blad metody: %e\n", errOfres);
fprintf("dokladny wynik: %e\n", resAcc);
fprintf("blad miedzy dokladnym wynikiem, a przyblizonym: %e\n", err);
fprintf("---------------------------------------\n");
input("");
fprintf("Macierz A:\n");
fprintf("| 1   2 |\n");
fprintf("| 3   4 |\n");
fprintf("Poczatkowy wektor przyblizen x:\n")
fprintf("| 5 |\n");
fprintf("| 6 |\n");
A = [1 4; 4 3];
x = [5; 6];
resAcc = 2 - sqrt(17);
tic
[res, errOfres] = P2Z39_BMA_inverse_method(A, x, 1e7, 0);
err = abs(resAcc - res);
toc
fprintf("liczba iteracji: 1e7\n");
fprintf("wynik uzyskany za pomoca metody: %e\n", res);
fprintf("uzyskany blad metody: %e\n", errOfres);
fprintf("dokladny wynik: %e\n", resAcc);
fprintf("blad miedzy dokladnym wynikiem, a przyblizonym: %e\n", err);
fprintf("---------------------------------------\n");
input("");
fprintf("Macierz A:\n");
fprintf("| 2   0   0 |\n");
fprintf("| 3   4   7 |\n");
fprintf("| 0   0   5 |\n");
fprintf("Poczatkowy wektor przyblizen x:\n")
fprintf("|-1 |\n");
fprintf("| 5 |\n");
fprintf("|100|\n");
A = [2 0 0; 3 4 7; 0 0 5];
x = [-1; 5; 100];
resAcc = 2;
tic
[res, errOfres] = P2Z39_BMA_inverse_method(A, x, 10, 0);
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
fprintf("| 2   0   0 |\n");
fprintf("| 3   4   7 |\n");
fprintf("| 0   0   5 |\n");
fprintf("Poczatkowy wektor przyblizen x:\n")
fprintf("|-1 |\n");
fprintf("| 5 |\n");
fprintf("|100|\n");
A = [2 0 0; 3 4 7; 0 0 5];
x = [-1; 5; 100];
resAcc = 2;
tic
[res, errOfres] = P2Z39_BMA_inverse_method(A, x, 1e3, 0);
err = abs(resAcc - res);
toc
fprintf("liczba iteracji: 1e3\n");
fprintf("wynik uzyskany za pomoca metody: %e\n", res);
fprintf("uzyskany blad metody: %e\n", errOfres);
fprintf("dokladny wynik: %e\n", resAcc);
fprintf("blad miedzy dokladnym wynikiem, a przyblizonym: %e\n", err);
fprintf("---------------------------------------\n");
input("");
fprintf("Macierz A:\n");
fprintf("| 2   0   0 |\n");
fprintf("| 3   4   7 |\n");
fprintf("| 0   0   5 |\n");
fprintf("Poczatkowy wektor przyblizen x:\n")
fprintf("|-1 |\n");
fprintf("| 5 |\n");
fprintf("|100|\n");
A = [2 0 0; 3 4 7; 0 0 5];
x = [-1; 5; 100];
resAcc = 2;
tic
[res, errOfres] = P2Z39_BMA_inverse_method(A, x, 1e5, 0);
err = abs(resAcc - res);
toc
fprintf("liczba iteracji: 1e5\n");
fprintf("wynik uzyskany za pomoca metody: %e\n", res);
fprintf("uzyskany blad metody: %e\n", errOfres);
fprintf("dokladny wynik: %e\n", resAcc);
fprintf("blad miedzy dokladnym wynikiem, a przyblizonym: %e\n", err);
fprintf("---------------------------------------\n");
input("");
fprintf("Macierz A:\n");
fprintf("| 2   0   0 |\n");
fprintf("| 3   4   7 |\n");
fprintf("| 0   0   5 |\n");
fprintf("Poczatkowy wektor przyblizen x:\n")
fprintf("| 0 |\n");
fprintf("| 1 |\n");
fprintf("| 0 |\n");
A = [2 0 0; 3 4 7; 0 0 5];
x = [-2; 3; 0];
resAcc = 2;
tic
[res, errOfres] = P2Z39_BMA_inverse_method(A, x, 1e7, 0);
err = abs(resAcc - res);
toc
fprintf("liczba iteracji: 1e7\n");
fprintf("wynik uzyskany za pomoca metody: %e\n", res);
fprintf("uzyskany blad metody: %e\n", errOfres);
fprintf("dokladny wynik: %e\n", resAcc);
fprintf("blad miedzy dokladnym wynikiem, a przyblizonym: %e\n", err);
fprintf("---------------------------------------\n");
input("");
fprintf("Macierz A:\n");
fprintf("| 1   1 |\n");
fprintf("| 4   1 |\n");
fprintf("Poczatkowy wektor przyblizen x:\n")
fprintf("|-1 |\n");
fprintf("| 2 |\n");
A = [1 1; 4 1];
x = [-1; 2];
resAcc = -1;
tic
[res, errOfres] = P2Z39_BMA_inverse_method(A, x, 10, 0);
err = abs(resAcc - res);
toc
fprintf("liczba iteracji: 1\n");
fprintf("wynik uzyskany za pomoca metody: %e\n", res);
fprintf("uzyskany blad metody: %e\n", errOfres);
fprintf("dokladny wynik: %e\n", resAcc);
fprintf("blad miedzy dokladnym wynikiem, a przyblizonym: %e\n", err);
fprintf("---------------------------------------\n");
end