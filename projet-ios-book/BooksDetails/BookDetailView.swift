//
//  BookListView.swift
//  initSwiftUI
//
//  Created by ELENGA Dan David on 04/11/2025.
//

import SwiftUI

struct BookDetailView: View {
    
    @State var viewModel = BookDetailViewModel();
    let backgroundLenear =
    (
        LinearGradient (
            colors:
                [Color.blue, Color.purple],
            startPoint: .leading,
            endPoint: .trailing
        )
    )
    
    // Declaration du corps de ma function
    var body: some View {
        
        VStack (spacing: 30) {
            
            if let book = viewModel.book {
                
                // Title
                HStack {
                    Text(book.title).font(.title)
                    Spacer()
                }
                // left && right content
                HStack (alignment: .top){
                    // Header....
                    VStack (spacing:16) {
                            
                            Image(book.coverImage).scaledToFit()
                        
                            VStack (alignment: .leading, spacing: 10) {
                                Text("Auteur :\(book.author)").font(.caption)
                                Text("Date de publication :\(book.publishedDate)").font(.caption)
                                
                                //Prix de l'article....
                                HStack {
                                    Text("Prix :")
                                    Text("\(book.price, format: .currency(code: "EUR"))")
                                        .font(.system(size: 16, weight: .bold))
                                }
                            }
                        }
                        
                        Spacer()
                    // Description....
                    VStack (alignment: .center, spacing: 18) {
                        
                        Text(book.description)
                            .font(.system(size: 16, weight: .light))
                           
                           // Bouton d'action ....
                           HStack {
                                
                                //Ajout dans la carte
                               
                                Button("Add cart", systemImage: "cart",){
                                }.tint(.blue).font(.system(size: 16))
                               
                               // partager l'article
                               
                               ShareLink(item: URL(string: "https://developer.apple.com/xcode/swiftui/")!) {
                                   Label("Share", systemImage: "square.and.arrow.up")
                                       .font(.system(size: 16))
                               }
                            }
                        }
                }
                
                // More information about description...
                VStack (spacing:18){
                    
                    HStack  {
                        Text("Description").font(.title2)
                        Spacer()
                    }
                    
                    Text(book.description)
                        .font(.system(size: 20, weight: .light))
                    
                }
                
                
            }
        }.background(backgroundLenear)
    }
}

#Preview {
    BookDetailView(viewModel :BookDetailViewModel(id:1))
}
