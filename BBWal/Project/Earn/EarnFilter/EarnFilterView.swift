//
//  EarnFilterView.swift
//  BBWal
//
//  Created by Вячеслав on 1/29/23.
//

import SwiftUI

struct EarnFilterView: View {
    
    @StateObject var viewModel = EarnHistoryViewModel()
    
    var body: some View {
        
        ZStack {
            
            Image("bg")
                .resizable()
                .ignoresSafeArea()
            
            VStack {
                
                ZStack {
                    
                    Text("History")
                        .foregroundColor(.white)
                        .font(.system(size: 17, weight: .medium))
                    
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
                
                Text("Network")
                    .foregroundColor(.white)
                    .font(.system(size: 18, weight: .medium))
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding()
                
                ScrollView(.horizontal, showsIndicators: false) {
                    
                    LazyHStack {
                        
                        ForEach(viewModel.networks, id: \.self) { index in
                            
                            Text(index)
                                .foregroundColor(viewModel.current_network == index ? .white : .gray)
                                .font(.system(size: 14, weight: .medium))
                                .padding()
                                .background(Capsule().fill(Color("gray").opacity(viewModel.current_network == index ? 1 : 0.7)))
                                .padding(3)
                                .onTapGesture {
                                    
                                    withAnimation(.spring()) {
                                        
                                        viewModel.current_network = index
                                    }
                                }
                        }
                    }
                }
                .frame(height: 50)
                
                Text("Protocol")
                    .foregroundColor(.white)
                    .font(.system(size: 18, weight: .medium))
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding()
                
                Text("Please select a network first")
                    .foregroundColor(.gray)
                    .font(.system(size: 14, weight: .regular))
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.horizontal)
                
                Text("Type")
                    .foregroundColor(.white)
                    .font(.system(size: 18, weight: .medium))
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding()
                
                ScrollView(.horizontal, showsIndicators: false) {
                    
                    LazyHStack {
                        
                        ForEach(viewModel.types, id: \.self) { index in
                            
                            Text(index)
                                .foregroundColor(viewModel.current_type == index ? .white : .gray)
                                .font(.system(size: 14, weight: .medium))
                                .padding()
                                .background(Capsule().fill(Color("gray").opacity(viewModel.current_type == index ? 1 : 0.7)))
                                .padding(3)
                                .onTapGesture {
                                    
                                    withAnimation(.spring()) {
                                        
                                        viewModel.current_type = index
                                    }
                                }
                        }
                    }
                }
                .frame(height: 50)
                
                Spacer()
                
                HStack {
                    
                    Button(action: {}, label: {
                        
                        Text("Reset")
                            .foregroundColor(Color("primary"))
                            .font(.system(size: 15, weight: .medium))
                            .frame(maxWidth: .infinity)
                            .frame(height: 50)
                            .background(RoundedRectangle(cornerRadius: 10).stroke(Color("primary")))
                    })
                    
                    Spacer()
                    
                    Button(action: {}, label: {
                        
                        Text("Confirm")
                            .foregroundColor(.black)
                            .font(.system(size: 15, weight: .medium))
                            .frame(maxWidth: .infinity)
                            .frame(height: 50)
                            .background(RoundedRectangle(cornerRadius: 10).fill(Color("primary")))
                    })
                }
                .padding(.horizontal)
                .padding(.vertical, 1)
            }
        }
    }
}

struct EarnFilterView_Previews: PreviewProvider {
    static var previews: some View {
        EarnFilterView()
    }
}
