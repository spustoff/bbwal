//
//  Step2.swift
//  BBWal
//
//  Created by Вячеслав on 1/23/23.
//

import SwiftUI

struct Step2: View {
    
    @StateObject var viewModel = Step2ViewModel()
    
    var body: some View {
        
        ZStack {
            
            Image("bg")
                .resizable()
                .ignoresSafeArea()
            
            VStack {
                
                HStack {
                    
                    ForEach(1...3, id: \.self) { index in
                        
                        RoundedRectangle(cornerRadius: 10)
                            .fill(index > 2 ? .gray.opacity(0.3) : Color("primary"))
                            .frame(height: 3)
                    }
                }
                .padding()
                
                Spacer()
            }
            
            VStack(alignment: .leading) {
                
                Text("A backup copy of the mnemonic phrase")
                    .foregroundColor(.white)
                    .font(.system(size: 17, weight: .semibold))
                
                Text("Write down the words of the mnemonic phrase in order and keep them in a safe place. The mnemonic phrase can be used to restore your wallet. DO NOT take screenshots and DO NOT send the phrase to others.")
                    .foregroundColor(.gray)
                    .font(.system(size: 14, weight: .regular))
                
                LazyVGrid(columns: viewModel.columns, content: {
                    
                    ForEach(0..<viewModel.words.count, id: \.self) { index in
                        
                        HStack {
                            
                            Text("\(index)")
                                .foregroundColor(.white)
                                .font(.system(size: 11, weight: .regular))
                            
                            Text(viewModel.words[index])
                                .foregroundColor(.white)
                                .font(.system(size: 13, weight: .medium))
                        }
                        .padding(.horizontal)
                        .padding(.vertical, 7)
                        .background(RoundedRectangle(cornerRadius: 10).fill(.gray.opacity(0.2)))
                    }
                })
                .padding(.horizontal)
                .padding(.top)
            }
            .padding()
            
            VStack {
                
                Spacer()
                
                NavigationLink(destination: {
                    
                    Step3()
                        .navigationBarBackButtonHidden()
                    
                }, label: {
                    
                    Text("Next")
                        .foregroundColor(.black)
                        .font(.system(size: 15, weight: .medium))
                        .frame(maxWidth: .infinity)
                        .frame(height: 50)
                        .background(RoundedRectangle(cornerRadius: 15).fill(Color("primary")))
                        .padding()
                })
            }
        }
    }
}

struct Step2_Previews: PreviewProvider {
    static var previews: some View {
        Step2()
    }
}
