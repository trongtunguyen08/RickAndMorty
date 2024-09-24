//
//  RMEndpoint.swift
//  RickAndMorty
//
//  Created by Tu Nguyen on 24/09/2024.
//

import Foundation

///  Represents unique API endpoint
@frozen public  enum RMEndpoint: String {
    /// Endpoint to get character info
    case character
    /// Endpoint to get location info
    case location
    /// Endpoint to het episode info
    case episode
}
