//
//  ContentView.swift
//  Final Project
//
//  Created by Max will on 8/21/22.
//

import SwiftUI
import MapKit

struct ContentView: View {
    
    @EnvironmentObject private var vm: LocationsViewModel
    init() {
        UITabBar.appearance().backgroundColor = UIColor.white
    }
    var body: some View {
        ZStack {
            TabView{
                homeScreen()
                    .tabItem {
                        Image(systemName: "house")
                        Text("Home")
                    }
                
                LocationsView()
                    .environmentObject(LocationsViewModel())
                    .tabItem {
                            Image(systemName: "map.fill")
                        Text("Home")
                    }
                
                profileView()
                    .tabItem {
                        Image(systemName: "person.circle")
                        Text("Profile")
                    }
                    
                
            }
            
        }
        
        
    }
    }

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(LocationsViewModel())
    }
}
