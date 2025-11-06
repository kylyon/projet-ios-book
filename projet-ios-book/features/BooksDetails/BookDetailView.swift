//
//  BookListView.swift
//  initSwiftUI
//
//  Created by ELENGA Dan David on 04/11/2025.
//

import SwiftUI

struct BookDetailView: View {
    
    @State var viewModel = BookDetailViewModel();
    
    let backgroundGradient = LinearGradient(
        colors: [Color.blue, Color.black],
        startPoint: .top, endPoint: .bottom)
    
    
    // Declaration du corps de ma function
    var body: some View {

        VStack (spacing: 15) {
            
            BookDetailThumbnailView(viewModel: viewModel)
            BookDetailContentView(viewModel: viewModel)
            Spacer()
                                
        }
        .ignoresSafeArea()
        .onAppear
        {
            viewModel.reload()
        }
        .frame(
            minWidth: 0,
            maxWidth: .infinity,
            minHeight: 0,
            maxHeight: .infinity,
          )
        .background(backgroundGradient.ignoresSafeArea())
            
        
        
    }
    
}
#Preview {
    BookDetailView(viewModel :BookDetailViewModel(id:1))
}
