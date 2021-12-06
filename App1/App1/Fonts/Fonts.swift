//
//  Fonts.swift
//  App1
//
//  Created by javier banegas on 17/10/21.
//

import SwiftUI

struct TextModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.custom("Gluten-Regular", size: 24))
            .foregroundColor(.white)
    }
}

struct TitleModifier: ViewModifier {
func body(content: Content) -> some View {
    content
        .font(.custom("Gluten-Black", size: 24))
        .foregroundColor(Color("Title"))
    }
}

extension Font {
    public static func Gluten(style: String, size: CGFloat) -> Font {
        return Font.custom("Gluten-\(style)", size: size)
    }
    
}

