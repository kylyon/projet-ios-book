//
//  Books.swift
//  initSwiftUI
//
//  Created by ELENGA Dan David on 04/11/2025.
//

import SwiftUI
import BookDesignSystem
import Foundation

struct Book: Identifiable, Codable {
    
    var id: Int
    var title: String
    var description: String
    var coverImage: String
    var author: String
    var price: Double
    var publishedDate: String
    var category: String
    
}

struct BooksResponse: Codable {
    var data: [Book]
}

var booksList: [Book] = {
    if let fileURL = Bundle.main.url(forResource: "Books", withExtension: "json") {
        do {
            let data = try Data(contentsOf: fileURL)
            let decoded = try JSONDecoder().decode(BooksResponse.self, from: data)
            return decoded.data
        } catch {
            print("Error loading books: \(error)")
        }
    }
    return []
}()





//var booksList:[Book] = [
//    Book(
//            id: 1,
//            title: "L’Alchimiste",
//            description: "Un jeune berger andalou part à la recherche d’un trésor caché et découvre la sagesse de la vie et de ses propres rêves.",
//            coverImage: "images",
//            author: "Paulo Coelho",
//            price: 9.99,
//            publishedDate: "1988-04-15"
//        ),
//        Book(
//            id:2,
//            title: "Le Petit Prince",
//            description: "Un aviateur rencontre un jeune prince venu d’une autre planète et découvre une philosophie poétique sur l’amitié et la vie.",
//            coverImage: "618Tj1gnjvL",
//            author: "Antoine de Saint-Exupéry",
//            price: 7.50,
//            publishedDate: "1943-04-06"
//        ),
//        Book(
//            id:3,
//            title: "1984",
//            description: "Un roman dystopique où le monde est dirigé par un régime totalitaire qui contrôle la pensée et l’histoire.",
//            coverImage: "page0001_1",
//            author: "George Orwell",
//            price: 11.90,
//            publishedDate: "1949-06-08"
//        ),
//        Book(
//            id:4,
//            title: "La Peste",
//            description: "Une épidémie s’abat sur la ville d’Oran, révélant les comportements et les valeurs humaines face au malheur collectif.",
//            coverImage: "5198550180",
//            author: "Albert Camus",
//            price: 10.40,
//            publishedDate: "1947-06-10"
//        ),
//        Book(
//            id:5,
//            title: "Harry Potter à l’école des sorciers",
//            description: "Un jeune orphelin découvre qu’il est un sorcier et intègre l’école de magie de Poudlard, où l’attend un destin exceptionnel.",
//            coverImage: "9780156013987-fr",
//            author: "J.K. Rowling",
//            price: 12.99,
//            publishedDate: "1997-06-26"
//        ),
//        Book(
//            id:6,
//            title: "Les Misérables",
//            description: "L’histoire de Jean Valjean, un ancien forçat, qui cherche la rédemption dans la France du XIXe siècle.",
//            coverImage: "Couv_183628_petit spirou",
//            author: "Victor Hugo",
//            price: 14.50,
//            publishedDate: "1862-04-03"
//        )
//]
