#Yojans Martinez
#Heart Rate
#COP 2500C
#SEP 29, 2023

#Input question to find hr for M or F
target_heart_rate_type = input("Do you want to use the target heart rate for men or women?\n").strip().lower()
#Input age
age = int(input("How old are you?\n"))
#Determines HR for M or F
if target_heart_rate_type == "men":
    target_heart_rate = 226 - age
elif target_heart_rate_type == "women":
    target_heart_rate = 220 - age
else:
    print("Invalid input. Please enter 'men' or 'women' for the target heart rate type.")
    exit()
#Enter variable to keep track of heart rate
heart_rate_count = 0
#Variable to keep track of times hitting target
hits = 0
#Enter HR recorded
print("Please enter your recorded heart rates:")
while True:
    heart_rate = int(input())
    #If statement to break once user is done
    if heart_rate == -1:
        break
    #Count HR entered
    heart_rate_count += 1
    #To check if Hr hit target or now
    if heart_rate >= target_heart_rate:
        hits += 1
#Print resulting answer
print(f"You hit your target heart rate {hits} times out of {heart_rate_count}!")
