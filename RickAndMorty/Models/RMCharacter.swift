//
//  MLCharacter.swift
//  RickAndMorty
//
//  Created by Tu Nguyen on 24/09/2024.
//

import Foundation
 
struct RMCharacter: Codable, Identifiable {
    let id: Int
    let name: String
    let status: RMCharacterStatus
    let species: String 
    let type: String 
    let gender: RMCharacterGender
    let image: String
    let episode: [String]
    let url: String
    let created: String
    let origin: RMOrigin
    let location: RMSingleLocation
}
