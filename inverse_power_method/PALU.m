function [P, L, U] = PALU(A)
% Projekt 2, zadanie 39
% Bartosz Maj, 320710
% 
% Modul odpowiadajacy za rozklad macierzy A, za pomoca rozkladu PA = LU
% Wejście:
%   A       - zespolona, trojkatna gorna macierz kwadratowa, nieosobliwa
% Wyjście:
%   P       - macierz permutacji
%   L       - macierz trojkatna dolna
%   U       - macierz trojkatna gorna

n = length(A);
P = eye(n);
L = zeros(n);
U = A;
for i = 1:n
    % znajduje wiersz, gdzie znajduje sie maksymalny element
    [~, tempInd] = max(abs(U(i:n, i)));
    tempInd = tempInd + i - 1;
    % zamieniam odpowiednio wiersze
    U([i tempInd], :) = U([tempInd i], :);
    % wyliczam kolejne wartosci w macierzy U oraz L
    temp = U(i + 1:n, i) / U(i, i);
    U((i + 1):n, :) = U((i + 1):n, :) - U(i, :) .* temp;
    % zamieniam odpowiednio wiersze
    P([i tempInd], :) = P([tempInd i], :);
    L([i tempInd], :) = L([tempInd i], :);
    L((i + 1):n, i) = temp;
end % for
L = L + eye(n);
end % function