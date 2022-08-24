//
//  WebService.swift
//  Crypto Crazy
//
//  Created by Macbook Air on 24.08.2022.
//

import Foundation


class WebService{
    func downloadCurrencys(url : URL,completion : @escaping
                           ([CryptoCurrency]?) -> Void ){
        URLSession.shared.dataTask(with: url) { data, response, error in
            if error != nil {
                print(error?.localizedDescription)
            }else{
                if data != nil {
                    do{
                        if let cryptoList = try JSONDecoder().decode([CryptoCurrency]?.self, from: data!){
                            print(cryptoList)
                            completion(cryptoList)
                        }
                        
                    }catch{
                        print(error.localizedDescription)
                    }
                }
               
                
            }
        }.resume()
    }
    
}
