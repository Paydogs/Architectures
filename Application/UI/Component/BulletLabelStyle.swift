//
//  BulletLabelStyle.swift
//  Architectures
//
//  Created by Andras Olah on 2026. 02. 18..
//

import SwiftUI

struct BulletLabelStyle: LabelStyle {
    func makeBody(configuration: Configuration) -> some View {
        HStack(alignment: .top, spacing: 10) {
            configuration.icon
                .font(.system(size: 8))
                .padding(.top, 5) // Optical alignment with text cap-height
            configuration.title
                .fixedSize(horizontal: false, vertical: true)
        }
    }
}
