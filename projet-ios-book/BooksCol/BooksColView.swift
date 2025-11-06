//
//  BooksColView.swift
//  projet-ios-book
//
//  Created by ELENGA Dan David on 06/11/2025.
//

import SwiftUI
import BookDesignSystem

struct BooksColView: View {
    @State var booksColViewModel = BooksColViewModel()
    
    let columns = [GridItem(.flexible(), spacing: 42), GridItem(.flexible(), spacing: 42)]
    
    
    var body: some View {
        VStack(alignment: .leading) {
//            TitleSection(label: booksRowViewModel.label)
                
            ScrollView(.vertical, showsIndicators: false) {
                LazyVGrid(columns: columns) {
                    ForEach(booksColViewModel.researchBook())
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
        .searchable(text: $booksColViewModel.searchText)
        .padding(10)
    }
}

#Preview
{
    BooksColView(booksColViewModel : BooksColViewModel())
}
