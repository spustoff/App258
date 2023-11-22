//
//  LVGByAlrVj.swift
//  App258
//
//  Created by Вячеслав on 11/17/23.
//

import SwiftUI

struct LVGByAlrVj: View {
    
    @StateObject var PxnkGadfnk = bcgITVlKaV()
    
    var body: some View {
        
        ZStack {
            
            Color("bg")
                .ignoresSafeArea()
            
            VStack {
                
                Text("News")
                    .foregroundColor(.white)
                    .font(.system(size: 26, weight: .semibold))
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding()
                
                if PxnkGadfnk.ETyKAsGscN {
                    
                    ProgressView()
                        .frame(maxHeight: .infinity, alignment: .center)
                    
                } else {
                    
                    if PxnkGadfnk.NrXVLlpUNr.isEmpty {
                        
                        VStack(alignment: .center, spacing: 4, content: {
                            
                            Text("No any NrXVLlpUNr")
                                .foregroundColor(.white)
                                .font(.system(size: 18, weight: .semibold))
                                .multilineTextAlignment(.center)
                            
                            Text("We don't have any NrXVLlpUNr right now")
                                .foregroundColor(.white.opacity(0.6))
                                .font(.system(size: 14, weight: .regular))
                                .multilineTextAlignment(.center)
                        })
                        .frame(maxHeight: .infinity, alignment: .center)
                        
                    } else {
                        
                        ScrollView(.vertical, showsIndicators: true) {
                            
                            LazyVStack {
                                
                                ForEach(PxnkGadfnk.NrXVLlpUNr, id: \.self) { index in
                                    
                                    Button(action: {
                                        
                                        PxnkGadfnk.cwhiwBDmGw = index
                                        PxnkGadfnk.FIuggwPaVK = true
                                        
                                    }, label: {
                                        
                                        HStack {
                                            
                                            pexGwLNSQF(urlString: index.resultImage ?? "", width: 90, height: 75, cornerRadius: 15, isPlaceholder: true)
                                            
                                            VStack(alignment: .leading, content: {
                                                
                                                Text(index.resultDateTime ?? "")
                                                    .foregroundColor(.gray)
                                                    .font(.system(size: 13, weight: .regular))
                                                
                                                Text(index.resultTitle ?? "")
                                                    .foregroundColor(.white)
                                                    .font(.system(size: 15, weight: .medium))
                                                    .lineLimit(2)
                                                    .multilineTextAlignment(.leading)
                                            })
                                            
                                            Spacer()
                                        }
                                        .padding()
                                        .background(RoundedRectangle(cornerRadius: 15).fill(.gray.opacity(0.1)))
                                    })
                                }
                            }
                            .padding()
                        }
                    }
                }
            }
        }
        .onAppear {
            
            PxnkGadfnk.WZEJTpAAnx()
        }
        .sheet(isPresented: $PxnkGadfnk.FIuggwPaVK, content: {
            
            if let index = PxnkGadfnk.cwhiwBDmGw {
                
                wbEGqQyeTf(index: index)
            }
        })
    }
}

#Preview {
    LVGByAlrVj()
}
