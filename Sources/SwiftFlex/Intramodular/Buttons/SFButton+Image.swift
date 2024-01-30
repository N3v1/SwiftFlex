//
//  File.swift
//  
//
//  Created by Nevio Hirani on 29.01.24.
//

import Swift
import SwiftUI

/// A customizable button view that supports displaying either a custom image or a system image along with text.
///
/// Example Usage:
/// ```swift
/// SFButton_Image(
///     text: "Button Text",
///     font: .headline,
///     textColor: .white,
///     backgroundColor: .blue,
///     cornerRadius: 8,
///     action: { print("Button tapped") },
///     image: Image("customImage"),
///     imageWidth: 35,
///     imageHeight: 35
/// )
/// ```
///
/// - Parameters:
///   - text: The text to display on the button.
///   - font: The font to apply to the button text.
///   - backgroundColor: The background color of the button.
///   - textColor: The color of the button's text.
///   - cornerRadius: The corner radius of the button.
///   - action: The action to perform when the button is tapped.
///   - imageName: The name of the system image to display on the left side.
///   - imageName: The name of the system image to display on the left side.
///   - imageWidth: The width of the image.
///   - imageHeight: The height of the image.
///
/// - Returns: A view representing the styled button with an image on the left side.
///
struct SFButton_Image: View {
    var text: String
    var font: Font
    var textColor: Color
    var backgroundColor: Color
    var cornerRadius: CGFloat
    var action: () -> Void
    
    var image: Image?
    var systemImageName: String?
    
    var imageWidth: CGFloat
    var imageHeight: CGFloat
    
    var body: some View {
        Button(action: {
            action()
        }) {
            HStack {
                if let image = image {
                    image
                        .resizable()
                        .frame(width: imageWidth, height: imageHeight)
                } else if let systemImageName = systemImageName {
                    Image(systemName: systemImageName)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: imageWidth, height: imageHeight)
                }
                
                Text(text)
                    .font(font)
                    .fontWeight(.semibold)
                    .foregroundColor(textColor)
            }
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
    /// Creates a styled button with an image on the left side.
    ///
    /// Use this function to create a button with a specific text, font, colors, corner radius, an associated action, and an image on the left side.
    ///
    /// - Parameters:
    ///   - text: The text to display on the button.
    ///   - font: The font to apply to the button text.
    ///   - backgroundColor: The background color of the button.
    ///   - textColor: The color of the button's text.
    ///   - cornerRadius: The corner radius of the button.
    ///   - action: The action to perform when the button is tapped.
    ///   - imageName: The name of the system image to display on the left side.
    ///   - imageName: The name of the system image to display on the left side.
    ///   - imageWidth: The width of the image.
    ///   - imageHeight: The height of the image.
    ///
    /// - Returns: A view representing the styled button with an image on the left side.
    ///
    /// If you want to use this Button with a custom Image you need to use this code:
    /// ```swift
    ///   SFImageButton(text: "Press Me",
    ///   font: .system(size: 18),
    ///   backgroundColor: .blue,
    ///   textColor: .white,
    ///   cornerRadius: 10,
    ///   image: Image("customImage"), // Provide your custom image
    ///   imageWidth: 30,
    ///   imageHeight: 30) {
    ///       // action to perform when the button is tapped
    ///   }
    /// ```
    ///
    /// If you want to use this Button with a system Image you need to use this code:
    /// ```swift
    /// SFImageButton(text: "Press Me",
    /// font: .system(size: 18),
    /// backgroundColor: .blue,
    /// textColor: .white,
    /// cornerRadius: 10,
    /// systemImageName: "heart.fill", // Provide system image name
    /// imageWidth: 30,
    /// imageHeight: 30) {
    ///   // The action to perform when the button is tapped comes here.
    /// }
    /// ```
    func SFImageButton(text: String, font: Font, backgroundColor: Color, textColor: Color, cornerRadius: CGFloat, image: Image? = nil, systemImageName: String? = nil, imageWidth: CGFloat, imageHeight: CGFloat, action: @escaping () -> Void) -> some View {
        SFButton_Image(text: text, font: font, textColor: textColor, backgroundColor: backgroundColor, cornerRadius: cornerRadius, action: action, image: image, systemImageName: systemImageName, imageWidth: imageWidth, imageHeight: imageHeight)
    }
}
