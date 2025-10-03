//
//  Screen.swift
//  NavigationStack
//
//  Created by ahmed gado on 23/09/2025.
//

import SwiftUI

enum Screen: Hashable, Identifiable {
    case home
    case homeDetails(String)
    case settings
    case infoSheet(String)
    case profileFullScreen
    
    var id: String {
         String(describing: self)
     }
     
    @ViewBuilder
    static func build(_ route: Screen, coordinator: Coordinator<Screen>) -> some View {
        switch route {
        case .home:
            HomeView(viewModel: HomeViewModel(navigator: coordinator))
        case .homeDetails(let text):
            HomeDetailsView(text: text)
        case .settings:
            SettingsView()
        case .infoSheet(let text):
            InfoSheet(text: text)
        case .profileFullScreen:
            ProfileView()
        }
    }
}
