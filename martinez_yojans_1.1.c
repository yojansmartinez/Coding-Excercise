// martinez_yojans_1.1.cpp : This file contains the 'main' function. Program execution begins and ends there.
/*
COP3223 Spring 2024 Assignment 1.1
Copyright 2024 Martinez Yojans
*/

#include <iostream>
#include <iomanip> 

using namespace std;

int main() {
    int hours;
    float hourlypay;

    // Commands to collect input from the user
    printf("Enter the number of hours worked: \n");
    scanf("%d", &hours);

    // While loop to create a continuous loop until broken with -1
    while (hours != -1) {
        printf("Enter hourly pay of the worker: ");
        scanf("%f", &hourlypay);

        // Variable to store total income
        float totalincome;

        // If statement within the while loop to figure out standard pay or x1.5
        if (hours <= 40) {
            totalincome = hourlypay * hours;
        }
        else {
            // This equation is used to calculate the first 40 hours
            totalincome = 40 * hourlypay;

            // Second equation to find overtime hours and calculate hourly pay
            totalincome += (hours - 40) * (hourlypay * 1.5);
        }

        printf("Your salary for this pay period is $%.2f\n", totalincome);

        // This gives the user the option to put in input for the next employee
        printf("\nEnter the number of hours worked again: ");
        scanf("%d", &hours);
    }

    return 0;
}
