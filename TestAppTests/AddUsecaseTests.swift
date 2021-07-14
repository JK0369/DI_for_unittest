//
//  AddUsecaseTests.swift
//  TestAppTests
//
//  Created by 김종권 on 2021/07/14.
//

import XCTest
@testable import TestApp

class AddUsecaseTests: XCTestCase {

    class MockAddUsecase: AddUsecase {
        func execute(a: Int, b: Int) -> Int {
            return a * b
        }
    }

    func test_whenViewDidLoadAndCalculateValue_thenValue() {
        // given
        let a = 2
        let b = 5
        let usecase = MockAddUsecase()
        let viewModel = DefaultAViewModel(addUsecase: usecase, a: a, b: b)

        // when
        viewModel.viewDidLoad()

        // then
        XCTAssertEqual(viewModel.calculatedValue.value, a * b)
    }
}
