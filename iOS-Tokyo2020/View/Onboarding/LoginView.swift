//
//  LoginView.swift
//  iOS-Tokyo2020
//
//  Created by João Gabriel Biazus de Quevedo on 29/03/21.
//

import SwiftUI

struct LoginView: View {
    
    @State var email: String = " "
    @State private var password: String = ""
    
    let gradientColors: [Color] = [
        Color(red: 32 / 255, green: 43 / 255, blue: 90 / 255),
        Color(red: 58 / 255, green: 127 / 255, blue: 202 / 255),
        Color(red: 46 / 255, green: 170 / 255, blue: 70 / 255),
        Color(red: 248 / 255, green: 169 / 255, blue: 29 / 255),
        Color(red: 237 / 255, green: 30 / 255, blue: 74 / 255)
    ]
    
    var body: some View {
        NavigationView {
            VStack {
                Image("Summer_Olympics")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 163, height: 248, alignment: .top)
                    .padding(.top, -50)
                    .padding(.bottom, 60)
                
                VStack (alignment: .leading){
                    Text("E-mail")
                        .font(.system(size: 12))
                        .offset(x: 6, y: 6)
                    ZStack {
                        Rectangle()
                            .frame(width: 307, height: 43)
                            .foregroundColor(.clear)
                            .background(LinearGradient(gradient: Gradient(colors: gradientColors), startPoint: .leading, endPoint: .trailing))
                            .cornerRadius(11)
                        TextField("", text: $email)
                            .autocapitalization(.none)
                            .frame(width: 302, height: 38, alignment: .center)
                            .background(Color(.white))
                            .cornerRadius(10)
                    }
                    Text("Password")
                        .font(.system(size: 12))
                        .offset(x: 6, y: 6)
                    ZStack {
                        Rectangle()
                            .frame(width: 307, height: 43)
                            .foregroundColor(.clear)
                            .background(LinearGradient(gradient: Gradient(colors: gradientColors), startPoint: .leading, endPoint: .trailing))
                            .cornerRadius(11)
                        SecureField("", text: $password)
                            .autocapitalization(.none)
                            .frame(width: 302, height: 38, alignment: .center)
                            .background(Color(.white))
                            .cornerRadius(10)
                    }
                }
                VStack (alignment: .center){
                    NavigationLink(destination: DestinationPageView()){
                        
                        Text("LOGIN")
                            .font(.system(size: 12))
                            .foregroundColor(.white)
                            .frame(width: 95, height: 39, alignment: .center)
                            .background(Color("Color1"))
                            .cornerRadius(10)
                            .padding(.top, 40)
                            .padding(.bottom, 110)
                        
                    }
                    Text("Forgot my password")
                        .font(.system(size: 10))
                    Text("Don't have an account? Create an account")
                        .font(.system(size: 10))
                }
            }
            .navigationBarTitle("")
            }
        }
    }
    
    
    struct LoginView_Previews: PreviewProvider {
        static var previews: some View {
            LoginView()
        }
    }

