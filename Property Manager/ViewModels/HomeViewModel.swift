//
//  HomeViewModel.swift
//  Property Manager
//
//  Created by Edward Mooney on 1/17/26.
//

import Foundation
import Combine

final class HomeViewModel: ObservableObject {

    @Published var total: Int = 0
    @Published var completed: Int = 0
    @Published var inProgress: Int = 0
    @Published var drafts: Int = 0

    func openTemplates() {
        print("Open templates")
    }
}


