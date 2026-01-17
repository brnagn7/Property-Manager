//
//  Template.swift
//  Property Manager
//
//  Created by Edward Mooney on 1/17/26.
//


import SwiftUI

struct Template: Identifiable, Equatable {
    let id = UUID()
    let title: String
    let subtitle: String
    let roomCount: Int

    static let residential = Template(
        title: "Residential Property",
        subtitle: "Standard residential property inspection template",
        roomCount: 5
    )
}

struct TemplatePickerCard: View {

    @Binding var selectedTemplate: Template?

    var body: some View {
        VStack(alignment: .leading, spacing: 12) {

            Text("Select Template *")
                .font(.headline)

            Button {
                selectedTemplate = .residential
            } label: {
                HStack {
                    Image(systemName: selectedTemplate == .residential ? "largecircle.fill.circle" : "circle")

                    VStack(alignment: .leading, spacing: 4) {
                        Text("Residential Property")
                            .bold()

                        Text("Standard residential property inspection template")
                            .font(.caption)
                            .foregroundColor(.secondary)
                    }

                    Spacer()

                    Text("5 rooms")
                        .font(.caption)
                        .foregroundColor(.secondary)
                }
                .padding()
                .background(Color(.systemBackground))
                .cornerRadius(12)
            }
            .buttonStyle(.plain)
        }
        .padding()
        .background(Color(.secondarySystemGroupedBackground))
        .cornerRadius(12)
    }
}
