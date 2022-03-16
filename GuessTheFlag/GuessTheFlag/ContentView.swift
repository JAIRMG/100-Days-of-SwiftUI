//

import SwiftUI

struct ContentView: View {
  @State private var showingScore = false
  @State private var reachedTotalOfAttempts = false
  @State private var scoreTitle = ""
  @State private var score = 0
  @State private var numberOfAttempts = 1
  private let attemptsAllowed = 8
  
  @State private var countries = ["Estonia", "France", "Germany", "Ireland", "Italy", "Nigeria", "Poland", "Russia", "Spain", "UK", "US"].shuffled()
  @State private var correctAnswer = Int.random(in: 0...2)
  
  var body: some View {
    ZStack {
      RadialGradient(stops: [
        .init(color: .init(red: 0.1, green: 0.2, blue: 0.45), location: 0.3),
        .init(color: .init(red: 0.76, green: 0.15, blue: 0.26), location: 0.3)
      ], center: .top, startRadius: 200, endRadius: 700)
        .ignoresSafeArea()
      
      VStack {
        
        Spacer()
        
        Text("Guess the Flag")
          .foregroundColor(.white)
          .font(.largeTitle.bold())
        
        VStack(spacing: 30) {
          VStack {
            Text("Tap the flag of")
              .foregroundStyle(.secondary)
              .font(.subheadline.weight(.heavy))
            Text(countries[correctAnswer])
              .font(.largeTitle.weight(.semibold))
          }
          
          ForEach(0..<3) { number in
            Button {
              flagTapped(number)
            } label: {
              FlagImage(country: countries[number])
            }
          }
        }
        .frame(maxWidth: .infinity)
        .padding(.vertical, 20)
        .background(.regularMaterial)
        .clipShape(RoundedRectangle(cornerRadius: 20))
        
        Spacer()
        Spacer()
        
        Text("Score: \(score)")
          .foregroundColor(.white)
          .font(.title.bold())
        
        Spacer()
      }
      .padding()
    }
    .alert(scoreTitle, isPresented: $showingScore) {
      Button("Continue", action: askQuestion)
    } message: {
      Text("Your score is \(score)")
    }
    .alert("Finished", isPresented: $reachedTotalOfAttempts) {
      Button("Reset", action: resetState)
    } message: {
      Text("You reached the total of attempts, your score is: \(score)")
    }
  }
  
  func flagTapped(_ number: Int) {
    
    if number == correctAnswer {
      scoreTitle = "Correct"
      score += 1
    } else {
      scoreTitle = "Wrong! That's the flag of \(countries[number])"
    }
    
    
    if numberOfAttempts == attemptsAllowed {
      reachedTotalOfAttempts = true
      return
    } else {
      showingScore = true
    }
    
    numberOfAttempts += 1
  }

  func askQuestion() {
    countries.shuffle()
    correctAnswer = Int.random(in: 0...2)
  }
  
  func resetState() {
    numberOfAttempts = 1
    score = 0
    countries.shuffle()
    correctAnswer = Int.random(in: 0...2)
  }
  
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
