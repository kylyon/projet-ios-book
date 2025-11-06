//
//  BookDetailThumbnail.swift
//  projet-ios-book
//
//  Created by MARIE-MAGDELAINE Kyllian on 06/11/2025.
//

import SwiftUI

struct BookDetailThumbnailView: View {
    
    @State var viewModel: BookDetailViewModel
    
    init(viewModel: BookDetailViewModel) {
        self.viewModel = viewModel
    }
    
    var body: some View {
        if let book = viewModel.book {
            Image(book.coverImage)
                .resizable()
                .scaledToFill()
                .frame(width:UIScreen.main.bounds.width, height: UIScreen.main.bounds.height / 2)
                .clipped()
                
        }
    }
}

#Preview {
    BookDetailView(viewModel :BookDetailViewModel(id:1))
}
