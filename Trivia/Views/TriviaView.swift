//
//  TriviaView.swift
//  Trivia
//
//  Created by Jamario Davis on 2/4/23.
//

import SwiftUI


struct TriviaView: View {
    @EnvironmentObject var triviaManager: TriviaManager
    @State private var counter = 0
    
    var body: some View {
        if triviaManager.reachedEnd {
            VStack(spacing: 20) {
                ParticleAnimation()
                Text("Trivia")
                    .lilacTitle()
                    
                Text("Congratulations, you completed the game! 🥳")
                
                Text("You scored \(triviaManager.score) out of \(triviaManager.length)")
                
                Button {
                    Task.init {
                        await triviaManager.fetchTrivia()
                    }
                } label: {
                    PrimaryButton(text: "Play again")
                }
            }
            .foregroundColor(Color("AccentColor"))
            .padding()
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color(red:0.70, green: 0.90, blue: 0.99))
            .navigationBarBackButtonHidden(true)
        } else {
            QuestionView()
                 .environmentObject(triviaManager)
        }
      
    }
}

struct TriviaView_Previews: PreviewProvider {
    static var previews: some View {
        TriviaView()
            .environmentObject(TriviaManager())
    }
}
