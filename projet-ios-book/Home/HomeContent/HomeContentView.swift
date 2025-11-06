//
//  HomeContentView.swift
//  projet-ios-book
//
//  Created by MARIE-MAGDELAINE Kyllian on 06/11/2025.
//

import SwiftUI

struct HomeContentView: View {
    var body: some View {
        VStack {
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 16) {
                    ForEach(booksList) { book in
                        HStack {
                            Image(book.coverImage)
                                .resizable()
                                .scaledToFill()
                                .frame(width: 100, height: 140)
                                .cornerRadius(8)
                                .clipped()
                            
                            VStack(alignment: .leading, spacing: 4) {
                                Text(book.title)
                                    .font(.headline)
                                    .foregroundColor(.white)
                                Text(book.author)
                                    .font(.subheadline)
                                    .foregroundColor(.gray)
                            }
                            .frame(width: 120, alignment: .leading)
                        }
                        .padding(8)
                        .background(Color.black.opacity(0.3))
                        .cornerRadius(10)
                    }
                }
                .padding(.horizontal)
            }
            .scrollContentBackground(.hidden)
            
            BooksRowView("Romans", books: booksList)
            BooksRowView("Science-Fiction", books: booksList)
            BooksRowView("Bande Dessinée", books: booksList)
        }
        
    }
}
