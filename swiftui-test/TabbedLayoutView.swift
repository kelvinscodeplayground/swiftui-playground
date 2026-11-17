//
//  ListView.swift
//  swiftui-test
//
//  Created by Kelvin Chin on 17/11/2026.
//

import SwiftUI

enum AppTab {
    case list
    case todos
    case favorites
}

struct TabbedLayoutView: View {
    @State private var selectedTab: AppTab = .list

    var body: some View {
        TabView(selection: $selectedTab) {
            Tab("List", systemImage: "list.bullet", value: AppTab.list) {
                NavigationStack {
                    ListView()
                        .navigationTitle("Tabbed List View")
                }
            }

            Tab("Todos", systemImage: "checkmark.circle", value: AppTab.todos) {
                NavigationStack {
                    TodoListView()
                        .navigationTitle("Todos")
                        .toolbar {
                            ToolbarItem(placement: .navigationBarLeading) {
                                //back button
                                Button(action: {
                                    selectedTab = .list
                                }) {
                                    Image(systemName: "chevron.left")
                                }
                            }
                        }
                }
            }

            Tab("Favorites", systemImage: "star.fill", value: AppTab.favorites) {
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
