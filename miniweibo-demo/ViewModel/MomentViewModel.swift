//
//  MomentViewModel.swift
//  miniweibo-demo
//
//  Created by xyli on 2020/3/24.
//  Copyright © 2020 xyli. All rights reserved.
//

import Foundation

class MomentViewModel {
    
    private var text: String?
    
    private var momentService: MomentService?
    
    // output
    var updateMoments:(([Moment]) -> Void)?
    
    private(set) var moments: [Moment] = [Moment]() {
        didSet {
            updateMoments?(moments)
        }
    }
    
    // input
    func fetchMoments() {
        self.momentService?.fetchMoments(completion: { [weak self] moments in
            self?.moments = moments
        })
    }
    
//    // output
//    private func fetchMoments(completion: @escaping ([Moment]) -> ()) {
//        self.momentService?.fetchMoments(completion: completion)
//    }
    
    init(momentService: MomentService) {
      self.momentService = momentService
    }
    
}
