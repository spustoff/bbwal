//
//  WalletView.swift
//  BBWal
//
//  Created by Вячеслав on 1/23/23.
//

import SwiftUI

struct WalletView: View {
    
    @StateObject var viewModel = WalletViewModel()
    @Namespace var animation
    
    var body: some View {
        
        ZStack {
            
            Image("bg")
                .resizable()
                .ignoresSafeArea()
            
            VStack {
                
                // MARK: - HEADER
                
                ZStack {
                    
                    Text("Wallet #1")
                        .foregroundColor(.white)
                        .font(.system(size: 17, weight: .medium))
                    
                    HStack {
                        
                        NavigationLink(destination: {
                            
                            SettingsView()
                                .navigationBarBackButtonHidden()
                            
                        }, label: {
                            
                            VStack(spacing: 3) {
                                
                                Image(systemName: "gear")
                                    .foregroundColor(.gray)
                                    .font(.system(size: 18, weight: .medium))
                                    .frame(height: 17)
                            }
                        })
                        
                        NavigationLink(destination: {
                            
                            NotificationsView()
                                .navigationBarBackButtonHidden()
                            
                        }, label: {
                            
                            VStack(spacing: 3) {
                                
                                Image(systemName: "bell")
                                    .foregroundColor(.gray)
                                    .font(.system(size: 18, weight: .medium))
                                    .frame(height: 17)
                            }
                        })
                        
                        Spacer()
                        
                        NavigationLink(destination: {
                            
                            MyWalletsView()
                                .navigationBarBackButtonHidden()
                            
                        }, label: {
                            
                            VStack(spacing: 3) {
                                
                                Image("Wallet")
                                    .resizable()
                                    .renderingMode(.template)
                                    .frame(width: 21, height: 21)
                                    .foregroundColor(.gray)
                            }
                        })
                    }
                }
                .padding()
                
                // MARK: - TABS
                
                HStack {
                    
                    ForEach(Array(zip(viewModel.tabs.indices, viewModel.tabs)), id: \.0) { index, name in
                        
                        Button(action: {
                            
                            withAnimation(.spring()) {
                                
                                viewModel.current_tab = index
                            }
                            
                        }, label: {
                            
                            VStack {
                                
                                Text(name)
                                    .foregroundColor(viewModel.current_tab == index ? .white : .gray)
                                    .font(.system(size: 14, weight: .medium))
                                
                                if viewModel.current_tab == index {
                                    
                                    RoundedRectangle(cornerRadius: 10)
                                        .fill(Color("primary"))
                                        .frame(width: 48, height: 3)
                                        .matchedGeometryEffect(id: "tab", in: animation)
                                    
                                } else {
                                    
                                    RoundedRectangle(cornerRadius: 10)
                                        .fill(.clear)
                                        .frame(height: 3)
                                }
                            }
                            .frame(maxWidth: .infinity)
                        })
                    }
                }
                .padding(.top)
                
                TabView(selection: $viewModel.current_tab, content: {
                    
                    CoinView()
                        .tag(0)
                    
                    NFTView()
                        .tag(1)
                    
                    DefiView()
                        .tag(2)
                })
                .tabViewStyle(.page(indexDisplayMode: .never))
                .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .never))
                
                Spacer()
            }
        }
        .ignoresSafeArea(.all, edges: .bottom)
    }
}

struct WalletView_Previews: PreviewProvider {
    static var previews: some View {
        WalletView()
    }
}
