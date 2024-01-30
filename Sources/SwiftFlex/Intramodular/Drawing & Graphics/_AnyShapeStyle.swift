//
//  File.swift
//  
//
//  Created by Nevio Hirani on 30.01.24.
//

import SwiftUI

@available(iOS 15.0, macOS 12.0, tvOS 15.0, watchOS 8.0, *)
public enum _AnyShapeStyle {
    case shapeStyle(AnyShapeStyle)
    case color(SFColor)
}

// MARK: - Initializers

@available(iOS 15.0, macOS 12.0, tvOS 15.0, watchOS 8.0, *)
extension AnyShapeStyle {
    public init(_ style: _AnyShapeStyle) {
        switch style {
        case .shapeStyle(let style):
            self = style
        case .color(let sfColor):
            self = .init(sfColor)
        }
    }
}
