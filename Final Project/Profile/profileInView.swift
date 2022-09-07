//
//  profileInView.swift
//  Final Project
//
//  Created by Max will on 8/30/22.
//

import SwiftUI

struct profileInView: View {
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
                    Spacer()
                    Image("person")
                        .resizable()
                        .scaledToFit()
                        .foregroundColor(.accentColor)
                        .frame(width: 200, height: 200)
                        .padding()
                        .offset( y: -40)
                    
                    Text("Ahmed")
                        .font(.system(size: 30, weight: .bold, design: .rounded))
                        .offset( y: -40)
                    VStack{
                            
                            Contact
                            .frame(width: 300, height: 45)
                            .background(.ultraThinMaterial)
                            .cornerRadius(10)
                        
                            Term
                            .frame(width: 300, height: 45)
                            .cornerRadius(10)
                    }
                    .padding(.bottom, 20)
                    Spacer()
                    Button {
                        signInSuccess = false
                    } label: {
                        HStack{
                            Text("Logout")
                                .foregroundColor(.primary)
                                .font(.system(size: 20, weight: .medium, design: .rounded))
                                .frame(width: 300, height: 50)
                        }
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
}

struct profileInView_Previews: PreviewProvider {
    static var previews: some View {
        profileInView(signInSuccess: .constant(true))
            .preferredColorScheme(.dark)
    }
}

    extension profileInView {

    private var Term: some View {
        NavigationLink {
            termView()
        } label: {
            Spacer()

            Text("Terms & Conditions")
                .underline()
                .foregroundColor(.primary)
                .font(.system(size: 15, weight: .medium, design: .default))
            Spacer()
        }

    }
        private var Contact: some View {
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
    }

