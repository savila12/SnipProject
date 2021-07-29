//
//  SnipProjectTests.swift
//  SnipProjectTests
//
//  Created by Matthew Hernandez on 7/28/21.
//

import XCTest
@testable import SnipProject

class UserModelTests: XCTestCase {
    
    var user: User?

    override func setUpWithError() throws {
        user = User.init(firstName: nil, lastName: nil, email: nil, userName: nil, password: nil)
    }

    override func tearDownWithError() throws {
        user = nil
    }
    
    func test_should_create_a_user(){
        user = User.init(firstName: "Sidney", lastName: "Avila", email: "sdf@gamil.com", userName: "savila23", password: "123456")
        
        XCTAssertNotNil(user)
    }

}
