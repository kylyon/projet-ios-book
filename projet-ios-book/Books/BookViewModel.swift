//
//  BookListModelView.swift
//  initSwiftUI
//
//  Created by ELENGA Dan David on 04/11/2025.
//

import SwiftUI
import Combine

class BookViewModel: ObservableObject {
    
    var searchText: String = "";
    
    var updateIsOpen: Bool = false;
    var deleteIsOpen: Bool = false;
    
    @Published var books: [Book] = []
    
    init() {
        self.searchText = ""
        self.updateIsOpen = false
        self.deleteIsOpen = false
        let userDefaultListBook = UserDefaults.standard.array(forKey: "booksSaved") as? [Int] ?? []
        self.books = booksList.filter({book in userDefaultListBook.contains(book.id) })
    }
    
    
    
    // Nombre total des livres...
    var booksNumber : Int {
        return self.books.count
    }
    
    // Ajout un nouveau livre
    func addNewBook(title: String, description: String, coverImage: String, author: String, price: Double, publishedDate: String) {
        
        @State var id:Int = 1+self.books.count // Incrementation automatique....
        
        self.books.append(Book(id:id, title: title, description: description, coverImage: coverImage, author: author, price: price, publishedDate: publishedDate))
    }
    
    // Delete Books
    func deleteBook(at index: Int)
    {
        guard index >= 0 && self.books.contains(where: { book in book.id == index }) else { return }
        self.books.removeAll(where: { book in book.id == index })
        
        var tempList = UserDefaults.standard.array(forKey: "booksSaved") as? [Int] ?? []
        tempList = tempList.filter({ bookId in
            bookId != index
        })
        UserDefaults.standard.set(tempList, forKey: "booksSaved")
        
        print("deleted")
        print("\(self.books.count)")
    }
    
    // Update Books
    
    func updateBook(at index: Int, title: String, description: String, coverImage: String, author: String, price: Double, publishedDate: String) {
        guard index >= 0 && index < self.books.count else { return }
        self.books[index].title = title
        self.books[index].description = description
        self.books[index].coverImage = coverImage
        self.books[index].author = author
    }
    
    // Recherche Books
    func researchBook() -> [Book] {
        
        guard !searchText.isEmpty else {
            return self.books
        }
        
        return self.books.filter { $0.title.lowercased().contains(searchText.lowercased()) || $0.author.lowercased().contains(searchText.lowercased()) }
    }
    
    func reload() -> Void {
        let userDefaultListBook = UserDefaults.standard.array(forKey: "booksSaved") as? [Int] ?? []
        self.books = booksList.filter({book in userDefaultListBook.contains(book.id) })
        print("reloaded")
        print("\(self.books.count)")
    }
    
}

