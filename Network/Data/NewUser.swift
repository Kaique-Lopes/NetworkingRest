//
//  NewUser.swift
//  Networking
//
//  Created by Kaique Lopes on 16/03/21.
//

import Foundation

struct NewUser: Encodable {
    
    let id: Int
    let name: String
    let gender: String
    let status: String
}
