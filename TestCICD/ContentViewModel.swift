//
//  ContentViewModel.swift
//  TestCICD
//
//  Created by Nikola Popovic on 8.10.21..
//

import Foundation

public final class ContentViewModel: ObservableObject {
    @Published var firstNumber: String = ""
    @Published var secontNumber: String = ""
    @Published var resultNumber: String = ""
    
    public func addNumbers() {
        if let firstNum = Int(firstNumber), let secondNum = Int(secontNumber) {
            resultNumber = String(firstNum + secondNum)
        } else {
            resultNumber = "You must enterd number"
        }
    }
}
