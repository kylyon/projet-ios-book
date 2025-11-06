//
//  BooksRowViewModel.swift
//  projet-ios-book
//
//  Created by MARIE-MAGDELAINE Kyllian on 05/11/2025.
//

import SwiftUI

@Observable
class BooksRowViewModel : Identifiable, Codable
{
    var books: [Book] = []
    var label: String
    
    init(books: [Book], label: String) {
        self.books = books.filter( { book in book.category.contains(label)} )
        self.label = label
        print("created")
    }
}
