//
//  RMCharacter.swift
//  RickAndMorty
//
//  Created by ranek on 3/19/23.
//

import Foundation
import UIKit

struct RMCharacter: Codable{
    let id: Int
    let name: String
    let status: RMCharacterStatus
    let species: String
    let type: String
    let gender: RMCharacterGender
    let origin: RMOrigin
    let location: RMSingleLocation
    let image: String
    let episode: [String]
    let url: String
    let created: String
}
