//
//  BookListView.swift
//  initSwiftUI
//
//  Created by ELENGA Dan David on 04/11/2025.
//

import SwiftUI

struct BookDetailView: View {
    
    @State var viewModel = BookDetailViewModel();
    @State var heartsIcon="heart"
    @State var isFavorite:Bool = false
    
    let backgroundGradient = LinearGradient(
        colors: [Color.blue, Color.black],
        startPoint: .top, endPoint: .bottom)
    
    
    func isFavoriteTapped() {
        isFavorite.toggle()
        heartsIcon = isFavorite ? "heart.fill" : "heart"
    }
    
    // Declaration du corps de ma function
    var body: some View {
        
        ZStack(alignment: .top) {
            
            // Background of body...
            backgroundGradient
                .ignoresSafeArea()
            if let book = viewModel.book {
                VStack (spacing: 30) {
                    
                    Image(viewModel.book!.coverImage).resizable().frame(width:UIScreen.main.bounds.width, height: 420)
                    HStack {
                        Text("\(book.title)").font(.system(size: 36, weight: .bold))
                            .foregroundColor(.white)
                        Spacer()
                    }.padding(10)
                    
                    // Corps du document...
                    VStack (alignment: .leading, spacing: 10) {
                        
                        Text("Auteur : \(book.author)")
                            .font(.caption)
                            .foregroundColor(.white)
                        
                        Text("Date de publication : \(book.publishedDate)")
                            .font(.caption)
                            .foregroundColor(.white)
                        
                        //Prix de l'article....
                        HStack {
                            Text("Prix :").foregroundColor(.white)
                            
                            Text("\(book.price, format: .currency(code: "EUR"))")
                                .font(.system(size: 16, weight: .bold))
                                .foregroundColor(.yellow)
                            Spacer()
                            
                            // Bouton d'action ....
                            HStack {
                                
                                //Ajout dans la carte
                                
                                Button("", systemImage:"\(heartsIcon)"){
                                    
                                    isFavoriteTapped()
                                    
                                }.tint(.red).font(.system(size: 20))
                                
                                // partager l'article
                                
                                ShareLink(item: URL(string: "https://developer.apple.com/xcode/swiftui/")!) {
                                    Label("", systemImage: "square.and.arrow.up")
                                        .font(.system(size: 20))
                                }
                            }
                        }
                        
                        // Description....
                        VStack (alignment: .center, spacing: 18) {
                            
                            Text(book.description)
                                .font(.system(size: 16, weight: .light))
                                .foregroundColor(.white)
                        }
                        
                    }.padding(10)
                                        
                }
                .ignoresSafeArea()
            }
            
            
        }
    }
    
}
#Preview {
    BookDetailView(viewModel :BookDetailViewModel(id:1))
}
