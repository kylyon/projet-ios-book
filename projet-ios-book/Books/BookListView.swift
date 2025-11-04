//
//  BookListView.swift
//  initSwiftUI
//
//  Created by ELENGA Dan David on 04/11/2025.
//

import SwiftUI


struct BookListView: View {
    
    @State var viewModel = BookViewModel();
    
    
    // Déclaration du corps de ma function
    var body: some View {
        
        VStack {
            
            // Contenu des livres....
                Section(header: Text("Books")) {
                    
                    List(viewModel.researchBook()) { book in
                       HStack {
                           Image(book.coverImage).resizable().frame(width: 50, height: 70)
                            Text(book.title)
                            Spacer()
                       }
                       .badge("\(book.author)")
                       .swipeActions(edge: .leading){
                           
                           //Share data...
                           ShareLink(item: URL(string: "https://developer.apple.com/xcode/swiftui/")!) {
                               Label("Share", systemImage: "square.and.arrow.up")
                           }
                          
                           .tint(.orange)
                           
                           //Delete Data...
                           Button("Delete", systemImage: "delete.left.fill",){
                               viewModel.deleteIsOpen = true
                           }.tint(.red)
                       }
                       .listRowInsets(.init(top: 10, leading: 10, bottom: 10, trailing: 10))
                    }
                    .searchable(text: $viewModel.searchText)
                }
            
        }
         .alert(isPresented: $viewModel.deleteIsOpen)
          {
             Alert(
                     title: Text("Voulez-vous vraiment supprimer ce livre ?"),
                     message: Text("La suppression est irréversible."),
                     primaryButton: .default(
                         Text("Annuler"),
                     ),
                     secondaryButton: .destructive(
                         Text("Effacer")
                     )
                 )
             }
        
      
    }
}
#Preview {
    BookListView(viewModel :BookViewModel())
}
