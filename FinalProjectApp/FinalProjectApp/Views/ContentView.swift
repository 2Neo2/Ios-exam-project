//
//  WelcomeView.swift
//  FinalProjectApp
//
//  Created by Иван Доронин on 26.05.2023.
//

import SwiftUI

struct ContentView: View {
    
    // Columns settings for grid.
    let gridItems = [
            GridItem(.fixed(100.0), spacing: 10.0, alignment: .center),
            GridItem(.fixed(100.0), spacing: 10.0, alignment: .center),
            GridItem(.fixed(100.0), spacing: 10.0, alignment: .center),
            GridItem(.fixed(100.0), spacing: 10.0, alignment: .center),
            GridItem(.fixed(100.0), spacing: 10.0, alignment: .center),
            GridItem(.fixed(100.0), spacing: 10.0, alignment: .center),
            GridItem(.fixed(100.0), spacing: 10.0, alignment: .center),
            GridItem(.fixed(100.0), spacing: 10.0, alignment: .center),
            GridItem(.fixed(100.0), spacing: 10.0, alignment: .center),
            GridItem(.fixed(100.0), spacing: 10.0, alignment: .center)
        ]
    
    var body: some View {
        ScrollView([.vertical, .horizontal]) {
            LazyVGrid(columns: gridItems, alignment: .leading, spacing: 20) {
                // Passing by the first number in NumbersModel.
                ForEach(1..<10) { idx in
                    // Passing by the second number in NumbersModel.
                    ForEach(0..<10) {store in
                        let obj = NumbersModel(firstNumer: idx, secondNumber: store)
                        HStack {
                            Rectangle().fill(Color.black)
                                .frame(height: 30)
                            
                        }.overlay(
                            // Drawing result from NumbersModel value.
                            Text("\(obj.firstNumer) x \(obj.secondNumber) = \(obj.result)")
                            .foregroundColor(.white)
                            .font(Font.headline))
                    }
                }
            }
            .border(Color.gray)
            .frame(width: 1100)
            .padding(20)
        }
        .border(Color.black)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
