//
//  AccountStatisticsView.swift
//  projet-ios-book
//
//  Created by MARIE-MAGDELAINE Kyllian on 06/11/2025.
//

import SwiftUI
import BookDesignSystem

struct AccountStatisticsView: View {
    @State var accountViewModel: AccountViewModel
    
    var body: some View {
        SectionCard
        {
            TitleSection(label: "Vos stats")
            HStack(spacing: 30) {
                StatistiqueField(label: "livres lue", value: 14)
                StatistiqueField(label: "livres à lire", value: 26)
                
                
            }
        }
    }
}
