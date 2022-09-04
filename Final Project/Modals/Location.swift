//
//  Location.swift
//  Final Project
//
//  Created by Max will on 8/25/22.
//

import Foundation
import MapKit

struct Location: Identifiable, Equatable {
    let name: String
    let cityName: String
    let coordinates: CLLocationCoordinate2D
    let description: String
    let imageNames: [String]
    let link: String
    let height: Double
    var id: String {
        name + cityName
    }
    
    static func == (ihs: Location, rhs: Location) -> Bool {
        ihs.id == rhs.id
    }
}
