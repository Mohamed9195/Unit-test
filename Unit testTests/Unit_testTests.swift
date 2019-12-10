//
//  Unit_testTests.swift
//  Unit testTests
//
//  Created by mohamed hashem on 12/4/19.
//  Copyright © 2019 mohamed hashem. All rights reserved.
//

import XCTest
@testable import Unittest

class Unit_testTests: XCTestCase {
   
    
//MARK:- Mock data
    func testLoadingData() {
        let object = MockData()
        object.downloadName(userName: "MohamedHashem") { (result) in
            XCTAssert(result.count > 1, "data fail to Download thing")
        }
       
    }
    
    
//MARK:- do test for Void function
    func testVoidFunction() {
        let mockTester = MockUsingFirebase()
        let tester = BasicClass(deleget: mockTester)
        tester.loginAndCallDelegate()
        
        XCTAssert(mockTester.isLoginCalled)
        XCTAssertEqual(mockTester.loginName, "mohamed")
        
    }

}
