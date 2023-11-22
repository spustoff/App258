//
//  MSHJSmEEWG.swift
//  App258
//
//  Created by Вячеслав on 11/17/23.
//

import SwiftUI

struct MSHJSmEEWG: View {
    
    @StateObject var PxnkGadfnk = jcHoGHxagz()
    
    var body: some View {
        
        ZStack {
            
            Color("bg")
                .ignoresSafeArea()
            
            VStack {
                
                Text("Quotes")
                    .foregroundColor(.white)
                    .font(.system(size: 26, weight: .semibold))
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding()
                
                if PxnkGadfnk.eUfbpLzwxU.isEmpty {
                    
                    VStack(alignment: .center, spacing: 4, content: {
                        
                        Text("No any eUfbpLzwxU")
                            .foregroundColor(.white)
                            .font(.system(size: 18, weight: .semibold))
                            .multilineTextAlignment(.center)
                        
                        Text("You don't have any BmDZpPhLqF right now")
                            .foregroundColor(.white.opacity(0.6))
                            .font(.system(size: 14, weight: .regular))
                            .multilineTextAlignment(.center)
                    })
                    .frame(maxHeight: .infinity, alignment: .center)
                    
                } else {
                    
                    ScrollView(.vertical, showsIndicators: true) {
                        
                        LazyVStack {
                            
                            ForEach(PxnkGadfnk.eUfbpLzwxU, id: \.self) { index in
                            
                                VStack(alignment: .leading, spacing: 10, content: {
                                    
                                    HStack {
                                        
                                        Circle()
                                            .fill(.gray.opacity(0.1))
                                            .frame(width: 41, height: 41)
                                            .overlay (
                                            
                                                Image(systemName: "person")
                                                    .foregroundColor(.gray.opacity(0.5))
                                                    .font(.system(size: 14, weight: .regular))
                                            )
                                        
                                        VStack(alignment: .leading, spacing: 5, content: {
                                            
                                            Text(index.name ?? "")
                                                .foregroundColor(.white)
                                                .font(.system(size: 17, weight: .medium))
                                            
                                            Text(index.RKnSKwwvnL ?? "")
                                                .foregroundColor(.gray)
                                                .font(.system(size: 13, weight: .regular))
                                        })
                                    }
                                    
                                    HStack(alignment: .top) {
                                        
                                        RoundedRectangle(cornerRadius: 15)
                                            .fill(.white)
                                            .frame(width: 6)
                                            .frame(maxHeight: .infinity)
                                        
                                        Text(index.BmDZpPhLqF ?? "")
                                            .foregroundColor(.white)
                                            .font(.system(size: 14, weight: .regular))
                                            .multilineTextAlignment(.leading)
                                    }
                                })
                                .padding()
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .background(RoundedRectangle(cornerRadius: 15).fill(Color.gray.opacity(0.1)))
                            }
                        }
                        .padding([.horizontal, .bottom])
                    }
                }
            }
            
            VStack {
                
                Spacer()
                
                Button(action: {
                    
                    PxnkGadfnk.khwXepHpBn = true
                    
                }, label: {
                    
                    Text("Add a BmDZpPhLqF")
                        .foregroundColor(.white)
                        .font(.system(size: 15, weight: .medium))
                        .frame(maxWidth: .infinity)
                        .frame(height: 50)
                        .background(RoundedRectangle(cornerRadius: 15).fill(Color("primary")))
                        .padding()
                })
            }
        }
        .onAppear {
            
            PxnkGadfnk.fnhFWdyQUT()
        }
        .sheet(isPresented: $PxnkGadfnk.khwXepHpBn, content: {
            
            dkZhyRfSnZ(PxnkGadfnk: PxnkGadfnk)
        })
    }
}

#Preview {
    MSHJSmEEWG()
}
