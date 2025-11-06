//
//  SearchView.swift
//  projet-ios-book
//
//  Created by ELENGA Dan David on 06/11/2025.
//
import SwiftUI

struct SearchView: View {
    
    @State var viewModel = BooksColViewModel(books:booksList);
    
    let backgroundGradient = LinearGradient(
        colors: [Color.blue, Color.black],
        startPoint: .top, endPoint: .bottom)
    
    var body: some View {
        ZStack(alignment: .top) {
            
            // Background of body...
            backgroundGradient
                .ignoresSafeArea()
            
            VStack {
                BooksColView(books: booksList)
            }
            
        }
    }
}
#Preview {
    SearchView(viewModel : BooksColViewModel(books:booksList))
}
