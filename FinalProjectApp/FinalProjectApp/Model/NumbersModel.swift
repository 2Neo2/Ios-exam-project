//
//  NumbersModel.swift
//  FinalProjectApp
//
//  Created by Иван Доронин on 26.05.2023.
//

import Foundation

// MARK: model for multiplication operation.
struct NumbersModel: Identifiable {
    var id = UUID()
    var firstNumer: Int
    var secondNumber: Int
    
    // Final result of multiplication.
    var result: Int {firstNumer * secondNumber}
}

