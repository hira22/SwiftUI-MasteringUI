//
//  AuthenticationView.swift
//  BluePrtints
//
//  Created by hiraoka on 2021/01/21.
//

import SwiftUI

struct AuthenticationView: View {
    
    @State private var email: String = ""
    @State private var password: String = ""
    
    var body: some View {
        ZStack {
            Color.backgroundColor
                .edgesIgnoringSafeArea(.top)
            
            VStack(spacing: 70) {
                Spacer()
                
                Circle()
                    .fill(Color.accentColor)
                    .frame(height: 120)
                    .offset(y: 20)
                
                Spacer()
                
                Group {
                    VStack(alignment: .leading) {
                        Text("Email Address")
                        HStack {
                            Image(systemName: "envelope")
                            TextField("Email Address", text: $email)
                        }
                    }
                    
                    VStack(alignment: .leading) {
                        Text("Password")
                        HStack {
                            Image(systemName: "lock")
                            SecureField("Password", text: $password)
                        }
                    }
                    
                }
                .padding(.horizontal, 26)
                .foregroundColor(Color.secondary)
                .background(
                    RoundedRectangle(cornerRadius: 30)
                        .frame(height: 100)
                        .shadow(color: Color.black.opacity(0.1),radius: 16, y: 12)
                )
                
                
                Capsule()
                    .fill(Color.accentColor)
                    .overlay(
                        Button(action:{},
                               label: { Text("Login") })
                            .font(Font.system(size: 18, weight: .bold, design: .rounded))
                            .foregroundColor(Color.foregroundColor)
                    )
                    .frame(height: 60.0)
                
                HStack {
                    Button(action: {}, label: {
                        Text("Signup")
                    })
                    
                    Spacer()
                    
                    Button(action: {}, label: {
                        Text("Forgot Password?")
                    })
                }
                .foregroundColor(Color.secondary)
                .font(Font.system(size: 16, weight: .regular, design: .rounded))
                .padding(.horizontal)
                .offset(y: -40)
                
                Spacer()
                
            }
            .foregroundColor(Color.foregroundColor)
            .padding()
        }
        
        
    }
}

struct AuthenticationView_Previews: PreviewProvider {
    static var previews: some View {
        AuthenticationView()
    }
}
