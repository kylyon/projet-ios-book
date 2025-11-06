//
//  HomeHeaderView.swift
//  projet-ios-book
//
//  Created by MARIE-MAGDELAINE Kyllian on 06/11/2025.
//

import SwiftUI
import BookDesignSystem

struct HomeHeaderView: View {
    var body: some View {
        VStack (spacing:16) {
            Image(systemName: "book.fill").resizable().frame(width: 60, height: 45).foregroundStyle(.yellow)
            Text("\(booksList.count) Ouvrages disponibles")
                .foregroundColor(.white)
        }.padding()
        
        Text("Bienvenue chez  Book Store")
            .font(.system(size: 30, weight: .bold, design: .default))
            .foregroundColor(.white)
        // Section 1
        ZStack (alignment: .topLeading){
            Image("jonathan-francisca-BpbkLACP64M-unsplash")
                .resizable()
                .scaledToFill()
                .frame(width: UIScreen.main.bounds.width - 30, height: 250)
                .overlay(Color.black.opacity(0.4))
                .cornerRadius(20)
            // Card...
            VStack(alignment: .leading, spacing: 20){
                Text("A Propos")
                    .font(.system(size: 30, weight: .bold, design: .default))
                    .foregroundColor(.white)
                
                Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s")
                    .font(.system(size: 18, design: .default))
                    .foregroundColor(.white)
                
                ButtonAction("En apprendre plus", action: {})
                
                /*Button(action: {}) {
                    Text("En apprendre plus")
                        .font(.system(size: 12, weight: .bold, design: .default))
                        .foregroundColor(.white)
                        .frame(width: 150, height: 50)
                        .background(Color.blue)
                        .cornerRadius(10)
                }*/
            }
            .padding()
            
        }
        .padding(10)
        
    }
}
