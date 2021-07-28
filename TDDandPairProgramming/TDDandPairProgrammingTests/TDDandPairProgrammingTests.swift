//
//  TDDandPairProgrammingTests.swift
//  TDDandPairProgrammingTests
//
//  Created by Matthew Hernandez on 7/26/21.
//

import XCTest
@testable import TDDandPairProgramming

class TDDandPairProgrammingTests: XCTestCase {

    var stack: CustomStack?
    var queue: CustomQueue?
    
    override func setUpWithError() throws {
        stack = CustomStack()
        queue = CustomQueue()
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        stack = nil
        queue = nil
    }
    
    func testPush(){
        stack?.insertElement(2)
        stack?.insertElement(5)
        
        XCTAssertEqual(stack?.array.count, 2)
    }
    
    func testPop(){
        stack?.insertElement(2)
        stack?.insertElement(5)
       var number = stack?.popElement()
        
        XCTAssertEqual(number, 5)
        
        number = stack?.popElement()
        
        XCTAssertEqual(number, 2)
        
        number = stack?.popElement()
        
        XCTAssertEqual(number, -1)
    }
    
    func testEnqueue(){
        queue?.enqueue(4)
        queue?.enqueue(7)
        
        XCTAssertEqual(queue?.list.count, 2)
    }
    
    func testDequeue() {
        queue?.enqueue(4)
        queue?.enqueue(7)
        var number = queue?.dequeue()
        
        XCTAssertEqual(number, 4)
        
        number = queue?.dequeue()
        
        XCTAssertEqual(number, 7)
        
        number = queue?.dequeue()
        
        XCTAssertNil(number)
    }

}
