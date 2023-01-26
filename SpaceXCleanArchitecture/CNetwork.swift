//
//  CNetwork.swift
//  SpaceXCleanArchitecture
//
//  Created by Atakan Cengiz KURT on 26.01.2023.
//

import Foundation

public final class CNetwork {
    public static let shared = CNetwork()
    
    public func execute<M: Codable>(requestRoute: CNetworkRouter,
                                    responseModel: M.Type,
                                    isLoaderActive: Bool = true,
                                    completion: @escaping (Swift.Result<M, CNetworkError>) -> Void){
        //TODO: ...
    }
}
