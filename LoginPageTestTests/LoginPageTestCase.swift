
//  LoginPageTestCase.swift
//  LoginPageTestTests
//
//  Created by Tufail Ahmad on 25/10/23.
//

import XCTest
@testable import LoginPageTest

final class LoginPageTestCase: XCTestCase {
    
    var viewModel = LoginPageViewVeiwModel()
    func testUsernameValidity (){
        viewModel.username = "tufail@.com"
                XCTAssertTrue(viewModel.validateUsername())
                XCTAssertEqual(viewModel.errorMessage, "")
    }
    
    func testMobileValidity(){
        viewModel.Mobile = "12345678912"
        XCTAssertTrue(viewModel.validateMobile())
        XCTAssertEqual(viewModel.errorMessage,"")
        }
    
    func testPasswordValidity(){
        viewModel.password = "12345654321"
        XCTAssertTrue(viewModel.validatePassword())
        XCTAssertEqual(viewModel.errorMessage,"")
        
    }
    
    func testConfirmPasswordword(){
        viewModel.password = "12345654321"
        viewModel.confirmPassword = "12345654321"
        XCTAssertTrue(viewModel.validateConfirmPassword())
        XCTAssertEqual(viewModel.errorMessage,"")
        
    }
}
