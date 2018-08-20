//
//  UIWaitHelper.swift
//
//  Created by Demian Tejo on 20/8/18.
//

// MARK: Loading screen helpers
public extension BaseScreen {
    func waitForExpectation(expectation:XCTestExpectation,
                            time: Double,
                            safe: Bool = false) {
        let result: XCTWaiter.Result =
            XCTWaiter().wait(for: [expectation],
                             timeout: time)
        if !safe && result != .completed {
            XCTFail("Condition was not satisfied during \(time) seconds")
        }
    }
    
    func waitFor(element: XCUIElement) {
        let exists = NSPredicate(format: "exists = 1")
        self.waitForExpectation(expectation: XCTNSPredicateExpectation(predicate: exists, object: element), time: TIME_OUT)
    }
}
