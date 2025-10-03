//
//  HomeViewModelTests.swift
//  NavigationStack
//
//  Created by ahmed gado on 01/10/2025.
//

import XCTest
@testable import NavigationStack

final class HomeViewModelTests: XCTestCase {
    var mockNavigator: MockHomeNavigation!
    var viewModel: HomeViewModel!
    
    override func setUp() {
        super.setUp()
        mockNavigator = MockHomeNavigation()
        viewModel = HomeViewModel(navigator: mockNavigator)
    }
    
    override func tearDown() {
        mockNavigator = nil
        viewModel = nil
        super.tearDown()
    }
    
    func testGoToDetails() {
        viewModel.goToDetails()
        XCTAssertTrue(mockNavigator.didCallGoToDetails,
                      "goToDetails should trigger navigation")
    }
    
    func testGoToSetting() {
        viewModel.goToSetting()
        XCTAssertTrue(mockNavigator.didCallGoToSetting,
                      "goToSetting should trigger navigation")
    }
    
    func testOpenInfoSheet() {
        viewModel.openInfoSheet()
        XCTAssertTrue(mockNavigator.didCallOpenInfoSheet,
                      "openInfoSheet should trigger navigation")
    }
    
    func testOpenProfile() {
        viewModel.openProfile()
        XCTAssertTrue(mockNavigator.didCallOpenProfile,
                      "openProfile should trigger navigation")
    }
}
