//
//  RMRequest.swift
//  RickAndMorty
//
//  Created by ranek on 3/20/23.
//

import Foundation

/// Object that represents a single API call
final class RMRequest {
    /// API Constants
    private struct Constants{
        static let baseUrl = "https://rickandmortyapi.com/api/"
    }
    
    /// Desired endpoint
    private let endpoint: RMEndpoint
    /// path components for api,if any
    private let pathComponents: [String]
    /// query compenents for api if any
    private let queryParaneters: [URLQueryItem]
    
    // Constructed URLfor the api in string format
    private var urlString: String {
        var string = Constants.baseUrl
        string += "/"
        string += endpoint.rawValue
        
        if !pathComponents.isEmpty{
            pathComponents .forEach({
                string += "/\($0)"
            })
        }
        
        if !queryParaneters.isEmpty{
            string += "?"
            let argumentString = queryParaneters.compactMap({
                guard let value = $0.value else {return nil}
                return "\($0.name)=\(value)"
            }).joined(separator: "&")
            
            string += argumentString
        }
        
        return string
    }
    /// computed & construcet API url
    public var url: URL? {
        return URL(string: urlString)
    }
    
    /// desired http method
    public let httpMethod = "Get"
    
    // Mark - Public
    /// construct request
    ///  - parameters:
    ///     - endpoint: target endpoint
    ///     - pathcompnents: collection of path components
    ///     - queryparametes: collection of query parameters
    public init(
        endpoint: RMEndpoint,
        pathComponents: [String] = [],
        queryParaneters: [URLQueryItem] = []
    ){
        self.endpoint = endpoint
        self.pathComponents = pathComponents
        self.queryParaneters = queryParaneters
    }
}

extension RMRequest {
    static let listCharactersRequests = RMRequest(endpoint: .character)
}
