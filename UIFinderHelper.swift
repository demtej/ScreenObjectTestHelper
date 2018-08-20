//
//  UIFinderHelper.swift
//
//  Created by Demian Tejo on 20/8/18.
//

// MARK: Take elements from screen
public extension BaseScreen {
    func findAll(_ type: XCUIElement.ElementType) -> XCUIElementQuery {
        return XCUIApplication().descendants(matching: type)
    }
    func cell(_ text: String) -> XCUIElement {
        return findAll(.cell).containing(.staticText, identifier: text).element
    }
    func textField(_ text: String) -> XCUIElement {
        return  XCUIApplication().textFields[text]
    }
    func toolbarButton(_ text: String) -> XCUIElement {
        return XCUIApplication().toolbars.buttons[text]
    }
    func cellNumber(_ row : Int)  -> XCUIElement{
        return  XCUIApplication().cells.allElementsBoundByIndex[row]
        
    }
    func cellButton(_ text: String) -> XCUIElement {
        return button(text)
    }
    func button(_ text: String) -> XCUIElement {
        return XCUIApplication().buttons[text].firstMatch
    }
    func switchElement(_ text: String) -> XCUIElement {
        return XCUIApplication().switches[text].firstMatch
    }
    func element(_ text: String) -> XCUIElement {
        return XCUIApplication().staticTexts[text].firstMatch
    }
    func imageView(_ text: String) -> XCUIElement {
        return XCUIApplication().images[text].firstMatch
    }
    func getBackButton() -> XCUIElement {
        return XCUIApplication().navigationBars.buttons.element(boundBy: 0)
    }
    func stepper(_ text: String) -> XCUIElement {
        return XCUIApplication().steppers[text].firstMatch
    }
}
