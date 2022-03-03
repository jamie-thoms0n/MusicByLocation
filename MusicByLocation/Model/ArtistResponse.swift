//
//  ArtistResponse.swift
//  MusicByLocation
//
//  Created by Jamie Thomson on 02/03/2022.
//

import Foundation

struct ArtistResponse: Codable {
    var count: Int
    var results: [Artist]
    
    private enum CodingKeys: String, CodingKey {
        case count = "resultCount"
        case results
    }
}
