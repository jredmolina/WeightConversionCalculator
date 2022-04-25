
import SwiftUI

struct ContentView: View {
    
    //Float value for the user input
    @State var value: Double?
    @State var convertedValue: Double?
    //Choice variables for the Measure Type, User value unit, and Converted unit
    @State var pickTypeChoice = 0
    @State var pickValueUnit = 0
    @State var pickConversionValueUnit = 0
    
    //Focus field var for keyboard
    @FocusState var focusedField: Bool
    
    // Arrays for the measurement types and units
    var measurementTypeList = ["Weight", "Length", "Time", "Kitchen"]
    var weightUnitList = ["Pounds","Ounces", "Grams","Kilograms"]
    var lengthUnitList = ["Inches", "Feet" , "Yards", "Miles", "Meter", "Kilometer"]
    var timeUnitList = ["Seconds","Minutes", "Hours", "Days", "Months"]
    var kitchenUnitList = ["Cups", "Tablespoons", "Teaspoons", "Milliliters"]
    
    
    var body: some View {
        NavigationView{
            Form{
                Section{
                    VStack(alignment: .center, spacing: 11.0){
                        
                        //Text for Measurement Type
                        Text("Measurement Type")
                            .fontWeight(.heavy)
                            .multilineTextAlignment(.center)
                            .foregroundColor(Color(hue: 0.605, saturation: 0.948, brightness: 0.986))
                            .font(Font.custom("Franklin Gothic", size: 25))
                            .font(Font.headline.weight(.bold))
                        
                        //Picker Menu for the Measurement type
                        Picker("Measurement Type", selection: $pickTypeChoice){
                            ForEach(0..<measurementTypeList.count){
                                index in Text("\(self.measurementTypeList[index])")
                            }
                        }
                        .pickerStyle(SegmentedPickerStyle())
                        
                        //Changes the units for the user value and conversion value back to the first option
                        .onChange(of: pickTypeChoice, perform:{ Int in
                            pickValueUnit = 0
                            pickConversionValueUnit = 0
                        })

                    }
                }
                .padding(.vertical)
                    
                Section{
                    VStack(alignment: .leading, spacing: 10.0){
                        
                        //Convert Text
                        Text("Convert:")
                            .font(.body)
                            .fontWeight(.semibold)
                            .multilineTextAlignment(.trailing)
                            .foregroundColor(Color(hue: 0.605, saturation: 0.948, brightness: 0.986))
                            .font(Font.custom("Franklin Gothic", size: 29)
                                        )
                            .font(Font.headline.weight(.bold))
                                
                        HStack(alignment: .center){
                            
                            //Text Field for user input for value
                            TextField("Value", value: $value, format: .number)
                                    .textFieldStyle(.roundedBorder)
                                    .keyboardType(.decimalPad)
                                    .focused($focusedField)
                            
                            // Picker for the unit of the user input value
                            Picker("", selection: $pickValueUnit){
                                if(pickTypeChoice == 0){
                                    ForEach(0..<weightUnitList.count){
                                        index in Text("\(weightUnitList[index])")
                                    }

                                }
                                else if(pickTypeChoice == 1){
                                    ForEach(0..<lengthUnitList.count){
                                        index in Text("\(lengthUnitList[index])")
                                    }

                                }
                                else if(pickTypeChoice == 2){
                                    ForEach(0..<timeUnitList.count){
                                        index in Text("\(timeUnitList[index])")
                                    }
 
                                }
                                else if(pickTypeChoice == 3){
                                    ForEach(0..<kitchenUnitList.count){
                                        index in Text("\(kitchenUnitList[index])")
                                        }
                                }
                            }

                        }
                        //Done button on keyboard toolboard
                        .toolbar{
                           ToolbarItem(placement: .keyboard){
                                Button("Done"){
                                   focusedField = false
                        }
                    }
                }
                        
            }
                .padding(.vertical, 9.0)
                    
                    HStack(alignment: .center){
                    //To text
                    Text("To:")
                        .font(.body)
                        .fontWeight(.semibold)
                        .multilineTextAlignment(.center)
                        .foregroundColor(Color(hue: 0.605, saturation: 0.948, brightness: 0.986))
                        .font(Font.custom("Franklin Gothic", size: 29)
                                    )
                        .font(Font.headline.weight(.bold))
                        .padding(.vertical)
                    
                    // Picker Menu for the converted value unit
                    Picker("", selection: $pickConversionValueUnit){
                                
                        if(pickTypeChoice == 0){
                            ForEach(0..<weightUnitList.count){
                                index in Text("\(weightUnitList[index])")
                            }
                        }
                        else if(pickTypeChoice == 1){
                            ForEach(0..<lengthUnitList.count){
                                index in Text("\(lengthUnitList[index])")
                            }
                        }
                        else if(pickTypeChoice == 2){
                            ForEach(0..<timeUnitList.count){
                                index in Text("\(timeUnitList[index])")
                                }
                            }
                        else if(pickTypeChoice == 3){
                            ForEach(0..<kitchenUnitList.count){
                                index in Text("\(kitchenUnitList[index])")
                            }
                        }
                    }
                }
                    
                }
                    Section{
                        HStack(alignment: .bottom){
                                Text("=")
                            
                                // Calls Weight conversion function for conversion
                                if(pickTypeChoice == 0){
                                    
                                    Text("\(weightConversion(userValue: value ?? 0, valueUnitId: pickValueUnit, conversionUnitId: pickConversionValueUnit))")
                                    Text("" + weightUnitList[pickConversionValueUnit])
                                        .foregroundColor(.gray)
                                }
                            
                                // Calls length conversion function for conversion
                                else if(pickTypeChoice == 1){
                                    Text("\(lengthConversion(userValue: value ?? 0, valueUnitId: pickValueUnit, conversionUnitId: pickConversionValueUnit))")
                                    Text("" + lengthUnitList[pickConversionValueUnit])
                                    .foregroundColor(.gray)
                                }
                                // Calls time conversion function for conversion
                                else if(pickTypeChoice == 2){
                                    Text("\(timeConversion(userValue: value ?? 0, valueUnitId: pickValueUnit, conversionUnitId: pickConversionValueUnit))")
                                    Text("" + timeUnitList[pickConversionValueUnit])
                                        .foregroundColor(.gray)
                                }
                                // Calls kitchen conversion function for conversion
                                else if(pickTypeChoice == 3){
                                    Text("\(kitchenConversion(userValue: value ?? 0, valueUnitId: pickValueUnit, conversionUnitId: pickConversionValueUnit))")
                                    Text("" + kitchenUnitList[pickConversionValueUnit])
                                        .foregroundColor(.gray)
                            }
                        }
                                
                    }
                            
                    .frame(width: /*@START_MENU_TOKEN@*/320.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/50.0/*@END_MENU_TOKEN@*/)
                
            
            }
        
            
        }
      
            
    }

}
  
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack{
        ContentView()
        }

    }
}

    
