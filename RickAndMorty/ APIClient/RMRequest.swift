//
//  RmRequest.swift
//  RickAndMorty
//
//  Created by Tu Nguyen on 24/09/2024.
//

import Foundation


/// Object that represents a single API call
final class RMRequest {
    /// API Constants
    private struct Constants {
        static let baseURL = "https://rickandmortyapi.com/api/"
    }
    
    /// Desired endpoint
    private let endpoint: RMEndpoint
    
    /// Path components for API, if any
    private let pathComponents: Set<String>
    
    ///  Query arguments for API, if any
    private let queryItems: [URLQueryItem]
    
    /// Constructed url for the API request in string format
    private var urlString: String {
        var string = Constants.baseURL
        
        string += endpoint.rawValue
        
        string += "/"
        
        if !pathComponents.isEmpty {
            pathComponents.forEach {
                string += "\($0)/"
            }
        }
        
        if !queryItems.isEmpty {
            string += "?"
            let argumentString = queryItems.compactMap {
                guard let value = $0.value else {
                    return nil
                }
                return "\($0.name)=\(value)"
            }.joined(separator: "&")
            string += argumentString
        }
        
        return string 
    }
    
    // MARK - Public
    /// Construct request
    /// - Parameters:
    /// - endpoint: Target endpoint
    /// - pathComponents: Collection of path components
    /// - queryItems: Collection of query parameters
    init(endpoint: RMEndpoint, pathComponents: Set<String> = [], queryItems: [URLQueryItem] = []) {
        self.endpoint = endpoint
        self.pathComponents = pathComponents
        self.queryItems = queryItems
    }
    
    /// Desired http method
    let httpMethod: String = "GET"
    
    /// Computed and Constructed API url
    var url: URL? {
        return URL(string: urlString)
    }
    
}
