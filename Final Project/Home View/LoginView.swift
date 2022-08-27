//
//  homeScreen.swift
//  Final Project
//
//  Created by Max will on 8/26/22.
//

import SwiftUI

struct LoginView: View {
    @State private var username = ""
    @State private var password = ""
    @State private var wrongUsername = 0
    @State private var wrongPassword = 0
    @State private var showingLoginScreen = false

    var body: some View {
        NavigationView {
            ZStack{
                Color.white.ignoresSafeArea()
                VStack {
                    Image("car")
                        .resizable()
                        .scaledToFit()
                    .frame(width: 350, height: 400)
                    .padding()
                    .offset( y: -30)
                    Spacer()
                }
                VStack{
                    VStack{
                    Spacer()
                    HStack {
                        Text("Let's")
                            .font(.system(size: 50, weight: .medium, design: .default))
                            .padding()
                        Spacer()
                    }
                    .offset(y: 50)
                    HStack {
                        Text("Get")
                            .font(.system(size: 50, weight: .medium, design: .default))
                            .padding()
                        Text("Started!")
                            .font(.system(size: 50, weight: .medium, design: .default))
                            .foregroundColor(.cyan)
                            .offset(x: -10, y: 1)
                        Spacer()
                    }
                    }
                    .offset(y: 15)
                    VStack{
                    TextField("Username", text: $username)
                        .padding()
                        .frame(width: 350, height: 60)
                        .background(.gray.opacity(0.1))
                        .cornerRadius(24)
                        .border(.red, width: CGFloat(wrongUsername))
                    TextField("Password", text: $password)
                        .padding()
                        .frame(width: 350, height: 60)
                        .background(.gray.opacity(0.1))
                        .cornerRadius(24)
                        .border(.red, width: CGFloat(wrongPassword))

                    }
                    .offset( y: 20)
                    NavigationLink(destination: ContentView(), label: {
                        Text("Continue")
                            .foregroundColor(.white)
                            .frame(width: 350, height: 70)
                            .background(.blue)
                            .clipShape(RoundedRectangle(cornerRadius: 24))
                            .padding()
                    })
                    .offset( y: 40)
                    

                }
                .padding()
                .offset(y: -50)
                
                
            }
            .navigationBarHidden(true)
        }
    }
    
    func authenticateUser(username: String, password: String) {
        if username.lowercased() == "Mario2021" {
            wrongUsername = 0
            if password.lowercased() == "Abc123" {
                wrongPassword = 0
                showingLoginScreen = true
            } else {
                wrongPassword = 2
            }
        } else {
            wrongUsername = 2
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
