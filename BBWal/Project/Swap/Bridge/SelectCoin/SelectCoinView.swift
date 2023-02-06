//
//  SelectCoinView.swift
//  BBWal
//
//  Created by Вячеслав on 1/29/23.
//

import SwiftUI

struct SelectCoinView: View {
    
    @StateObject var viewModel = SelectCoinViewModel()
    @Namespace var animation
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        
        ZStack {
            
            Image("bg")
                .resizable()
                .ignoresSafeArea()
            
            VStack {
                
                ZStack {
                    
                    Text("Select coin")
                        .foregroundColor(.white)
                        .font(.system(size: 17, weight: .medium))
                    
                    HStack {
                        
                        Button(action: {
                            
                            presentationMode.wrappedValue.dismiss()
                            
                        }, label: {
                            
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
                
                ScrollView(.horizontal, showsIndicators: false) {
                    
                    LazyHStack {
                        
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
                            .padding(.horizontal)
                        }
                    }
                    .padding()
                }
                .frame(height: 50)
                
                Text("In wallet")
                    .foregroundColor(.white)
                    .font(.system(size: 15, weight: .medium))
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding()
                
                ScrollView(.vertical, showsIndicators: true) {
                    
                    LazyVStack {
                        
                        ForEach(1...15, id: \.self) { _ in
                            
                            HStack {
                                
                                Image("Bitcoin")
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(width: 30, height: 30)
                                
                                VStack(alignment: .leading, content: {
                                    
                                    Text("BTC")
                                        .foregroundColor(.white)
                                        .font(.system(size: 15, weight: .medium))
                                    
                                    Text("13120i[kdpokSDIAS=")
                                        .foregroundColor(.gray)
                                        .font(.system(size: 13, weight: .regular))
                                })
                                
                                Spacer()
                                
                                Text("0")
                                    .foregroundColor(.white)
                                    .font(.system(size: 15, weight: .semibold))
                            }
                            .padding()
                            .background(RoundedRectangle(cornerRadius: 10).fill(Color("gray")))
                            .padding(.horizontal)
                        }
                    }
                }
                
                Spacer()
            }
        }
        .ignoresSafeArea(.all, edges: .bottom)
    }
}

struct SelectCoinView_Previews: PreviewProvider {
    static var previews: some View {
        SelectCoinView()
    }
}
