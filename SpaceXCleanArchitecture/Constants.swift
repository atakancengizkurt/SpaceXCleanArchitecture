//
//  Constants.swift
//  SpaceXCleanArchitecture
//
//  Created by Atakan Cengiz KURT on 26.01.2023.
//

import Foundation


struct Constants {
    static let baseUrl = "https://api.spacexdata.com/v3"
}

enum HttpHeaderField: String {
    case contentType = "Content-Type"
}

enum ContentType: String{
    case json = "application/json"
}

