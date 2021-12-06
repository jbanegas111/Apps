//
//  ColorDetailView.swift
//  app2
//
//  Created by javier banegas on 1/12/21.
//

import SwiftUI

struct ColorDetailView: View {
    
    var body: some View {
        Text("Detalles")
            .navigationTitle("ColorDetail")
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarColor(UIColor(.blue), UIColor(.white))
    }
}

struct ColorDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ColorDetailView()
    }
}
