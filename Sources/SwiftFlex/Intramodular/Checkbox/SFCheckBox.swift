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
    
    var selectionColor: SFColor = SFColor.orange
    var size: CGFloat = 20
    
    public var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 10, style: .circular)
                .stroke(isSelected ? SFColor.clear : SFColor.gray, lineWidth: 2)
                .background(isSelected ? SFColor.orange : SFColor.clear)
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
