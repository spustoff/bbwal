//
//  TabBar.swift
//  BBWal
//
//  Created by Вячеслав on 2/6/23.
//

import SwiftUI

struct TabBar: View {
    
    @Binding var selectedTab: String
    @State var tabs: [String] = ["Wallet", "Trade", "Browser", "Swap", "Earn"]
    
    var body: some View {
        
        HStack {
            
            ForEach(tabs, id: \.self) { index in
                
                Button(action: {
                    
                    selectedTab = index
                    
                }, label: {
                    
                    VStack(alignment: .center, spacing: 5, content: {
                        
                        Image(index)
                            .renderingMode(.template)
                            .foregroundColor(selectedTab == index ? Color("primary") : .gray)
                        
                        Text(index)
                            .foregroundColor(selectedTab == index ? Color("primary") : .gray)
                            .font(.system(size: 13, weight: .medium))
                    })
                    .frame(maxWidth: .infinity)
                })
            }
        }
        .frame(maxWidth: .infinity)
        .padding(.horizontal)
        .padding(.top)
        .background(Color.black)
    }
}

//struct TabBar_Previews: PreviewProvider {
//    static var previews: some View {
//        TabBar()
//    }
//}
