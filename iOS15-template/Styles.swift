//
//  Styles.swift
//  iOS15-template
//
//  Created by admin on 5/2/2565 BE.
//

import SwiftUI

struct StrokeStyle: ViewModifier {
    func body(content: Content) -> some View {
        content.overlay(
            RoundedRectangle(cornerRadius: 30, style: .continuous)
                .stroke(.linearGradient(colors: [.white.opacity(0.3), .black.opacity(0.1)], startPoint: .top, endPoint: .bottom))
                .blendMode(.overlay)
        )
    }
}

// to use this, from .modifier(StrokeStyle()) can use to .strokeStyle()
extension View {
    func strokeStyle() -> some View {
        modifier(StrokeStyle())
    }
}