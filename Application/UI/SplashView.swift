//
//  SplashView.swift
//  Architectures
//
//  Created by Andras Olah on 2026. 01. 31..
//

import SwiftUI

struct SplashView: View {
    let loadingFinished: Bool
    let onAnimationFinished: () -> Void
    @Namespace private var titleAnimationNamespace
    
    @State private var isAnimating = false
    
    var body: some View {
        ZStack {
            if isAnimating {
                VStack {
                    HStack {
                        Text("Architectures")
                            .font(.title)
                            .fixedSize(horizontal: true, vertical: false)
                            .matchedGeometryEffect(id: "Title", in: titleAnimationNamespace)
                        Spacer()
                    }
                    .padding()
                    Spacer()
                }
            } else {
                VStack {
                    Text("Architectures")
                        .font(.largeTitle)
                        .fixedSize(horizontal: true, vertical: false)
                        .matchedGeometryEffect(id: "Title", in: titleAnimationNamespace)
                    
                    SpinnerView()
                }
            }
        }
        .onChange(of: loadingFinished) { newValue in
            if newValue {
                withAnimation(.spring(response: Constants.splashAnimation, dampingFraction: 0.8)) {
                    isAnimating = true
                }
                
                Task {
                    try? await Task.sleep(for: .seconds(Constants.splashAnimation))
                    onAnimationFinished()
                }
            }
        }
    }
}
