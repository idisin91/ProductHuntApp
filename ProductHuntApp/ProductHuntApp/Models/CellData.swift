//
//  CellData.swift
//  
//
//  Created by Никита Скрынников on 27.11.17.
//

import Foundation

class CellData {
    var name: String?
    var description: String?
    var upvotes: Int?
    var thumbnailURL: URL?
    var imageUrl: URL?
    var mainUrl: URL?
    
    init(name: String = "", description: String = "", upvotes: Int = 0, thumbnailURL: URL? = URL(string: ""), imageURL: URL? = URL(string: ""), mainUrl: URL? = URL(string: "")){
        self.name = name
        self.description = description
        self.upvotes = upvotes
        self.thumbnailURL = thumbnailURL
        self.imageUrl = imageURL
        self.mainUrl = mainUrl
    }
    
}
