//
//  ContentView.swift
//  app07
//
//  Created by javier banegas on 2/12/21.
//

import SwiftUI
import MobileCoreServices

struct PuzzleView: View {
    
    @StateObject var dataModel = DataModel()
    @State var isCompleted = true
    var columns: [GridItem] = Array(repeating: .init(.flexible(), spacing: 0), count: 4)
    
    var body: some View {
        GeometryReader{ geo in
            NavigationView{
                VStack(spacing: 20){
                    Button {
                        isCompleted = false
                        dataModel.images.shuffle()
                    } label: {
                        HStack{
                            Image(systemName: "shuffle")
                                .font(.largeTitle)
                            Text("Shuffle")
                                .font(.largeTitle)
                        }
                        .padding()
                        .foregroundColor(.white)
                        .background(Color.green)
                        .cornerRadius(20)
                    }
                    .padding(.top, 40)
                    .padding(.bottom, 20)
                    
                    LazyVGrid(columns: columns, spacing: 0){
                        ForEach(dataModel.images){ image in
                            if isCompleted{
                                Image(image.image)
                                    .resizable()
                                    .frame(width: (geo.size.width - 20) / 4, height: (geo.size.width - 20) / 4)
                            } else {
                            Image(image.image)
                                .resizable()
                                .frame(width: (geo.size.width - 20) / 4, height: (geo.size.width - 20) / 4)
                                .overlay(
                                    Rectangle()
                                        .stroke(lineWidth: isCompleted ? 1 : 0)
                                )
                                .onDrag{
                                    dataModel.currentImage = image
                                    return NSItemProvider(item: .some(URL(string: image.image)! as NSSecureCoding), typeIdentifier: String(kUTTypeURL))
                                }
                                .onDrop(of: [.url], delegate: DropViewDelegate(dataModel: dataModel , image: image, isCompleted: $isCompleted))
                            }
                        }
                    }
                    .padding(.horizontal, 10)
                    Image( isCompleted ? "Well Done" : "santaCruz" )
                        .resizable()
                        .scaledToFit()
                        .frame(width: geo.size.width / 2 )
                        .padding(.top , 30)
                    Spacer()
                }
                
                
            }
            .navigationBarTitle("Puzzle")
            .navigationBarTitleDisplayMode(.inline)
        }
    
    }
        
}

struct PuzzleView_Previews: PreviewProvider {
    static var previews: some View {
        PuzzleView()
    }
}

