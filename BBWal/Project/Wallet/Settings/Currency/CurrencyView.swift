//
//  CurrencyView.swift
//  BBWal
//
//  Created by Вячеслав on 1/24/23.
//

import SwiftUI

struct CurrencyView: View {
    
    @StateObject var viewModel = CurrencyViewModel()
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        
        ZStack {
            
            Image("bg")
                .resizable()
                .ignoresSafeArea()
            
            VStack {
                
                ZStack {
                    
                    Text("Currency")
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
                
                ScrollView(.vertical, showsIndicators: true) {
                    
                    LazyVStack {
                        
                        ForEach(viewModel.currencies, id: \.self) { index in
                            
                            HStack {
                                
                                Text(index)
                                    .foregroundColor(.white)
                                    .font(.system(size: 14, weight: .medium))
                                
                                Spacer()
                            }
                            .padding()
                            .background(RoundedRectangle(cornerRadius: 10).fill(Color("gray")))
                        }
                    }
                    .padding(.horizontal)
                }
                
                Spacer()
            }
        }
    }
}

struct CurrencyView_Previews: PreviewProvider {
    static var previews: some View {
        CurrencyView()
    }
}
