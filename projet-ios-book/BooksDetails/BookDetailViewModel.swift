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
        self.book = books.first(where: { $0.id == id })
    }
    
    func isFavoriteTapped() {
        isFavorite.toggle()
        heartsIcon = isFavorite ? "heart.fill" : "heart"
        
        var tempList = UserDefaults.standard.array(forKey: "bookSaved") as? [Book] ?? []
        
        if isFavorite {
            tempList.append(self.book!)
            if let contentData = try? JSONEncoder().encode(tempList) {
                UserDefaults.standard.set(contentData, forKey: "bookSaved")
                print("added")
                print("\(tempList.count)")
            }
            
            
        }else{
            UserDefaults.standard.set(tempList.filter({ book in
                book.id != self.book!.id
            }), forKey: "bookSaved")
            print("removed")
            print("\(tempList.count)")
        }
        
        
    }
    
}
