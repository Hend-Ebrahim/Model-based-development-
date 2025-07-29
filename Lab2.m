%% Numeric Types

intVar = int8 (12 );
doubleVar = 3.2;
Class_int = class (intVar);
Class_float = class (doubleVar);
disp (['intVar is of type: ' , Class_int]);
disp (['doubleVar is of type:' , Class_float]);

%% Creating Numeric Arrays:

evenNumbers = 2:2:10;
primeNumbers = [2; 3; 5; 7; 11];
disp (evenNumbers);
disp (primeNumbers);

%% Specialized Matrix Functions:

identityMatrix = eye (3,3);
magicSquare = magic (2);
disp('Identity Matrix:');
disp(identityMatrix);

disp('Magic Square:');
disp(magicSquare);

%% Matrix Concatenation: 

combinedVector = horzcat (evenNumbers, primeNumbers.');
disp(combinedVector);
newMagic = [magicSquare, zeros(2,1)];
combinedMatrix = vertcat (identityMatrix, newMagic);
disp(combinedMatrix);



