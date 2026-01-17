//
//  StatsGridView.swift
//  Property Manager
//
//  Created by Edward Mooney on 1/17/26.
//
import SwiftUI

struct StatsGridView: View {

    let total: Int
    let completed: Int
    let inProgress: Int
    let drafts: Int

    private let columns = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]

    var body: some View {
        LazyVGrid(columns: columns, spacing: 16) {
            StatCard(title: "Total", value: total, icon: "doc.text", color: .blue)
            StatCard(title: "Completed", value: completed, icon: "checkmark.circle", color: .green)
            StatCard(title: "In Progress", value: inProgress, icon: "clock", color: .orange)
            StatCard(title: "Drafts", value: drafts, icon: "doc", color: .brown)
        }
        .padding(.horizontal)
    }
}

