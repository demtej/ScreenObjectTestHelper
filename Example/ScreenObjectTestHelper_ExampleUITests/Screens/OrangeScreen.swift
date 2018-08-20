//
//  OrangeScreen.swift
//  ScreenObjectTestHelper_ExampleUITests
//
//  Created by Demian Tejo on 20/8/18.
//  Copyright © 2018. All rights reserved.
//
import ScreenObjectTestHelper

class OrangeScreen: BaseScreen {
    private lazy var label = element("orange_label")
    private lazy var backButton = getBackButton()
    override func waitForElements() {
        waitFor(element: label)
        waitFor(element: backButton)
    }
    
    func pressBack() -> InitScreen {
        backButton.tap()
        return InitScreen()
    }
}
