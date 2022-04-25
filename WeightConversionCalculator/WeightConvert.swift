// If weight is being converted
func weightConversion(userValue: Double, valueUnitId: Int, conversionUnitId: Int)-> Double{
    
    /*Weight Unit numbers
     pounds -> 0
     ounces -> 1
     grams -> 2
     kilograms -> 3

    */
    
    //Pounds to Pounds
    if(valueUnitId == 0 && conversionUnitId == 0){
        return userValue
    }
    
    // Pounds to Ounces
    else if (valueUnitId == 0 && conversionUnitId == 1){
        return userValue * 16
    }
    
    //Pounds to Grams
    else if (valueUnitId == 0 && conversionUnitId == 2){
        return userValue * 453.562
    }
    
    //Pounds to Kilograms
    else if (valueUnitId == 0 && conversionUnitId == 3){
        return userValue * 0.453592
    }
    
    //Ounces to Pounds
    else if(valueUnitId == 1 && conversionUnitId == 0){
        return userValue * 0.0625
    }
    
    //Ounces to Ounces
    else if (valueUnitId == 1 && conversionUnitId == 1){
        return userValue
    }
    //Ounces to Grams
    else if (valueUnitId == 1 && conversionUnitId == 2){
        return userValue * 28.3495
    }

    //Ounces to Kilograms
    else if (valueUnitId == 1 && conversionUnitId == 3){
        return userValue * 0.0283495
    }
    
    //Grams to Pounds
    else if(valueUnitId == 2 && conversionUnitId == 0){
        return userValue * 0.00220462
    }
    
    //Grams to Ounces
    else if (valueUnitId == 2 && conversionUnitId == 1){
        return userValue * 0.035274
    }
    //Grams to Grams
    else if (valueUnitId == 2 && conversionUnitId == 2){
        return userValue
    }

    //Grams to Kilograms
    else if (valueUnitId == 2 && conversionUnitId == 3){
        return userValue * 0.001
    }
    
    //Kilograms to Pounds
    else if(valueUnitId == 3 && conversionUnitId == 0){
        return userValue * 2.20462
    }
    
    //Kilograms to Ounces
    else if (valueUnitId == 3  && conversionUnitId == 1){
        return userValue * 35.2739199982575
    }
    //Kilograms to Grams
    else if (valueUnitId == 3 && conversionUnitId == 2){
        return userValue * 1000
    }

    //Kilograms to Kilograms
    else if (valueUnitId == 3 && conversionUnitId == 3){
        return userValue
    }
    
    
    // else return 0
    else{
        return 0
    }
    
    
    
}
