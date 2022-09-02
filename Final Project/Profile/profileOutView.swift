//
//  general.swift
//  Final Project
//
//  Created by Max will on 8/26/22.
//

import SwiftUI

struct profileView: View {
    
    @State var signInSuccess = false
    
    var body: some View {
        return Group {
            if signInSuccess {
                profileInView(signInSuccess: $signInSuccess)
            }
            else {
                profileOutView(signInSuccess: $signInSuccess)
            }
        }
    }
}

struct profileOutView: View {
    @State private var showingSheet = false
    @State private var username = ""
    @State private var password = ""
    @State private var wrongUsername = 0
    @State private var wrongPassword = 0
    @State var field = "Secure"
    @Binding var signInSuccess: Bool

    var body: some View {
        NavigationView {
            ZStack{
                VStack{
                    HStack{
                        Image("logo")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 200, height: 200)
                            .offset(x: -30, y: -70)
                        Spacer()
                    }
                    Spacer()
                    
                }
                VStack{
                    Image(systemName: "person.circle")
                        .resizable()
                        .scaledToFit()
                        .foregroundColor(.cyan)
                        .frame(width: 100, height: 100)
                        .padding()
                    VStack{
                        
                        RowView(img: "heart", name: "Liked")
                        RowView(img: "terms", name: "Terms & Conditions")
                        
                        NavigationLink {
                            contactUsView()
                        } label: {
                            Image("contact")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 40, height: 40)
                                .foregroundColor(.red)
                                .padding()
                            Text("Contact Us")
                                .foregroundColor(.black)
                                .font(.system(size: 25, weight: .medium, design: .default))
                            Spacer()
                        }
                        Divider()
                            .frame(width: 350, height: 1)
                    }
                    .padding()
                    
                    Button("LogIn") {
                        showingSheet.toggle()
                           }
                           .sheet(isPresented: $showingSheet) {
                        ZStack{
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
                                       SecureField("Password", text: $password)
                                           .padding()
                                           .frame(width: 350, height: 60)
                                           .background(.gray.opacity(0.1))
                                           .cornerRadius(24)
                                           .border(.red, width: CGFloat(wrongPassword))

                                       }
                                       .offset( y: 20)
                                       
                                       Button("Login") {
                            if username.lowercased() == "mario2021" {
                                    wrongUsername = 0
                                    signInSuccess = true
                                    showingSheet.toggle()
                            if password.lowercased() == "abc123" {
                                    wrongPassword = 0
                                                   
                                } else {
                                    wrongPassword = 2
                                            }
                                } else {
                                    wrongUsername = 2
                                        }                    }
                                    .font(.system(size: 25, weight: .medium, design: .default))
                                    .foregroundColor(.white)
                                    .frame(width: 200, height: 50)
                                    .background(.blue)
                                    .cornerRadius(10)
                                    .offset( y: 40)

                                   }
                                   .padding()
                                   .offset(y: -50)
                                   
                               }
                           }
                           .padding()
                           .background(.blue)

                }
            }
            .navigationBarHidden(true)
            
        }
        
            
    }
}

struct profileView_Previews: PreviewProvider {
    static var previews: some View {
        profileOutView(signInSuccess: .constant(false))
        
    }
}

struct RowView: View {
    var img: String
    var name: String
    var body: some View {
        HStack{
            Image(img)
                .resizable()
                .scaledToFit()
                .frame(width: 40, height: 40)
                .foregroundColor(.red)
                .padding()
            Text(name)
                .font(.system(size: 25, weight: .medium, design: .default))
            Spacer()
        }
        Divider()
            .frame(width: 350, height: 1)
    }
}




