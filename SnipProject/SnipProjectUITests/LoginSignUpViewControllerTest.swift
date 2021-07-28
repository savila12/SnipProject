//
//  LoginSignUpViewControllerTest.swift
//  SnipProjectTests
//
//  Created by Matthew Hernandez on 7/26/21.
//

import XCTest
@testable import SnipProject

class LoginSignUpViewControllerTest: XCTestCase {

    var st: UIStoryboard?
    
    override func setUpWithError() throws {
        st = UIStoryboard.init(name: "Main", bundle: nil)
//        vc = st?.instantiateViewController(identifier: "LoginSignupViewController") as? LoginSignupViewController
    }

    override func tearDownWithError() throws {
       
    }
    
    func test_should_show_snipImage(){
        let vc = st?.instantiateViewController(identifier: "LoginSignupViewController") as? LoginSignupViewController
         
         _ = vc?.view
        
        let image = vc?.imgView
        
        XCTAssertEqual(UIImage.init(named: "SnipLogo"), image?.image)
    }
    
    func test_should_show_snipLabel() {
       let vc = st?.instantiateViewController(identifier: "LoginSignupViewController") as? LoginSignupViewController
        
        _ = vc?.view
        
        let text = vc?.snipLabel.text
            
        XCTAssertEqual("S n i p", text)
    }
    
    func test_should_show_designLabel() {
        let vc = st?.instantiateViewController(identifier: "LoginSignupViewController") as? LoginSignupViewController
        
        _ = vc?.view
        
        let text = vc?.designLabel.text
        
        XCTAssertEqual("Design Sustainably", text)
    }
    
    func test_should_show_loginBtn() {
        let vc = st?.instantiateViewController(identifier: "LoginSignupViewController") as? LoginSignupViewController
        
        _ = vc?.view
        
        let loginbtn = vc?.loginBtn
        
        XCTAssertEqual("Login", loginbtn?.titleLabel?.text)
    }
    
    func test_should_show_signupButton(){
        let vc = st?.instantiateViewController(identifier: "LoginSignupViewController") as? LoginSignupViewController
        
        _ = vc?.view
        
        let btn = vc?.signupBtn
        
        XCTAssertEqual("Sign Up", btn?.titleLabel?.text)
    }

}
