//
//  DateDecoder.swift
//  Networking
//
//  Created by Kaique Lopes on 16/03/21.
//

import Foundation

final class DateDecoder: JSONDecoder {
    
    let dateFormatter = DateFormatter()
    
    override init() {
        super.init()
        dateFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss.SSSXXX"
        dateDecodingStrategy = .formatted(dateFormatter)
    }
}
