//
//  LocationsDataService.swift
//  MapTest
//
//  Created by Nick Sarno on 11/26/21.
//

import Foundation
import MapKit


class LocationsDataService {
    
    static let locations: [Location] = [
        Location(
            name: "The Avenues",
            cityName: "Al-Rai",
            coordinates: CLLocationCoordinate2D(latitude: 29.3018897, longitude: 47.9284681),
            description: "The Avenues Mall is the largest shopping mall in Kuwait. The mall is located in the Rai area extending from Fifth Ring Road from the south and Al Ghazali Highway from the east. It opened in April 2007, under the patronage of the Emir of Kuwait Sheikh Sabah Al Ahmed Al Sabah. It was the winner of the ICSC Gold Award for “Best Shopping Center 2013” under the Expansion and Design Category in the Middle East & North Africa. It features more than 800 stores and parking that fits over 10,000 cars.",
            imageNames: [
                "avenues-1",
                "avenues-2",
                "avenues-3",
            ],
            link: "https://goo.gl/maps/yMLGnyUF4QXhZuQ16"),
        Location(
            name: "The 360 mall",
            cityName: "Al-Zahra",
            coordinates: CLLocationCoordinate2D(latitude: 29.2687543, longitude: 47.9925243),
            description: "360 Mall is a shopping mall located on the Sixth Ring Highway in the South Surra, Kuwait that opened on 5 July 2009. The mall has a circular design, and its name 360 is derived from the circular design of the complex, and its design follows the modern architectural design of the exterior and interior. The mall covers an area of 82,000 m2 (880,000 sq ft) and consists of three floors and three floors of offices. It contains 15 halls of Cinescape cinemas, featuring an IMAX hall and a VIP hall. It contains many restaurants and shops, and the number of 130 registered trademarks..",
            imageNames: [
                "360-1",
                "360-2",
                "360-3",
            ],
            link: "https://goo.gl/maps/tEqDCt7WUR88WnTR6"),
        Location(
            name: "The Assima Mall",
            cityName: "Rome",
            coordinates: CLLocationCoordinate2D(latitude: 29.3470933, longitude: 47.9864731),
            description: "The Assima, meaning capital in arabic is a mixed use project developed by Assima Real Estate Company, wholly owned by Salhia Real Estate Company. The project commenced in October 2015 and was completed at the end of 2021. Bringing together all the conveniences of a mini city within the heart of Kuwait City with a total built up area of 380,000 square meters. Featuring three main components which are, a mall with urban parks, a hypermarket, multiple entertainment options, retail and endless options for food and beverage. An office tower with stunning sea-views and cityscapes, and a residence hotel. The project will also feature ample parking to serve the three main highlights of the project.",
            imageNames: [
                "assima-1",
                "assima-2",
                "assima-3",
            ],
            link: "https://goo.gl/maps/8HAXKqftS9yG2Puf6"),
        Location(
            name: "Al-Kout",
            cityName: "Fahaheel",
            coordinates: CLLocationCoordinate2D(latitude: 29.078696, longitude: 48.139843),
            description: "Al Kout Mall is a shopping mall in Fahaheel (Ahmadi governorate), Kuwait that opened in 10 February 2005. It contains fountains which offer a night show. It is one of the biggest mall in Kuwait. The mall hosts many regional and international brands and a traditional market.",
            imageNames: [
                "kout-1",
                "kout-2",
                "kout-3",
            ],
            link: "https://goo.gl/maps/kE4EeMWZaiWhWxDV6"),
        Location(
            name: "The Gate Mall",
            cityName: "Eqaila",
            coordinates: CLLocationCoordinate2D(latitude: 29.173749, longitude: 48.097339),
            description: "The Gate mall is Located in Egaila, the mall opened its doors to the public in 2014. With an area of 65,250 m2, we provide you with nearly 500 local and international, mid to high-end retail brands that include multi-culinary restaurants. Your children can also enjoy our Fun City play zone, events area, and lots of other stores and spaces designed especially with them in mind. The Gate Mall is the perfect destination for you and your family!",
            imageNames: [
                "gate-1",
                "gate-2",
                "gate-3",
            ],
            link: "https:goo.gl/maps/oRxyJggY8obh1KMQ6"),
        Location(name: "Al-Hamra Tower",
                 cityName: "East-Almaqwa",
                 coordinates: CLLocationCoordinate2D(latitude: 29.379187422693807, longitude: 47.99334578440013),
                 description: "The Al Hamra Firduos Tower is a skyscraper in Kuwait City, Kuwait. It is the tallest building in Kuwait. Construction of the skyscraper started in 2005. It was completed in 2011. Designed by architectural firms Skidmore, Owings & Merrill and Ramshir and Callison, it is the tallest curved concrete skyscraper in the world, and the thirty-sixth tallest building in the world at 414 m (1,358 ft).",
                 imageNames: [
                    "hamra-1",
                    "hamra-2",
                    ],
                 link: "https://goo.gl/maps/yAky6kYPLk3NjBUd6"),
        Location(name: "Souk Sharq",
                 cityName: "Sharq",
                 coordinates: CLLocationCoordinate2D(latitude: 29.389769595239873, longitude: 47.9811949110281),
                 description: "The Souk Sharq is a major shopping center in Kuwait City, Kuwait. The center began as a traditional souq but as the city has undergone investment it has expanded into a modernized shopping mall of approximately 55,567 m2 (598,120 sq ft) area.",
                 imageNames: [
                    "sharq-1",
                    "sharq-2",
                 ],
                 link: "https://goo.gl/maps/nyYMzm25c9GeZ6v5A")
    ]
    
}
