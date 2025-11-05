//
//  BooksRowView.swift
//  projet-ios-book
//
//  Created by MARIE-MAGDELAINE Kyllian on 05/11/2025.
//

import SwiftUI
import BookDesignSystem

struct BooksRowView: View {
    @State var booksRowViewModel: BooksRowViewModel
    
    init(_ label: String, books: [Book])
    {
        self.booksRowViewModel = BooksRowViewModel(books: books, label: label)
    }
    
    var body: some View {
        VStack(alignment: .leading) {
            TitleSection(label: booksRowViewModel.label)
                
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 16) {
                    ForEach(booksRowViewModel.books)
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
            
        }
    }
}

#Preview
{
    ContentView()
}
