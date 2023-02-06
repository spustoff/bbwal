//
//  BrowserView.swift
//  BBWal
//
//  Created by Вячеслав on 1/29/23.
//

import SwiftUI

struct BrowserView: View {
    
    @StateObject var viewModel = BrowserViewModel()
    
    @Namespace var animation
    
    var body: some View {
        
        ZStack {
            
            Image("bg")
                .resizable()
                .ignoresSafeArea()
            
            VStack {
                
                ZStack {
                    
                    Text("Browser")
                        .foregroundColor(.white)
                        .font(.system(size: 17, weight: .medium))
                }
                .padding()
                
                ScrollView(.vertical, showsIndicators: true) {
                    
                    LazyVStack {
                        
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
                        
                        HStack {
                            
                            ScrollView(.horizontal, showsIndicators: false) {
                                
                                LazyHStack {
                                    
                                    ForEach(viewModel.tabs, id: \.self) { index in
                                        
                                        VStack {
                                            
                                            Text(index)
                                                .foregroundColor(viewModel.current_tab == index ? .white : .gray)
                                                .font(.system(size: 15, weight: .medium))
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
                                        .frame(maxWidth: .infinity)
                                        .padding(.horizontal)
                                    }
                                }
                            }
                        }
                        .frame(height: 50)
                        
                        Image("img")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(maxWidth: .infinity)
                            .frame(height: 120)
                            .padding()
                        
                        Text("Hot")
                            .foregroundColor(.white)
                            .font(.system(size: 19, weight: .medium))
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding()
                        
                        ScrollView(.horizontal, showsIndicators: false) {
                            
                            LazyHStack {
                                
                                ForEach(1...10, id: \.self) { _ in
                                    
                                    VStack {
                                        
                                        RoundedRectangle(cornerRadius: 10)
                                            .fill(.gray.opacity(0.2))
                                            .frame(width: 45, height: 45)
                                        
                                        Text("BBpay")
                                            .foregroundColor(.gray)
                                            .font(.system(size: 14, weight: .regular))
                                    }
                                    .padding(.horizontal)
                                }
                            }
                        }
                        .frame(height: 70)
                        
                        Text("Endorsed by BBSoft")
                            .foregroundColor(.white)
                            .font(.system(size: 19, weight: .medium))
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding()
                        
                        ScrollView(.horizontal, showsIndicators: false) {
                            
                            LazyHStack {
                                
                                ForEach(1...10, id: \.self) { _ in
                                    
                                    VStack {
                                        
                                        RoundedRectangle(cornerRadius: 10)
                                            .fill(.gray.opacity(0.2))
                                            .frame(width: 45, height: 45)
                                        
                                        Text("BBpay")
                                            .foregroundColor(.gray)
                                            .font(.system(size: 14, weight: .regular))
                                    }
                                    .padding(.horizontal)
                                }
                            }
                        }
                        .frame(height: 70)
                    }
                }
                
                Spacer()
            }
        }
    }
}

struct BrowserView_Previews: PreviewProvider {
    static var previews: some View {
        BrowserView()
    }
}
