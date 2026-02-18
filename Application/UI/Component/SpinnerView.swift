//
//  SpinnerView.swift
//  Architectures
//
//  Created by Andras Olah on 2026. 02. 18..
//

import SwiftUI

struct SpinnerView: View {
    @State private var rotation: Double = 0
    
    var body: some View {
        Image(systemName: "arrow.triangle.2.circlepath")
            .font(.title3)
            .rotationEffect(.degrees(rotation))
            .padding(7)
            .task {
                withAnimation(
                    .linear(duration: 1)
                    .repeatForever(autoreverses: false)
                ) {
                    rotation = 360
                }
            }
            .background(.blue.opacity(0.3))
            .clipShape(.circle)
    }
}

#Preview {
    SpinnerView()
}
