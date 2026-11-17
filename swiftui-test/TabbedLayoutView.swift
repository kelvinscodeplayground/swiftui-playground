//
//  ListView.swift
//  swiftui-test
//
//  Created by Kelvin Chin on 17/11/2026.
//

import SwiftUI

struct TabbedLayoutView: View {
    var body: some View {
        NavigationStack {
            TabView {
                ListView()
                    .tabItem {
                        Image(systemName: "list.bullet")
                        Text("List")
                    }

                Text("Second Tab")
                    .tabItem {
                        Image(systemName: "star.fill")
                        Text("Favorites")
                    }
            }
            .navigationTitle("Tabbed Layout View")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    TabbedLayoutView()
}
