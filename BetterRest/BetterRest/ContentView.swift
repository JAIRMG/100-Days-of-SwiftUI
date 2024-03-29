//

import CoreML
import SwiftUI

struct ContentView: View {
  @State private var wakeUp = defaultWakeTime
  @State private var sleepAmount = 8.0
  @State private var coffeeAmount = 1
    
  var recommendedBedtime: String {
    let sleepTime = wakeUp - getPrediction().actualSleep
    return sleepTime.formatted(date: .omitted, time: .shortened)
  }
  
  private let cups = Array(1...20)
  
  static var defaultWakeTime: Date {
    var components = DateComponents()
    components.hour = 7
    components.minute = 0
    return Calendar.current.date(from: components) ?? Date.now
  }
  
    var body: some View {
      NavigationView {
        Form {
          Section("When do you want to wake up?") {
            DatePicker("Please enter a time", selection: $wakeUp, displayedComponents: .hourAndMinute)
              .labelsHidden()
          }
          
          Section("Desired amount of sleep") {
            Stepper("\(sleepAmount.formatted()) hours", value: $sleepAmount, in: 4...12, step: 0.25)
            
          }
          
          Section("Daily coffe intake") {
            Picker(coffeeAmount == 1 ? "1 cup" : "\(coffeeAmount) cups", selection: $coffeeAmount) {
              ForEach(cups, id: \.self) {
                Text("\($0)")
              }
            }
          }
          
          Section("Recommended bedtime") {
            Text(recommendedBedtime)
              .font(.headline)
          }
        }
        .navigationTitle("BetterRest")
      }
    }
  
  private func getPrediction() -> SleepCalculatorOutput {
    do {
      let config = MLModelConfiguration()
      let model = try SleepCalculator(configuration: config)
      
      let components = Calendar.current.dateComponents([.hour, .minute], from: wakeUp)
      let hour = (components.hour ?? 0) * 60 * 60
      let minute = (components.minute ?? 0) * 60
      
      return try model.prediction(wake: Double(hour + minute), estimatedSleep: sleepAmount, coffee: Double(coffeeAmount))
    } catch {
      fatalError("Handle config error")
    }
  }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
