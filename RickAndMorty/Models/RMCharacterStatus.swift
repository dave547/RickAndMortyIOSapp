//
//  RMCharacterStatus.swift
//  RickAndMorty
//
//  Created by ranek on 3/31/23.
//

import Foundation

enum RMCharacterStatus: String, Codable{
    //The status of the character ('Alive', 'Dead' or 'unknown').
    case alive = "Alive"
    case dead = "Dead"
    case `unknown` = "unknown"
}
