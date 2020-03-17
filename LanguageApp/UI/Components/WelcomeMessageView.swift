//
//  WelcomeMessageView.swift
//  LanguageApp
//
//  Created by Kynan Song on 17/03/2020.
//  Copyright © 2020 xDesign. All rights reserved.
//

import SwiftUI

struct WelcomeMessageView: View {
    var body: some View {
        HStack {
            LogoImage(size: 60)
            VStack {
                Text("Welcome to")
                    .font(.headline)
                    .bold()
                Text("Language App")
                    .font(.largeTitle)
                    .bold()
            }
            .foregroundColor(.red)
            .lineLimit(2)
            .multilineTextAlignment(.leading)
            .padding(.horizontal)
        }
    }
}

struct WelcomeMessageView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeMessageView()
    }
}
