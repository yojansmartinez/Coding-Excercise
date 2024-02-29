// martinez_yojans_1.2.cpp : This file contains the 'main' function. Program execution begins and ends there.
//
/*
COP3223 Spring 2024 Assignment 1.2
Copyright 2024 Martinez Yojans
*/
#include <stdio.h>
// the reason for two  original number variables is to recieve one as an input and then hold it within the second variable to then reverse the original
int main() {
    int number, intialnumber, backwardnumber = 0, remainder;

    //Intial input to recieve the number
    printf("Please enter your 5 digit integer: ");
    scanf_s("%d", &number);

    //setting intial number as the new holding variable for the input
    intialnumber = number;
    //Reversing the oringal input
    while (number > 0) {
        remainder = number % 10;
        backwardnumber = backwardnumber * 10 + remainder;
        number /= 10;
    }
    //if statement to verify if it is a palindrome number
    if (intialnumber == backwardnumber) {
        printf("%d is a palindrome number.", intialnumber);
    }
    else {
        printf("%d is not a palindrome number. Try again", intialnumber);
    }

    return 0;
}