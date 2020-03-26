//
//  MomentService.swift
//  miniweibo-demo
//
//  Created by xyli on 2020/3/24.
//  Copyright © 2020 xyli. All rights reserved.
//

import Foundation
import UIKit
import Alamofire

struct MomentService {
    static let shared = MomentService()

    func fetchMoments(completion: @escaping ([Moment]) -> ()) {
        AF.request("http://localhost:3000/moments").responseDecodable(of: [Moment].self){ (response) in
            guard let moments = response.value else { return }
            completion(moments)
        }
    }
}
