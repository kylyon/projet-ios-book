//
//  ButtonAction.swift
//  BookDesignSystem
//
//  Created by MARIE-MAGDELAINE Kyllian on 05/11/2025.
//

import SwiftUI

struct ButtonActionStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding()
            .background(Color(configuration.isPressed ? "ButtonPressedColor" : "ButtonColor", bundle: .module))
            .foregroundStyle(Color(configuration.isPressed ? "ButtonPressedTextColor" : "ButtonTextColor", bundle: .module))
            .clipShape(Capsule())
            .shadow(color: Color("CardBackgroundShadow", bundle: .module), radius: 8, x: 0, y: 5)
            
    }
}

public struct ButtonAction: View {
    @State var buttonActionViewModel: ButtonActionViewModel
    @State var label: String
    
    public init(_ label: String, action: @escaping () -> ()) {
        self.buttonActionViewModel = ButtonActionViewModel(action: action)
        self.label = label
    }
    
    public var body: some View {
        Button{
            self.buttonActionViewModel.handle()
        } label: {
            Text(self.label)
        }
        .buttonStyle(ButtonActionStyle())
    }
}


#Preview {
    ButtonAction("Bouton 1", action: {print("pouet")})
}
