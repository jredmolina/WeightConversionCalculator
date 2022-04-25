func lengthConversion(userValue: Double, valueUnitId: Int, conversionUnitId: Int)-> Double{

/*
 0. inches
 1. Feet
 2. Yards
 3. Miles
 4. Meter
 5. Kilometer
 */

    //inches to inches
    if(valueUnitId == 0 && conversionUnitId == 0){
        return userValue
    }
    
    // inches to feet
    else if (valueUnitId == 0 && conversionUnitId == 1){
        return userValue * 0.0833333
    }
    
    //inches to yards
    else if (valueUnitId == 0 && conversionUnitId == 2){
        return userValue * 0.0277778
    }
    
    //inches to miles
    else if (valueUnitId == 0 && conversionUnitId == 3){
        return userValue * 0.0000157828
    }
    
    //inches to meter
    else if(valueUnitId == 0 && conversionUnitId == 4){
        return userValue * 0.0254
    }
    
    //inches to kilometer
    else if (valueUnitId == 0 && conversionUnitId == 5){
        return userValue * 0.0000254
    }
    //feet to inches
    else if (valueUnitId == 1 && conversionUnitId == 0){
        return userValue * 12
    }

    //feet to feet
    else if (valueUnitId == 1 && conversionUnitId == 1){
        return userValue
    }
    
    //feet to yards
    else if(valueUnitId == 1 && conversionUnitId == 2){
        return userValue * 0.333333
    }
    
    //feet to miles
    else if (valueUnitId == 1 && conversionUnitId == 3){
        return userValue * 0.000189394
    }
    //feet to meter
    else if (valueUnitId == 1 && conversionUnitId == 4){
        return userValue * 0.3048
    }

    //feet to kilometer
    else if (valueUnitId == 1 && conversionUnitId == 5){
        return userValue * 0.0003048
    }
    
    //yards to inches
    else if(valueUnitId == 2 && conversionUnitId == 0){
        return userValue * 36
    }
    
    //yards to feet
    else if (valueUnitId == 2  && conversionUnitId == 1){
        return userValue * 3
    }
    //yards to yards
    else if (valueUnitId == 2 && conversionUnitId == 2){
        return userValue
    }

    //yards to miles
    else if (valueUnitId == 2 && conversionUnitId == 3){
        return userValue * 0.000568182
    }
    
    //yards to meter
    else if (valueUnitId == 2 && conversionUnitId == 4){
        return userValue * 0.9144
    }
    
    //yards to kilometer
    else if (valueUnitId == 2 && conversionUnitId == 5){
        return userValue * 0.0009144
    }
    
    //miles to inches
    else if (valueUnitId == 3 && conversionUnitId == 0){
        return userValue * 63360
    }
    
    //miles to feet
    else if (valueUnitId == 3 && conversionUnitId == 1){
        return userValue * 5280
    }
    
    //miles to yards
    else if(valueUnitId == 3 && conversionUnitId == 2){
        return userValue * 1760
    }
    
    //miles to miles
    else if(valueUnitId == 3 && conversionUnitId == 3){
        return userValue
    }
    
    //miles to meter
    else if(valueUnitId == 3 && conversionUnitId == 4){
        return userValue * 1609.34
    }
    
    //miles to kilometer
    else if(valueUnitId == 3 && conversionUnitId == 5){
        return userValue * 1.60934
    }
    
    //meter to inches
    else if (valueUnitId == 4 && conversionUnitId == 0){
        return userValue * 39.3701
    }
    
    //meter to feet
    else if (valueUnitId == 4 && conversionUnitId == 1){
        return userValue * 3.28084
    }
    
    //meter to yards
    else if(valueUnitId == 4 && conversionUnitId == 2){
        return userValue * 1.09361
    }
    
    //meter to miles
    else if(valueUnitId == 4 && conversionUnitId == 3){
        return userValue * 0.000621371
    }
    
    //meter to meter
    else if(valueUnitId == 4 && conversionUnitId == 4){
        return userValue
    }
    
    //meter to kilometer
    else if(valueUnitId == 4 && conversionUnitId == 5){
        return userValue * 0.001
    }
    
    //kilometer to inches
    else if (valueUnitId == 5 && conversionUnitId == 0){
        return userValue * 39370.1
    }
    
    //kilometer to feet
    else if (valueUnitId == 5 && conversionUnitId == 1){
        return userValue * 3280.84
    }
    
    //kilometer to yards
    else if(valueUnitId == 5 && conversionUnitId == 2){
        return userValue * 1093.61
    }
    
    //kilometer to miles
    else if(valueUnitId == 5 && conversionUnitId == 3){
        return userValue * 0.621371
    }
    
    //kilometer to meter
    else if(valueUnitId == 5 && conversionUnitId == 4){
        return userValue * 1000
    }
    
    //kilomter to kilometer
    else if(valueUnitId == 5 && conversionUnitId == 5){
        return userValue
    }
    // else return 0
    else{
        return 0
    }
}
