//
//  FacebookTests.swift
//  FacebookTests
//
//  Created by Shobhakar Tiwari on 8/12/25.
//

import XCTest
@testable import Facebook

final class FacebookTests: XCTestCase {
    var objCalculator: Calculator?
    var objLoginVC: LoginViewController?
    
    override func setUpWithError() throws {
        objCalculator = Calculator()
        objLoginVC = LoginViewController()
    }

    override func tearDownWithError() throws {
        objCalculator = nil
        objLoginVC = nil
    }
    
    
    func testUserName() {
        objLoginVC?.userTextField.text = "Shobhakar"
        XCTAssertEqual(objLoginVC?.userTextField.text, "Shobhakar")
    }
    
    func testPassword() {
        objLoginVC?.passwordTextField.text = "123456"
        XCTAssertEqual(objLoginVC?.passwordTextField.text, "123456")
    }
    
    func testValidUserName() {
        objLoginVC?.userTextField.text = nil
        XCTAssertTrue(objLoginVC?.validate(user: objLoginVC?.userTextField.text) ?? false)
    }
    
    func testValidPassword() {
        objLoginVC?.passwordTextField.text = nil
        XCTAssertTrue(objLoginVC?.validate(password: objLoginVC?.passwordTextField.text) ?? false)
    }
    
    func testSum() {
        let sumValue = objCalculator?.sum(10, 20)
        XCTAssertEqual(sumValue, 30)
    }
    
    func testSubtract() {
        let subtractValue = objCalculator?.sub(a: 10, b: 20)
        XCTAssertEqual(subtractValue, -10)
    }
    
    func testMultiply() {
        let multiplyValue = objCalculator?.multiply(a: 10, b: 20)
        XCTAssertEqual(multiplyValue, 200)
    }
    
    func testDivide() {
        let divideValue = objCalculator?.divide(a: 10, b: 0)
        XCTAssertEqual(divideValue, 0)
        
        let divideValue1 = objCalculator?.divide(a: 100, b: 10)
        XCTAssertEqual(divideValue1, 10)
    }
}


