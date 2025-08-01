
result1 = mySimpleFunction2(5,7 );

result2 = calculateCircleArea (5);

data = [2,4,3,5,9];
[mean, standarddev] = computeStatistics (data)

outerfunc= outerFunction(4, 6)

vec = [1, 2, 3, 4];
squareFunc = @(x) x.^2;
cubeFunc = @(x) x.^3;
disp('Square of each element:');
disp(applyFunction(squareFunc, vec));
disp('Cube of each element:');
disp(applyFunction(cubeFunc, vec));

%% task6
triangleArea = @(base, height) 0.5 * base * height;
disp(['Area (base=5, height=10): ', num2str(triangleArea(5,10))]);
disp(['Area (base=7, height=3): ', num2str(triangleArea(7,3))]);
%% task7
vector1 = [10, 25, 7, 14, 36];
disp(['Max: ', num2str(max(vector))]);
disp(['Min: ', num2str(min(vector))]);
disp(['Sum: ', num2str(sum(vector))]);

%% task1 
function result = mySimpleFunction2 (num1,num2)
    result = num1 + num2; 
  disp(['Sum = ', num2str(result)]);

end
%% Task 2: Function Inputs and Outputs


function result2 = calculateCircleArea (radius)
result2 = pi* radius^2;
  disp(['Area for radius ', num2str(radius), ' is: ', num2str(result2)]);
end

%% Task 3: Function with Multiple Outputs
 
function [meanvalue, standarddev] = computeStatistics (vec)
    meanvalue= mean(vec);
   
    standarddev = std(vec); 
end

%% Task 4: Nested Functions
function result4 = outerFunction ( numb1,numb2)

result4=  innerFunction (numb1,numb2);
    function result3 = innerFunction (numb1,numb2)
        result3 = numb1+numb2;
    end

end

%% Task 5:


function outVec = applyFunction(fhandle, vec)
    % Applies function handle fhandle to each element in vec
    outVec = arrayfun(fhandle, vec);
end



