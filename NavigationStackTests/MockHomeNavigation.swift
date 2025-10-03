//
//  MockHomeNavigation.swift
//  NavigationStack
//
//  Created by ahmed gado on 01/10/2025.
//

@testable import NavigationStack

class MockHomeNavigation: HomeNavigation {
    var didCallGoToDetails = false
    var didCallGoToSetting = false
    var didCallOpenInfoSheet = false
    var didCallOpenProfile = false
    
    func goToDetails() {
        didCallGoToDetails = true
    }
    
    func goToSetting() {
        didCallGoToSetting = true
    }
    
    func openInfoSheet() {
        didCallOpenInfoSheet = true
    }
    
    func openProfile() {
        didCallOpenProfile = true
    }
}
