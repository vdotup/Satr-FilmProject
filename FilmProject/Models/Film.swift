//
//  FilmModel.swift
//  FilmProject
//
//  Created by Abdurrahman Alfudeghi on 05/09/2021.
//

import Foundation

struct Film {
    var id: UUID = UUID()
    var title: String
    var rating: Double
    var categories: [Category]
}
