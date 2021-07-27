//
//  LoginViewControllerTests.swift
//  SnipProjectTests
//
//  Created by Matthew Hernandez on 7/26/21.
//

import XCTest
@testable import SnipProject
class LoginViewControllerTests: XCTestCase {

    var st: UIStoryboard?
    override func setUpWithError() throws {
        st = UIStoryboard.init(name: "Main", bundle: nil)
    }

    override func tearDownWithError() throws {
        
    }

    func test_should_show_Login_text() {
        let vc = st?.instantiateViewController(identifier: "LoginViewController") as? LoginViewController
        
        XCTAssertEqual("Login", vc.loginLabel.text)
    }

}
