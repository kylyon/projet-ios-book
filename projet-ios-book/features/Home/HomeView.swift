//
//  HomeView.swift
//  projet-ios-book
//
//  Created by ELENGA Dan David on 05/11/2025.
//

import SwiftUI

struct HomeView: View {
    
    @State var viewModel = BookListViewModel();
    let backgroundGradient = LinearGradient(
        colors: [Color.blue, Color.black],
        startPoint: .top, endPoint: .bottom)
    
    var body: some View {
        ScrollView(){
            
            HomeHeaderView()
            
            HomeContentView()
    
        }
        .frame(minWidth: 0, maxWidth: .infinity)
        .background(backgroundGradient.ignoresSafeArea())
                
    }
}

#Preview {
    HomeView()
}
