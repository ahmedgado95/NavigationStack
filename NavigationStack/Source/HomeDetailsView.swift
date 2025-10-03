//
//  HomeDetailsView.swift
//  NavigationStack
//
//  Created by ahmed gado on 23/09/2025.
//

import SwiftUI

struct HomeDetailsView: View {
    let text: String

    var body: some View {
        VStack(spacing: 20) {
            Text("📄 Details: \(text)")
                .font(.title2)
        }
    }
}
