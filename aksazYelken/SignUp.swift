//
//  SignUp.swift
//  aksazYelken
//
//  Created by MURAT HASIRCI on 12.01.2024.
//

import SwiftUI

struct SignUp: View {
    @State var name = ""
    
    var body: some View {
        VStack{
            Text("Üye Ol").padding()
            TextField("ad", text: $name)
                .padding()
                .background(Color.white).cornerRadius(15)
                .shadow(color: /*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/.opacity(0.4), radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                .padding()
            TextField("soyad", text: $name)
                .padding()
                .background(Color.white).cornerRadius(15)
                .shadow(color: /*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/.opacity(0.4), radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                .padding()
                
        }
    }
}

#Preview {
    SignUp()
}
