//
//  StatCardView.swift
//  Property Manager
//
//  Created by Edward Mooney on 1/17/26.
//

import SwiftUI

struct StatCard: View {
    let title: String
    let value: Int
    let icon: String
    let color: Color

    var body: some View {
        VStack(spacing: 10) {
            Image(systemName: icon)
                .font(.title2)

            Text("\(value)")
                .font(.largeTitle)
                .bold()

            Text(title)
        }
        .foregroundColor(.white)
        .frame(maxWidth: .infinity, minHeight: 120)
        .background(color)
        .cornerRadius(16)
    }
}
