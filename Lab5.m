%% Task 1: Creating a Simple Function

result1 = mySimpleFunction(5, 7);
disp(['Sum of 5 and 7 is: ', num2str(result1)]);

%% Task 2: Function Inputs and Outputs


radii = [2, 5, 10];
for r = radii
    area = calculateCircleArea(r);
    disp(['Area for radius ', num2str(r), ' is: ', num2str(area)]);
end

%% Task 3: Function with Multiple Outputs
data = [3, 6, 9, 12, 15];
[meanVal, stdVal] = computeStatistics(data);
disp(['Mean: ', num2str(meanVal), ', Std Dev: ', num2str(stdVal)]);

%% Task 4: Nested Functions
outerFunction(4, 6);

%% Task 5: Function Handles
% Function: applyFunction - Applies function handle to each element
vec = [1, 2, 3, 4];
squareFunc = @(x) x.^2;
cubeFunc = @(x) x.^3;
disp('Square of each element:');
disp(applyFunction(squareFunc, vec));
disp('Cube of each element:');
disp(applyFunction(cubeFunc, vec));

%% Task 6: Anonymous Functions
triangleArea = @(base, height) 0.5 * base * height;
disp(['Area (base=5, height=10): ', num2str(triangleArea(5,10))]);
disp(['Area (base=7, height=3): ', num2str(triangleArea(7,3))]);

%% Task 7: Using Built-in Functions
vector = [10, 25, 7, 14, 36];
disp(['Max: ', num2str(max(vector))]);
disp(['Min: ', num2str(min(vector))]);
disp(['Sum: ', num2str(sum(vector))]);

%% ------------------------------

function s = mySimpleFunction(a, b)
    % Returns the sum of a and b
    s = a + b;
end

function area = calculateCircleArea(r)
    % Returns area of a circle given radius r
    area = pi * r^2;
end

function [avg, stddev] = computeStatistics(vec)
    % Returns mean and standard deviation of input vector
    avg = mean(vec);
    stddev = std(vec);
end

function outerFunction(x, y)
    % Calls nested function innerFunction inside it
    disp(['Sum from innerFunction: ', num2str(innerFunction(x, y))]);
    
    function result = innerFunction(a, b)
        % Nested function that adds two numbers
        result = a + b;
    end
end

function outVec = applyFunction(fhandle, vec)
    % Applies function handle fhandle to each element in vec
    outVec = arrayfun(fhandle, vec);
end
