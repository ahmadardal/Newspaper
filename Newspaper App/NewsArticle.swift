//
//  NewsArticle.swift
//  Newspaper App
//
//  Created by David Ulvan on 2023-10-17.
//

import Foundation

struct NewsArticle: Identifiable {
    var id = UUID()
    var title: String
    var content: String
    var date: Date
    var urlImage: String
}
