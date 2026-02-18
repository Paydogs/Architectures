//
//  MVVMViewModel.swift
//  Architectures
//
//  Created by Andras Olah on 2026. 02. 18..
//

import SwiftUI

class MVVMViewModel: ObservableObject {
    @Published var counter: Int = 0
    @Published var features: [String] = []
    
    init() {
        self.features = makeFeatures()
    }
    
    func makeFeatures() -> [String] {
        return [
            "ViewModel is @StateObject and its an ObservableObject"        ]
    }
    
    func decrease() {
        counter -= 1
    }
    
    func increase() {
        counter += 1
    }
}
