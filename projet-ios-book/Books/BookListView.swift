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
               
            if (viewModel.researchBook().count != 0) {
                List(viewModel.researchBook()) { book in
                    BookItem(BookItemData(title: book.title, coverImage: book.coverImage, author: book.author))
                }
                .navigationTitle(Text("Book List"))
                .searchable(text: $viewModel.searchText)
            }
            else
            {
                Image(systemName: "wind")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: UIScreen.main.bounds.width / 3)
                Text("Aucun livre dans votre liste")
            }
               
            
        }
    }
}
#Preview {
    BookListView(viewModel :BookViewModel())
}
