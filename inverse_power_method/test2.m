function [] = test2
% Projekt 2, zadanie 39
% Bartosz Maj, 320710
% Test 2
%
% Test sprawdzajacy modul odpowiadajacy za rozklad macierzy A, za pomoca...
% rozkladu PA = LU. Powinnismy otrzymac blad co najwyzej 1e-14.

fprintf("Test sprawdzajacy modul odpowiadajacy za rozklad macierzy A, za pomoca\n");
fprintf("rozkladu PA = LU. Powinnismy otrzymac blad co najwyzej 1e-14.\n");
fprintf("---------------------------------------\n");
input("");
fprintf("Macierz A:\n");
fprintf("| 6   4 |\n");
fprintf("| 9  -4 |\n");
A = [6 4; 9 -4];
[P, L, U] = PALU(A);
err = norm(P*A - L*U, 2);
fprintf("uzyskany blad: \n")
fprintf("%e\n", err);
fprintf("---------------------------------------\n");
input("");
fprintf("Macierz A:\n");
fprintf("| 1   3  -7 |\n");
fprintf("| 2  -9   0 |\n");
fprintf("| 3  -4  100|\n");
A = [1 3 -7; 2 -9 0; 3 -4 100];
[P, L, U] = PALU(A);
err = norm(P*A - L*U, 2);
fprintf("uzyskany blad: \n")
fprintf("%e\n", err);
fprintf("---------------------------------------\n");
input("");
fprintf("Macierz A:\n");
fprintf("| 9   9   9 |\n");
fprintf("| 7   3   7 |\n");
fprintf("| 1   0   6 |\n");
A = [9 9 9; 7 3 7; 1 0 6];
[P, L, U] = PALU(A);
err = norm(P*A - L*U, 2);
fprintf("uzyskany blad: \n")
fprintf("%e\n", err);
fprintf("---------------------------------------\n");
input("");
fprintf("Macierz A:\n");
fprintf("| 9   9   3   5 |\n");
fprintf("| 7   3   7   8 |\n");
fprintf("| 1   0   6   7 |\n");
fprintf("| 2  20  18   7 |\n");
A = [9 9 3 5; 7 3 7 8; 1 0 6 7; 2 20 18 7];
[P, L, U] = PALU(A);
err = norm(P*A - L*U, 2);
fprintf("uzyskany blad: \n")
fprintf("%e\n", err);
fprintf("---------------------------------------\n");
end % function