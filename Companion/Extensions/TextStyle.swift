//
//  titleStyle.swift
//  Companion
//
//  Created by Selena Aura on 11/04/25.
//

import Foundation
import SwiftUI

struct CustomTitleStyle: ViewModifier{
    func body(content: Content) -> some View {
        content
            .font(.system(size: 40, weight: .bold, design: .default))
            .foregroundColor(.white)
    }
}

struct ButtonTextPrimaryStyle: ViewModifier{
    func body(content: Content) -> some View {
        content
            .font(.system(size: 20, weight: .semibold, design: .default))
            .foregroundColor(.black)
    }
}

struct ButtonTextSecondaryStyle: ViewModifier{
    func body(content: Content) -> some View {
        content
            .font(.system(size: 20, weight: .semibold, design: .default))
            .foregroundColor(.white)
    }
}


extension View {
    func titleStyle()
    -> some View {
        self.modifier(CustomTitleStyle())
    }
    
    func buttonTextPrimary()
    -> some View {
        self.modifier(ButtonTextPrimaryStyle())
    }
    
    func buttonTextSecondary()
    -> some View {
        self.modifier(ButtonTextSecondaryStyle())
    }
    
    @ViewBuilder
        func buttonOnOff(_ state: Bool) -> some View {
            if state {
                self.modifier(ButtonTextPrimaryStyle())
            } else {
                self.modifier(ButtonTextSecondaryStyle())
            }
        }
}
