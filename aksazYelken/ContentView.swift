//
//  ContentView.swift
//  aksazYelken
//
//  Created by MURAT HASIRCI on 12.01.2024.
//

import SwiftUI

struct ContentView: View {
    @State var index = 0
    @Namespace var name
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            
            
            HStack(spacing: 0) {
                Button {
                    
                    withAnimation(.spring) {
                        index = 0
                    }
                    
                    
                    
                } label: {
                    VStack{
                        Text("Giriş Yap").font(.system(size: 20)).fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                            .foregroundColor(index == 0 ? .black : .gray)
                        ZStack {
                            Capsule().foregroundColor(.black).opacity(0.08).frame(height: 5)
                            if index == 0{
                                Capsule().foregroundColor(.blue).frame(height: 5)
                                    .matchedGeometryEffect(id: "Tab", in: name)
                            }
                        }
                    }
                    
                }
                Button {
                    
                    withAnimation(.spring) {
                        index = 1
                    }
                    
                    
                    
                } label: {
                    VStack{
                        Text("Kayıt Ol").font(.system(size: 20)).fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                            .foregroundColor(index == 1 ? .black : .gray)
                        ZStack {
                            Capsule().foregroundColor(.black).opacity(0.08).frame(height: 5)
                            if index == 1{
                                Capsule().foregroundColor(.blue).frame(height: 5)
                                    .matchedGeometryEffect(id: "Tab", in: name)
                            }
                        }
                    }
                    
                }
                
            }.padding(.top, 30)
            
            if index == 0 {
                Login()
            }else{
                SignUp()
            }
            
            Spacer()
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
