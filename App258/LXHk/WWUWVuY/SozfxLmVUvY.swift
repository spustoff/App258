//
//  FuGzgjYxLx.swift
//  App258
//
//  Created by Вячеслав on 11/17/23.
//

import SwiftUI

struct FuGzgjYxLx: View {
    
    @StateObject var PxnkGadfnk = blNXWPnTjJ()
    
    var body: some View {
        
        ZStack {
            
            Color("bg")
                .ignoresSafeArea()
            
            VStack {
                
                HStack {
                    
                    Spacer()
                    
                    NavigationLink(destination: {
                        
                        ADAkiZxrzI(PxnkGadfnk: PxnkGadfnk)
                            .navigationBarBackButtonHidden()
                        
                    }, label: {
                        
                        Image(systemName: "star.fill")
                            .foregroundColor(.white)
                            .font(.system(size: 22, weight: .medium))
                    })
                }
                .padding([.top, .horizontal])
                
                Text("Signals")
                    .foregroundColor(.white)
                    .font(.system(size: 26, weight: .semibold))
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding([.horizontal, .bottom])
                
                if PxnkGadfnk.ETyKAsGscN {
                    
                    ProgressView()
                        .frame(maxHeight: .infinity, alignment: .center)
                    
                } else {
                    
                    if PxnkGadfnk.QonoltsDBx.isEmpty {
                        
                        VStack(alignment: .center, spacing: 4, content: {
                            
                            Text("No any QonoltsDBx")
                                .foregroundColor(.white)
                                .font(.system(size: 18, weight: .semibold))
                                .multilineTextAlignment(.center)
                            
                            Text("We don't have any signal right now")
                                .foregroundColor(.white.opacity(0.6))
                                .font(.system(size: 14, weight: .regular))
                                .multilineTextAlignment(.center)
                        })
                        .frame(maxHeight: .infinity, alignment: .center)
                        
                    } else {
                        
                        ScrollView(.vertical, showsIndicators: true) {
                            
                            LazyVStack {
                                
                                ForEach(PxnkGadfnk.QonoltsDBx.prefix(12), id: \.self) { index in
                                    
                                    Button(action: {
                                        
                                        PxnkGadfnk.ZwtNxGVEgM = index
                                        
                                        withAnimation(.spring()) {
                                            
                                            PxnkGadfnk.FIuggwPaVK = true
                                        }
                                        
                                    }, label: {
                                        
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
                                    })
                                }
                            }
                            .padding(.horizontal)
                        }
                    }
                }
            }
        }
        .onAppear {
            
            PxnkGadfnk.wGQdJrBwcj()
        }
        .overlay (
        
            ZStack {
                
                Color.black.opacity(PxnkGadfnk.FIuggwPaVK ? 0.5 : 0)
                    .ignoresSafeArea()
                    .onTapGesture() {
                        
                        withAnimation(.spring()) {
                            
                            PxnkGadfnk.FIuggwPaVK = false
                        }
                    }
                
                VStack {
                    
                    Rectangle()
                        .fill(.gray.opacity(0.2))
                        .frame(width: 60, height: 5)
                    
                    ZStack {
                        
                        Text(PxnkGadfnk.ZwtNxGVEgM?.resultInstrument ?? "")
                            .foregroundColor(.white)
                            .font(.system(size: 17, weight: .medium))
                        
                        HStack {
                            
                            Spacer()
                            
                            Button(action: {
                                
                                guard let index = PxnkGadfnk.ZwtNxGVEgM else { return }
                                
                                if PxnkGadfnk.saved_signals.contains(index.resultDate) {
                                    
                                    if let indexer = PxnkGadfnk.saved_signals.firstIndex(of: index.resultDate) {
                                        
                                        PxnkGadfnk.saved_signals.remove(at: indexer)
                                        
                                    }
                                    
                                } else {
                                    
                                    PxnkGadfnk.saved_signals.append(index.resultDate)
                                }
                                
                            }, label: {
                                
                                Image(systemName: PxnkGadfnk.saved_signals.contains(PxnkGadfnk.ZwtNxGVEgM?.resultDate ?? "") ? "star.fill" : "star")
                                    .foregroundColor(.yellow)
                                    .font(.system(size: 19, weight: .medium))
                            })
                        }
                    }
                    .padding(.bottom)
                    
                    HStack {
                        
                        Image(systemName: "arrow.up")
                            .foregroundColor(.green)
                            .font(.system(size: 18, weight: .bold))
                            .frame(width: 31, height: 31)
                            .background(RoundedRectangle(cornerRadius: 5).fill(.gray.opacity(0.2)))
                        
                        VStack(alignment: .leading, spacing: 5, content: {
                            
                            Text("When the price is reached: ")
                                .foregroundColor(.gray)
                                .font(.system(size: 12, weight: .regular))
                            
                            Text("\(PxnkGadfnk.ZwtNxGVEgM?.resultP ?? 0)")
                                .foregroundColor(.white)
                                .font(.system(size: 19, weight: .medium))
                        })
                        
                        Spacer()
                        
                        Text("Buy")
                            .foregroundColor(.green)
                            .font(.system(size: 15, weight: .medium))
                            .padding(8)
                            .background(RoundedRectangle(cornerRadius: 10).fill(.green.opacity(0.2)))
                    }
                    .padding(.vertical)
                    
                    VStack(spacing: 15) {
                        
                        HStack {
                            
                            VStack(alignment: .leading, spacing: 5, content: {
                                
                                Text("Stop loss")
                                    .foregroundColor(.gray)
                                    .font(.system(size: 11, weight: .regular))
                                
                                Text("\(PxnkGadfnk.ZwtNxGVEgM?.resultSl ?? 0)")
                                    .foregroundColor(.white)
                                    .font(.system(size: 14, weight: .medium))
                            })
                            
                            Spacer()
                            
                            VStack(alignment: .leading, spacing: 5, content: {
                                
                                Text("Take profit")
                                    .foregroundColor(.gray)
                                    .font(.system(size: 11, weight: .regular))
                                
                                Text("\(PxnkGadfnk.ZwtNxGVEgM?.resultTp ?? 0)")
                                    .foregroundColor(.white)
                                    .font(.system(size: 14, weight: .medium))
                            })
                        }
                        
                        Rectangle()
                            .fill(.gray.opacity(0.15))
                            .frame(height: 2)
                        
                        HStack {
                            
                            VStack(alignment: .leading, spacing: 5, content: {
                                
                                Text("Timeframe")
                                    .foregroundColor(.gray)
                                    .font(.system(size: 11, weight: .regular))
                                
                                Text(PxnkGadfnk.ZwtNxGVEgM?.resultPeriod ?? "")
                                    .foregroundColor(.white)
                                    .font(.system(size: 14, weight: .medium))
                            })
                            
                            Spacer()
                            
                            VStack(alignment: .leading, spacing: 5, content: {
                                
                                Text("Date and time")
                                    .foregroundColor(.gray)
                                    .font(.system(size: 11, weight: .regular))
                                
                                Text(PxnkGadfnk.ZwtNxGVEgM?.resultDate ?? "")
                                    .foregroundColor(.white)
                                    .font(.system(size: 14, weight: .medium))
                            })
                        }
                    }
                    .padding()
                    .background(RoundedRectangle(cornerRadius: 15).fill(.gray.opacity(0.1)))
                }
                .padding()
                .frame(maxWidth: .infinity)
                .background(Color("bg").ignoresSafeArea())
                .frame(maxHeight: .infinity, alignment: .bottom)
                .offset(y: PxnkGadfnk.FIuggwPaVK ? 0 : UIScreen.main.bounds.height)
            }
        )
    }
}

#Preview {
    FuGzgjYxLx()
}
