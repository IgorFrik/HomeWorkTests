//
//  HomeWorkTestsTests.swift
//  HomeWorkTestsTests
//
//  Created by Игорь Фрик on 18.01.2023.
//

import XCTest
@testable import HomeWorkTests

final class HomeWorkTestsTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        XCTAssert(loginModel(login: "mail@mail.mail", password: "QwErtY123") == (true, "Успешная авторизация"))
        XCTAssert(loginModel(login: "mailmail.mail", password: "QwErtY123") == (false, "Логин должен быть почтой\n"))
        XCTAssert(loginModel(login: "mail@mail.mail", password: "QwE1") == (false, "\nДлина пароля меньше 6 символов\n"))
        XCTAssert(loginModel(login: "mail@mail.mail", password: "qwerty123") == (false, "\nКак минимум одна заглавная в пароле\n"))
        XCTAssert(loginModel(login: "mail@mail.mail", password: "QWERTY123") == (false, "\nКак минимум одна строчная в пароле\n"))
        XCTAssert(loginModel(login: "mail@mail.mail", password: "QwErtYY") == (false, "\nКак минимум одна цифра в пароле\n"))
        XCTAssert(loginModel(login: "mail@mail.mail", password: "qwert") == (false, "\nДлина пароля меньше 6 символов\nКак минимум одна заглавная в пароле\nКак минимум одна цифра в пароле\n"))
        XCTAssert(loginModel(login: "mail", password: "!") == (false, "Логин должен быть почтой\nДлина пароля меньше 6 символов\nКак минимум одна заглавная в пароле\nКак минимум одна строчная в пароле\nКак минимум одна цифра в пароле\n"))
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
