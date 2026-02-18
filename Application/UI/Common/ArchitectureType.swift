//
//  ArchitectureTypes.swift
//  Architectures
//
//  Created by Andras Olah on 2026. 02. 18..
//

enum ArchitectureType: Hashable, Identifiable, CaseIterable {
    case mvvm
    
    var id: Self { self }
}

extension ArchitectureType {
    func localizedName() -> String {
        switch self {
        case .mvvm:
            return "MVVM"
        }
    }
}
