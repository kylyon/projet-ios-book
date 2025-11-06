//
//  BooksColView.swift
//  projet-ios-book
//
//  Created by ELENGA Dan David on 06/11/2025.
//

import SwiftUI
import BookDesignSystem

struct BooksColView: View {
    @State var booksColViewModel: BooksColViewModel
    
    let columns = [GridItem(.flexible(), spacing: 42), GridItem(.flexible(), spacing: 42)]
    
    init( books: [Book])
    {
        self.booksColViewModel = BooksColViewModel(books: books)
    }
    
    var body: some View {
        VStack(alignment: .leading) {
//            TitleSection(label: booksRowViewModel.label)
                
            ScrollView(.vertical, showsIndicators: false) {
                LazyVGrid(columns: columns) {
                    ForEach(booksColViewModel.books)
                    { book in
                        NavigationLink(destination: BookDetailView(viewModel: BookDetailViewModel(id: book.id))) {
                            BookCard(BookCardData(title: book.title, description: book.description, coverImage: book.coverImage, author: book.author, publishedDate: book.publishedDate))
                        }
                        .foregroundColor(Color.primary)
                    }
                }
                .scrollTargetLayout()
                
            }
            .scrollTargetBehavior(.viewAligned)
            .contentMargins(20)
            .scrollContentBackground(.hidden)
            
        }.padding(10)
    }
}

#Preview
{
    BooksColView(books: booksList)
}
