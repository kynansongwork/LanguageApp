//
//  LogoImage.swift
//  LanguageApp
//
//  Created by Kynan Song on 17/03/2020.
//  Copyright © 2020 xDesign. All rights reserved.
//

import SwiftUI

struct LogoImage {
    private let size: CGFloat
    
    init(size: CGFloat) {
        self.size = size
    }
}

extension LogoImage: View {
    var body: some View {
        Image(systemName: "table")
        .resizable()
        .frame(width: size, height: size, alignment: .center)
        .background(Color(white: 0.9))
        .clipShape(Circle())
        .foregroundColor(.red)
        .overlay(
            RoundedRectangle(cornerRadius: 60 / 2)
                .stroke(Color.gray, lineWidth: 1)
            )
    }
}

struct LogoImage_Previews: PreviewProvider {
    static var previews: some View {
        LogoImage(size: 60)
    }
}
