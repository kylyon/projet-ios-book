//
//  BookDetailContentView.swift
//  projet-ios-book
//
//  Created by MARIE-MAGDELAINE Kyllian on 06/11/2025.
//

import SwiftUI

struct BookDetailContentView: View {
    
    @State var viewModel: BookDetailViewModel
    
    init(viewModel: BookDetailViewModel) {
        self.viewModel = viewModel
    }
    
    var body: some View {
        VStack {
            if let book = viewModel.book {
                
                // Corps du document...
                VStack (alignment: .leading, spacing: 10) {
                    BookDetailInformationView(viewModel: viewModel)
                    
                    //Prix de l'article....
                    HStack {
                        Text("Prix :").foregroundColor(.white)
                        
                        Text("\(book.price, format: .currency(code: "EUR"))")
                            .font(.system(size: 16, weight: .bold))
                            .foregroundColor(.yellow)
                        Spacer()
                        
                        BookDetailActionView(viewModel: viewModel)
                    }
                    
                    // Description....
                    VStack (alignment: .center, spacing: 18) {
                        
                        Text(book.description)
                            .font(.system(size: 16, weight: .light))
                            .foregroundColor(.white)
                    }
                    
                }.padding(10)
            }
        }
    }
}
