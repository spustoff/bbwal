//
//  EarnView.swift
//  BBWal
//
//  Created by Вячеслав on 1/29/23.
//

import SwiftUI

struct EarnView: View {
    
    @StateObject var viewModel = EarnViewModel()
    @Namespace var animation
    
    var body: some View {
        
        ZStack {
            
            Image("bg")
                .resizable()
                .ignoresSafeArea()
            
            VStack {
                
                ZStack {
                    
                    HStack {
                        
                        Text("Wallet #1")
                            .foregroundColor(.white)
                            .font(.system(size: 17, weight: .medium))
                        
                        Image(systemName: "chevron.down")
                            .foregroundColor(.white)
                            .font(.system(size: 16, weight: .regular))
                    }
                }
                .padding()
                
                ScrollView(.vertical, showsIndicators: true) {
                    
                    LazyVStack {
                        
                        VStack(alignment: .leading) {
                            
                            HStack {
                                
                                VStack(alignment: .leading, content: {
                                    
                                    Text("All")
                                        .foregroundColor(.white)
                                        .font(.system(size: 14, weight: .medium))
                                    
                                    Text("= $0")
                                        .foregroundColor(.white)
                                        .font(.system(size: 18, weight: .medium))
                                })
                                
                                Spacer()
                                
                                VStack(alignment: .trailing, content: {
                                    
                                    Text("Earned")
                                        .foregroundColor(.white)
                                        .font(.system(size: 14, weight: .medium))
                                    
                                    Text("= $0")
                                        .foregroundColor(.white)
                                        .font(.system(size: 18, weight: .medium))
                                })

                            }
                            
                            Text("Using Smart Contracts, Tokens, and Crypto is always a risk . DYOR before investing . ")
                                .foregroundColor(.gray)
                                .font(.system(size: 13, weight: .regular))
                                .padding(.top)
                        }
                        .padding()
                        
                        HStack {
                            
                            ForEach(viewModel.tabs, id: \.self) { index in
                                
                                VStack {
                                    
                                    Text(index)
                                        .foregroundColor(viewModel.current_tab == index ? .white : .gray)
                                        .font(.system(size: 16, weight: .medium))
                                        .frame(maxWidth: .infinity)
                                        .onTapGesture {
                                            
                                            withAnimation(.spring()) {
                                                
                                                viewModel.current_tab = index
                                            }
                                        }
                                    
                                    if viewModel.current_tab == index {
                                        
                                        RoundedRectangle(cornerRadius: 5)
                                            .fill(.yellow)
                                            .frame(height: 1)
                                            .matchedGeometryEffect(id: "tab", in: animation)
                                        
                                    } else {
                                        
                                        RoundedRectangle(cornerRadius: 5)
                                            .fill(.clear)
                                            .frame(height: 1)
                                    }
                                }
                            }
                        }
                        .padding()
                        
                        HStack {
                            
                            Image(systemName: "magnifyingglass")
                                .foregroundColor(.gray)
                                .font(.system(size: 14, weight: .regular))
                            
                            ZStack(alignment: .leading, content: {
                                
                                Text("Search")
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
                        .padding(.horizontal)
                        .padding(.bottom)
                        
                        Text("Pools")
                            .foregroundColor(.white)
                            .font(.system(size: 14, weight: .medium))
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding()
                        
                        ForEach(1...10, id: \.self) { index in
                            
                            HStack {
                                
                                Image("Bitcoin")
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(width: 30, height: 30)
                                
                                VStack(alignment: .leading, content: {
                                    
                                    Text("BBT")
                                        .foregroundColor(.white)
                                        .font(.system(size: 18, weight: .medium))
                                    
                                    Text("TVC: 9.15M")
                                        .foregroundColor(.gray)
                                        .font(.system(size: 13, weight: .regular))
                                })
                                
                                Spacer()
                                
                                VStack(alignment: .trailing, content: {
                                    
                                    Text("4,5% + 7,6%")
                                        .foregroundColor(.white)
                                        .font(.system(size: 15, weight: .medium))
                                    
                                    Text("BSC | BBDex")
                                        .foregroundColor(.gray)
                                        .font(.system(size: 13, weight: .regular))
                                })
                            }
                            .padding()
                        }
                    }
                }
                
                Spacer()
            }
        }
        .ignoresSafeArea(.all, edges: .bottom)
    }
}

struct EarnView_Previews: PreviewProvider {
    static var previews: some View {
        EarnView()
    }
}
