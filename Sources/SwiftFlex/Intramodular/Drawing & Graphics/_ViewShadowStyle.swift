//
//  File.swift
//  
//
//  Created by Nevio Hirani on 30.01.24.
//

import Swift
import SwiftUI

public enum _ViewShadowStyle {
    case drop(
        color: SFColor = .init(.sRGBLinear, white: 0, opacity: 0.32),
        radius: CGFloat,
        x: CGFloat = 0,
        y: CGFloat = 0
    )
}

extension View {
    @ViewBuilder
    public func shadow(_ style: _ViewShadowStyle) -> some View {
        switch style {
            case let .drop(color, radius, x, y):
                self.shadow(color: color, radius: radius, x: x, y: y)
        }
    }
}
