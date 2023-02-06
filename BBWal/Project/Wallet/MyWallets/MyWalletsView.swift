//
//  MyWalletsView.swift
//  BBWal
//
//  Created by Вячеслав on 1/24/23.
//

import SwiftUI

struct MyWalletsView: View {
    
    @StateObject var viewModel = MyWalletsmViewModel()
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        
        ZStack {
            
            Image("bg")
                .resizable()
                .ignoresSafeArea()
            
            VStack {
                
                ZStack {
                    
                    Text("My Wallets")
                        .foregroundColor(.white)
                        .font(.system(size: 18, weight: .semibold))
                    
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
                
                Text("Software wallets")
                    .foregroundColor(.white)
                    .font(.system(size: 14, weight: .medium))
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding()
                
                ScrollView(.vertical, showsIndicators: true) {
                    
                    LazyVStack {
                        
                        NavigationLink(destination: {}, label: {
                            
                            HStack {
                                
                                VStack(alignment: .leading, content: {
                                    
                                    Text("Wallet #1")
                                        .foregroundColor(.white)
                                        .font(.system(size: 15, weight: .medium))
                                    
                                    Text("Mnemonic ≈ $81.685,12")
                                        .foregroundColor(.gray)
                                        .font(.system(size: 12, weight: .regular))
                                })
                                
                                Spacer()
                                
                                Image(systemName: "ellipsis")
                                    .foregroundColor(.white)
                                    .font(.system(size: 15, weight: .regular))
                            }
                            .padding()
                            .background(RoundedRectangle(cornerRadius: 10).fill(Color("gray")))
                        })
                    }
                    .padding(.horizontal)
                }
                
                Spacer()
            }
        }
    }
}

struct MyWalletsView_Previews: PreviewProvider {
    static var previews: some View {
        MyWalletsView()
    }
}
