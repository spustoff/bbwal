//
//  Step1.swift
//  BBWal
//
//  Created by Вячеслав on 1/23/23.
//

import SwiftUI

struct Step1: View {
    
    var body: some View {
        
        ZStack {
            
            Image("bg")
                .resizable()
                .ignoresSafeArea()
            
            VStack {
                
                HStack {
                    
                    ForEach(1...3, id: \.self) { index in
                        
                        RoundedRectangle(cornerRadius: 10)
                            .fill(index > 1 ? .gray.opacity(0.3) : Color("primary"))
                            .frame(height: 3)
                    }
                }
                .padding()
                
                Spacer()
            }
            
            VStack(alignment: .leading) {
                
                Text("Generate a mnemonic phrase")
                    .foregroundColor(.white)
                    .font(.system(size: 17, weight: .semibold))
                
                Text("The mnemonic phrase (Seed-phrase) is the master key to your wallet. It can be used to restore your wallet on any compatible device. That is, whoever has the seed phrase can get full control over your wallet. So don't give your seed phrase to ANYONE.")
                    .foregroundColor(.gray)
                    .font(.system(size: 14, weight: .regular))
            }
            .padding()
            
            VStack {
                
                Spacer()
                
                NavigationLink(destination: {
                    
                    Step2()
                        .navigationBarBackButtonHidden()
                    
                }, label: {
                    
                    Text("Generate")
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

struct Step1_Previews: PreviewProvider {
    static var previews: some View {
        Step1()
    }
}
