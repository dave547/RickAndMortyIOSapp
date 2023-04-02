//
//  RMService.swift
//  RickAndMorty
//
//  Created by ranek on 3/20/23.
//

import Foundation

/// Primary API service object to get Rick and Morty data
final class RMService {
    /// Shared singleton instance
    static let shared = RMService()
    
    /// Privatized constructor
    private init(){}
    
    /// Send Rick and Morty API
    /// - Parameters:
    ///   - request: request instance
    ///   - type: type of object i expect to get back
    ///   - completion: call back with data or error
    public func execute<T: Codable>(
        _ request: RMRequest,
        expecting type: T.Type,
        completion: @escaping (Result<String, Error>) -> Void
    ) {
        
    }
}
