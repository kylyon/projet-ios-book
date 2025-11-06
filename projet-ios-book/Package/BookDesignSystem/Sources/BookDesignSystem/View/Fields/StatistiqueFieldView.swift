//
//  StatistiqueFieldView.swift
//  BookDesignSystem
//
//  Created by MARIE-MAGDELAINE Kyllian on 06/11/2025.
//

import SwiftUI

public struct StatistiqueField : View {
    @State var label: String
    @State var value: Int
    
    public init(label: String, value: Int) {
        self.label = label
        self.value = value
    }
    
    
    public var body: some View {
        VStack {
            Text("\(self.value)")
                .font(.system(size: 30))
                .bold()
            Text(self.label)
                .font(.system(size: 16))
        }
    }
}
