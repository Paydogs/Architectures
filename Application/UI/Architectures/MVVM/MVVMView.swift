//
//  MVVMView.swift
//  Architectures
//
//  Created by Andras Olah on 2026. 02. 18..
//

import SwiftUI

struct MVVMView: View {
    @StateObject var viewModel: MVVMViewModel = MVVMViewModel()
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("MVVM")
                .font(.title)
                .padding()
            VStack(alignment: .leading, spacing: 8) {
                ForEach(viewModel.features, id: \.self) { feature in
                    Label(feature, systemImage: "circle.fill")
                        .labelStyle(BulletLabelStyle())
                }
            }
            .padding(.horizontal)
            
            Divider()
            VStack(alignment: .center) {
                CounterView(count: $viewModel.counter) {
                    viewModel.decrease()
                } onIncrease: {
                    viewModel.increase()
                }
            }
            .frame(maxWidth: .infinity)
            .padding(20)
            Spacer()
        }
    }
}

#Preview {
    MVVMView()
}
