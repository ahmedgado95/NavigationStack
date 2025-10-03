//
//  CoordinatorView.swift
//  NavigationStack
//
//  Created by ahmed gado on 03/10/2025.
//

import SwiftUI

struct CoordinatorView<Route: Hashable & Identifiable>: View {
    @ObservedObject var coordinator: Coordinator<Route>

    var body: some View {
        NavigationStack(path: $coordinator.path) {
            coordinator.startBuilder()
                .navigationDestination(for: Route.self) { route in
                    coordinator.routeBuilder(route)
                }
        }
        .sheet(item: $coordinator.sheet) { route in
            coordinator.routeBuilder(route)
        }
        .fullScreenCover(item: $coordinator.fullScreen) { route in
            coordinator.routeBuilder(route)
        }
    }
}

