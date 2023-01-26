//
//  CNetworkError.swift
//  SpaceXCleanArchitecture
//
//  Created by Atakan Cengiz KURT on 26.01.2023.
//

import Foundation

public enum CNetworkError: Error {
    case parseError
    case badUrlError
    case badRequestError
}
