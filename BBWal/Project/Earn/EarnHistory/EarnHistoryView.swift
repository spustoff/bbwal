//
//  EarnHistoryView.swift
//  BBWal
//
//  Created by Вячеслав on 1/29/23.
//

import SwiftUI

struct EarnHistoryView: View {
    
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
                
                VStack {
                    
                    Text("Empty")
                        .foregroundColor(.white)
                        .font(.system(size: 21, weight: .medium))
                    
                    Text("No data yet")
                        .foregroundColor(.gray)
                        .font(.system(size: 14, weight: .regular))
                }
                .frame(maxHeight: .infinity, alignment: .center)
                
                Spacer()
            }
        }
    }
}

struct EarnHistoryView_Previews: PreviewProvider {
    static var previews: some View {
        EarnHistoryView()
    }
}
