//
//  WelcomeBackgroundImage.swift
//  LanguageApp
//
//  Created by Kynan Song on 17/03/2020.
//  Copyright © 2020 xDesign. All rights reserved.
//

import SwiftUI

struct WelcomeBackgroundImage: View {
    var body: some View {
        Image("welcome-background", bundle: nil)
        .resizable()
        .aspectRatio(1 / 1, contentMode: .fill)
        .edgesIgnoringSafeArea(.all)
        .saturation(0.5)
        .blur(radius: 5)
        .opacity(0.08)
    }
}

struct WelcomeBackgroundImage_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeBackgroundImage()
    }
}
