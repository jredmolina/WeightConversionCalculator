func kitchenConversion(userValue: Double, valueUnitId: Int, conversionUnitId: Int)-> Double{

/*
 0. cups
 1. tablespoons
 2. teaspoons
 3. milliliters
 */

    //cups - cups
    if(valueUnitId == 0 && conversionUnitId == 0){
        return userValue
    }
    
    //cups - tablespoons
    else if (valueUnitId == 0 && conversionUnitId == 1){
        return userValue * 16
    }
    
    //cups - teaspoons
    else if (valueUnitId == 0 && conversionUnitId == 2){
        return userValue * 48
    }
    
    //cups - milliliters
    else if (valueUnitId == 0 && conversionUnitId == 3){
        return userValue * 236.588
    }
    
    //tablespoons - cups
    else if (valueUnitId == 1 && conversionUnitId == 0){
        return userValue * 0.0625
    }

    //tablespoons - tablespoons
    else if (valueUnitId == 1 && conversionUnitId == 1){
        return userValue
    }
    
    //tablespoon-teaspoons
    else if(valueUnitId == 1 && conversionUnitId == 2){
        return userValue * 3
    }
    
    //tablespoon - milliliters
    else if (valueUnitId == 1 && conversionUnitId == 3){
        return userValue * 14.7868
    }
    
    //teaspoons - cups
    else if(valueUnitId == 2 && conversionUnitId == 0){
        return userValue * 0.0208333
    }
    
    //teaspoons - tablespoons
    else if (valueUnitId == 2  && conversionUnitId == 1){
        return userValue * 0.333333
    }
    //teaspoons - teaspoons
    else if (valueUnitId == 2 && conversionUnitId == 2){
        return userValue
    }

    //teaspoons - milliliters
    else if (valueUnitId == 2 && conversionUnitId == 3){
        return userValue * 4.92892
    }
    
    //milliliters - cups
    else if (valueUnitId == 3 && conversionUnitId == 0){
        return userValue * 0.00422675
    }
    
    //milliliters - tablespoons
    else if (valueUnitId == 3 && conversionUnitId == 1){
        return userValue * 0.067628
    }
    
    //milliliters - teaspoons
    else if(valueUnitId == 3 && conversionUnitId == 2){
        return userValue * 0.202884
    }
    
    //milliliters - milliliters
    else if(valueUnitId == 3 && conversionUnitId == 3){
        return userValue
    }

    
    // else return 0
    else{
        return 0
    }
}
