//
//  ArchitectureList.swift
//  Architectures
//
//  Created by Andras Olah on 2026. 02. 18..
//

import SwiftUI

struct ArchitectureList: View {
    let onSelect: (ArchitectureType) -> Void
    
    var body: some View {
        List {
            ForEach(ArchitectureType.allCases) { item in
                Text(item.localizedName())
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .contentShape(Rectangle())
                    .onTapGesture(perform: {
                        onSelect(item)
                    })
            }
            .listRowBackground(
                LinearGradient(
                    colors: [.blue.opacity(0.2), .blue.opacity(0.7)],
                    startPoint: .leading,
                    endPoint: .trailing
                )
            )
        }
        .scrollContentBackground(.hidden)
    }
}

#Preview {
    ArchitectureList { _ in }
}
