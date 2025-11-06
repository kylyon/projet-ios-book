//
//  AccountViewModel.swift
//  projet-ios-book
//
//  Created by MARIE-MAGDELAINE Kyllian on 06/11/2025.
//

import SwiftUI

@Observable
class AccountViewModel
{
    var user = Users();
    var isOpen = false;
    
    init() {
        self.isOpen = false
        self.user = Users()
    }
}
