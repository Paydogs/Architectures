//
//  ArchitectureListView.swift
//  Architectures
//
//  Created by Andras Olah on 2026. 02. 18..
//

import SwiftUI

struct ArchitectureListView: View {
    @State private var path: NavigationPath = .init()
    
    var body: some View {
        NavigationStack(path: $path, root: {
            VStack {
                HStack {
                    Text("Architectures")
                        .font(.title)
                        .fixedSize(horizontal: true, vertical: false)
                    Spacer()
                }
                .padding()
                
                ArchitectureList(onSelect: { item in
                    path.append(item)
                })
                .navigationDestination(for: ArchitectureType.self) { type in
                    ArchitectureTypeViews(route: type)
                }
            }
        })
    }
}

#Preview {
    ArchitectureListView()
}
