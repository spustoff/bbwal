//
//  NetworksView.swift
//  BBWal
//
//  Created by Вячеслав on 1/23/23.
//

import SwiftUI

struct NetworksView: View {
    
    @StateObject var viewModel = NetworksViewModel()
    
    var body: some View {
        
        ZStack {
            
            Image("bg")
                .resizable()
                .ignoresSafeArea()
            
            VStack {
                
                ZStack {
                    
                    Text("Select network")
                        .foregroundColor(.white)
                        .font(.system(size: 18, weight: .semibold))
                    
                    HStack {
                        
                        Button(action: {}, label: {
                            
                            Image(systemName: "chevron.left")
                                .foregroundColor(.white)
                                .font(.system(size: 17, weight: .medium))
                        })
                        
                        Spacer()
                    }
                }
                .padding()
                
                HStack {
                    
                    Image(systemName: "magnifyingglass")
                        .foregroundColor(.gray)
                        .font(.system(size: 17, weight: .regular))
                    
                    ZStack(alignment: .leading, content: {
                        
                        Text("Search networks")
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
                
                ScrollView(.vertical, showsIndicators: true) {
                    
                    LazyVStack {
                        
                        ForEach(viewModel.networks, id: \.self) { index in
                            
                            HStack {
                                
                                Text(index)
                                    .foregroundColor(.white)
                                    .font(.system(size: 15, weight: .medium))
                                
                                Spacer()
                            }
                            .padding()
                            .background(RoundedRectangle(cornerRadius: 10).fill(Color("gray")))
                            .padding(.horizontal)
                            .overlay (
                            
                                ZStack {
                                    
                                    RoundedRectangle(cornerRadius: 10).stroke(Color("primary"))
                                        .padding(.horizontal)
                                }
                                    .opacity(viewModel.current_network == index ? 1 : 0)
                            )
                            .onTapGesture {
                                
                                withAnimation(.spring()) {
                                    
                                    viewModel.current_network = index
                                }
                            }
                        }
                    }
                    .padding(1)
                }
                
                Spacer()
            }
        }
        .ignoresSafeArea(.all, edges: .bottom)
    }
}

struct NetworksView_Previews: PreviewProvider {
    static var previews: some View {
        NetworksView()
    }
}
