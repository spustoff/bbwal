//
//  CoinView.swift
//  BBWal
//
//  Created by Вячеслав on 1/23/23.
//

import SwiftUI

struct CoinView: View {
    
    @StateObject var viewModel = WalletViewModel()
    
    var body: some View {
        
        VStack {
            
            // MARK: - BALANCE
            VStack(alignment: .center, spacing: 10, content: {
                
                HStack {
                    
                    Text("Balance")
                        .foregroundColor(.gray)
                        .font(.system(size: 14, weight: .regular))
                    
                    Image(systemName: "eye")
                        .foregroundColor(.gray)
                        .font(.system(size: 13))
                }
                
                Text("$\(viewModel.balance)")
                    .foregroundColor(.white)
                    .font(.system(size: 23, weight: .semibold))
            })
            .padding(.top, 30)
            
            // MARK: - BAR
            HStack {
                
                HStack {
                    
                    Image(systemName: "magnifyingglass")
                        .foregroundColor(.gray)
                        .font(.system(size: 17, weight: .regular))
                    
                    ZStack(alignment: .leading, content: {
                        
                        Text("Search coin")
                            .foregroundColor(.gray)
                            .font(.system(size: 14, weight: .regular))
                            .opacity(viewModel.search.isEmpty ? 1 : 0)
                            
                        TextField("", text: $viewModel.search)
                            .foregroundColor(.white)
                            .font(.system(size: 14, weight: .regular))
                    })
                }
                .padding()
                .background(RoundedRectangle(cornerRadius: 10).fill(Color("gray")))
                
                Button(action: {}, label: {
                    
                    Text("All")
                        .foregroundColor(.white)
                        .font(.system(size: 15, weight: .medium))
                        .padding()
                        .background(RoundedRectangle(cornerRadius: 10).fill(Color("gray")))
                })
                
                Button(action: {}, label: {
                    
                    Image("filter")
                        .renderingMode(.template)
                        .foregroundColor(.white)
                        .padding()
                        .background(RoundedRectangle(cornerRadius: 10).fill(Color("gray")))
                })
            }
            .padding(.horizontal)
            
            // MARK: - COINS
            if viewModel.coins.isEmpty {
                
                VStack {
                    
                    Text("Empty")
                        .foregroundColor(.white)
                        .font(.system(size: 19, weight: .semibold))
                    
                    Text("Sorry, something went wrong...")
                        .foregroundColor(.gray)
                        .font(.system(size: 15, weight: .regular))
                }
                .frame(maxHeight: .infinity, alignment: .center)
            } else {
                
                ScrollView(.vertical, showsIndicators: true) {
                    
                    LazyVStack {
                        
                        ForEach(viewModel.coins) { index in
                            
                            HStack {
                                
                                VStack(alignment: .leading, content: {
                                    
                                    Text(index.name)
                                        .foregroundColor(.white)
                                        .font(.system(size: 17, weight: .semibold))
                                    
                                    HStack(spacing: 4) {
                                        
                                        Text("\(index.price_dolar)")
                                            .foregroundColor(.gray)
                                            .font(.system(size: 13, weight: .regular))
                                        
                                        Text("\(index.exc)")
                                            .foregroundColor(.red)
                                            .font(.system(size: 13, weight: .regular))
                                    }
                                })
                                
                                Spacer()
                                
                                VStack(alignment: .trailing, content: {
                                    
                                    Text("\(index.current_price)")
                                        .foregroundColor(.white)
                                        .font(.system(size: 17, weight: .semibold))
                                    
                                    Text("\(index.price_dolar)")
                                        .foregroundColor(.gray)
                                        .font(.system(size: 13, weight: .regular))
                                })
                            }
                            .padding()
                        }
                    }
                }
            }
        }
    }
}

struct CoinView_Previews: PreviewProvider {
    static var previews: some View {
        CoinView()
    }
}
