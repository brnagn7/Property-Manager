//
//  InspectorCard 2.swift
//  Property Manager
//
//  Created by Edward Mooney on 1/17/26.
//


import SwiftUI

struct InspectorCard: View {

    @Binding var inspectorName: String

    var body: some View {
        VStack(alignment: .leading, spacing: 12) {

            Text("Inspector")
                .font(.headline)

            Text("Inspector Name")
                .font(.subheadline)
                .foregroundColor(.secondary)

            TextField("Enter name", text: $inspectorName)
                .textFieldStyle(.roundedBorder)
        }
        .padding()
        .background(Color(.secondarySystemGroupedBackground))
        .cornerRadius(12)
    }
}
