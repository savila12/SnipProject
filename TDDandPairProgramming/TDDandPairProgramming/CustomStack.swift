//
//  CustomStack.swift
//  TDDandPairProgramming
//
//  Created by Matthew Hernandez on 7/26/21.
//

import Foundation

struct CustomStack {
    var array: [Int] = []
    
   mutating func insertElement(_ number: Int){
        array.append(number)
    }
    
    mutating func popElement() -> Int {
        return array.popLast() ?? -1
    }
}
