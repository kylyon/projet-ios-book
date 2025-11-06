//
//  ContentView.swift
//  projet-ios-book
//
//  Created by MARIE-MAGDELAINE Kyllian on 04/11/2025.
//

import SwiftUI
import BookDesignSystem

struct ContentView: View {
    
    @State private var selectedTabIndex = 0
    
    
    var body: some View {
        
        VStack (spacing:0) {
            
           // Header
           //HeaderView()
            
            // TabView
            
            TabView (selection: $selectedTabIndex ) {
                Tab("Home", systemImage: "house.fill", value: 0) {
                    NavigationView{
                        HomeView()
                    }
                }
                
                Tab("My Library", systemImage: "book.fill", value: 1) {
                    BookListView()
                }
                
                Tab("Search", systemImage: "magnifyingglass",value: 2) {
                    
                    SearchView()
                }
                
                Tab("Account", systemImage: "person.crop.circle.fill", value:3) {
                    AccountView()
                }
                .badge("!")
                
            } .scrollContentBackground(.hidden)
            
        
        }
    }
}

#Preview {
    ContentView()
}
