//
//  BookCard.swift
//  BookDesignSystem
//
//  Created by MARIE-MAGDELAINE Kyllian on 05/11/2025.
//

import SwiftUI

public struct BookCard: View {
    @State var bookCardViewModel: BookCardViewModel
    
    public init(_ bookData: BookCardData) {
        self.bookCardViewModel = BookCardViewModel(bookData: bookData)
    }
    
    public var body: some View {
        if let book = bookCardViewModel.bookData
        {
            VStack(spacing: 0)
            {
                Image(book.coverImage)
                    .resizable()
                    .scaledToFill()
                    .frame( width: 200, height: 120)
                    .clipped()
                    
                
                VStack(alignment: .leading) {
                    Text(book.title)
                        .multilineTextAlignment(.leading)
                        .font(.system(size: 20))
                        .bold()
                    HStack {
                        Text(book.author)
                            .multilineTextAlignment(.leading)
                            .font(.system(size: 12))
                        Text(Date.now.formatted(date: .numeric, time: .omitted))
                            .multilineTextAlignment(.leading)
                            .font(.system(size: 12))
                    }
                    Text(book.description)
                        .multilineTextAlignment(.leading)
                        .foregroundStyle(Color("TextSecondaryColor", bundle: .module))
                        
                    Spacer()
                }
                .padding()
                .frame(minWidth: 200, minHeight: 150, maxHeight: 150)
                .background(Color("CardBackground", bundle: .module))
                .foregroundStyle(Color("TextPrimaryColor", bundle: .module))
            }
            .clipShape(RoundedRectangle(cornerRadius: 10))
            .shadow(color: Color("CardBackgroundShadow", bundle: .module), radius: 8, x: 0, y: 5)
            .frame(minWidth: 200, maxWidth: 200)
        }
        
    }
}

#Preview {
    BookCard(BookCardData(title: "Titre", description: "Petite description stp", coverImage: "mj", author: "Moi artiste", publishedDate: "2025-11-05"))
}
