//
//  ContentView.swift
//  Raices_Rurales
//
//  Created by Camilo Martinez Gualteros on 4/12/23.
//

import SwiftUI

struct ContentView: View {
    @State private var username = ""
    @State private var password = ""
    @State private var wrongUsername = 0
    @State private var wrongPassword = 0
    @State private var showingLoginScreen = false
    var body: some View {
        GeometryReader { geometry in
                    VStack {
                        Image("logo")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 150, height: 150)
                            .padding(.vertical,150)
                        Spacer()
                        ZStack{
                            UnevenRoundedRectangle(topLeadingRadius: 50, bottomLeadingRadius: 0, bottomTrailingRadius: 0,
                                topTrailingRadius: 50,
                                style: .continuous)
                            .fill(Color.principal)
                            .frame(width: geometry.size.width, height: 400)
                            VStack{
                                VStack(alignment: .leading){
                                    Text("Bienvenidos")
                                        .foregroundStyle(Color.white)
                                        .font(.system(size: 40))
                                        
                                    Text("a Raices Rurales")
                                        .foregroundStyle(Color.white)
                                        .font(.system(size: 40))
                                }
                                VStack(alignment: .center){
                                    TextField("Email", text:  $username)
                                        .padding(30)
                                        .background(Color.white)
                                        .frame(width: 300, height: 40)
                                        .border(Color.black)
                                        .cornerRadius(20.0)
                                        .overlay(
                                            RoundedRectangle(cornerRadius: 20.0).stroke(.black, lineWidth: 1)
                                        )
                                    SecureField("Pasword", text:  $password)
                                        .padding(20)
                                        .background(Color.white)
                                        .frame(width: 300, height: 40)
                                        .border(Color.black)
                                        .cornerRadius(20.0)
                                        .overlay(
                                            RoundedRectangle(cornerRadius: 20.0).stroke(.black, lineWidth: 1)
                                        )
                                        .padding(20)

                                }
                                VStack{
                                    HStack{
                                        Button("Login"){
                                            
                                        }
                                        .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 40)
                                        .background(Color.white)
                                        .foregroundColor(.black.opacity(0.5))
                                        .cornerRadius(10)
                                        .padding(30)
                                        
                                        Button("Register"){
                                            
                                        }
                                        .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 40)
                                        .background(Color.white)
                                        .foregroundColor(.black.opacity(0.5))
                                        .cornerRadius(10)
                                        .padding(30)
                                    }
                                    Button("Olvidaste tu contraseña?"){
                                        
                                    }
                                    .frame(width: 190, height: 40)
                                    .foregroundColor(.white.opacity(0.5))
                                }
                                
                            }
                        }
                        
                    }
                }
                .edgesIgnoringSafeArea(.all)
    }
}

#Preview {
    ContentView()
}
