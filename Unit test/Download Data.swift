//
//  Download Data.swift
//  Unit test
//
//  Created by mohamed hashem on 12/5/19.
//  Copyright © 2019 mohamed hashem. All rights reserved.
//

import Foundation

protocol Authontication {
    
}

protocol Download {
    func downloadName(userName: String, names: @escaping (_ names: [String]) -> ())
}

class MockData: Download {
    
    func downloadName(userName: String, names: @escaping ([String]) -> ()) {
        if userName == "MohamedHashem" {
           let name = ["mohamed", "mostafa", "tamer"]
            names(name)
        } else {
            names([])
        }
    }
}
//
//class BundelData: Download {
//    var names: [String] = []
//    
//    func downloadName(userName: String, names: @escaping ([String]) -> ()) {
//        if userName == "MohamedHashem" {
//            print(self.names)
//            let name = self.names
//            names(name)
//        } else {
//            names([])
//        }
//    }
//}
