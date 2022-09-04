//
//  Final_ProjectApp.swift
//  Final Project
//
//  Created by Max will on 8/21/22.
//

import SwiftUI
@main
struct Final_ProjectApp: App {
    var body: some Scene {
        WindowGroup {
                ContentView()
                .onAppear {
                    if #available(iOS 15.0, *) {
                        let tabBarAppearance = UITabBarAppearance()
                        tabBarAppearance.configureWithDefaultBackground()
                        UITabBar.appearance().scrollEdgeAppearance = tabBarAppearance
                    }
                }
        }
    }
}
