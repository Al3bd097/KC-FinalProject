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
                Color.accentColor.ignoresSafeArea()
                Circle()
                    .fill(Color.init("basic"))
                    .frame(width: 600, height: 600)
                Image("logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 270, height: 300)
                    .offset(x: -145,y: -390)
                VStack{
                    Spacer()
                    Image("person")
                        .resizable()
                        .scaledToFit()
                        .foregroundColor(.accentColor)
                        .frame(width: 200, height: 200)
                        .padding()
                        .offset( y: -40)
                    HStack{
                            Term
                                .frame(width: 195, height: 180)
                                .background(.ultraThinMaterial)
                                .clipShape(Circle())
                                .offset(y: -30)
                            Contact
                                .frame(width: 195, height: 180)
                                .background(.ultraThinMaterial)
                                .clipShape(Circle())
                                .offset(y: -30)
                    }
                    
                    Button {
                        signInSuccess = false
                    } label: {
                        HStack{
                            Image("car")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 40, height: 40)
                                .foregroundColor(.red)
                                .padding(3)
                            Text("Logout")
                                .foregroundColor(.primary)
                                .font(.system(size: 20, weight: .medium, design: .rounded))
                                .frame(width: 100, height: 50)
                        }
                        .background(.ultraThinMaterial)
                        .cornerRadius(10)
                    }
                    Spacer()
            }
            .navigationBarHidden(true)
        }
    }

    }
}

struct profileInView_Previews: PreviewProvider {
    static var previews: some View {
        profileInView(signInSuccess: .constant(true))
    }
}

    extension profileInView {

    private var Term: some View {
        NavigationLink {
            termView()
        } label: {
            Spacer()
            Image(systemName: "book.closed.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 40, height: 40)
                .foregroundColor(.primary)
                .padding(3)
            Text("Terms & Conditions")
                .foregroundColor(.primary)
                .font(.system(size: 25, weight: .medium, design: .default))
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
                    .foregroundColor(.black)
                    .font(.system(size: 25, weight: .medium, design: .default))
                Spacer()
            }

        }
    }

