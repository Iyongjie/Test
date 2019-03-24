//
//  UITestViewController.swift
//  SortUITests
//
//  Created by 李永杰 on 2019/3/23.
//  Copyright © 2019 Y了个J. All rights reserved.
//

import XCTest

class UITestViewController: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        XCUIApplication().launch()

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() {
        // Use recording to get started writing UI tests.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    func testVertifyAction () {
        
        
        
        let app = XCUIApplication()
        app.buttons["UI测试"].tap()
        
        let textField = app.textFields["请输入6位的字符"]
        textField.tap()
    
        textField.typeText("sdasdk")
        
        let button = app.buttons["验证"]
        button.tap()
        
        // 不等于6位数，就失败
        XCTAssertEqual(textField.title.count , 6, "必须等于6位数")

        
    }
}
