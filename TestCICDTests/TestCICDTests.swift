//
//  TestCICDTests.swift
//  TestCICDTests
//
//  Created by Nikola Popovic on 8.10.21..
//

import XCTest
@testable import TestCICD

class TestCICDTests: XCTestCase {

    func testAddMethos() {
        let viewModel = ContentViewModel()
        viewModel.firstNumber = "3"
        viewModel.secontNumber = "6"
        viewModel.addNumbers()
        
        XCTAssertEqual(viewModel.resultNumber, "9")
    }

}
