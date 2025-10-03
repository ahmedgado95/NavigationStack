//
//  InfoSheet.swift
//  NavigationStack
//
//  Created by ahmed gado on 23/09/2025.
//

import SwiftUI

struct InfoSheet: View {
    let text: String

    var body: some View {
        VStack(spacing: 20) {
            Text("ℹ️ Info Sheet")
                .font(.title)
            Text(text)
        }
        .padding()
    }
}


#Preview {
    InfoSheet(text: "")
}
