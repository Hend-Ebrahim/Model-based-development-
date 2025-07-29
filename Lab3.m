%% 1. Cell Arrays:

x= 55;
cellArray = { 8, 'Hello',x };
word = cellArray {2};
disp ( 'Accessing element no. 2 in the cellArray');
disp (word);

disp ( 'Accessing element no. 3 in the cellArray');
disp (cellArray {3});

%% 2. Structures:
person = struct ('name', 'Hana','city','Cairo');
person.Age = 22;
disp ( ['The Name is: ' , person.name]);
disp ( ['The City is: ' , person.city]);
disp ( ['The age is:  ' , num2str(person.Age)]);

%% 3.Character Data:


charArray1 = 'Hend';

charArray2 = ' Ebrahim';
ResultArray = [charArray1 , charArray2];
disp (ResultArray);

%% 4. Conditional Statements (If): 

x = 7;
if (rem(x,2) ==0 )
    disp (' The number is even');

else 
    disp (' The number is odd');
end

%% 5. For Loops:
disp('Numbers from 1 to 10:');
for counter = 1:10
    disp (counter);
end 

%% 6. Basic Plotting:

t = linspace( 1, 2*pi, 500);
y= sin (t);
plot (t,y);
legend ('sin x');
grid on;
title ('Sine Wave');
xlabel( 'x-axis');
ylabel('y-axis');


