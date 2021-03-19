//
//  NetworkingProvider.swift
//  Networking
//
//  Created by Kaique Lopes on 15/03/21.
//

import Foundation
import Alamofire

final class NetworkingProvider {
    
    static let shared = NetworkingProvider()
    
    private let kBaseUrl = "https://gorest.co.in/public-api/"
    
    private let statusOK = 200...299
    
    private let kToken = "5ea01e224a7e6ab62268519210807da83afbe1166889b06d520f0b0a940aad86"
    
    func getUser(id: Int, success: @escaping (_ user: User) -> (), failure: @escaping (_ error: Error?) -> ()) {
        let url = "\(kBaseUrl)users/\(id)"
        AF.request(url, method: .get).validate(statusCode: statusOK).responseDecodable(of: UserResponse.self, decoder: DateDecoder()) {
            response in
            
            if let user = response.value?.data {
                success(user)
            }else {
                failure(response.error)
            }
        }
    }
    func addUser(user: NewUser, success: @escaping (_ user: User) -> (), failure: @escaping (_ error: Error?) -> ()) {
        let url = "\(kBaseUrl)users"
        let headers: HTTPHeaders = [.authorization(bearerToken: kToken)]
        
        AF.request(url, method: .post, parameters: user, encoder: JSONParameterEncoder.default, headers: headers).validate(statusCode: statusOK).responseDecodable(of: UserResponse.self, decoder: DateDecoder()) {
            response in
            
            if let user = response.value?.data, user.id != nil {
                success(user)
            }else {
                failure(response.error)
            }
        }
    }
    
}
