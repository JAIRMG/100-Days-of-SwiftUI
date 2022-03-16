//

import SwiftUI

struct ContentView: View {
    var body: some View {
      Button("Hello, world!") {
        print(type(of: self.body))
      }
      .frame(width: 200, height: 200)
      .background(.red)
      .padding()
      .background(.purple)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
