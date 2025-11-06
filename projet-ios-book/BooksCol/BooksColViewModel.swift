//
//  BooksRowViewModel.swift
//  projet-ios-book
//
//  Created by MARIE-MAGDELAINE Kyllian on 05/11/2025.
//

import SwiftUI

@Observable
class BooksColViewModel : Identifiable, Codable
{
    
    var books: [Book] = []
    var searchText: String = ""
    
    init(books: [Book]) {
        self.books = books
    }
    
    // Recherche Books
    func researchBook() -> [Book] {
        
        guard !searchText.isEmpty else {
            return self.books
        }
        
        return self.books.filter { $0.title.lowercased().contains(searchText.lowercased()) || $0.author.lowercased().contains(searchText.lowercased()) }
    }
}
