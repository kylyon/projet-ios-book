//
//  BookListModelView.swift
//  initSwiftUI
//
//  Created by ELENGA Dan David on 04/11/2025.
//

import SwiftUI

@Observable

class BookViewModel {
    
    var searchText: String = "";
    
    var updateIsOpen: Bool = false;
    var deleteIsOpen: Bool = false;
    
    
    
    // Nombre total des livres...
    var booksNumber : Int {
        return books.count
    }
    
    // Ajout un nouveau livre
    func addNewBook(title: String, description: String, coverImage: String, author: String, price: Double, publishedDate: String) {
        
        @State var id:Int = 1+books.count // Incrementation automatique....
        
        books.append(Books(id:id, title: title, description: description, coverImage: coverImage, author: author, price: price, publishedDate: publishedDate))
    }
    
    // Delete Books
    func deleteBook(at index: Int) {
        guard index >= 0 && index < books.count else { return }
        books.remove(at: index)
    }
    
    // Update Books
    
    func updateBook(at index: Int, title: String, description: String, coverImage: String, author: String, price: Double, publishedDate: String) {
        guard index >= 0 && index < books.count else { return }
        books[index].title = title
        books[index].description = description
        books[index].coverImage = coverImage
        books[index].author = author
    }
    
    // Recherche Books
    func researchBook() -> [Books] {
        
        guard !searchText.isEmpty else {
            return books
        }
        
        return books.filter { $0.title.lowercased().contains(searchText.lowercased()) || $0.author.lowercased().contains(searchText.lowercased()) }
    }
    
}

