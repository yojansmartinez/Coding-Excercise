// martinez_yojans_1.3.cpp : This file contains the 'main' function. Program execution begins and ends there.
//
/*
COP3223 Spring 2024 Assignment 1.3
Copyright 2024 Martinez Yojans
*/


#include <stdio.h>
//variables established 
int main() {
    int lines, i, j, blank;

    //while loop to collect odd number
    while (1) {
        printf("Please enter an odd number if your choosing from 1 to 19: ");
        scanf_s("%d", &lines);
        // if loop in case user decides to enter even number
        if (lines % 2 != 0 && lines >= 1 && lines <= 19) {
            break;  
        }
        else {
            printf("That is not an odd number. Enter an odd number of your choosing between 1 and 19: \n");
        }
    }
    //begin printing top of diamond
    for (i = 1; i <= lines / 2 + 1; i++) {
        //printing blanks before the aestriks
        for (blank = 1; blank <= lines / 2 + 1 - i; blank++) {
            printf(" ");
        }
        //print asterisks to create diamond
        for (j = 1; j <= 2 * i - 1; j++) {
            printf("*");
        }
        printf("\n");
    }
    //print bottom half of diamond
    for (i = lines / 2; i >= 1; i--) {
        //print blanks before the asterisks
        for (blank = 1; blank <= lines / 2 + 1 - i; blank++) {
            printf(" ");
        }
        //print asterisks
        for (j = 1; j <= 2 * i - 1; j++) {
            printf("*");
        }
        printf("\n");
    }

    return 0;
}
