//
//  TextView.swift
//  app2
//
//  Created by javier banegas on 1/12/21.
//

import SwiftUI

struct TextView: View {
    var text: String
    var image: String
    var font: String
    var size: CGFloat
    
    var body: some View {
        HStack {
            Image(systemName: image)
            Text(text)
                .font(.Gluten(style: font, size: size))
                .padding()
            Spacer()
        }
        .padding(.horizontal, 20)
    }
}

struct TextView_Previews: PreviewProvider {
    static var previews: some View {
        TextView(text: "", image: "lightbulb.fill", font: "Regular", size: 28)
    }
}
