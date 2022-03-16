//

import SwiftUI

struct FlagImage: View {
  let country: String
  
  var body: some View {
    Image(country)
      .renderingMode(.original)
      .clipShape(Capsule())
      .shadow(radius: 5)
  }
  
}
