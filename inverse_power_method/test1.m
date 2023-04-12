function [] = test1
% Projekt 2, zadanie 39
% Bartosz Maj, 320710
% Test 1
%
% Test sprawdzajacy moduly odpowiadajacy za rozwiazywanie ukladow rownan ...
% za pomoca metody eliminacji Gaussa z czesciowym wyborem odpowiednio ...
% macierze gornotrojkatne i dolnotrojkatne. Powinnismy otrzymac ...
% blad co najwyzej 1e-14.

fprintf("Test sprawdzajacy moduly odpowiadajace za rozwiazywanie ukladow\n");
fprintf("rownan za pomoca metody eliminacji Gaussa z czesciowym wyborem odpowiednio\n");
fprintf("macierze gornotrojkatne i dolnotrojkatne. Powinnismy otrzymac\n");
fprintf("blad co najwyzej 1e-14.\n")
fprintf("---------------------------------------\n");
input("");
fprintf("Macierz A:\n");
fprintf("| 1    2 |\n");
fprintf("| 0   -4 |\n");
fprintf("Wektor x:\n")
fprintf("| 8 |\n");
fprintf("| 2 |\n");
A = [1 2; 0 -4];
b = [8; 2];
resAcc =  A \ b;
res = UpGEPP(A,b);
err = norm(resAcc - res);
fprintf("dokladny wynik: \n");
fprintf("|%6.5f|\n", resAcc);
fprintf("wynik uzyskany za pomoca GEPP:\n")
fprintf("|%6.5f|\n", res);
fprintf("uzyskany blad: \n")
fprintf("|%e|\n", err);
fprintf("---------------------------------------\n");
input("");
fprintf("Macierz A:\n");
fprintf("| 2  -3   4 |\n");
fprintf("| 0   2  -5 |\n");
fprintf("| 0   0   6 |\n");
fprintf("Wektor x:\n")
fprintf("| 1 |\n");
fprintf("|-2 |\n");
fprintf("| 3 |\n");
A = [2 -3 4; 0  2 -5; 0 0 6];
b = [1; -2; 3];
resAcc =  A \ b;
res = UpGEPP(A,b);
err = norm(resAcc - res);
fprintf("dokladny wynik: \n");
fprintf("|%6.5f|\n", resAcc);
fprintf("wynik uzyskany za pomoca GEPP:\n")
fprintf("|%6.5f|\n", res);
fprintf("uzyskany blad: \n")
fprintf("|%e|\n", err);
fprintf("---------------------------------------\n");
input("");
fprintf("Macierz A:\n");
fprintf("| 1   2   3  4i |\n");
fprintf("| 0   3  3i   4 |\n");
fprintf("| 0   0   7   1 |\n");
fprintf("| 0   0   0  2i |\n");
fprintf("Wektor x:\n")
fprintf("| 1 |\n");
fprintf("| 2 |\n");
fprintf("| 2 |\n");
fprintf("| 4 |\n");
A = [1 2 3 4i; 0 3 3i 4; 0 0 7 1; 0 0 0 2i];
b = [1; 2; 2; 4];
resAcc =  A \ b;
res = UpGEPP(A,b);
err = norm(resAcc - res);
fprintf("dokladny wynik: \n");
fprintf("|%6.5f|\n", resAcc);
fprintf("wynik uzyskany za pomoca GEPP:\n")
fprintf("|%6.5f|\n", res);
fprintf("uzyskany blad: \n")
fprintf("|%e|\n", err);
fprintf("---------------------------------------\n");
input("");
fprintf("Teraz macierze dolnotrojkatne\n");
fprintf("Macierz A:\n");
fprintf("| 1    0 |\n");
fprintf("| 3   -4 |\n");
fprintf("Wektor x:\n")
fprintf("| 8 |\n");
fprintf("| 2 |\n");
A = [1 0; 3 -4];
b = [8; 2];
resAcc =  A \ b;
res = DownGEPP(A,b);
err = norm(resAcc - res);
fprintf("dokladny wynik: \n");
fprintf("|%6.5f|\n", resAcc);
fprintf("wynik uzyskany za pomoca GEPP:\n")
fprintf("|%6.5f|\n", res);
fprintf("uzyskany blad: \n")
fprintf("|%e|\n", err);
fprintf("---------------------------------------\n");
input("");
fprintf("Macierz A:\n");
fprintf("| 2   0   0 |\n");
fprintf("| 9   2   0 |\n");
fprintf("| 9   2   6 |\n");
fprintf("Wektor x:\n")
fprintf("| 1 |\n");
fprintf("|-2 |\n");
fprintf("| 3 |\n");
A = [2 0 0; 9 2 0; 9 2 6];
b = [1; -2; 3];
resAcc =  A \ b;
res = DownGEPP(A,b);
err = norm(resAcc - res);
fprintf("dokladny wynik: \n");
fprintf("|%6.5f|\n", resAcc);
fprintf("wynik uzyskany za pomoca GEPP:\n")
fprintf("|%6.5f|\n", res);
fprintf("uzyskany blad: \n")
fprintf("|%e|\n", err);
fprintf("---------------------------------------\n");
input("");
fprintf("Macierz A:\n");
fprintf("| 1   0   0   0 |\n");
fprintf("| 9   3   0   0 |\n");
fprintf("| 9   6   7   0 |\n");
fprintf("| 8   0  5i  2i |\n");
fprintf("Wektor x:\n")
fprintf("| 1 |\n");
fprintf("| 2 |\n");
fprintf("| 2 |\n");
fprintf("| 4 |\n");
A = [1 0 0 0; 9 3 0 0; 9 6 7 0; 8 0 5i 2i];
b = [1; 2; 2; 4];
resAcc =  A \ b;
res = DownGEPP(A,b);
err = norm(resAcc - res);
fprintf("dokladny wynik: \n");
fprintf("|%6.5f|\n", resAcc);
fprintf("wynik uzyskany za pomoca GEPP:\n")
fprintf("|%6.5f|\n", res);
fprintf("uzyskany blad: \n")
fprintf("|%e|\n", err);
fprintf("---------------------------------------\n");
end % function