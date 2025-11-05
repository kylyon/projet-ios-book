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

    
    // l'initialisation prend en paramètre deux valeurs ( le 
    init(id: Int = 1) {
        self.id = id
        self.book = books.first(where: { $0.id == id })
    }
    
}
