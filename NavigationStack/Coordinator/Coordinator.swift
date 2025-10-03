//
//  Coordinator.swift
//  NavigationStack
//
//  Created by ahmed gado on 22/09/2025.
//

import SwiftUI
import Combine

final class Coordinator<Route: Hashable & Identifiable>: ObservableObject {
    @Published var path = NavigationPath()
    private(set) var stack: [Route] = []

    @Published var sheet: Route?
    @Published var fullScreen: Route?
    
    var startBuilder: () -> AnyView
    var routeBuilder: (Route) -> AnyView
    
    init(
        start: @escaping () -> AnyView,
        route: @escaping (Route) -> AnyView
    ) {
        self.startBuilder = start
        self.routeBuilder = route
    }
    
    func push(_ route: Route) {
        stack.append(route)
        path.append(route)
    }
    
    func goBack() {
        guard !stack.isEmpty else { return }
        stack.removeLast()
        path.removeLast()
    }
    
    func popTo(_ route: Route) {
        if let index = stack.firstIndex(of: route) {
            stack = Array(stack.prefix(through: index))
            path = NavigationPath(stack)
        } else {
            popToRoot()
        }
    }
    
    func popToRoot() {
        stack.removeAll()
        path = NavigationPath()
    }
    
    func presentSheet(_ route: Route) {
        sheet = route
    }
    
    func dismissSheet() {
        sheet = nil
    }
    
    func presentFullScreen(_ route: Route) {
        fullScreen = route
    }
    
    func dismissFullScreen() {
        fullScreen = nil
    }
    
}
