//
//  MLEpisode.swift
//  RickAndMorty
//
//  Created by Tu Nguyen on 24/09/2024.
//

//{
//  "id": 1,
//  "name": "Pilot",
//  "air_date": "December 2, 2013",
//  "episode": "S01E01",
//  "characters": [
//    "https://rickandmortyapi.com/api/character/1",
//    "https://rickandmortyapi.com/api/character/2",
//  ],
//  "url": "https://rickandmortyapi.com/api/episode/1",
//  "created": "2017-11-10T12:56:33.798Z"
//}

import Foundation

struct RMEpisode: Codable, Identifiable {
    let id: Int
    let name: String
    let airDate: String
    let episode: String
    let characters: [String]
    let url: String
    let created: String
    
    enum CodingKeys: String, CodingKey {
        case id, name, episode, characters, url, created
        case airDate = "air_date"
    }
}
