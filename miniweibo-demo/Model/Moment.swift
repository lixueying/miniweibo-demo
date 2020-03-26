//
//  Moment.swift
//  miniweibo-demo
//
//  Created by xyli on 2020/3/24.
//  Copyright © 2020 xyli. All rights reserved.
//

import Foundation

struct Moment: Codable {
    let id: Int
    let text: String
    
    enum CodingKeys: String, CodingKey {
        case id
        case text
    }
}

extension Moment {
    var textLabelString: String {
        text
    }
    
    var idLabelText: String {
      "Moment id is \(String(id))"
    }
}
