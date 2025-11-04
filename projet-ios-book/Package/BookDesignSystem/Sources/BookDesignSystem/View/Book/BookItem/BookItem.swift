//
//  BookItem.swift
//  DesignSystem
//
//  Created by MARIE-MAGDELAINE Kyllian on 04/11/2025.
//

import SwiftUI

public struct BookItem : View {
    @State var bookItemViewModel: BookItemViewModel
    
    public init() {
        self.bookItemViewModel = BookItemViewModel(bookID: 0)
    }
    
    public var body: some View {
        HStack {
            Text("test")
        }
    }
}

#Preview {
    BookItem()
}
