//
//  PropertyType.swift
//  Property Manager
//
//  Created by Edward Mooney on 1/17/26.
//


import SwiftUI

enum PropertyType: String, CaseIterable {
    case house = "House"
    case apartment = "Apartment"
    case condo = "Condo"
    case commercial = "Commercial"
}

struct PropertyInfoCard: View {

    @Binding var address: String
    @Binding var unitNumber: String
    @Binding var propertyType: PropertyType

    var body: some View {
        VStack(alignment: .leading, spacing: 12) {

            Text("Property Information")
                .font(.headline)

            Text("Address *")
                .font(.subheadline)
                .foregroundColor(.secondary)

            TextField("Enter property address", text: $address)
                .textFieldStyle(.roundedBorder)

            Text("Unit Number (Optional)")
                .font(.subheadline)
                .foregroundColor(.secondary)

            TextField("Unit #", text: $unitNumber)
                .textFieldStyle(.roundedBorder)

            Text("Property Type")
                .font(.subheadline)
                .foregroundColor(.secondary)

            PropertyTypePicker(selected: $propertyType)
        }
        .padding()
        .background(Color(.secondarySystemGroupedBackground))
        .cornerRadius(12)
    }
}
