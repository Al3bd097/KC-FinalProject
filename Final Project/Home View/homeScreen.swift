//
//  homeScreen.swift
//  Final Project
//
//  Created by Max will on 8/27/22.
//

import SwiftUI

struct homeScreen: View {
    @EnvironmentObject private var vm: LocationsViewModel

    let location: Location

    var body: some View {
        if let imageName = location.imageNames.first{
            Image(imageName)
                .resizable()
                .scaledToFill()
                .frame(width: 100, height: 100)
                .cornerRadius(10)
    
}
}
}
struct homeScreen_Previews: PreviewProvider {
    static var previews: some View {
        homeScreen(location: LocationsDataService.locations.first!)
            .environmentObject(LocationsViewModel())
    }
}

