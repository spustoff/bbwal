//
//  NFTViewModel.swift
//  BBWal
//
//  Created by Вячеслав on 1/23/23.
//

import SwiftUI

final class NFTViewModel: ObservableObject {
    
    @Published var nfts: [String] = ["nft1", "nft2", "nft3", "nft4", "nft5", "nft6"]
    @Published var columns = [
    
        GridItem(.flexible()),
        GridItem(.flexible()),
    ]
}
