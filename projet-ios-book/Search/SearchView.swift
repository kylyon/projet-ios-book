//
//  SearchView.swift
//  projet-ios-book
//
//  Created by ELENGA Dan David on 06/11/2025.
//
import SwiftUI

struct SearchView: View {
    
    @State var viewModel = BooksColViewModel();
    
    let backgroundGradient = LinearGradient(
        colors: [Color.blue, Color.black],
        startPoint: .top, endPoint: .bottom)
    
    var body: some View {
        
        NavigationStack {
            ZStack(alignment: .top) {
                
                backgroundGradient
                    .ignoresSafeArea()
                
                VStack(spacing:0) {
                    BooksColView()
                }
            }
        }
        
    }
}

#Preview {
    SearchView(viewModel : BooksColViewModel())
}
