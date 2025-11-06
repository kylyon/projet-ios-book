//
//  BookDetailActionView.swift
//  projet-ios-book
//
//  Created by MARIE-MAGDELAINE Kyllian on 06/11/2025.
//

import SwiftUI

struct BookDetailActionView: View {
    
    @State var viewModel: BookDetailViewModel
    
    init(viewModel: BookDetailViewModel) {
        self.viewModel = viewModel
    }
    
    var body: some View {
        // Bouton d'action ....
        HStack {
            
            //Ajout dans la carte
            
            Button("", systemImage:"\(viewModel.heartsIcon)"){
                
                viewModel.isFavoriteTapped()
                
            }.tint(.red).font(.system(size: 20))
            
            // partager l'article
            
            ShareLink(item: URL(string: "https://developer.apple.com/xcode/swiftui/")!) {
                Label("", systemImage: "square.and.arrow.up")
                    .font(.system(size: 20))
            }
        }
    }
}
