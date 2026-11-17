//
//  swiftui_testApp.swift
//  swiftui-test
//
//  Created by Kelvin Chin on 16/11/2026.
//

import SwiftUI

struct TodoItemProps: Identifiable, Codable {
    let id: Int
    let slug: String
    let url: String
    let title: String
    let content: String
    let image: String
    let thumbnail: String
    let status: String
    let category: String
    let publishedAt: String
    let updatedAt: String
    let userId: Int
}

struct TodoItem: View {
    let props: TodoItemProps

    var body: some View {
        HStack(alignment: .top) {
            AsyncImage(url: URL(string: props.thumbnail)) { phase in
                switch phase {
                case .success(let image):
                    image
                        .resizable()
                        .scaledToFit()
                case .failure:
                    Image(systemName: "photo")
                        .resizable()
                        .scaledToFit()
                        .foregroundColor(.gray)
                default:
                    ProgressView()
                }
            }
            .frame(width: 100, height: 100)
            .cornerRadius(10)

            VStack(alignment: .leading) {
                Text(props.title)
                    .font(.headline)
                    .padding(.bottom, 2)
                Text(props.content)
                    .font(.subheadline)
                    .foregroundColor(.gray)
            }
            .frame(maxWidth: .infinity, alignment: .leading)
        }
        .frame(maxWidth: .infinity)
        .padding()
        .background(Color(red: 0.97, green: 0.97, blue: 0.97))  // f8f8f8
        .cornerRadius(20)
    }
}
