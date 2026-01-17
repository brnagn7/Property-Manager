//
//  ContentView.swift
//  Property Manager
//
//  Created by Edward Mooney on 1/17/26.
//

import SwiftUI

struct HomeView: View {

    @StateObject private var viewModel = HomeViewModel()

    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(spacing: 20) {

                    HomeHeaderView(onNewInspection: {
                        viewModel.createNewInspection()
                    })

                    StatsGridView(
                        total: viewModel.total,
                        completed: viewModel.completed,
                        inProgress: viewModel.inProgress,
                        drafts: viewModel.drafts
                    )

                    ActionsListView(
                        onNewInspection: {
                            viewModel.createNewInspection()
                        },
                        onTemplates: {
                            viewModel.openTemplates()
                        }
                    )
                }
                .padding(.bottom, 40)
            }
            .background(Color(.systemGroupedBackground))
        }
    }
}
