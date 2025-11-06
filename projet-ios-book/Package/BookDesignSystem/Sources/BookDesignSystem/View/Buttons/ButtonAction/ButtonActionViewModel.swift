//
//  ButtonActioViewModel.swift
//  BookDesignSystem
//
//  Created by MARIE-MAGDELAINE Kyllian on 05/11/2025.
//

import SwiftUI

@Observable
class ButtonActionViewModel: Identifiable
{
    var action: () ->  ()
    
    init(action: @escaping () -> ()) {
        self.action = action
    }
    
    public func handle()
    {
        return self.action()
    }
}
