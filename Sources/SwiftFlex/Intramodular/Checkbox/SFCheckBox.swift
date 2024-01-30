//
//  File.swift
//  
//
//  Created by Nevio Hirani on 29.01.24.
//

import Swift
import SwiftUI

public struct SFCircularCheckbox: View {
    @Binding var isSelected: Bool
    let onTap: () -> Void
    
    var selectionColor: Color = Color.orange
    var size: CGFloat = 20
    
    public var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 10, style: .circular)
                .stroke(isSelected ? Color.clear : Color.gray, lineWidth: 2)
                .background(isSelected ? Color.orange : Color.clear)
                .frame(width: size, height: size)
                .clipShape(Circle())
                .onTapGesture {
                    withAnimation {
                        onTap()
                    }
                }
        }
    }
}
