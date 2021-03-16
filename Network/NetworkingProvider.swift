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
}
