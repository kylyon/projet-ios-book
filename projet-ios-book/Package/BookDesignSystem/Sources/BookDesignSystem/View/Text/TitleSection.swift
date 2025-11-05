//
//  TitleSection.swift
//  BookDesignSystem
//
//  Created by MARIE-MAGDELAINE Kyllian on 05/11/2025.
//

import SwiftUI

public struct TitleSection: View {
    
    @State var label: String
    
    public init(label: String) {
        self.label = label
    }
    
    public var body: some View {
        Text(label)
            .font(.system(size: 24))
            .bold()
            .multilineTextAlignment(.leading)
            .padding(EdgeInsets(top: 0, leading: 20, bottom: 0, trailing: 20))
            .foregroundStyle(Color("TextPrimaryColor", bundle: .module))
    }
}
