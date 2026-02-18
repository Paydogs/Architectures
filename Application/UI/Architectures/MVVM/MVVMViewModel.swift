//
//  MVVMViewModel.swift
//  Architectures
//
//  Created by Andras Olah on 2026. 02. 18..
//

import SwiftUI

class MVVMViewModel: ObservableObject {
    @Published var counter: Int = 0
    @Published var pros: [String] = []
    @Published var cons: [String] = []
    
    init() {
        self.pros = makePros()
        self.cons = makeCons()
    }
    
    func makePros() -> [String] {
        return [
            "Good separation between View and Data",
            "ViewModel is @StateObject and its an ObservableObject",
            "Testable without UI"
        ]
    }

    func makeCons() -> [String] {
        return [
            "\"God\" Viewmodel",
        ]
    }

    func decrease() {
        counter -= 1
    }
    
    func increase() {
        counter += 1
    }
}
