//
//  ActionsListView.swift
//  Property Manager
//
//  Created by Edward Mooney on 1/17/26.
//

import SwiftUI

struct ActionsListView: View {

    let onNewInspection: () -> Void
    let onTemplates: () -> Void

    var body: some View {
        VStack(spacing: 12) {

            ActionRow(
                icon: "plus",
                title: "New Inspection",
                subtitle: "Start a new property inspection",
                action: onNewInspection
            )

            ActionRow(
                icon: "doc.on.doc",
                title: "Templates",
                subtitle: "Manage inspection templates",
                action: onTemplates
            )
        }
        .padding(.horizontal)
    }
}
