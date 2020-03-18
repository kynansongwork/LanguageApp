//
//  WelcomeView.swift
//  LanguageApp
//
//  Created by Kynan Song on 16/03/2020.
//  Copyright © 2020 xDesign. All rights reserved.
//

import SwiftUI

struct WelcomeView: View {
    @EnvironmentObject var userManager: UserManager
    @EnvironmentObject var challengesViewModel: ChallengesViewModel
    @State private var showHome = false

    @ViewBuilder
    var body: some View {
        if showHome {
            PracticeView(
                challengeTest: $challengesViewModel.currentChallenge,
                userName: $userManager.profile.name)
        } else {
            VStack {
                
                Text(verbatim: "Hi, \(userManager.profile.name)")
                
                WelcomeMessageView()
                
                Button(action: {
                    self.showHome = true
                }, label: {
                    HStack {
                        Image(systemName: "play")
                        Text(verbatim: "Start")
                    }
                })
            }.background(WelcomeBackgroundImage())
        }
    }
}
struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
        .environmentObject(UserManager())
    }
}
