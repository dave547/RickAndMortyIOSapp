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
    
    enum RMServiceError: Error {
        case failedToCreateRequest
        case failedToGetData
    }
    
    /// Send Rick and Morty API
    /// - Parameters:
    ///   - request: request instance
    ///   - type: type of object i expect to get back
    ///   - completion: call back with data or error
    public func execute<T: Codable>(
        _ request: RMRequest,
        expecting type: T.Type,
        completion: @escaping (Result<T, Error>) -> Void
    ) {
        guard let urlRequest = self.request(from: request) else{
            completion(.failure(RMServiceError.failedToCreateRequest))
            return
        }
        
        let task = URLSession.shared.dataTask(with: urlRequest) { data, _, error in
            guard let data = data, error == nil else {
                completion(.failure(error ?? RMServiceError.failedToGetData))
                return
            }
        
        //d Decode the response
            do {
                let result = try JSONDecoder().decode(type.self, from: data)
                completion(.success(result))
//                  print(String(describing: json))
            }
            catch {
                completion(.failure(error))
            }
        }
        task.resume()
        
    }
    
    // MARK: = Private
    
    private func request(from rmRequest: RMRequest) -> URLRequest? {
        guard let url = rmRequest.url else {
            return nil
            
        }
        var request = URLRequest(url: url)
        request.httpMethod = rmRequest.httpMethod
        return request
        
    }
}
