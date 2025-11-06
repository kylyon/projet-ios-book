//
//  UserView.swift
//  initSwiftUI
//
//  Created by ELENGA Dan David on 03/11/2025.
//
import SwiftUI
import BookDesignSystem

struct AccountView: View {
    
    @State var accountViewModel: AccountViewModel
    
    let backgroundGradient = LinearGradient(
         colors: [Color.blue, Color.black],
         startPoint: .top, endPoint: .bottom)
    
    init() {
        self.accountViewModel = AccountViewModel()
    }
    
    var body: some View {
            
        ScrollView {
            AccountHeaderView(accountViewModel: accountViewModel)
            AccountStatisticsView(accountViewModel: accountViewModel)
            AccountFormView(accountViewModel: accountViewModel)
        }
        .padding()
        .frame(
            minWidth: 0,
            maxWidth: .infinity,
            minHeight: 0,
            maxHeight: .infinity,
          )
        .background(backgroundGradient.ignoresSafeArea())
    }
}

#Preview {
    AccountView()
}

