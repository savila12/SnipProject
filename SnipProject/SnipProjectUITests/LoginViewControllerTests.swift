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
    var vc: LoginViewController?
    override func setUpWithError() throws {
        st = UIStoryboard.init(name: "Main", bundle: nil)
        vc = st?.instantiateViewController(identifier: "LoginViewController")
        _ = vc?.view
    }

    override func tearDownWithError() throws {
        st = nil
        vc = nil
    }
    
//    func test_should_show_title_in_navbar(){
//        let nbTitle = vc?.navBarTitle.title
//        
//        XCTAssertEqual(nbTitle, "Login")
//    }

    func test_should_show_Login_text() {
        
        XCTAssertEqual("Login", vc?.loginLabel.text)
    }
    
    func test_should_show_username_placeholder() {
        
        let placeholder = vc?.usernameTxtField.placeholder
        
        XCTAssertEqual(" Email", placeholder)
    }
    
    func test_should_show_password_placeholder(){
        let placeholder = vc?.passwordTxtField.placeholder
        
        XCTAssertEqual(" Password", placeholder)
    }
    
    func test_should_show_loginBtn() {
        let btnText = vc?.loginBtn.titleLabel?.text
        
        XCTAssertEqual("Login", btnText)
    }
    

}
