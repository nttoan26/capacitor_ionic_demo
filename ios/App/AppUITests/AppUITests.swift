//
//  AppUITests.swift
//  AppUITests
//
//  Created by Toàn Thanh on 8/14/24.
//

import XCTest

final class AppUITests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    @MainActor
    func testExample() throws {
        // UI tests must launch the application that they test.
        
        let app = XCUIApplication()
        setupSnapshot(app)
        app.launch()
        snapshot("tab_1")
        app.webViews.webViews.webViews/*@START_MENU_TOKEN@*/.buttons["Tab 2"]/*[[".otherElements[\"Ionic App\"].buttons[\"Tab 2\"]",".buttons[\"Tab 2\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        snapshot("tab_2")
        app.webViews.webViews.webViews.buttons["Tab 3"].tap()
        snapshot("tab_3")
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testLaunchPerformance() throws {
        if #available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 7.0, *) {
            // This measures how long it takes to launch your application.
            measure(metrics: [XCTApplicationLaunchMetric()]) {
                XCUIApplication().launch()
            }
        }
    }
}
