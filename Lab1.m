%% Part1
matrixA = [3:-1:1; 6:-1:4; 9:-1:7];
matrixB = [12:-1:10; 15:-1:13; 18:-1:16];
matrixSum = matrixA +matrixB;
disp (matrixSum);

%% Part2

rowVector= 1:5 ;
columnVector = [6; 7; 8; 9; 10];
horizontalConcat = horzcat(rowVector,columnVector.' );
disp (horizontalConcat);

%% Part3

originalMatrix = [1 2;1 3];
repeatedMatrix = repmat (originalMatrix, 2,2);
disp (repeatedMatrix);

%% Part4 

identityMatrix = eye(3,3);
matrixProduct = identityMatrix*matrixA;
disp (matrixProduct);


