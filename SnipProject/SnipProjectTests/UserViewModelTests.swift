//
//  UserViewModelTests.swift
//  SnipProjectTests
//
//  Created by Matthew Hernandez on 7/29/21.
//

import XCTest
@testable import SnipProject

class UserViewModelTests: XCTestCase {

    var userVm: UserViewModel?
    override func setUpWithError() throws {
        userVm = UserViewModel()
    }

    override func tearDownWithError() throws {
        userVm = nil
    }

    func test_should_check_if_email_is_valid() {
        userVm?.sendInfoBack(email: "savila1212@gmail.com", password: "123456")
        
        
    }
}
