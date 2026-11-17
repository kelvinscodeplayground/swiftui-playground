//
//  swiftui_testApp.swift
//  swiftui-test
//
//  Created by Kelvin Chin on 16/11/2026.
//

import SwiftUI

struct TodoListView: View {
    @State private var todos: [TodoItemProps] = []
    @State private var isLoading: Bool = false

    var body: some View {
        ScrollView {
            LazyVStack {
                ForEach(todos) { todo in
                    TodoItem(props: todo)
                }
            }
        }
        .padding()
        .overlay {
            if isLoading {
                ProgressView("Loading...")
                    .progressViewStyle(CircularProgressViewStyle())
                    .padding()
                    .background(Color(.systemBackground))
                    .cornerRadius(10)
                    .shadow(radius: 10)
            }
        }
        .task {
            await fetchTodos()
        }
    }

    private func fetchTodos() async {
        guard let url = URL(string: "https://jsonplaceholder.org/posts") else { return }

        isLoading = true
        defer { isLoading = false }

        do {
            let (data, resp) = try await URLSession.shared.data(from: url)
            guard let http = resp as? HTTPURLResponse, (200...299).contains(http.statusCode) else {
                print("Invalid response: \(resp)")
                return
            }

            todos = try JSONDecoder().decode([TodoItemProps].self, from: data)
        } catch {
            print("Error fetching todos: \(error)")
        }
    }
}

#Preview {
    TodoListView()
}
