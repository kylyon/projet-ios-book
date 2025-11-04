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
    var book: Book?
    
    init(bookID: Int) {
        self.book = booksArray.first(where: { $0.id == bookID})
    }
}
