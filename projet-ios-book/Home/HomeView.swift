//
//  HomeView.swift
//  projet-ios-book
//
//  Created by ELENGA Dan David on 05/11/2025.
//

import SwiftUI

struct HomeView: View {
    
    let backgroundGradient = LinearGradient(
        colors: [Color.blue, Color.black],
        startPoint: .top, endPoint: .bottom)
    
    var body: some View {
            
        ScrollView(){

            VStack {
                HomeHeaderView()
                
                // Deuxieme section...
                HomeContentView()
                
            }
    
        }
        .frame(width: UIScreen.main.bounds.width)
        .background(backgroundGradient.ignoresSafeArea())
            
        
                
    }
}

#Preview {
    HomeView()
}
