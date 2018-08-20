//
//  InitScreen.swift
//  ScreenObjectTestHelper_ExampleUITests
//
//  Created by Demian Tejo on 20/8/18.
//  Copyright © 2018. All rights reserved.
//

import ScreenObjectTestHelper

class InitScreen: BaseScreen {
    private lazy var orangeButton = button("orange_button")
    private lazy var greenButton = button("green_button")
    
    override func waitForElements() {
        waitFor(element: orangeButton)
        waitFor(element: greenButton)
    }
    
    func pressOrange() -> OrangeScreen {
        orangeButton.tap()
        return OrangeScreen()
    }
}
