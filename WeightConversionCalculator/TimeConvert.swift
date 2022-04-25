func timeConversion(userValue: Double, valueUnitId: Int, conversionUnitId: Int)-> Double{

/*
 0. seconds
 1. minutes
 2. hours
 3. days
 4. months
 */

    //sec to sec
    if(valueUnitId == 0 && conversionUnitId == 0){
        return userValue
    }
    
    //sec to min
    else if (valueUnitId == 0 && conversionUnitId == 1){
        return userValue * 0.0166667
    }
    
    //sec to hour
    else if (valueUnitId == 0 && conversionUnitId == 2){
        return userValue * 0.000277778
    }
    
    //sec to day
    else if (valueUnitId == 0 && conversionUnitId == 3){
        return userValue * 0.0000115741
    }
    
    //sec to month
    else if(valueUnitId == 0 && conversionUnitId == 4){
        return userValue * 0.000000380517
    }
    

    //min to sec
    else if (valueUnitId == 1 && conversionUnitId == 0){
        return userValue * 60
    }

    //min to min
    else if (valueUnitId == 1 && conversionUnitId == 1){
        return userValue
    }
    
    //min to hour
    else if(valueUnitId == 1 && conversionUnitId == 2){
        return userValue * 0.0166667
    }
    
    //min to day
    else if (valueUnitId == 1 && conversionUnitId == 3){
        return userValue * 0.000694444
    }
    //min to month
    else if (valueUnitId == 1 && conversionUnitId == 4){
        return userValue * 0.000022831
    }
    
    //hour to sec
    else if(valueUnitId == 2 && conversionUnitId == 0){
        return userValue * 3600
    }
    
    //hour to min
    else if (valueUnitId == 2  && conversionUnitId == 1){
        return userValue * 60
    }
    //hour to hour
    else if (valueUnitId == 2 && conversionUnitId == 2){
        return userValue
    }

    //hour to day
    else if (valueUnitId == 2 && conversionUnitId == 3){
        return userValue * 0.0416667
    }
    
    //hour to month
    else if (valueUnitId == 2 && conversionUnitId == 4){
        return userValue * 0.00136986
    }
    
    //days to sec
    else if (valueUnitId == 3 && conversionUnitId == 0){
        return userValue * 86400
    }
    
    //day to min
    else if (valueUnitId == 3 && conversionUnitId == 1){
        return userValue * 1440
    }
    
    //day to hour
    else if(valueUnitId == 3 && conversionUnitId == 2){
        return userValue * 24
    }
    
    //day to day
    else if(valueUnitId == 3 && conversionUnitId == 3){
        return userValue
    }
    
    //day to month
    else if(valueUnitId == 3 && conversionUnitId == 4){
        return userValue * 0.0328767
    }
    
    //month to sec
    else if (valueUnitId == 4 && conversionUnitId == 0){
        return userValue * 2628000
    }
    
    //month to min
    else if (valueUnitId == 4 && conversionUnitId == 1){
        return userValue * 43800
    }
    
    //month to hour
    else if(valueUnitId == 4 && conversionUnitId == 2){
        return userValue * 730.001
    }
    
    //month - day
    else if(valueUnitId == 4 && conversionUnitId == 3){
        return userValue * 30.4167
    }
    
    //month - month
    else if(valueUnitId == 4 && conversionUnitId == 4){
        return userValue
    }
    
    // else return 0
    else{
        return 0
    }
}
