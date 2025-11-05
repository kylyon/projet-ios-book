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
<<<<<<< HEAD
                       HStack {
                           Image(book.coverImage).resizable().frame(width: 50, height: 70)
                            Text(book.title)
                            Spacer()
                       }
                       .badge("\(book.author)")
                       .swipeActions(edge: .leading){
                           
                           //Share data...
                           ShareLink(item: URL(string: "https://developer.apple.com/xcode/swiftui/")!) {
                               Label("Share", systemImage: "square.and.arrow.up")
                           }
                          
                           .tint(.orange)
                           
                           //Delete Data...
                           Button("Delete", systemImage: "delete.left.fill",){
                               viewModel.deleteIsOpen = true
                           }.tint(.red)
                       }
                       .listRowInsets(.init(top: 10, leading: 10, bottom: 10, trailing: 10))
                       
=======
                        BookItem(BookItemData(title: book.title, coverImage: book.coverImage, author: book.author))
>>>>>>> ac9ec7f (added: Component BookItem, BookCard)
                    }
                    .navigationTitle(Text("Book List"))
                    .searchable(text: $viewModel.searchText)
               
            
        }
    }
}
#Preview {
    BookListView(viewModel :BookViewModel())
}
