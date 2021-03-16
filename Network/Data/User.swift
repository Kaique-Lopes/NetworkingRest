//
//  User.swift
//  Networking
//
//  Created by Kaique Lopes on 16/03/21.
//

import Foundation

    //    code":200
    //    meta":null
    //    data":{
    //    "id":257
    //    "name":"Genesis"
    //    "email":"iyengar_damodara_sen@schultz-predovic.net"
    //    "gender":"Male"
    //    "status":"Active"
    //    "created_at":"2021-03-16T03:50:08.242+05:30",
    //    "updated_at":"2021-03-16T22:49:14.936+05:30"


struct UserResponse {
    let code: Int
    let data: User
}

struct User {
    let id: Int
    let name: String
    let email: String
    let gender: String
    let status: String
    let created_at: Date
    let updated_at: Date
}

