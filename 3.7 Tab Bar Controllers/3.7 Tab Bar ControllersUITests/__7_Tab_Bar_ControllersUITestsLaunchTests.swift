//
//  __7_Tab_Bar_ControllersUITestsLaunchTests.swift
//  3.7 Tab Bar ControllersUITests
//
//  Created by Boe Bogdin on 9/15/22.
//

import XCTest

final class __7_Tab_Bar_ControllersUITestsLaunchTests: XCTestCase {

    override class var runsForEachTargetApplicationUIConfiguration: Bool {
        true
    }

    override func setUpWithError() throws {
        continueAfterFailure = false
    }

    func testLaunch() throws {
        let app = XCUIApplication()
        app.launch()

        // Insert steps here to perform after app launch but before taking a screenshot,
        // such as logging into a test account or navigating somewhere in the app

        let attachment = XCTAttachment(screenshot: app.screenshot())
        attachment.name = "Launch Screen"
        attachment.lifetime = .keepAlways
        add(attachment)
    }
}
