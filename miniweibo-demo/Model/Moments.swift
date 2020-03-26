//
//  Films.swift
//  miniweibo-demo
//
//  Created by xyli on 2020/3/24.
//  Copyright © 2020 xyli. All rights reserved.
//

import Foundation

struct Moments: Codable {
  let count: Int
  let all: [Moment]
  
  enum CodingKeys: String, CodingKey {
    case count
    case all = "results"
  }
}
