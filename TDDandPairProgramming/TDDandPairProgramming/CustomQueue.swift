//
//  CustomQueue.swift
//  TDDandPairProgramming
//
//  Created by Matthew Hernandez on 7/26/21.
//

import Foundation

struct CustomQueue {
    var list: [Int] = []
    
    mutating func enqueue(_ element: Int) {
        list.append(element)
    }
    
    mutating func dequeue() -> Int? {
        if !list.isEmpty {
            return list.removeFirst()
        } else {
            return nil
        }
    }
}
