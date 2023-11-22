//
//  bcgITVlKaV.swift
//  App258
//
//  Created by Вячеслав on 11/17/23.
//

import SwiftUI
import Alamofire

final class bcgITVlKaV: ObservableObject {
    
    @Published var ETyKAsGscN: Bool = false
    @Published var NrXVLlpUNr: [xpqIPFdCKx] = []
    
    @Published var cwhiwBDmGw: xpqIPFdCKx?
    @Published var FIuggwPaVK: Bool = false
    
    func WZEJTpAAnx() {
        
        ETyKAsGscN = true
        
        self.JcoSqyrIlu { result in
            
            switch result {
                
            case .success(let success):
                
                self.NrXVLlpUNr = success.results
                
            case .failure(let failure):
                
                debugPrint("Parse error - \(failure)")
                
                self.ETyKAsGscN = false
            }
        }
    }
    
    func JcoSqyrIlu(completion: @escaping (Result<ldjTlMtZHY, Error>) -> Void ) {
        
        ETyKAsGscN = true
        
        let params: Parameters = [
            
            "token": "9a761ec4-ce27-48da-b0d0-1b6fc68bb3eb",
        ]
        
        let request = AF.request("https://gegerrop.space/api/v2/NrXVLlpUNr", method: .get, parameters: params)
        
        request.responseDecodable(of: ldjTlMtZHY.self) { response in
            
            guard let value = response.value else {
                
                self.ETyKAsGscN = false
                return
            }
                           
            switch response.result{
                
            case .success(_):
                
                completion(.success(value))
                self.ETyKAsGscN = false
                
            case .failure(_):
                
                completion(.failure(response.error.debugDescription as! Error))
                self.ETyKAsGscN = false
            }
        }
    }
}
