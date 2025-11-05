//
//  ContentView.swift
//  projet-ios-book
//
//  Created by MARIE-MAGDELAINE Kyllian on 04/11/2025.
//

import SwiftUI
import BookDesignSystem

struct ContentView: View {
    
    
    
    var body: some View {
        
        VStack (spacing:0) {
            
           // Header
           HeaderView()
            
            // TabView
            
            TabView {
                Tab("Home", systemImage: "house.fill") {
                    HomeView()
                }
                
                Tab("My Library", systemImage: "book.fill") {
                    BookListView()
                }
                
                Tab("Account", systemImage: "person.crop.circle.fill") {
                    BookDetailView()
                }
                .badge("!")
                
            } .scrollContentBackground(.hidden)
            
        }
       
        
        
        

}
}

#Preview {
    ContentView()
}
