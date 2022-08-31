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
    
    var body: some View {
        VStack{
        Text("Send us an Email")
                .font(.system(size: 30, weight: .bold, design: .rounded))
        TextField("Name", text: $name)
                .padding()
                .frame(width: 350, height: 50)
                .background(.gray.opacity(0.2))
                .cornerRadius(10)
                .border(.red, width: CGFloat(emptyN))
            
        TextField("Email", text: $email)
                .padding()
                .frame(width: 350, height: 50)
                .background(.gray.opacity(0.2))
                .cornerRadius(10)
                .border(.red, width: CGFloat(emptyE))

        TextField("Description", text: $description)
                .padding()
                .frame(width: 350, height: 200, alignment: .top)
                .background(.gray.opacity(0.2))
                .cornerRadius(10)
                .border(.red, width: CGFloat(emptyD))
            Divider()
                .frame(width: 360)
                .padding(40)
            Text("Or")
        }
        
    }
}

struct contactUsView_Previews: PreviewProvider {
    static var previews: some View {
        contactUsView()
    }
}
