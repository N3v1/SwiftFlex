//
//  SwiftUIView.swift
//  
//
//  Created by Nevio Hirani on 29.01.24.
//

import SwiftUI

struct SFImagePicker: View {
    @Binding var isSelected: Bool
    
    var firstImage: String
    var secondImage: String
    
    var firstTitle: String
    var secondTitle: String
    
    let action: () -> Void
    
    var body: some View {
        HStack {
            Spacer()
            
            VStack(alignment: .center) {
                Image(firstImage)
                Text(firstTitle)
                    .fontWeight(.semibold)
                
                SFCircularCheckbox(isSelected: $isSelected, onTap: {
                    action()
                })
            }
            
            Spacer()
            
            VStack(alignment: .center) {
                Image(secondImage)
                Text(secondTitle)
                    .fontWeight(.semibold)
                
                SFCircularCheckbox(isSelected: $isSelected, onTap: {
                    action()
                })
            }
            Spacer()
        }
    }
}
