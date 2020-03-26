//
//  MomentViewModel.swift
//  miniweibo-demo
//
//  Created by xyli on 2020/3/24.
//  Copyright © 2020 xyli. All rights reserved.
//

import Foundation

struct MomentViewModel {
    
    private var text: String?
    
    private var momentService: MomentService?
    
    init(momentService: MomentService) {
      self.momentService = momentService
    }
    
    func fetchMoments(completion: @escaping ([Moment]) -> ()) {
        self.momentService?.fetchMoments(completion: {
            (moments) in
            completion(moments)
        })
    }
}
