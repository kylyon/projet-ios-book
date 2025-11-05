//
//  BookItem.swift
//  DesignSystem
//
//  Created by MARIE-MAGDELAINE Kyllian on 04/11/2025.
//

import SwiftUI

public struct BookItem : View {
    @State var bookItemViewModel: BookItemViewModel
    
    /*public init() {
        //self.bookItemViewModel = BookItemViewModel(book: books[0])
    }*/
    
    public init(_ bookData: BookItemData)
    {
        self.bookItemViewModel = BookItemViewModel(bookData)
    }
    
    public var body: some View {
        HStack {
            if let book = bookItemViewModel.bookData {
                HStack {
                    Image(book.coverImage)
                        .resizable()
                        .frame(width: 50, height: 70)
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
                        bookItemViewModel.deleteIsOpen = true
                    }.tint(.red)
                }
            }
        }
        .listRowInsets(.init(top: 10, leading: 10, bottom: 10, trailing: 10))
        .alert(
            "Voulez-vous vraiment supprimer ce livre ?",
            isPresented: $bookItemViewModel.deleteIsOpen,
            presenting: bookItemViewModel.bookData
        ) { details in
            Button(role: .destructive) {
                print("efface")
            } label: {
                Text("Effacer")
            }
            Button(role: .cancel) {
                print("non rien")
            } label: {
                Text("Annuler")
            }
        } message: { details in
            Text("La suppression est irréversible.")
        }
            
    }
}

#Preview {
    /*List(books) { book in
        BookItem(book)
    }*/
}
