//
//  RMService.swift
//  RickAndMorty
//
//  Created by Tu Nguyen on 24/09/2024.
//

import Foundation

/// Primary API service object to get Rick and Morty data
final class RMService {
    /// Shared singleton instance
    static let shared = RMService()
    
    private init() {}
    
    /// Send Rick and Morty API call
    ///  - Parameters:
    ///  - request: Request instance
    ///  - completion: Callback with data or error
    public func execute<T>(
        _ requets: RMRequest,
        expecting: T.Type,
        completion: @escaping (Result<T, Error>) -> Void
    ) {
        
    }
}
