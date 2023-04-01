//
//  RMEndpoint.swift
//  RickAndMorty
//
//  Created by ranek on 3/20/23.
//

import Foundation

/// Represents uniqe API endpoints
@frozen enum RMEndpoin: String {
    /// Endpoint to get character info
    case character
    /// Endpoint to get location info
    case location
    /// Endpoint to get episode info
    case episode
}