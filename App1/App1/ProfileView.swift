//
//  ContentView.swift
//  App1
//
//  Created by javier banegas on 17/10/21.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        ZStack {
            Color("Background")
            VStack {
                Text("Mi Perfil")
                    .modifier(TitleModifier())
                    .padding(.bottom, 20)
                Image("user")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 250)
                    .clipShape(Circle())
                    .overlay(
                        Circle()
                            .stroke(lineWidth: 6)
                            .foregroundColor(Color("Title"))
                    )
                    .padding(.bottom, 60)
                
                TextView(text: "Javier Banegas", image: "person.fill", font:"Gluten-Black", size: 28)
                TextView(text: "Monterrey", image: "house.fill", font:"Gluten-Regular", size: 28)
                TextView(text: "javibanegas2000@gmail.com", image: "envelope.fill", font:"Gluten-Regular", size: 24)
                TextView(text: "A00827812", image: "qrcode", font:"Gluten-Regular", size: 28)
            }
        }
        .edgesIgnoringSafeArea(.all)
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ProfileView()
                .preferredColorScheme(.light)
            ProfileView()
                .preferredColorScheme(.dark)
        }
    }
}
