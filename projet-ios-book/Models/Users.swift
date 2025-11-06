//
//  Users.swift
//  initSwiftUI
//
//  Created by ELENGA Dan David on 03/11/2025.
//
import SwiftUI

@Observable

class Users {
    var pseudo : String = "virgie"
    var name:String="Efira "
    var firstName:String="Virginie"
    var photo:String="Virginie-Efira-on-connait-le-secret-de-son-carre-ondule"
    
    var displayName: String {
        name+firstName
    }
    
}
 
