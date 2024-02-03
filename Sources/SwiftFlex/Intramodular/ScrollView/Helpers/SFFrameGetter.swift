//
//  File.swift
//  
//
//  Created by Nevio Hirani on 03.02.24.
//

import Swift
import SwiftUI

@MainActor
final class SFViewFrame: ObservableObject {
    var startingRect: CGRect?
    
    @Published var frame: CGRect {
        willSet {
            if newValue.minY == 0 && newValue != startingRect {
                self.startingRect = newValue
            }
        }
    }
    
    init() {
        self.frame = .zero
    }
}

extension View {
    func frameGetter(_ frame: Binding<CGRect>) -> some View {
        modifier(SFFrameGetter(frame: frame))
    }
}

struct SFFrameRectPreferenceKey: PreferenceKey {
    static var defaultValue: CGRect = .zero
    static func reduce(value: inout CGRect, nextValue: () -> CGRect) {}
}

struct SFFrameGetter: ViewModifier {
    @Binding var frame: CGRect
    
    func body(content: Content) -> some View {
        content
            .background(
                GeometryReader { proxy in
                    EmptyView()
                        .preference(key: SFFrameRectPreferenceKey.self, value: proxy.frame(in: .global))
                }
            )
            .onPreferenceChange(SFFrameRectPreferenceKey.self) { rect in
                if rect.integral != self.frame.integral {
                    self.frame = frame
                }
            }
    }
}
