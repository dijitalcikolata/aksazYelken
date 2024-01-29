//
//  Login.swift
//  aksazYelken
//
//  Created by MURAT HASIRCI on 12.01.2024.
//

import SwiftUI
import FirebaseAuth

struct Login: View {
    @State var mail = ""
    @State var pass = ""
    @State var xxx = false
    
    
    var body: some View {
    
        VStack {
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
                    giris()
                }
                
                
            }.onAppear{
                Auth.auth().addStateDidChangeListener { auth, user in
                  
                    if user != nil{
                        xxx.toggle()
                    }
                }
        }
            if xxx {
                Text("gggg")
            }else{
                Text("pppp")
            }
        }
        
    }
    func giris(){
        Auth.auth().signIn(withEmail: mail, password: pass){ (user, error) in
            if error != nil {
             print("Giris Başarısız")
//                xxx = false
            }else{
                print("Giris Başarılı")
//                xxx = true
            }
        }
    }
}

#Preview {
    Login()
}
