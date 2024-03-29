//

import SwiftUI

struct ContentView: View {
  @State private var checkAmount = 0.0
  @State private var numberOfPeople = 2
  @State private var tipPercentage = 20
  @FocusState private var amountIsFocused: Bool

  let tipPercentages = [10, 15, 20, 25, 0]
  let currencyFormat: FloatingPointFormatStyle<Double>.Currency = .init(code: Locale.current.currencyCode ?? .init(format: "USD"))
  
  var totalPerPerson: Double {
    // calculate the total per person here
    let peopleCount = Double(numberOfPeople + 2)
    let tipSelection = Double(tipPercentage)
    
    let tipValue = checkAmount / 100 * tipSelection
    let grandTotal = checkAmount + tipValue
    let amountPerPerson = grandTotal / peopleCount
    return amountPerPerson
  }
  
  var totalCheck: Double {
    return (totalPerPerson * Double(numberOfPeople + 2))
  }
  
  var body: some View {
    NavigationView {
      Form {
        Section {
          TextField("Amount", value: $checkAmount, format: currencyFormat)
            .keyboardType(.decimalPad)
            .focused($amountIsFocused)
          Picker("Number of people", selection: $numberOfPeople) {
            ForEach(2..<100) {
              Text("\($0) people")
            }
          }
        }
        Section {
          Picker("Tip percentage", selection: $tipPercentage) {
            ForEach(0..<101) {
              Text($0, format: .percent)
            }
          }
        } header: {
          Text("How much tip do you want to leave?")
        }
        
        Section {
          Text(totalPerPerson, format: currencyFormat)
        } header: {
          Text("Amount per person")
        }
        Section {
          Text(totalCheck, format: currencyFormat)
            .foregroundColor(tipPercentage == .zero ? .red : .black)
        } header: {
          Text("Total check")
        }
      }
      .navigationTitle("WeSplit")
      .toolbar {
        ToolbarItemGroup(placement: .keyboard) {
          Spacer()
          Button("Done") {
            amountIsFocused = false
          }
        }
      }
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
