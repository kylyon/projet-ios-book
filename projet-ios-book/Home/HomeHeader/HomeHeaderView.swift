//
//  HomeHeaderView.swift
//  projet-ios-book
//
//  Created by MARIE-MAGDELAINE Kyllian on 06/11/2025.
//

import SwiftUI

struct HomeHeaderView: View {
    var body: some View {
        VStack {
            Text("Welcome to Book Store")
                .font(.system(size: 30, weight: .bold, design: .default))
                .foregroundColor(.white)
            // Section 1
            ZStack (alignment: .topLeading){
                Image("desktop-wallpaper-red-sky-mountains-trees-digital-art-painting-painted-sky")
                    .resizable()
                    .scaledToFill()
                    .frame(width: UIScreen.main.bounds.width - 30, height: 250)
                    .overlay(Color.black.opacity(0.4))
                    .cornerRadius(20)
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
        }
    }
}
