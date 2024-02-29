# Yojans Martinez
# Program 5
# COP2500C
# Sep 13,2023

# variable for each workout
workout_num= 1
# initial input to reciever number of workouts and turn it into interger
num_workouts=int(input("How many workouts do you have data for? "))
# Used While loop so that after workout num passes num of workouts it breaks.
while workout_num <= num_workouts:
    num_sets=int(input("How many sets were completed in workout " + str(workout_num) + "? "))
    total_reps=0
    set_num=1
    # Put this while loop inside the other because it needs to collect data together to gain end result. If not it starts a brand new loop outside.
    while set_num <= num_sets:
        reps=int(input("How many reps in set " + str(set_num) + "? "))
        total_reps +=reps
        set_num += 1
    # used %.3f to round to 3 decimal places and used float to be able to track decimals
    average_reps= "%.3f" % float(total_reps/num_sets)
    print("Workout " + str(workout_num) + " The average number of reps was " + average_reps)
    #Put this at very end if not it adds it before loop is over and messes up "workout_num" count
    workout_num += 1
    
 
