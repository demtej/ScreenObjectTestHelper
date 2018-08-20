//
//  UIControlHelper.swift
//
//  Created by Demian Tejo on 20/8/18.
//

import Foundation

// MARK: UI Controls
public extension BaseScreen {
    func swipeUp() {
        let scrollViewsQuery = XCUIApplication().scrollViews
        let elementQuery = scrollViewsQuery.otherElements.firstMatch
        elementQuery.swipeUp()
    }
    
    func swipeDown() {
        let scrollViewsQuery = XCUIApplication().scrollViews
        let elementQuery = scrollViewsQuery.otherElements.firstMatch
        elementQuery.swipeDown()
    }
}
