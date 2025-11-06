//
//  UserView.swift
//  initSwiftUI
//
//  Created by ELENGA Dan David on 03/11/2025.
//
import SwiftUI

struct AccountView: View {
    
    @State var user = Users();
    @State var isOpen = false;
    
    var body: some View {
        
        HStack (alignment: .top, spacing: 150,){
            Text("Profil")
                .font(.title)
                .bold()
            
            Button("Update",systemImage: "pencil"){
                isOpen = !isOpen
            }.buttonStyle(.borderedProminent)
            
        }
        
        VStack {
            
            Image(user.photo)
                .resizable()
                .scaledToFit()
                .frame(height: 100)
                .frame(width: 100)
                .clipShape(Circle())
            VStack{
                Text(String(user.pseudo)).font(.title).textScale(.secondary)
                Text(String(user.displayName))
            }
            
        }
        .padding()
        
        
        if isOpen {
            
            HStack {
                
                TextField("Nom",text:$user.name)
                    .textFieldStyle(.roundedBorder)
                TextField("Firstname",text:$user.firstName)
                    .textFieldStyle(.roundedBorder)
                
            }
            .padding()
        }
        
    }
}

#Preview {
    AccountView(user: Users())
}

