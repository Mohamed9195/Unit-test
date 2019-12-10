//
//  test-Function-NotReturn.swift
//  Unittest
//
//  Created by mohamed hashem on 12/10/19.
//  Copyright © 2019 mohamed hashem. All rights reserved.
//

import Foundation

protocol LoginFirebase {
    func login(name: String)
}

class UsingFirabase: LoginFirebase {
  
    func login(name: String) {
           print(name)
       }
}

class MockUsingFirebase: LoginFirebase {
    
    var isLoginCalled = false
    var loginName: String = ""
    
    func login(name: String) {
        isLoginCalled = true
        loginName = name
    }
}

class BasicClass {
    private var delegate: LoginFirebase?
    
    init(deleget: LoginFirebase) {
        self.delegate = deleget
    }
    
    func loginAndCallDelegate() {
        delegate?.login(name: "mohamed")
        // delegate call
    }
}
