//
//  ContentView.swift
//  NavigationStack
//
//  Created by ahmed gado on 22/09/2025.
//

import SwiftUI

struct HomeView: View {
    @StateObject var viewModel: HomeViewModel

    var body: some View {
        VStack(spacing: 20) {
            Text(viewModel.title)
                .font(.title)

            Button("Go to Details") {
                viewModel.goToDetails()
            }
            
            Button("Go to Settings") {
                viewModel.goToSetting()
            }

            Button("Open Info Sheet") {
                viewModel.openInfoSheet()
            }

            Button("Profile FullScreen") {
                viewModel.openProfile()
            }
        }
        .padding()
    }
}
