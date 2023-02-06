//
//  Step3.swift
//  BBWal
//
//  Created by Вячеслав on 1/23/23.
//

import SwiftUI

struct Step3: View {
    
    @StateObject var viewModel = Step3ViewModel()
    
    var body: some View {
        
        ZStack {
            
            Image("bg")
                .resizable()
                .ignoresSafeArea()
            
            VStack {
                
                HStack {
                    
                    ForEach(1...3, id: \.self) { index in
                        
                        RoundedRectangle(cornerRadius: 10)
                            .fill(index > 3 ? .gray.opacity(0.3) : Color("primary"))
                            .frame(height: 3)
                    }
                }
                .padding()
                
                Spacer()
            }
            
            VStack(alignment: .center) {
                
                Text("Your wallet is ready for use")
                    .foregroundColor(.white)
                    .font(.system(size: 23, weight: .semibold))
                    .padding(.bottom, 30)
                
                Text("Now please name your wallet")
                    .foregroundColor(.gray)
                    .font(.system(size: 15, weight: .regular))
                
                ZStack(alignment: .leading, content: {
                    
                    Text("Name your wallet (max 20 characters)")
                        .foregroundColor(.gray)
                        .font(.system(size: 14, weight: .regular))
                        .opacity(viewModel.name.isEmpty ? 1 : 0)
                    
                    TextField("", text: $viewModel.name)
                        .foregroundColor(.white)
                        .font(.system(size: 14, weight: .regular))
                })
                .padding()
                .background(RoundedRectangle(cornerRadius: 15).fill(.gray.opacity(0.2)))
                .padding()
            }
            .padding()
            
            VStack {
                
                Spacer()
                
                NavigationLink(destination: {
                    
                    
                }, label: {
                    
                    Text("Done")
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

struct Step3_Previews: PreviewProvider {
    static var previews: some View {
        Step3()
    }
}
