//
//  StartView.swift
//  LanguageApp
//
//  Created by Kynan Song on 18/03/2020.
//  Copyright © 2020 xDesign. All rights reserved.
//

import SwiftUI

struct StarterView: View {
  @EnvironmentObject var userViewModel: UserManager
  
  var body: some View {
    Group {
      if self.userViewModel.isRegistered {
        WelcomeView()
      } else {
        RegisterView(keyboardHandler: KeyboardFollower())
      }
    }
  }
}

struct StarterView_Previews: PreviewProvider {
  static var previews: some View {
    StarterView()
      .environmentObject(UserManager())
  }
}
