//
//  ColourModel.swift
//  app2
//
//  Created by javier banegas on 1/12/21.
//

import SwiftUI

class ColourModel: ObservableObject{
    @Published var flatUI = [Colour]()
    @Published var american = [Colour]()
    @Published var spanish = [Colour]()
    
    init(){
        loadColours()
    }
    
    func loadColours(){
        flatUI.append(contentsOf: Colour.flatUI)
        spanish.append(contentsOf: Colour.spanish)
        american.append(contentsOf: Colour.american)
    }
}
