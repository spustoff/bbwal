//
//  SwapHistoryViewModel.swift
//  BBWal
//
//  Created by Вячеслав on 1/29/23.
//

import SwiftUI

final class SwapHistoryViewModel: ObservableObject {

    @Published var tabs: [String] = ["All", "Exchange", "Success", "Failed"]
    @Published var current_tab: String = "All"
}
