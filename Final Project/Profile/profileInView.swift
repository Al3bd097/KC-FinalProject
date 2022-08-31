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
                Text("Hello, Abdullah")
                    .font(.system(size: 30, weight: .medium, design: .serif))
                VStack{
                    
                    RowView(img: "heart", name: "Liked")
                    RowView(img: "terms", name: "Terms & Conditions")
                    RowView(img: "contact", name: "Contact us")
                    
                    Button {
                        signInSuccess = false
                    } label: {
                        HStack{
                            Image("car")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 40, height: 40)
                                .foregroundColor(.red)
                                .padding()
                            Text("Logout")
                                .font(.system(size: 25, weight: .medium, design: .default))
                            Spacer()
                        }
                        
                    }
                    Divider()
                        .frame(width: 350, height: 1)

                    
                }
                .padding()
                
                

            }
        }
    }

    }


struct profileInView_Previews: PreviewProvider {
    static var previews: some View {
        profileInView(signInSuccess: .constant(true))
    }
}
