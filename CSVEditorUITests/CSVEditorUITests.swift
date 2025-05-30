//
//  CSVEditorUITests.swift
//  CSVEditorUITests
//
//  Created by Daniel Koller on 02.02.25.
//

import XCTest

final class CSVEditorUITests: XCTestCase {

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
    func testAppLaunch() throws {
        // UI tests must launch the application that they test.
        let app = XCUIApplication()
        app.launch()

        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    @MainActor
    func testFileSelectionDialogOpens() throws {
        let app = XCUIApplication()
        app.launch()
        
        // Check if the Finder window (file selection dialog) appears
        let finderDialog = XCUIApplication(bundleIdentifier: "com.apple.finder")
        XCTAssertTrue(finderDialog.waitForExistence(timeout: 5), "File selection dialog did not appear")
    }

    @MainActor
    func testLaunchPerformance() throws {
        if #available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 7.0, *) {
            // This measures how long it takes to launch your application.
            measure(metrics: [XCTApplicationLaunchMetric()]) {
                XCUIApplication().launch()
            }
        }
    }
}
