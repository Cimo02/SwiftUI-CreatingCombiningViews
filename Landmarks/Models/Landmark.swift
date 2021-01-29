//
//  Landmark.swift
//  Landmarks
//
//  Created by Tyler Ciarmataro on 1/28/21.
//

import Foundation
import SwiftUI
import CoreLocation

struct Landmark: Hashable, Codable {
    var id: Int
    var name: String
    var park: String
    var state: String
    var description: String
    
    private var imageName: String
    // computed property that creates an Image() using imageName
    var image: Image {
        Image(imageName)
    }
    
    private var coordinates: Coordinates
    var locationCoordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(latitude: coordinates.latitude, longitude: coordinates.longitude)
    }
    
    //Coordinates "sub"-class
    struct Coordinates: Hashable, Codable {
        var latitude: Double
        var longitude: Double
    }
}

