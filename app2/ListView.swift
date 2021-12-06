//
//  ContentView.swift
//  app2
//
//  Created by javier banegas on 30/11/21.
//

import SwiftUI

struct ListView: View {
    @StateObject var colours = ColourModel()
    @State var searchText: String = ""
    
    var body: some View {
        NavigationView{
            List{
                TextField("Nombre del color", text: $searchText)
                    .font(.title2)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                Section {
                    ForEach(colours.flatUI.filter{
                        searchText.isEmpty || $0.name.localizedStandardContains(searchText)
                    }
                    ){ colour in
                        NavigationLink(destination: ColorView(colour: colour, pallete: "FlatUI"), label:{
                            TextView(text: colour.name, image: colour.dark ? "lightbulb" : "lightbulb.fill", font: "Gluten-Regular", size: 18)
                                .foregroundColor(colour.dark ? Color.white : Color.black)
                        }
                        )
                        .listRowBackground(colour.colour)
                    }
                } header: {
                    Text("FlatUI")
                }
                
                Section {
                    ForEach(colours.american.filter{
                        searchText.isEmpty || $0.name.localizedStandardContains(searchText)
                    }){ colour in
                        NavigationLink(destination: ColorView(colour: colour, pallete: "American"), label:{
                            TextView(text: colour.name, image: colour.dark ? "lightbulb" : "lightbulb.fill", font: "Gluten-Regular", size: 18)
                                .foregroundColor(colour.dark ? Color.white : Color.black)
                        }
                        )
                        .listRowBackground(colour.colour)
                    }
                } header: {
                    Text("American")
                }
                
                Section {
                    ForEach(colours.spanish.filter{
                        searchText.isEmpty || $0.name.localizedStandardContains(searchText)
                    }){ colour in
                        NavigationLink(destination: ColorView(colour: colour, pallete: "Spanish"), label:{
                            TextView(text: colour.name, image: colour.dark ? "lightbulb" : "lightbulb.fill", font: "Gluten-Regular", size: 18)
                                .foregroundColor(colour.dark ? Color.white : Color.black)
                        }
                        )
                        .listRowBackground(colour.colour)
                    }
                } header: {
                    Text("Spanish")
                }
                
            }
            .listStyle(SidebarListStyle())
            .navigationTitle("Colors")
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarColor(UIColor(.blue), UIColor(.white))
        }
       
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}
