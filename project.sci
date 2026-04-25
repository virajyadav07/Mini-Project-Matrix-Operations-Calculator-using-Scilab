clc;
clear;

// Input matrices
disp("Enter matrix A:");
A = input("A = ");

disp("Enter matrix B:");
B = input("B = ");

// Menu
disp("===== MATRIX OPERATIONS =====");
disp("1. Addition");
disp("2. Subtraction");
disp("3. Multiplication");
disp("4. Transpose");
disp("5. Determinant");
disp("6. Inverse");

choice = input("Enter your choice (1-6): ");

select choice

case 1 then
    if size(A) == size(B) then
        result = A + B;
        disp("Result of Addition:");
        disp(result);
    else
        disp("Matrices must be of same size!");
    end

case 2 then
    if size(A) == size(B) then
        result = A - B;
        disp("Result of Subtraction:");
        disp(result);
    else
        disp("Matrices must be of same size!");
    end

case 3 then
    if size(A,2) == size(B,1) then
        result = A * B;
        disp("Result of Multiplication:");
        disp(result);
    else
        disp("Invalid matrix dimensions for multiplication!");
    end

case 4 then
    disp("Transpose of Matrix A:");
    disp(A');

case 5 then
    if size(A,1) == size(A,2) then
        result = det(A);
        disp("Determinant of Matrix A:");
        disp(result);
    else
        disp("Matrix must be square!");
    end

case 6 then
    if size(A,1) == size(A,2) then
        result = inv(A);
        disp("Inverse of Matrix A:");
        disp(result);
    else
        disp("Matrix must be square!");
    end

else
    disp("Invalid choice!");

end
