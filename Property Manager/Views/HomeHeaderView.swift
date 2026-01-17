//
//  HomeHeaderView.swift
//  Property Manager
//
//  Created by Edward Mooney on 1/17/26.
//

import SwiftUI

struct HomeHeaderView: View {

    let onNewInspection: () -> Void

    var body: some View {
        ZStack {
            LinearGradient(
                colors: [Color.blue.opacity(0.9), Color.blue.opacity(0.6)],
                startPoint: .top,
                endPoint: .bottom
            )

            VStack(alignment: .leading, spacing: 12) {
                Text("Welcome Back")
                    .foregroundColor(.orange)
                    .font(.subheadline)

                Text("Property Inspections")
                    .font(.largeTitle)
                    .bold()
                    .foregroundColor(.white)

                Text("Manage and track all your inspections in one place")
                    .foregroundColor(.white.opacity(0.9))

                Button(action: onNewInspection) {
                    HStack {
                        Image(systemName: "plus")
                        Text("New Inspection")
                            .bold()
                    }
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color.white)
                    .foregroundColor(.blue)
                    .cornerRadius(14)
                }
                .padding(.top, 8)
            }
            .padding()
        }
        .frame(height: 280)
    }
}
