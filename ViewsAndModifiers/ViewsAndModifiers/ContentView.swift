//

import SwiftUI

struct CustomModifier: ViewModifier {
  func body(content: Content) -> some View {
    content
      .font(.largeTitle)
      .foregroundColor(.blue)
  }
}

extension View {
  func mainTitle() -> some View {
    modifier(CustomModifier())
  }
}

struct ContentView: View {
    var body: some View {
      VStack {
        Button("Hello, world!") {
          print(type(of: self.body))
        }
        .modifier(CustomModifier()) // 1st way of adding a custom modifier
        Text("I am a title")
          .mainTitle() // 2nd way of adding a custom modifier
      }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
