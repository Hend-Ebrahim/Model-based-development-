%% Task 1: While Loop
x =2;
while x <= 20

 disp (x);
 x= x+2;
end




number = input('please enter number');
resultf= number;
while number >1 

resultf=  resultf* (number - 1);
number = number -1; 
 
end 

disp (resultf);




%% Task 2: Switch Statement

transportation = input('Enter mode of transportation (car/train/airplane): ', 's');
distance = input('Enter distance in miles: ');

switch transportation
    case 'car'
        cost = 2 * distance;
    case 'train'
        cost = 1 * distance;
    case 'plane'
        cost = 6 * distance;
    otherwise 
        disp ('Enter a valid transportation mode ');
end

disp (cost);




%% Color code 

color = input('Enter a color code: 100, 010, 001 ');

switch (color)

    case 100
        color = 'Red';

    case 010
        color = 'Green';

    case 001
        color = 'Blue';

    case 110
        color = 'Yellow';

    case 000
        color = 'Black';

    otherwise
        color = 'Unknown color code';
end

disp(['The color is: ', color])





