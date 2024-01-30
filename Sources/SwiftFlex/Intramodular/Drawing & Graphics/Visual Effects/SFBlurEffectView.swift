//
//  File.swift
//  
//
//  Created by Nevio Hirani on 30.01.24.
//

#if os(iOS) || targetEnvironment(macCatalyst)

import Swift
import SwiftUI
import UIKit

public struct BlurEffectView<Content: View>: View {
    private let content: Content
    private let style: UIBlurEffect.Style
    
    public init(style: UIBlurEffect.Style, @ViewBuilder content: () -> Content) {
        self.content = content()
        self.style = style
    }
    
    public var body: some View {
        UIVisualEffectView(effect: UIBlurEffect(style: style)) { // VisualEffectView
            content
        }
        .accessibility(hidden: Content.self == EmptyView.self)
    }
}

extension BlurEffectView where Content == EmptyView {
    public init(style: UIBlurEffect.Style) {
        self.init(style: style) {
            EmptyView()
        }
    }
}

#endif
