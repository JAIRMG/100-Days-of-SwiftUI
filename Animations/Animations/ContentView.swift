//

import SwiftUI

struct ContentView: View {
  @State private var animationAmount = 1.0
  
    var body: some View {
      print(animationAmount)
      
      return VStack {
        Button("Tap Me") {
          withAnimation {
            animationAmount += 360
          }
        }
        .padding(50)
        .background(.red)
        .foregroundColor(.white)
        .clipShape(Circle())
        .rotation3DEffect(.degrees(animationAmount), axis: (x: 0, y: 1, z: 0))
      }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
