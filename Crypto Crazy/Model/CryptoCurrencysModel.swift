//
//  CryptoCurrencysModel.swift
//  Crypto Crazy
//
//  Created by Macbook Air on 24.08.2022.
//

import Foundation


struct CryptoCurrency  : Decodable {
    var price : String
    var name : String
    var currency : String
    var logo_url : String
    
}
