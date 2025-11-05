//
//  Books.swift
//  DesignSystem
//
//  Created by MARIE-MAGDELAINE Kyllian on 04/11/2025.
//

import SwiftUI

public protocol BookProtocol : Identifiable, Codable, Sendable {
    
    var id: Int { get }
    var title: String { get set }
    var description: String { get set }
    var coverImage: String { get set }
    var author: String { get set }
    var price: Double { get set }
    var publishedDate: String { get set }
    
}

public struct BookItemData
{
    public init(title: String, coverImage: String, author: String) {
        self.title = title
        self.coverImage = coverImage
        self.author = author
    }
    
    var title: String
    var coverImage: String
    var author: String
}


public struct BookCardData
{
    public init(title: String, description: String, coverImage: String, author: String, publishedDate: String) {
        self.title = title
        self.description = description
        self.coverImage = coverImage
        self.author = author
        self.publishedDate = publishedDate
    }
    
    var title: String
    var description: String
    var coverImage: String
    var author: String
    var publishedDate: String
}
