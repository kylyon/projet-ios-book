//
//  BookItemViewModel.swift
//  DesignSystem
//
//  Created by MARIE-MAGDELAINE Kyllian on 04/11/2025.
//

import SwiftUI

@Observable
class BookItemViewModel
{
    var bookData: BookItemData?
    var deleteIsOpen: Bool = false
    
    init(_ bookData: BookItemData) {
        self.bookData = bookData
    }
}
