#Yojans Martinez
#List
#COP2500C
#11/10/2023

#Initial Variables
racer_a = []
racer_b = []
qualifiers = []

#Function to add times
def add_time(racer):
    time = float(input("What is the time to be added? "))
    racer.append(time)
#Function to delete times
def delete_time(racer):
    delete_option = input("Would you like to delete a time or delete a race? ")
    if delete_option.lower() == "time":
        time_deleted = float(input("What time should be deleted? "))
        if time_deleted in racer:
            racer.remove(time_deleted)
        else:
            print("Time not found.")
    elif delete_option.lower() == "race":
        race_deleted = int(input("Which race should be deleted? "))
        if 1 <= race_deleted <= len(racer):
            del racer[race_deleted - 1]
        else:
            print("Invalid.")
    else:
        print("Invalid. Enter time or race")
#Function to determining qualifies for each race.
def qualifier_check():
    if not racer_a or not racer_b or not qualifiers:
        print("Need Times to check.")
        return

    races_check = min(len(racer_a), len(racer_b), len(qualifiers))
    print("Qualifiers")
    for race in range(races_check):
        if racer_a[race] < qualifiers[race] and racer_b[race] < qualifiers[race]:
            print("Race " + str(race + 1) + "\nNeither racer qualified")
        elif racer_a[race] < qualifiers[race]:
            print("Race " + str(race + 1) + "\nRacer A qualified!")
        elif racer_b[race] < qualifiers[race]:
            print("Race " + str(race + 1) + "\nRacer B qualified!")
#Function to compare times for each racer
def compare(racer_a, racer_b):
    if not racer_a or not racer_b:
        print("At least one racer has no times!")
        return
    races_a = len(racer_a)
    races_b = len(racer_b)
    print("Racer A has times for " + str(races_a) + " races.")
    print("Racer B has times for " + str(races_b) + " races.")
    races_compared = min(races_a, races_b)
    print("We will compare the first " + str(races_compared) + " races.")
    for i in range(races_compared):
        if racer_a[i] < racer_b[i]:
            print("Racer A has won race " + str(i + 1) + "!")
        elif racer_a[i] > racer_b[i]:
            print("Racer B has won race " + str(i + 1) + "!")
        else:
            print("The racers tie race " + str(i + 1) + ".")


#Begining of Main program for menu
print("Enter times for Racer A")
for i in range(3):
    add_time(racer_a)

print("Enter times for Racer B")
for i in range(3):
    add_time(racer_b)

print("Enter times for the qualifiers:")
for i in range(3):
    add_time(qualifiers)

#Menu options
while True:
    print("What would you like to do? ")
    print("1 - Add a time")
    print("2 - Delete a time")
    print("3 - Compare times")
    print("4 - Check qualifiers")
    print("5 – Quit")

    choice = int(input("Enter your choice "))

    if choice == 5:
        break
    elif choice == 1:
        racer_choice = input("Which racer is adding a time? A or B ").upper()
        if racer_choice == "A":
            add_time(racer_a)
        elif racer_choice == "B":
            add_time(racer_b)
        else:
            print("That isn't a racer. A or B ")
    elif choice == 2:
        racer_choice = input("Which racer is deleting a time? A or B ").upper()
        if racer_choice == "A":
            delete_time(racer_a)
        elif racer_choice == "B":
            delete_time(racer_b)
        else:
            print("That isn't a racer. A or B ")
    elif choice == 3:
        compare(racer_a, racer_b)
    elif choice == 4:
        qualifier_check()
    else:
        print("Invalid, try again.")


