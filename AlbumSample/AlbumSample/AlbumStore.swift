//
//  AlbumStore.swift
//  AlbumSample
//
//  Created by 박승호 on 2023/07/13.
//

import Foundation

struct Album: Decodable {
    let artistName: String
    let albumTitle: String
    let image: String
}

struct AlbumResponse: Decodable {
    let albums: [Album]
}

class AlbumStore: ObservableObject {
    private static let instance = AlbumStore()
    static func get() -> AlbumStore { instance }
    @Published var albums = [Album]()
    
    private init() {}
    
    func load() {
        guard let url = Bundle.main.url(forResource: "res/albums.json", withExtension: "")
        else {
            print("BUG??")
            return
        }
        
        guard let data = try? Data(contentsOf: url) else {
            print("Data load failed")
            return
        }
        let decoder = JSONDecoder()
        guard let albumResp = try? decoder.decode(AlbumResponse.self, from: data) else {
            print("Invalid json")
            return
        }
        albums = albumResp.albums
    }
}
