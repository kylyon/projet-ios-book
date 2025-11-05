//
//  HomeView.swift
//  projet-ios-book
//
//  Created by ELENGA Dan David on 05/11/2025.
//

import SwiftUI

struct HomeView: View {
    
    var body: some View {
        
        // Background gradient
        
        let backgroundGradient = LinearGradient(
             colors: [Color.blue, Color.black],
             startPoint: .top, endPoint: .bottom)
        
        // Declaration du corps de ma function
        
        ZStack
        {
            // Background of body...
            backgroundGradient
                   .ignoresSafeArea()
           // section Card....
            
            ScrollView(){
    
                VStack {
                    Text("Welcome to Book Store")
                        .font(.system(size: 30, weight: .bold, design: .default))
                        .foregroundColor(.white)
                    // Section 1
                    ZStack (alignment: .topLeading){
                        Image("desktop-wallpaper-red-sky-mountains-trees-digital-art-painting-painted-sky")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 375, height: 250)
                            .cornerRadius(20)
                            .overlay(Color.black.opacity(0.4))
                        // Card...
                        VStack(alignment: .leading){
                            Text("About book store")
                                .font(.system(size: 30, weight: .bold, design: .default))
                                .foregroundColor(.white)
                            
                            Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s")
                                .font(.system(size: 18, design: .default))
                                .foregroundColor(.white)
                            
                            Button(action: {}) {
                                Text("Go to books")
                                    .font(.system(size: 12, weight: .bold, design: .default))
                                    .foregroundColor(.white)
                                    .frame(width: 85, height: 50)
                                    .background(Color.black)
                                    .cornerRadius(10)
                            }
                        }
                        .padding()
                        
                    }
                    .padding(10)
                    
                    // Deuxieme section...
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing: 16) {
                            ForEach(books) { book in
                                HStack {
                                    Image(book.coverImage)
                                        .resizable()
                                        .scaledToFill()
                                        .frame(width: 100, height: 140)
                                        .cornerRadius(8)
                                        .clipped()
                                    
                                    VStack(alignment: .leading, spacing: 4) {
                                        Text(book.title)
                                            .font(.headline)
                                            .foregroundColor(.white)
                                        Text(book.author)
                                            .font(.subheadline)
                                            .foregroundColor(.gray)
                                    }
                                    .frame(width: 120, alignment: .leading)
                                }
                                .padding(8)
                                .background(Color.black.opacity(0.3))
                                .cornerRadius(10)
                            }
                        }
                        .padding(.horizontal)
                    }
                    .scrollContentBackground(.hidden)
                    
                    BooksRowView("Romans", books: books)
                    BooksRowView("S-F", books: books)
                    BooksRowView("Bande Dessinée", books: books)
                }
        
            }
            
        }
                
    }
}

#Preview {
    HomeView()
}
