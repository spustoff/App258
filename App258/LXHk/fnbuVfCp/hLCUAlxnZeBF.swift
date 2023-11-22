//
//  XEegxhmvSC.swift
//  App258
//
//  Created by Вячеслав on 11/17/23.
//

import SwiftUI
import StoreKit

struct XEegxhmvSC: View {
    
    var body: some View {
        
        ZStack {
            
            Color("bg")
                .ignoresSafeArea()
            
            VStack {
                
                Text("Settings")
                    .foregroundColor(.white)
                    .font(.system(size: 26, weight: .semibold))
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding()
                
                Button(action: {
                    
                    guard let url = URL(string: "https://docs.google.com/document/d/1JuFh9qRUpmManza7yqMbc31zwHV8KZ8qVYnqrv-oBcY/edit?usp=sharing") else { return }
                    
                    UIApplication.shared.open(url)
                    
                }, label: {
                    
                    HStack {
                        
                        Image(systemName: "doc.fill")
                            .foregroundColor(.white)
                            .font(.system(size: 15, weight: .semibold))
                            .frame(width: 36, height: 36)
                            .background(RoundedRectangle(cornerRadius: 10).fill(Color("primary")))
                        
                        Text("Usage Policy")
                            .foregroundColor(.white)
                            .font(.system(size: 15, weight: .regular))
                        
                        Spacer()
                        
                        Image(systemName: "chevron.right")
                            .foregroundColor(.gray)
                            .font(.system(size: 12, weight: .regular))
                    }
                    .padding()
                    .background(RoundedRectangle(cornerRadius: 15).fill(.gray.opacity(0.1)))
                    .padding(.horizontal)
                })
                
                Button(action: {
                    
                    SKStoreReviewController.requestReview()
                    
                }, label: {
                    
                    HStack {
                        
                        Image(systemName: "star.fill")
                            .foregroundColor(.white)
                            .font(.system(size: 15, weight: .semibold))
                            .frame(width: 36, height: 36)
                            .background(RoundedRectangle(cornerRadius: 10).fill(Color("primary")))
                        
                        Text("Rate Us")
                            .foregroundColor(.white)
                            .font(.system(size: 15, weight: .regular))
                        
                        Spacer()
                        
                        Image(systemName: "chevron.right")
                            .foregroundColor(.gray)
                            .font(.system(size: 12, weight: .regular))
                    }
                    .padding()
                    .background(RoundedRectangle(cornerRadius: 15).fill(.gray.opacity(0.1)))
                    .padding(.horizontal)
                })
                
                Spacer()
            }
        }
    }
}

#Preview {
    XEegxhmvSC()
}
