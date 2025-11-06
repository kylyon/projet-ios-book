//
//  BookListView.swift
//  initSwiftUI
//
//  Created by ELENGA Dan David on 04/11/2025.
//

import SwiftUI
import BookDesignSystem

struct BookListView: View {
    
    @StateObject var viewModel = BookViewModel();
    
    let backgroundGradient = LinearGradient(
         colors: [Color.blue, Color.black],
         startPoint: .top, endPoint: .bottom)
    
    // Déclaration du corps de ma function
    var body: some View {
        
        VStack {
            
            // Contenu des livres....
               
            if (viewModel.researchBook().count != 0) {
                List(viewModel.researchBook()) { book in
                    BookItem(BookItemData(id: book.id, title: book.title, coverImage: book.coverImage, author: book.author), callbackDelete: viewModel.deleteBook)
                        
                }
                .navigationTitle(Text("Book List"))
                .searchable(text: $viewModel.searchText)
            }
            else
            {
                VStack {
                    Image(systemName: "wind")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: UIScreen.main.bounds.width / 3)
                    Text("Aucun livre dans votre liste")
                }
                .foregroundStyle(Color.white)
            }
               
            
        }
        .onAppear
        {
            viewModel.reload()
        }
        .frame(
            minWidth: 0,
            maxWidth: .infinity,
            minHeight: 0,
            maxHeight: .infinity,
          )
        .background(backgroundGradient.ignoresSafeArea())
    }
}
#Preview {
    BookListView(viewModel :BookViewModel())
}
