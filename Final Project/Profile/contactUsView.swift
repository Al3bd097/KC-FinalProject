//
//  contactUsView.swift
//  Final Project
//
//  Created by Max will on 8/31/22.
//

import SwiftUI

struct contactUsView: View {
  @State var name = ""
  @State var email = ""
  @State var description = ""
  @State var emptyN = 0
  @State var emptyE = 0
  @State var emptyD = 0
  @State var showAlert = false
  @State var missing =  false
  @State var title = ""
  @State var msg = ""
    
    
    var body: some View {
            ZStack {
                Image("logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 300, height: 300)
                    .offset(y: -370)
                VStack{
                    Spacer()
                Text("Send us an Email")
                        .font(.system(size: 30, weight: .bold, design: .rounded))
                TextField("Name", text: $name)
                        .padding()
                        .frame(width: 350, height: 50)
                        .background(.gray.opacity(0.2))
                        .cornerRadius(10)
                        .border(.cyan, width: CGFloat(emptyN))
                    
                TextField("Email", text: $email)
                        .padding()
                        .frame(width: 350, height: 50)
                        .background(.gray.opacity(0.2))
                        .cornerRadius(10)
                        .border(.cyan, width: CGFloat(emptyE))

                TextField("Description", text: $description)
                        .padding()
                        .frame(width: 350, height: 200, alignment: .top)
                        .background(.gray.opacity(0.2))
                        .cornerRadius(10)
                        .border(.cyan, width: CGFloat(emptyD))
                    Button {
                        if name == "" {
                        emptyN = 2
                            title = "Oops!"
                            msg = "It seems you've got missing information"
                            showAlert.toggle()
                        } else if email == "" {
                                emptyE = 2
                            title = "Oops!"
                            msg = "It seems you've got missing information"
                            showAlert.toggle()
                        } else if description == "" {
                            emptyD = 2
                            title = "Oops!"
                            msg = "It seems you've got missing information"
                            showAlert.toggle()
                        } else {
                            title = "Email succesfully sent!"
                            msg = "We will contact you as soon as possible"
                            showAlert.toggle()
                            name = ""
                            email = ""
                            description = ""
                            emptyN = 0
                            emptyE = 0
                            emptyD = 0
                        }
                    } label: {
                        Text("Send")
                            .foregroundColor(.white)
                                .frame(width: 350, height: 50)
                                .background(.cyan.opacity(0.7))
                                .cornerRadius(24)
                    }
                    .alert(isPresented: $showAlert) {
                        Alert(title: Text("\(title)"), message: Text("\(msg)"), dismissButton: .default(Text("Ok!")))
                    }

              
                    Divider()
                        .frame(width: 360)
                        .padding(15)
                    Text("Or")
                        .font(.system(size: 30, weight: .medium, design: .rounded))
                    Text("Live chat with our agents on whatsapp")
                        .font(.system(size: 20, weight: .medium, design: .rounded))
                        .foregroundColor(.gray)
                        .padding(5)
                    
                    Link(destination: URL(string:
                        "https://wa.link/543bqg")!,
                        label: {
                        Label(
                            title: {Text("")},
                            icon: {Image("whatsApp")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 80, height: 80)

                            })
                    })
                }
            }
        }
        
    }
struct contactUsView_Previews: PreviewProvider {
    static var previews: some View {
        contactUsView()
    }
}
