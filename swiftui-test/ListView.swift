//
//  ListView.swift
//  swiftui-test
//
//  Created by Kelvin Chin on 17/11/2026.
//

import SwiftUI

struct ListView: View {
    var body: some View {
        ScrollView {
            LazyVStack {
                ForEach(0...100, id: \.self) { i in
                    HStack(alignment: .top) {
                        RoundedRectangle(cornerRadius: 10)
                            .fill(Color(red: 0.93, green: 0.93, blue: 0.93))  // eeeeee
                            .frame(width: 100, height: 100)

                        VStack(alignment: .leading, spacing: 5) {
                            RoundedRectangle(cornerRadius: 5)
                                .fill(Color(red: 0.93, green: 0.93, blue: 0.93))  // eeeeee
                                .frame(height: 20, alignment: .leading)
                                .frame(maxWidth: 120)
                            RoundedRectangle(cornerRadius: 5)
                                .fill(Color(red: 0.93, green: 0.93, blue: 0.93))  // eeeeee
                                .frame(height: 16)
                        }
                        .frame(maxWidth: .infinity)
                        .padding(.leading, 10)
                        .padding(.top, 15)
                    }
                    .padding()
                    .background(Color(red: 0.97, green: 0.97, blue: 0.97))  // f8f8f8
                    .cornerRadius(10)
                }
            }.padding()

            Text("Copyright © 2026 Unknown Cinema. All rights reserved.")
                .font(.footnote)
                .foregroundColor(.gray)
                .padding(.top, 20)
        }
    }
}

#Preview {
    ListView()
}
