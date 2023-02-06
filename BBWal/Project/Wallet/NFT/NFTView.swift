//
//  NFTView.swift
//  BBWal
//
//  Created by Вячеслав on 1/23/23.
//

import SwiftUI

struct NFTView: View {
    
    @StateObject var viewModel = NFTViewModel()
    
    var body: some View {
        
        ZStack {
            
            ScrollView(.vertical, showsIndicators: true) {
                
                LazyVGrid(columns: viewModel.columns, content: {
                    
                    ForEach(viewModel.nfts, id: \.self) { index in
                        
                        Image(index)
                            .overlay (
                            
                                ZStack(alignment: .bottom) {
                                    
                                    HStack {
                                        
                                        HStack {
                                            
                                            Text("ETH")
                                                .foregroundColor(.black)
                                                .font(.system(size: 14, weight: .medium))
                                            
                                            Text("3,123")
                                                .foregroundColor(.gray)
                                                .font(.system(size: 13, weight: .regular))
                                        }
                                        .padding(7)
                                        .background(RoundedRectangle(cornerRadius: 10).fill(.white))
                                        
                                        Spacer()
                                        
                                        Image("Bitcoin")
                                            .resizable()
                                            .frame(width: 24, height: 24)
                                            .padding(7)
                                            .background(Circle().fill(.white))
                                    }
                                    .padding()
                                    .frame(maxHeight: .infinity, alignment: .bottom)
                                }
                            )
                    }
                })
            }
            .padding(.top)
        }
    }
}

struct NFTView_Previews: PreviewProvider {
    static var previews: some View {
        NFTView()
    }
}
