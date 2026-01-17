//
//  ActionRowView.swift
//  Property Manager
//
//  Created by Edward Mooney on 1/17/26.
//
import SwiftUI

struct ActionRowView: View {
    let icon: String
    let title: String
    let subtitle: String
    let action: () -> Void

    var body: some View {
        Button(action: action) {
            HStack(spacing: 14) {

                Image(systemName: icon)
                    .frame(width: 36, height: 36)
                    .background(Color.gray.opacity(0.15))
                    .cornerRadius(10)

                VStack(alignment: .leading) {
                    Text(title).bold()
                    Text(subtitle)
                        .font(.caption)
                        .foregroundColor(.secondary)
                }

                Spacer()

                Image(systemName: "chevron.right")
                    .foregroundColor(.gray)
            }
            .padding()
            .background(Color.white)
            .cornerRadius(16)
        }
        .buttonStyle(.plain)
    }
}

