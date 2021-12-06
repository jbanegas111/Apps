//
//  ColorView.swift
//  app2
//
//  Created by javier banegas on 1/12/21.
//

import SwiftUI

struct ColorView: View {
    var colour: Colour
    var pallete: String
    var body: some View {
        ZStack{
            colour.colour
            VStack(spacing: 20){
                Text(colour.name)
                    .font(.largeTitle)
                    .foregroundColor(colour.dark ? .white : .black)
                Text(pallete)
                    .foregroundColor(colour.dark ? .white : .black)
            }
            
        }
        .edgesIgnoringSafeArea(.all)
            .navigationTitle("Color")
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarColor(UIColor(.blue), UIColor(.white))
    }
}

struct ColorView_Previews: PreviewProvider {
    static var previews: some View {
        ColorView(colour: Colour.Alizarin , pallete: "American")
    }
}
