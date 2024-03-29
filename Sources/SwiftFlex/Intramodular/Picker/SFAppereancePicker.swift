//
//  File.swift
//  
//
//  Created by Nevio Hirani on 29.01.24.
//

import Swift
import SwiftUI

public struct SFAppereancePicker: View {
    @Binding var isSelected: Bool
    
    let action: () -> Void
    
    public var body: some View {
        HStack {
            Spacer()
            
            VStack(alignment: .center) {
                Image("ColorPicker-black")
                Text("Always dark")
                    .fontWeight(.semibold)
                
                SFCircularCheckbox(isSelected: $isSelected, onTap: {
                    action()
                })
            }
            
            Spacer()
            
            VStack(alignment: .center) {
                Image("ColorPicker-white")
                Text("Always light")
                    .fontWeight(.semibold)
                
                SFCircularCheckbox(isSelected: $isSelected, onTap: {
                    action()
                })
            }
            Spacer()
        }
    }
}
//
//extension View {
//    public func SFAppereancePicker(isSelected: Binding<Bool>, action: @escaping () -> Void) -> some View {
//        SFAppereancePicker(isSelected: isSelected, action: action)
//    }
//}
