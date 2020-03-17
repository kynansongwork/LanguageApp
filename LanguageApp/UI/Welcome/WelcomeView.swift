//
//  WelcomeView.swift
//  LanguageApp
//
//  Created by Kynan Song on 16/03/2020.
//  Copyright © 2020 xDesign. All rights reserved.
//

import SwiftUI

struct WelcomeView {
  
    @State private var showHome = false
    
    private let name: String
    
    init(name: String) {
        self.name = name
    }
}

extension WelcomeView: View {
    
    var body: some View {
        ZStack {
            WelcomeBackgroundImage()
            HStack {
                LogoImage(size: 60)
                WelcomeMessageView()
            }
        }
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView(name: "Kynan")
    }
}
