//
//  BookViewModelDetails.swift
//  initSwiftUI
//
//  Created by ELENGA Dan David on 04/11/2025.
//

import SwiftUI

@Observable
class BookDetailViewModel {
    
    var id: Int = 0
    var book : Book?
    
    var heartsIcon="heart"
    var isFavorite:Bool = false
    

    
    // l'initialisation prend en paramètre deux valeurs ( le 
    init(id: Int = 1) {
        self.id = id
        self.book = booksList.first(where: { $0.id == id })
        let userDefaultListBook: [Int] = UserDefaults.standard.array(forKey: "booksSaved") as? [Int] ?? []
        self.isFavorite = userDefaultListBook.first(where: { $0 == id }) != nil ? true : false
        self.heartsIcon = self.isFavorite ? "heart.fill" : "heart"
    }
    
    func isFavoriteTapped() {
        isFavorite.toggle()
        heartsIcon = isFavorite ? "heart.fill" : "heart"
        
        var tempList = UserDefaults.standard.array(forKey: "booksSaved") as? [Int] ?? []
        
        if isFavorite {
            if let book = self.book {
                tempList.append(book.id)
                UserDefaults.standard.set(tempList, forKey: "booksSaved")
                //print("added")
                //print("\(tempList.count)")
                
            }
            
        }else{
            UserDefaults.standard.set(tempList.filter({ bookId in
                bookId != self.book!.id
            }), forKey: "booksSaved")
            //print("removed")
            //print("\(tempList.count)")
        }
        
        
    }
    
    func reload() -> Void {
        let userDefaultListBook: [Int] = UserDefaults.standard.array(forKey: "booksSaved") as? [Int] ?? []
        self.isFavorite = userDefaultListBook.first(where: { $0 == id }) != nil ? true : false
        self.heartsIcon = self.isFavorite ? "heart.fill" : "heart"
    }
    
}
