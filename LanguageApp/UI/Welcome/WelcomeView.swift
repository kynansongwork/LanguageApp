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
    let size: CGFloat = 60
    
    init(name: String) {
        self.name = name
    }
}

extension WelcomeView: View {
    
    var body: some View {
        ZStack {
            Image("welcome-background", bundle: nil)
                .resizable()
                .aspectRatio(1 / 1, contentMode: .fill)
                .edgesIgnoringSafeArea(.all)
                .saturation(0.5)
                .blur(radius: 5)
                .opacity(0.08)
            HStack {
                Image(systemName: "table")
                    .resizable()
                    .frame(width: size, height: size, alignment: .center)
                    .background(Color(white: 0.9))
                    .clipShape(Circle())
                    .foregroundColor(.red)
                    .overlay(
                        RoundedRectangle(cornerRadius: size / 2)
                            .stroke(Color.gray, lineWidth: 1)
                        )
                
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
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView(name: "Kynan")
    }
}
