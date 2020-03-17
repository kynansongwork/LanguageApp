//
//  RegisterView.swift
//  LanguageApp
//
//  Created by Kynan Song on 17/03/2020.
//  Copyright © 2020 xDesign. All rights reserved.
//

import SwiftUI

struct RegisterView: View {
    var body: some View {
        ZStack {
            WelcomeBackgroundImage()
            VStack {
                WelcomeMessageView()
            }
        }
        
    }
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}
