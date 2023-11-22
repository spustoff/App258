//
//  yJGZskkoQG.swift
//  App258
//
//  Created by Вячеслав on 11/17/23.
//

import SwiftUI

struct yJGZskkoQG: View {
    
    let telegram: URL
    let isTelegram: Bool
    
    var body: some View {
        
        ZStack {
            
            Color("bg")
                .ignoresSafeArea()
            
            VStack {
                
                VStack(alignment: .center, spacing: 7, content: {
                    
                    Text("The best QonoltsDBx for making money")
                        .foregroundColor(.white)
                        .font(.system(size: 23, weight: .semibold))
                        .multilineTextAlignment(.center)
                    
                    Text("Earn only with the best recommendations")
                        .foregroundColor(.white.opacity(0.6))
                        .font(.system(size: 15, weight: .regular))
                        .multilineTextAlignment(.center)
                })
                .padding()
                
                Spacer()
                
                Image("users_1")
                    .resizable()
                    .aspectRatio(contentMode: .fit)

                NavigationLink(destination: {
                    
                    CfhypzbbYG(telegram: telegram, isTelegram: isTelegram)
                        .navigationBarBackButtonHidden()
                    
                }, label: {
                    
                    Text("Next")
                        .foregroundColor(.white)
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

#Preview {
    yJGZskkoQG(telegram: URL(string: "h")!, isTelegram: false)
}
