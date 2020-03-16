//
//  RegisterView.swift
//  LanguageApp
//
//  Created by Kynan Song on 16/03/2020.
//  Copyright © 2020 xDesign. All rights reserved.
//

import SwiftUI

struct RegisterView {
  
  @State var name: String = ""
    
  @State var isRegistered: Bool = false
  
  private let title = "Welcome to Language App"
  
  func registerUser() {
    if name.isEmpty == false {
      self.isRegistered = true
    }
  }
}

extension RegisterView: View {
  
  var body: some View {
    
    Group {
      if isRegistered {
        WelcomeView(name: name)
      } else {
        Text(title)
          .font(.title)
          .animation(.spring())
        TextField("Enter your name", text: $name)
          .multilineTextAlignment(.center)
        Button(action: {
          self.registerUser()
        }) {
          HStack {
            Image(systemName: "checkmark.circle")
            Text("OK")
          }
        }
      }
    }
  }
  
}

#if DEBUG
struct RegisterView_Previews: PreviewProvider {
  static var previews: some View {
    RegisterView()
  }
}
#endif
