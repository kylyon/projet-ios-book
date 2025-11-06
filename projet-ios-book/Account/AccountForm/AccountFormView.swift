//
//  AccountFormView.swift
//  projet-ios-book
//
//  Created by MARIE-MAGDELAINE Kyllian on 06/11/2025.
//

import SwiftUI
import BookDesignSystem

struct AccountFormView: View {
    @State var accountViewModel: AccountViewModel
    
    init(accountViewModel: AccountViewModel) {
        self.accountViewModel = accountViewModel
    }
    
    var body: some View {
        if accountViewModel.isOpen {
            SectionCard {
                TitleSection(label: "Modifier vos infos")
                CustomTextField("Pseudo",text:$accountViewModel.user.pseudo)
                CustomTextField("Nom",text:$accountViewModel.user.name)
                CustomTextField("Prénom",text:$accountViewModel.user.firstName)
                ButtonAction("Enregistrer", action: { accountViewModel.isOpen.toggle() })
                
            }
        }
    }
}

