//
//  BookListView.swift
//  initSwiftUI
//
//  Created by ELENGA Dan David on 04/11/2025.
//

import SwiftUI
import BookDesignSystem

struct BookListView: View {
    
    @State var viewModel = BookViewModel();
    
    
    // Déclaration du corps de ma function
    var body: some View {
        
        VStack {
            
            // Contenu des livres....
               
                    
                    List(viewModel.researchBook()) { book in
                        BookItem(BookItemData(title: book.title, coverImage: book.coverImage, author: book.author))
                    }
                    .navigationTitle(Text("Book List"))
                    .searchable(text: $viewModel.searchText)
               
            
        }
    }
}
#Preview {
    BookListView(viewModel :BookViewModel())
}
