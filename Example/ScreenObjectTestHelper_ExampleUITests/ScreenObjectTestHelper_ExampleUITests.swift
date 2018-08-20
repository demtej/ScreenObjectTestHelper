//
//  ScreenObjectTestHelper_ExampleUITests.swift
//  ScreenObjectTestHelper_ExampleUITests
//
//  Created by Demian Tejo on 20/8/18.
//  Copyright © 2018. All rights reserved.
//

import XCTest

class ScreenObjectTestHelper_ExampleUITests: XCTestCase {
        
    override func setUp() {
        super.setUp()
        continueAfterFailure = false
        XCUIApplication().launch()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testSimple() {
        let initScreen = InitScreen()
        initScreen.pressOrange().pressBack().pressOrange().pressBack()
    }
    
}
