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
                Color("accent").ignoresSafeArea()
                Circle()
                    .fill(Color.black)
                    .frame(width: 600, height: 600)
                    .shadow(radius: 45)
                VStack{
                VStack{
                    Spacer()
                    Image("person")
                        .resizable()
                        .scaledToFit()
                        .foregroundColor(.accentColor)
                        .frame(width: 200, height: 200)
                        .padding()
                        .offset( y: -40)
                  
                    contact
                    .frame(width: 300, height: 45)
                    .background(.ultraThinMaterial)
                    .cornerRadius(10)
                
                    terms
                    .frame(width: 300, height: 45)
                    .cornerRadius(10)
                    Spacer()
                }
                .padding(.bottom, 20)
                
                sheet
                    .background(.black)
                    .cornerRadius(10)
                    .shadow(radius: 15)
                }
            }
            .navigationBarHidden(true)
            ZStack {
                VStack {
                    HStack {
                        Image("logo")
                                .resizable()
                                .scaledToFit()
                            .frame(width: 120, height: 80)
                        Spacer()
                    }
                    Spacer()
                }
                .frame(width: 420)
            }
        }
    }
}

struct profileOutView_Previews: PreviewProvider {
    static var previews: some View {
        profileOutView(signInSuccess: .constant(false))
    }
}
extension profileOutView {
    
private var terms: some View {
    NavigationLink {
        termView()
    } label: {
        Spacer()
        
        Text("Terms & Conditions")
            .underline()
            .foregroundColor(.white)
            .font(.system(size: 15, weight: .medium, design: .default))
        Spacer()
    }
    
}
    private var contact: some View {
        NavigationLink {
            contactUsView()
        } label: {
            Spacer()
            Image("contact")
                .resizable()
                .scaledToFit()
                .frame(width: 40, height: 40)
                .foregroundColor(.red)
                .padding(3)
            Text("Contact Us")
                .foregroundColor(.primary)
                .font(.system(size: 25, weight: .medium, design: .default))
            Spacer()
        }
        
    }
    private var sheet: some View {
        Button {
            showingSheet.toggle()
        } label: {
            Text("Sign In")
                .foregroundColor(.white)
                .font(.system(size: 20, weight: .medium, design: .rounded))
                .frame(width: 300, height: 50)
        }
               .sheet(isPresented: $showingSheet) {
                       ZStack{
                    Color.init("basic")
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
    }
}

