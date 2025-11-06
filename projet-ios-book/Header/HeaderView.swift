//
//  NavigationBarView.swift
//  projet-ios-book
//
//  Created by ELENGA Dan David on 05/11/2025.
//

import SwiftUI


struct HeaderView : View
{
    

    var body: some View {
        HStack{
            
            HStack {
                
                
                Text("Book")
                    .font(.system(size: 35, design: .rounded)).foregroundColor(.white)
                Image(systemName: "book").resizable().frame(width: 28, height: 25).foregroundStyle(.white)
            }
            
            Spacer()
            Image(systemName: "bell.fill")
                .resizable().frame(width: 20, height: 23)
                .foregroundStyle(.white)
        }
        .padding()
        .background(Color.blue)
        
        }

}


#Preview {
    HeaderView()
}

