//
//  File.swift
//  
//
//  Created by Nevio Hirani on 29.01.24.
//

import Swift
import SwiftUI

/// A customizable button view.
///
/// This view creates a styled button with customizable appearance and action.
///
/// Example Usage:
/// ```swift
/// SFButton(text: String,
/// font: Font,
/// backgroundColor: Color,
/// textColor: Color,
/// cornerRadius: CGFloat,
/// action: @escaping () -> Void)
/// ```
struct SFButtonView: View {
    var text: String
    var font: Font
    var backgroundColor: Color
    var textColor: Color
    var cornerRadius: CGFloat
    var action: () -> Void

    var body: some View {
        Button(action: {
            action()
        }) {
            Text(text)
                .font(font)
                .fontWeight(.semibold)
                .foregroundColor(textColor)
                .frame(width: 360, height: 44)
                .background(backgroundColor)
                .cornerRadius(cornerRadius)
                // MARK: -  Stroke of the Button (if backgroundColor = .clear):
                .background {
                    RoundedRectangle(cornerRadius: 13)
                        .fill(Color(red: 248/255, green: 248/255, blue: 248/255))
                        .strokeBorder(Color(red: 194/255, green: 194/255, blue: 194/255), lineWidth: 0.5)
                }
        }
    }
}

extension View {
    /// Creates a styled button with customizable appearance and action.
    ///
    /// Use this function to create a button with specific text, font, colors, corner radius, and an associated action.
    ///
    /// - Parameters:
    ///   - text: The text to display on the button.
    ///   - font: The font to apply to the button text.
    ///   - color: The background color of the button.
    ///   - textColor: The color of the button's text.
    ///   - cornerRadius: The corner radius of the button.
    ///   - action: The action to perform when the button is tapped.
    ///
    /// - Returns: A view representing the styled button.
    ///
    func SFButton(text: String, font: Font, backgroundColor: Color, textColor: Color, cornerRadius: CGFloat, action: @escaping () -> Void) -> some View {
        SFButtonView(text: text, font: font, backgroundColor: backgroundColor, textColor: textColor, cornerRadius: cornerRadius, action: action)
    }
}
