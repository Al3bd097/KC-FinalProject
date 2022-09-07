//
//  termView.swift
//  Final Project
//
//  Created by Max will on 9/4/22.
//

import SwiftUI

struct termView: View {
    
    var body: some View {
        ZStack{
            Color.black.ignoresSafeArea()
           
            
            ScrollView {
                VStack {
                    HStack {
                        Text("Terms and Conditions")
                            .font(.system(size: 25, weight: .bold, design: .default))
                            .foregroundColor(.white)
                            .padding(.top, 30)
                    }
                    
                    Text("These terms and conditions Agreement set forth the general terms and conditions of your use of the Park mobile application Mobile Applicationor Service and any of its related products and services (collectively, Services This Agreement is legally binding between you (User, You or Your) and this Mobile Application developer (Operator, We, us or our If you are entering into this agreement on behalf of a business or other legal entity, you represent that you have the authority to bind such entity to this agreement, in which case the terms User, you or your shall refer to suchentity. If you do not have such authority, or if you do not agree with the termsof this agreement, you must not accept this agreement and may not access and use the Mobile Application and Services. By accessing and using the Mobile Application and Services, you acknowledge that you have read, understood, and agree to be bound by the terms of this Agreement. You acknowledge that this Agreement is a contract between you and the Operator, even though it is electronic and is not physically signed by you, and it governs  your use of the Mobile Application and Services.")
                        .padding()
                        .frame(width: 400, height: 600)
                        .foregroundColor(.white)
                    
                    HStack {
                        Text("Accounts and Membership")
                            .font(.system(size: 25, weight: .bold, design: .default))      .foregroundColor(.white)
                            .padding()
                        Spacer()
                    }
                    Text("If you create an account in the Mobile Application, you are responsible for maintaining the security of your account and you are fully responsible for all activities that occur under the account and any other actions taken in connection with it. We may, but have no obligation to, monitor and review new accounts before you may sign in and start using the Services. Providing false contact information of any kind may result in the termination of your account. You must immediately notify us of any unauthorized uses of your account or any other breaches of security. We will not be liable for any acts or omissions by you, including any damages of any kind incurred as a result of such acts or omissions. We may suspend, disable, or delete your account (or any part thereof if we determine that you have violated any provision of this Agreement or that your conduct or content would tend to damage our reputation and goodwill. If we delete your account for the foregoing reasons, you may not re-register for our Services. We may block your email address and Internet protocol address to prevent further registration.")
                        .padding()
                        .frame(width: 400, height: 600)
                        .foregroundColor(.white)
                    HStack{
                        Text("Links to other resources")
                            .font(.system(size: 25, weight: .bold, design: .default))
                            .foregroundColor(.white)
                            .padding()
                        Spacer()
                    }
                    Text("Although the Mobile Application and Services may link to other resources (such as websites, mobile applications, etc.), we are not, directly or indirectly, implying any approval, association, sponsorship, endorsement, or affiliation with any linked resource, unless specifically stated herein. We are not responsible for examining or evaluating, and we do not warrant the offerings of, any businesses or individuals or the content of their resources. We do not assume any responsibility or liability for the actions, products, services, and content of any other third parties. You should carefully review the legal statements and other conditions of use of any resource which you access through a link in the Mobile Application. Your linking to any other off-site resources is at your own risk")
                        .padding()
                        .frame(width: 400, height: 380)
                        .foregroundColor(.white)
                    
                    HStack{
                        Text("Changes and amendments")
                            .font(.system(size: 25, weight: .bold, design: .default))
                            .foregroundColor(.white)
                            .padding()
                        Spacer()
                    }
                    
                    Text("We reserve the right to modify this Agreement or its terms related to the Mobile Application and Services at any time at our discretion. When we do, we will revise the updated date at the bottohn of this page. We may also provide notice to you in other ways at our discretion, such as through the contact information you have provided. An updated version of this Agreement will be effective immediately upon the posting of the revised Agreement unless otherwise specified. Your continuer  use of the Mobile Application and Services after the effective date of the revised Agreement (or such other act specified at that time) will constitute your consent to those changes.")
                    
                        .padding()
                        .frame(width: 400, height: 320)
                        .foregroundColor(.white)
                    
                    HStack{
                        Text("Acceptance of these terms")
                            .font(.system(size: 25, weight: .bold, design: .default))                                .foregroundColor(.white)
                            .padding()
                        Spacer()
                    }
                    VStack{
                    Text("You acknowledge that you have read this Agreement and agree to all its terms and conditiohs. By accessing and using the Mobile Application and Services you agree to be bound by this Agreement. If you do not agree to abide by the terms of this Agreement, you are not authorized to access or use the Mobile Application and Services. This terms and conditions policy wascreated with the help of WebsitePolicies.")
                        .padding()
                        .frame(width: 400, height: 200)
                        .foregroundColor(.white)
                    HStack{
                        Text("Contacting us")
                            .font(.system(size: 25, weight: .bold, design: .default))
                            .foregroundColor(.white)
                            .padding()
                        Spacer()
                    }
                    Text("If you have any question, concerns, or complaints regarding this Agreement, we encourage you to contact us using")
                            .padding()
                            .frame(width: 400, height: 100)
                            .foregroundColor(.white)
                        
                        if let url = URL(string: "contact@park.com") {
                            Link("contact@park.com", destination: url)
                                .font(.headline)
                                .tint(.blue)
                    }
                }
                .padding()
            }
        }
    }
}
}

struct termView_Previews: PreviewProvider {
    static var previews: some View {
        termView()
    }
}
