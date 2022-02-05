//
//  Styles.swift
//  iOS15-template
//
//  Created by admin on 5/2/2565 BE.
//

import SwiftUI

struct StrokeStyle: ViewModifier {
    // type respect like typescript
    // if set default value, it won't complain when using the ViewModifier in cornerRadius payload
//    var cornerRadius : CGFloat = 30.0
    var cornerRadius : CGFloat
    func body(content: Content) -> some View {
        content.overlay(
            RoundedRectangle(cornerRadius: cornerRadius, style: .continuous)
                .stroke(.linearGradient(colors: [.white.opacity(0.3), .black.opacity(0.1)], startPoint: .top, endPoint: .bottom))
                .blendMode(.overlay)
        )
    }
}

// to use this, from .modifier(StrokeStyle()) can use to .strokeStyle()
extension View {
    func strokeStyle(cornerRadius: CGFloat = 30) -> some View {
        // passing cornerRadius to the func above
        modifier(StrokeStyle(cornerRadius: cornerRadius))
    }
}
