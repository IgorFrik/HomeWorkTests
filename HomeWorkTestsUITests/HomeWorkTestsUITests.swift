//
//  HomeWorkTestsUITests.swift
//  HomeWorkTestsUITests
//
//  Created by Игорь Фрик on 18.01.2023.
//

import XCTest

final class HomeWorkTestsUITests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // UI tests must launch the application that they test.
        func test1() {
            let app = XCUIApplication()
            app.launch()
            app.textFields["Login"].tap()
            app.textFields["Login"].typeText("123")
            let element = app.children(matching: .window).element(boundBy: 0).children(matching: .other).element.children(matching: .other).element.children(matching: .other).element
            element.tap()
            app.secureTextFields["Password"].tap()
            app.secureTextFields["Password"].typeText("321")
            element.tap()
            app/*@START_MENU_TOKEN@*/.staticTexts["Enter"]/*[[".buttons[\"Enter\"].staticTexts[\"Enter\"]",".staticTexts[\"Enter\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
            app.alerts["Ошибка"].scrollViews.otherElements.buttons["Ok"].tap()
        }

        func test2() {
            let app = XCUIApplication()
            app.launch()
            app.textFields["Login"].tap()
            app.textFields["Login"].typeText("mail@mail.mail")
            let element = app.children(matching: .window).element(boundBy: 0).children(matching: .other).element.children(matching: .other).element.children(matching: .other).element
            element.tap()
            app.secureTextFields["Password"].tap()
            app.secureTextFields["Password"].typeText("qw321")
            app/*@START_MENU_TOKEN@*/.staticTexts["Enter"]/*[[".buttons[\"Enter\"].staticTexts[\"Enter\"]",".staticTexts[\"Enter\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
            app.alerts["Ошибка"].scrollViews.otherElements.buttons["Ok"].tap()
        }
        
        func test3() {
            let app = XCUIApplication()
            app.launch()
            app.textFields["Login"].tap()
            app.textFields["Login"].typeText("mail@mail.mail")
            let element = app.children(matching: .window).element(boundBy: 0).children(matching: .other).element.children(matching: .other).element.children(matching: .other).element
            element.tap()
            app.secureTextFields["Password"].tap()
            app.secureTextFields["Password"].typeText("!")
            app/*@START_MENU_TOKEN@*/.staticTexts["Enter"]/*[[".buttons[\"Enter\"].staticTexts[\"Enter\"]",".staticTexts[\"Enter\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
            app.alerts["Ошибка"].scrollViews.otherElements.buttons["Ok"].tap()
        }
        
        func testWork() {
            let app = XCUIApplication()
            app.launch()
            app.textFields["Login"].tap()
            app.textFields["Login"].typeText("mail@mail.mail")
            let element = app.children(matching: .window).element(boundBy: 0).children(matching: .other).element.children(matching: .other).element.children(matching: .other).element
            element.tap()
            app.secureTextFields["Password"].tap()
            app.secureTextFields["Password"].typeText("QwErtY123")
            app/*@START_MENU_TOKEN@*/.staticTexts["Enter"]/*[[".buttons[\"Enter\"].staticTexts[\"Enter\"]",".staticTexts[\"Enter\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
            app.alerts["Успех"].scrollViews.otherElements.buttons["Ok"].tap()
        }
        test1()
        test2()
        test3()
        testWork()
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
