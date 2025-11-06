//
//  CustomTextFieldView.swift
//  BookDesignSystem
//
//  Created by MARIE-MAGDELAINE Kyllian on 06/11/2025.
//

import SwiftUI

struct CustomTextFieldStyle : TextFieldStyle
{
    func _body(configuration: TextField<Self._Label>) -> some View {
            configuration
                .padding(10)
                .background(.white)
                .cornerRadius(10)
                .shadow(color: Color("CardBackgroundShadow", bundle: .module), radius: 10)
                .foregroundStyle(Color("TextFieldColor", bundle: .module))
        }
}

public struct CustomTextField: View {
    var text: Binding<String>
    var titleKey: String
    
    public init(_ titleKey: String, text: Binding<String>)
    {
        self.text = text
        self.titleKey = titleKey
    }
    
    public var body: some View {
        TextField(self.titleKey,text:self.text)
            .textFieldStyle(CustomTextFieldStyle())
    }
}

struct TempView: View {
    @State var str = "Test"
    
    var body: some View {
        CustomTextField("Text", text: $str)
    }
}

#Preview {
    
   TempView()
    
    
}
