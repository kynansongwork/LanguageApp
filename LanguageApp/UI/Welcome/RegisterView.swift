//
//  RegisterView.swift
//  LanguageApp
//
//  Created by Kynan Song on 17/03/2020.
//  Copyright © 2020 xDesign. All rights reserved.
//

import SwiftUI

struct RegisterView: View {
    
    @EnvironmentObject var userManager: UserManager
    
    @ObservedObject var keyboardHandler: KeyboardFollower
    
    init(keyboardHandler: KeyboardFollower) {
        self.keyboardHandler = keyboardHandler
    }
    
    var body: some View {
        VStack {
            WelcomeMessageView()
            TextField("Type your name...", text: $userManager.profile.name)
            .bordered()
            
            HStack {
                Spacer()
                Text("\(userManager.profile.name.count)")
                    .font(.caption)
                    .foregroundColor(
                        userManager.isUserNameValid() ? .green : .red)
                    .padding(.trailing)
            }
            .padding(.bottom)
            
            HStack {
                Spacer()
                Toggle(isOn: $userManager.settings.rememberUser) {
                    Text("Remember me")
                        .font(.subheadline)
                        .foregroundColor(.gray)
                }
            }
            
            Button(action: self.registerUser) {
                HStack {
                    Image(systemName: "checkmark")
                        .resizable()
                        .frame(width: 16, height: 16, alignment: .center)
                    Text("OK")
                        .font(.body)
                        .bold()
                }
            }
            .disabled(!userManager.isUserNameValid())
            .bordered()
        }
        .padding(.bottom, keyboardHandler.keyboardHeight)
        .background(WelcomeBackgroundImage())
        .padding()
    }
}

extension RegisterView {
    
    func registerUser() {
        if userManager.settings.rememberUser {
            userManager.persistProfile()
        } else {
            userManager.clear()
        }
        
        userManager.persistSettings()
    }
}

struct RegisterView_Previews: PreviewProvider {
    
    static let user = UserManager(name: "Kynan")
    
    static var previews: some View {
        RegisterView(keyboardHandler: KeyboardFollower())
    .environmentObject(user) }
}
