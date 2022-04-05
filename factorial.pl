factorial(0,1).
factorial(N,M):- N>0, X is N-1, factorial(X,Y), M is N*Y.
