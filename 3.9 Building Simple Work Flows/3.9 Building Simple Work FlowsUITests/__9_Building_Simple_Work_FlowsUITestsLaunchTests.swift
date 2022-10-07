//
//  __9_Building_Simple_Work_FlowsUITestsLaunchTests.swift
//  3.9 Building Simple Work FlowsUITests
//
//  Created by Boe Bogdin on 9/19/22.
//

import XCTest

final class __9_Building_Simple_Work_FlowsUITestsLaunchTests: XCTestCase {

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
