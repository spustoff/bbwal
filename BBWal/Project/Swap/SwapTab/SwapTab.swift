//
//  SwapTab.swift
//  BBWal
//
//  Created by Вячеслав on 2/6/23.
//

import SwiftUI

struct SwapTab: View {
    
    var body: some View {
        
        VStack {
            
            VStack {
                
                HStack {
                    
                    Text("Pay")
                        .foregroundColor(.white)
                        .font(.system(size: 15, weight: .medium))
                    
                    Spacer()
                    
                    Text("Min 50% Max")
                        .foregroundColor(.gray)
                        .font(.system(size: 12, weight: .regular))
                }
                
                HStack {
                    
                    Image("Bitcoin")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 25, height: 25)
                    
                    Text("BTC")
                        .foregroundColor(.white)
                        .font(.system(size: 15, weight: .medium))
                    
                    Image(systemName: "chevron.down")
                        .foregroundColor(.white)
                        .font(.system(size: 13, weight: .regular))
                    
                    Spacer()
                    
                    Text("0")
                        .foregroundColor(.white)
                        .font(.system(size: 17, weight: .medium))
                }
            }
            .padding()
            .background(RoundedRectangle(cornerRadius: 10).fill(Color("gray")))
            .padding(.horizontal)
            .padding(.top)
            
            VStack {
                
                HStack {
                    
                    Text("Receive")
                        .foregroundColor(.white)
                        .font(.system(size: 15, weight: .medium))
                    
                    Spacer()
                    
                    Text("Min 50% Max")
                        .foregroundColor(.gray)
                        .font(.system(size: 12, weight: .regular))
                }
                
                HStack {
                    
                    Image("Bitcoin")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 25, height: 25)
                    
                    Text("USDT")
                        .foregroundColor(.white)
                        .font(.system(size: 15, weight: .medium))
                    
                    Image(systemName: "chevron.down")
                        .foregroundColor(.white)
                        .font(.system(size: 13, weight: .regular))
                    
                    Spacer()
                    
                    Text("0")
                        .foregroundColor(.white)
                        .font(.system(size: 17, weight: .medium))
                }
            }
            .padding()
            .background(RoundedRectangle(cornerRadius: 10).fill(Color("gray")))
            .padding(.horizontal)
            
            Button(action: {}, label: {
                
                Text("Swap")
                    .foregroundColor(.black)
                    .font(.system(size: 15, weight: .medium))
                    .frame(maxWidth: .infinity)
                    .frame(height: 50)
                    .background(RoundedRectangle(cornerRadius: 15).fill(Color("primary")))
                    .padding()
            })
            
            VStack(spacing: 10) {
                
                HStack {
                    
                    Text("Provider")
                        .foregroundColor(.white)
                        .font(.system(size: 15, weight: .medium))
                    
                    Spacer()
                    
                    Text("MEXC")
                        .foregroundColor(.white)
                        .font(.system(size: 14, weight: .medium))
                }
                
                HStack {
                    
                    Text("Rate")
                        .foregroundColor(.white)
                        .font(.system(size: 15, weight: .medium))
                    
                    Spacer()
                    
                    Text("1 BTC = 22 785.54 USDT")
                        .foregroundColor(.gray)
                        .font(.system(size: 14, weight: .medium))
                }
                
                HStack {
                    
                    Text("Fee")
                        .foregroundColor(.white)
                        .font(.system(size: 15, weight: .medium))
                    
                    Spacer()
                    
                    Text("0,2%")
                        .foregroundColor(.gray)
                        .font(.system(size: 14, weight: .medium))
                }
                
                HStack {
                    
                    Text("Withdrawal fee")
                        .foregroundColor(.white)
                        .font(.system(size: 15, weight: .medium))
                    
                    Spacer()
                    
                    Text("4 USDT")
                        .foregroundColor(.gray)
                        .font(.system(size: 14, weight: .medium))
                }
                
                HStack {
                    
                    Text("Time")
                        .foregroundColor(.white)
                        .font(.system(size: 15, weight: .medium))
                    
                    Spacer()
                    
                    Text("10 min")
                        .foregroundColor(.gray)
                        .font(.system(size: 14, weight: .medium))
                }
            }
            .padding()
            .background(RoundedRectangle(cornerRadius: 10).fill(Color("gray")))
            .padding(.horizontal)
            
            Spacer()
        }
    }
}

struct SwapTab_Previews: PreviewProvider {
    static var previews: some View {
        SwapTab()
    }
}
