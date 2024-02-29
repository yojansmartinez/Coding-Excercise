#Yojans Martinez
#Recipe
#cop 2500
#11/6/2023

#Creating ingreident qualties and listing at 0
ingredients = {
    "Bananas": 0,
    "Strawberries": 0,
    "Blueberries": 0,
    "Leaves of Spinach": 0,
    "Avocados": 0
}
#first function to set up questions and recieve data for ingredients
def numberof_ingredients():
    print("What ingredients do you have available?")
    for ingredient in ingredients:
        amount = float(input("How many " + ingredient + " do you have? "))
        ingredients[ingredient] = amount
#second function to create updated incredients if user chooses option 2
def updated_ingredients():
    print("Update Ingredients")
    for ingredient in ingredients:
        new_amount = float(input("How much " + ingredient + " do you have? "))
        ingredients[ingredient] = new_amount
#function to display list if option 1 is chosen
def available_ingredients():
    print("Available Ingredients")
    for ingredient, amount in ingredients.items():
        print(ingredient + "- " + str(amount))
#function to make our smoothie
def make_smoothie():
    print("Make a Smoothie:")
    chosen_ingredients = []
    #for loop to accept limited amounts to make smoothie or denies user based on amounts
    for ingredient in ingredients:
        choice = input("Will you use " + ingredient + "? ").lower()
        if choice == "yes":
            required_amount = 1 
            if ingredient == "Avocados":
                required_amount = 0.5
            elif ingredient == "Blueberries":
                required_amount = 12
            elif ingredient == "Strawberries":
                required_amount = 5
            if ingredients[ingredient] < required_amount:
                print("Sorry, not enough " + ingredient + " to make the smoothie.")
                return
            chosen_ingredients.append(ingredient)

    drink_score, health_score = scores(chosen_ingredients)

    print("Your recipe scored a Drink Score of " + str(drink_score) + ".")
    if drink_score == 0:
        print("Yuck!")
    else:
        print("It will be delicious!")

    print("Your recipe scored a Health Score of " + str(health_score) + ".")
    if health_score == 2:
        print("It will be super healthy!")
    elif health_score == 1:
        print("It is good to go!")
    else:
        print("It probably tastes good though.")
#next function to determine both scores of recipe
def scores(chosen_ingredients):
    drink_score = 0
    health_score = 0
#firstly determines drink score based on spinach and avocado used
    if "Leaves of Spinach" in chosen_ingredients or "Avocados" in chosen_ingredients:
        drink_score = 1
    elif "Leaves of Spinach" in chosen_ingredients and "Avocados" in chosen_ingredients:
        drink_score = 0
    else:
        drink_score = 1
#secondly determines health score based on same ingredients
    if "Leaves of Spinach" in chosen_ingredients or "Avocados" in chosen_ingredients:
        health_score = 2
    else:
        health_score = 0

    return drink_score, health_score
#calls our first function at the beginning to start the program
numberof_ingredients() 
#Menu options prompt that user will select from
while True:
    print("What would you like to do?")
    print("1 - View Ingredients")
    print("2 - Update Ingredients")
    print("3 - Make a Smoothie")
    print("4 - Quit")
    
    option = int(input(""))

    if option == 1:
        available_ingredients()
    elif option == 2:
        updated_ingredients()
    elif option == 3:
        make_smoothie()
    elif option == 4:
        break
    else:
        print("Invalid choice. Please select a valid option.")


