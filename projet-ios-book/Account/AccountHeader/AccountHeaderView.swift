//
//  AccountHeaderView.swift
//  projet-ios-book
//
//  Created by MARIE-MAGDELAINE Kyllian on 06/11/2025.
//

import SwiftUI

struct AccountHeaderView: View {
    @State var accountViewModel: AccountViewModel
    
    init(accountViewModel: AccountViewModel) {
        self.accountViewModel = accountViewModel
    }
    
    var body: some View {
        VStack {
            
            Button {
                accountViewModel.isOpen.toggle()
            }
            label:
            {
                ZStack {
                    Image(accountViewModel.user.photo)
                        .resizable()
                        .scaledToFit()
                        .frame(height: 100)
                        .frame(width: 100)
                        .clipShape(Circle())
                    
                    Image(systemName: "pencil.circle.fill")
                        .position(x: 85, y: 85)
                        .imageScale(.large)
                        .foregroundStyle(.white)
                }
                .frame(width: 100, height: 100)
            }
            
            
            
            VStack{
                Text("@\(accountViewModel.user.pseudo)")
                    .font(.title)
                    .textScale(.secondary)
                Text("\(accountViewModel.user.displayName)")
            }
            .foregroundStyle(Color.white)
            
        }
        .padding()
    }
}
