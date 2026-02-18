//
//  ArchitectureTypeViews.swift
//  Architectures
//
//  Created by Andras Olah on 2026. 02. 18..
//

import SwiftUI

struct ArchitectureTypeViews: View {
    let route: ArchitectureType
    
    var body: some View {
        switch route {
        case .mvvm:
            MVVMView()
        }
    }
}
