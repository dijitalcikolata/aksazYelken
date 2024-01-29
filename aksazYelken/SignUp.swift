//
//  SignUp.swift
//  aksazYelken
//
//  Created by MURAT HASIRCI on 12.01.2024.
//

import SwiftUI
import FirebaseAuth

struct SignUp: View {
    @State var mail = ""
    @State var pass = ""
    
    var body: some View {
        VStack{
            Text("Üye Ol").padding()
            TextField("mail", text: $mail)
                .padding()
                .background(Color.white).cornerRadius(15)
                .shadow(color: .black.opacity(0.4), radius: 10)
                .padding()
            TextField("pass", text: $pass)
                .padding()
                .background(Color.white).cornerRadius(15)
                .shadow(color: .black.opacity(0.4), radius: 10)
                .padding()
            Button("KAYIT") {
                kayit()
            }
        }
        
        
        
    }
    
    func kayit(){
        Auth.auth().createUser(withEmail: mail, password: pass){ (user, error) in
            if error != nil {
             print("Kayıt Başarısız")
            }else{
                print("Kayıt başarılı")
            }
        }
    }
}

#Preview {
    SignUp()
}
