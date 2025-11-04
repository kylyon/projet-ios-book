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
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
            BookItem()
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
