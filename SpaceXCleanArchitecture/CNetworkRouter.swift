//
//  CNetworkRouter.swift
//  SpaceXCleanArchitecture
//
//  Created by Atakan Cengiz KURT on 26.01.2023.
//

import Foundation
import Alamofire

public enum CNetworkRouter: URLRequestConvertible {
    case rockets
    case rocket(rocketID: String)
    
    public var method: HTTPMethod {
        switch self {
        case .rockets, .rocket:
            return .get
        }
    }
    
    public var path: String {
        switch self {
        case .rockets:
            return "/rockets"
        case .rocket(let id):
            return "/rockets/\(id)"
        }
    }
    
    
    public var parameters: Parameters? {
        switch self {
        case .rockets, .rocket:
            return nil
        }
    }
    
    
    public func asURLRequest() throws -> URLRequest {
        let url = try Constants.baseUrl.asURL()
        
        var urlRequest = URLRequest(url: url.appendingPathComponent(path))
        urlRequest.httpMethod = method.rawValue
        
        urlRequest.setValue(ContentType.json.rawValue, forHTTPHeaderField: HttpHeaderField.contentType.rawValue)
        
        if let parameters = parameters {
            do{
                urlRequest.httpBody = try JSONSerialization.data(withJSONObject: parameters, options: [])
            }catch {
                throw AFError.parameterEncodingFailed(reason: .jsonEncodingFailed(error: error))
            }
        }
        return urlRequest
    }
    
    
}
