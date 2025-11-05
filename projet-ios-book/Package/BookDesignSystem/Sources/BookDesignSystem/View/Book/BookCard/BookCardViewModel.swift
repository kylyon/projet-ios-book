//
//  BookCardViewModel.swift
//  BookDesignSystem
//
//  Created by MARIE-MAGDELAINE Kyllian on 05/11/2025.
//

import SwiftUI

@Observable
class BookCardViewModel
{
    var bookData: BookCardData?
    
    init(bookData: BookCardData) {
        self.bookData = bookData
    }
}
