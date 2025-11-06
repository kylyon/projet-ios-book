//
//  BookDetailInformationView.swift
//  projet-ios-book
//
//  Created by MARIE-MAGDELAINE Kyllian on 06/11/2025.
//

import SwiftUI

struct BookDetailInformationView: View {
    @State var viewModel: BookDetailViewModel
    
    init(viewModel: BookDetailViewModel) {
        self.viewModel = viewModel
    }
    
    var body: some View {
        
        if let book = viewModel.book {
            VStack(alignment: .leading) {
                Text("\(book.title)").font(.system(size: 36, weight: .bold))
                    .foregroundColor(.white)
                
                Text("Auteur : \(book.author)")
                    .font(.caption)
                    .foregroundColor(.white)
                
                Text("Date de publication : \(book.publishedDate)")
                    .font(.caption)
                    .foregroundColor(.white)
            }
        }
    }
}
