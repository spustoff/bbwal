//
//  Step2ViewModel.swift
//  BBWal
//
//  Created by Вячеслав on 1/23/23.
//

import SwiftUI

final class Step2ViewModel: ObservableObject {
    
    @Published var words: [String] = ["team", "team", "team", "team", "team", "team", "team", "team", "team"]
    
    @Published var columns = [
    
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible()),
    ]
}
