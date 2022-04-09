//

import SwiftUI

struct ContentView: View {
  @State private var animationAmount: CGFloat = 1
  
    var body: some View {
      Button("Tap me") {
        // do nothing
      }
      .padding(50)
      .background(.red)
      .foregroundColor(.white)
      .clipShape(Circle())
      .overlay(
        Circle()
          .stroke(.red)
          .scaleEffect(animationAmount)
          .opacity(2 - animationAmount)
          .animation(
            .easeInOut(duration: 1)
              .repeatForever(autoreverses: false),
            value: animationAmount)
      )
      .onAppear {
        animationAmount = 2
      }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
