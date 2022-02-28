// ENUM

enum Season {
   case sprint, summer, autum, winter
}

var currentSeason: Season
currentSeason = Season.summer

print("Current Season: ", currentSeason)

// ##############################################

enum PizzaSize {
    case small, medium, large
}

var size = PizzaSize.large

switch(size) {
case .small:
    print("I ordered a small size pizza.")
    
case .medium:
    print("I ordered a medium size pizza.")
    
case .large:
    print("I ordered a large size pizza.");
}

