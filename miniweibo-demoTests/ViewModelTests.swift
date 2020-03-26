//
//  miniweibo_demoTests.swift
//  miniweibo-demoTests
//
//  Created by xyli on 2020/3/23.
//  Copyright © 2020 xyli. All rights reserved.
//

import Quick
import Nimble

@testable import miniweibo_demo

class ViewModelTests: QuickSpec {

    override func spec() {
        describe("MomentViewModel tests") {
            it("should have correct output for input") {
                let viewModel = MomentViewModel(momentService: MomentService())
                expect(viewModel.moments).notTo(beNil())
                expect(viewModel.moments).to(beAnInstanceOf([Moment].self))
                
                //output
                viewModel.updateMoments = { moments in
                    expect(moments).toNot(beNil())
                    expect(moments).to(beAnInstanceOf([Moment].self))
                }
            }
        }
    }
    
    override class func setUp() {
        
    }
    
    override class func tearDown() {
        
    }

}
