//
//  Categories.swift
//  projet-ios-book
//
//  Created by MARIE-MAGDELAINE Kyllian on 06/11/2025.
//
import SwiftUI
import Foundation


struct Category : Codable {
    var title: String
}

struct CategoriesResponse: Codable {
    var data: [String]
}

var categoriesList: Set<String> = {
    if let fileURL = Bundle.main.url(forResource: "Books", withExtension: "json") {
        do {
            let data = try Data(contentsOf: fileURL)
            let decodedBook = try JSONDecoder().decode(BooksResponse.self, from: data)
            
            
            var categories: Set<String> = Set<String>()
            decodedBook.data.forEach({ book in book.category.components(separatedBy: ";").forEach({category in categories.insert(category)}) })
            
            return categories
        } catch {
            print("Error loading categories: \(error)")
        }
    }
    return []
}()
