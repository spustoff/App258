//
//  blNXWPnTjJ.swift
//  App258
//
//  Created by Вячеслав on 11/17/23.
//

import SwiftUI
import CoreData
import Alamofire

final class blNXWPnTjJ: ObservableObject {
    
    @Published var ETyKAsGscN: Bool = false
    @Published var FIuggwPaVK: Bool = false
    
    @Published var QonoltsDBx: [WDZcDViAoO] = []
    @Published var ZwtNxGVEgM: WDZcDViAoO? = nil
    
    @AppStorage("saved_signals") var saved_signals: [String] = []
    
    func wGQdJrBwcj() {
        
        ETyKAsGscN = true
        
        self.OnsXUipqxV() { result in
            
            switch result {
                
            case .success(let success):
                
                self.QonoltsDBx = success.results
                
            case .failure(let failure):
                
                debugPrint("Parse error - \(failure)")
                
                self.ETyKAsGscN = false
            }
        }
    }
    
    func OnsXUipqxV(completion: @escaping (Result<GyLmERGhWY, Error>) -> Void ) {
        
        ETyKAsGscN = true
        
        let params: Parameters = [
            
            "token": "9a761ec4-ce27-48da-b0d0-1b6fc68bb3eb",
        ]
        
        let request = AF.request("https://gegerrop.space/api/v2/QonoltsDBx", method: .get, parameters: params)
        
        request.responseDecodable(of: GyLmERGhWY.self) { response in
            
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

