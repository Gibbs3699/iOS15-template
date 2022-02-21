//
//  PreferenceKeys.swift
//  iOS15-template
//
//  Created by admin on 19/2/2565 BE.
//

import SwiftUI


struct ScrollPreferenceKey: PreferenceKey {
    static var defaultValue: CGFloat = 0
    static func reduce(value: inout CGFloat, nextValue: () -> CGFloat) {
        value = nextValue()
    }
}

