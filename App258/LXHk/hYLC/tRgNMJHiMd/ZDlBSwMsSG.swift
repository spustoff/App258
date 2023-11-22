//
//  wbEGqQyeTf.swift
//  App258
//
//  Created by Вячеслав on 11/17/23.
//

import SwiftUI

struct wbEGqQyeTf: View {
    
    let index: xpqIPFdCKx
    
    var body: some View {
        
        ZStack {
            
            Color("bg")
                .ignoresSafeArea()
            
            VStack {
                
                ScrollView(.vertical, showsIndicators: true) {
                    
                    LazyVStack {
                        
                        pexGwLNSQF(urlString: index.resultImage ?? "", width: .infinity, height: 250, cornerRadius: 0, isPlaceholder: true)
                        
                        VStack(alignment: .leading, content: {
                            
                            Text(index.resultDateTime ?? "")
                                .foregroundColor(.gray)
                                .font(.system(size: 12, weight: .regular))
                                .padding(.bottom, 1)
                            
                            Text(index.resultTitle ?? "")
                                .foregroundColor(.white)
                                .font(.system(size: 19, weight: .semibold))
                            
                            Text(index.resultText ?? "")
                                .foregroundColor(.gray)
                                .font(.system(size: 14, weight: .regular))
                        })
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding()
                    }
                }
            }
        }
    }
}

#Preview {
    
    wbEGqQyeTf(index: xpqIPFdCKx(resultId: 0, resultTitle: "dfaospkfds", resultImage: "dfpsok", resultMark: "fdpsokf", resultDateTime: "fdspok", resultText: "fpdosj", resultTotalLikes: 0, resultTotalComments: 0))
}
