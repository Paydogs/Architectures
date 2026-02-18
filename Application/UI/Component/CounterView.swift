//
//  CounterView.swift
//  Architectures
//
//  Created by Andras Olah on 2026. 02. 18..
//

import SwiftUI

struct CounterView: View {
    @Binding var count: Int
    let onDecrease: () -> Void
    let onIncrease: () -> Void
    
    var body: some View {
        HStack(spacing: 30.0) {
            Button {
                onDecrease()
            } label: {
                Label("", systemImage: "minus")
            }
            Text("\(count)")
            Button {
                onIncrease()
            } label: {
                Label("", systemImage: "plus")
            }

        }
    }
}

#Preview {
    CounterView(count: .constant(5), onDecrease: {}, onIncrease: {})

}
