//
//  HomeViewModel.swift
//  NavigationStack
//
//  Created by ahmed gado on 23/09/2025.
//

import Combine

protocol HomeNavigation {
    func goToDetails()
    func goToSetting()
    func openInfoSheet()
    func openProfile()
}

class HomeViewModel: ObservableObject {
    @Published var title: String = "🏠 Home"
    
    private let navigator: HomeNavigation
    
    init(navigator: HomeNavigation) {
        self.navigator = navigator
    }
    
    func goToDetails() {
        navigator.goToDetails()
    }

    func openInfoSheet() {
        navigator.openInfoSheet()
    }

    func goToSetting() {
        navigator.goToSetting()
    }
    
    func openProfile() {
        navigator.openProfile()
    }
}

extension Coordinator: HomeNavigation where Route == Screen {
    func goToDetails() {
        push(.homeDetails("Home Details"))
    }
    
    func goToSetting() {
        push(.settings)
    }
    
    func openInfoSheet() {
       presentSheet(.infoSheet("InfoSheet"))
    }
    
    func openProfile() {
       presentFullScreen(.profileFullScreen)
    }
}

