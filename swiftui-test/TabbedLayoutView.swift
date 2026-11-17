//
//  ListView.swift
//  swiftui-test
//
//  Created by Kelvin Chin on 17/11/2026.
//

import SwiftUI

struct TabbedLayoutView: View {
    var body: some View {
        TabView {
            Tab("List", systemImage: "list.bullet") {
                NavigationStack {
                    ListView()
                        .navigationTitle("Tabbed List View")
                }
            }

            Tab("Todos", systemImage: "checkmark.circle") {
                NavigationStack {
                    TodoListView()
                        .navigationTitle("Todos")
                }
            }

            Tab("Favorites", systemImage: "star.fill") {
                NavigationStack {
                    Text("Second Tab")
                        .navigationTitle("Favorites")
                        .navigationBarTitleDisplayMode(.inline)
                }
            }
        }
    }
}

#Preview {
    TabbedLayoutView()
}
