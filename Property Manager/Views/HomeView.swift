//
//  ContentView.swift
//  Property Manager
//
//  Created by Edward Mooney on 1/17/26.
//

import SwiftUI

struct HomeView: View {

    @State private var showNewInspection = false

    var body: some View {
        NavigationStack {

            ScrollView {
                VStack(spacing: 20) {

                    HomeHeaderView {
                        showNewInspection = true
                    }

                    StatsGridView(
                        total: 0,
                        completed: 0,
                        inProgress: 0,
                        drafts: 0
                    )

                    ActionsListView(
                        onNewInspection: {
                            showNewInspection = true
                        },
                        onTemplates: {
                            print("Open templates")
                        }
                    )
                }
                .padding(.bottom, 40)
            }
            .background(Color(.systemGroupedBackground))

            // SIMPLE, MODERN NAVIGATION
            .navigationDestination(isPresented: $showNewInspection) {
                NewInspectionView()
            }
        }
    }
}
