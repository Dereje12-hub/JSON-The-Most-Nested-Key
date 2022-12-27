//
//  JSON_Parsing_The_Most_Nested_Key_SWIFTUITestsLaunchTests.swift
//  JSON-PARSING-The-Most-Nested-Key-SWIFTUITests
//
//  Created by Consultant on 12/26/22.
//

import XCTest

final class JSON_Parsing_The_Most_Nested_Key_SWIFTUITestsLaunchTests: XCTestCase {

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
