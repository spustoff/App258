//
//  ADAkiZxrzI.swift
//  App258
//
//  Created by Вячеслав on 11/17/23.
//

import SwiftUI

struct ADAkiZxrzI: View {
    
    @StateObject var PxnkGadfnk: blNXWPnTjJ
    
    @Environment(\.presentationMode) var router
    
    var body: some View {
        
        ZStack {
            
            Color("bg")
                .ignoresSafeArea()
            
            VStack {
                
                ZStack {
                    
                    Text("Favorites")
                        .foregroundColor(.white)
                        .font(.system(size: 18, weight: .semibold))
                    
                    HStack {
                        
                        Button(action: {
                            
                            router.wrappedValue.dismiss()
                            
                        }, label: {
                            
                            Image(systemName: "chevron.left")
                                .foregroundColor(Color("primary"))
                                .font(.system(size: 17, weight: .regular))
                        })
                        
                        Spacer()
                    }
                }
                .padding()
                
                if PxnkGadfnk.saved_signals.isEmpty {
                    
                    VStack(alignment: .center, spacing: 4, content: {
                        
                        Text("No any favorited signal")
                            .foregroundColor(.white)
                            .font(.system(size: 18, weight: .semibold))
                            .multilineTextAlignment(.center)
                        
                        Text("You don't have any signal right now")
                            .foregroundColor(.white.opacity(0.6))
                            .font(.system(size: 14, weight: .regular))
                            .multilineTextAlignment(.center)
                    })
                    .frame(maxHeight: .infinity, alignment: .center)
                    
                } else {
                    
                    ScrollView(.vertical, showsIndicators: false) {
                        
                        LazyVStack {
                            
                            ForEach(PxnkGadfnk.QonoltsDBx.filter{PxnkGadfnk.saved_signals.contains($0.resultDate)}, id: \.self) { index in
                                
                                HStack {
                                    
                                    VStack(alignment: .leading, spacing: 8, content: {
                                        
                                        Text(index.resultInstrument)
                                            .foregroundColor(.white)
                                            .font(.system(size: 15, weight: .medium))
                                        
                                        HStack {
                                            
                                            HStack(spacing: 6, content: {
                                                
                                                Text("S/I")
                                                    .foregroundColor(.white)
                                                    .font(.system(size: 14, weight: .medium))
                                                
                                                Text("\(index.resultSl)")
                                                    .foregroundColor(.red)
                                                    .font(.system(size: 14, weight: .medium))
                                            })
                                            
                                            HStack(spacing: 6, content: {
                                                
                                                Text("T/P")
                                                    .foregroundColor(.white)
                                                    .font(.system(size: 14, weight: .medium))
                                                
                                                Text("\(index.resultTp)")
                                                    .foregroundColor(.green)
                                                    .font(.system(size: 14, weight: .medium))
                                            })
                                        }
                                        
                                        Text(index.resultDate)
                                            .foregroundColor(.gray)
                                            .font(.system(size: 13, weight: .regular))
                                    })
                                    
                                    Spacer()
                                    
                                    VStack(alignment: .trailing, spacing: 8, content: {
                                        
                                        Button(action: {
                                            
                                            if PxnkGadfnk.saved_signals.contains(index.resultDate) {
                                                
                                                if let indexer = PxnkGadfnk.saved_signals.firstIndex(of: index.resultDate) {
                                                    
                                                    PxnkGadfnk.saved_signals.remove(at: indexer)
                                                    
                                                }
                                                
                                            } else {
                                                
                                                PxnkGadfnk.saved_signals.append(index.resultDate)
                                            }
                                            
                                        }, label: {
                                            
                                            Image(systemName: PxnkGadfnk.saved_signals.contains(index.resultDate) ? "star.fill" : "star")
                                                .foregroundColor(Color("primary"))
                                                .font(.system(size: 19, weight: .medium))
                                        })
                                        
                                        Text("$\(String(format: "%.2f", index.resultP))")
                                            .foregroundColor(.white)
                                            .font(.system(size: 17, weight: .medium))
                                        
                                        Text("Down")
                                            .foregroundColor(.red)
                                            .font(.system(size: 13, weight: .regular))
                                    })
                                }
                                .padding()
                                .background(RoundedRectangle(cornerRadius: 15).fill(Color.gray.opacity(0.1)))
                            }
                        }
                        .padding()
                    }
                }
            }
            .onAppear {
                
                PxnkGadfnk.wGQdJrBwcj()
            }
        }
    }
}

#Preview {
    ADAkiZxrzI(PxnkGadfnk: blNXWPnTjJ())
}
