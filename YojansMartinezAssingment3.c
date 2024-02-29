// YojansMartinezAssingment3.cpp : This file contains the 'main' function. Program execution begins and ends there.
//

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#define EXIT 0
#define INVALID -1
#define CPU 1
#define PID 5 

int displaymenu();
void cpuscheduling();
void fcfs(int pid[], int arrivalt[], int burstt[]);
void sjf(int pid[], int arrivalt[], int burstt[]);
void displayschedule(int pid[], int arrivalt[], int burstt[], int wait[], int turnat[]);
// start of main function
int main() {
    int choice = INVALID;

    while (choice != EXIT) {
        choice = displaymenu();

        switch (choice) {
        case CPU:
            cpuscheduling();
            break;
        case EXIT:
            exit(0);
            break;
        default:
            printf("Invalid, please try again.\n");
        }
    }

    return EXIT;
}
// choices to choose to exit or run function
int displaymenu() {
    int choice = INVALID;
    // while loop for choices
    while (choice == INVALID) {
        printf("Select the OS program to run,enter your number of your choice.\n");
        printf("1-CPU Scheduling\n");
        printf("0-Exit\n");
        scanf_s("%d", &choice);

        if (choice < 0 || choice > 1) {
            choice = INVALID;
        }
    }

    return choice;
}
// beginning of input of numbers to output algorithm scheudling
void cpuscheduling() {
    int pid[] = { 1, 2, 3, 4, 5 };
    int arrivalt[] = { 0, 2, 4, 6, 7 };
    int burstt[] = { 8, 5, 10, 2, 3 };

    fcfs(pid, arrivalt, burstt);
    sjf(pid, arrivalt, burstt);
}
// beginning of function for fcfs
void fcfs(int pid[], int arrivalt[], int burstt[]) {
    int waitt[PID];
    int turnat[PID];
    waitt[0] = 0;

    for (int i = 1; i < PID; i++) {
        waitt[i] = burstt[i - 1] + waitt[i - 1];
    }

    for (int i = 0; i < PID; i++) {
        turnat[i] = burstt[i] + waitt[i];
    }

    displayschedule(pid, arrivalt, burstt, waitt, turnat);
}
// begining of function for sjf
void sjf(int pid[], int arrivalt[], int burstt[]) {
    int waitt[PID];
    int turnat[PID];
    int idx, temp;

    
    for (int i = 0; i < PID; i++) {
        idx = i;
        for (int j = i + 1; j < PID; j++) {
            if (burstt[j] < burstt[idx]) {
                idx = j;
            }
        }

        //meant to swap burst times from each
        temp = burstt[i];
        burstt[i] = burstt[idx];
        burstt[idx] = temp;

        //swap out pid's from each
        temp = pid[i];
        pid[i] = pid[idx];
        pid[idx] = temp;

        //swapping arrival times from each
        temp = arrivalt[i];
        arrivalt[i] = arrivalt[idx];
        arrivalt[idx] = temp;
    }

    waitt[0] = 0;
    for (int i = 1; i < PID; i++) {
        waitt[i] = burstt[i - 1] + waitt[i - 1];
    }

    for (int i = 0; i < PID; i++) {
        turnat[i] = burstt[i] + waitt[i];
    }

    displayschedule(pid, arrivalt, burstt, waitt, turnat);
}
// function to display the algortihms scheudling
void displayschedule(int pid[], int arrivalt[], int burstt[], int waitt[], int turnat[]) {
    int totwait = 0, totturnat = 0;
    float avgwaitt, avgturnat;
    // print statement to actually print out the chart
    printf("\nPID   \tAT          \tBT       \tWT        \tTAT         \n");
    for (int i = 0; i < PID; i++) {
        totwait += waitt[i];
        totturnat += turnat[i];
        printf("%d\t%d\t\t%d\t\t%d\t\t%d\n", pid[i], arrivalt[i], burstt[i], waitt[i], turnat[i]);
    }
    // equations to to calculate average
    avgwaitt = (float)totwait / PID;
    avgturnat = (float)totturnat / PID;

    printf("Average WT is %.2f\n", avgwaitt);
    printf("Average TAT is  %.2f\n", avgturnat);
}
