//
//  SectionCardView.swift
//  BookDesignSystem
//
//  Created by MARIE-MAGDELAINE Kyllian on 06/11/2025.
//

import SwiftUI

public struct SectionCard<Content: View>: View {
    
    var content: () -> Content
    
    public init(@ViewBuilder content: @escaping () -> Content) {
        self.content = content
    }
    
    public var body: some View {
        VStack(spacing: 15){
            content()
                .foregroundStyle(Color("TextPrimaryColor", bundle: .module))
        }
            .padding()
            .frame(
                minWidth: 0,
                maxWidth: .infinity
              )
            .background(Color("CardBackground", bundle: .module))
            .clipShape(RoundedRectangle(cornerRadius: 10))
            .shadow(color: Color("CardBackgroundShadow", bundle: .module), radius: 8, x: 0, y: 5)
            
    }
}

#Preview {
    SectionCard
    {
        Text("Test")
        Text("Ligng 2")
    }
}
