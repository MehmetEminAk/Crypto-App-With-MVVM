//
//  CryptoViewModel.swift
//  Crypto Crazy
//
//  Created by Macbook Air on 24.08.2022.
//

import Foundation


struct CryptoListViewModel {
    let cryptoCurrencyList : [CryptoCurrency]
    func numberOfRowsInSection() -> Int {
        return self.cryptoCurrencyList.count
    }
    func cryptoAtIndex(index : Int) -> CryptoViewModel {
        let crypto = self.cryptoCurrencyList[index]
        return CryptoViewModel(cryptoCurrency: crypto)
        
    }
}
struct CryptoViewModel {
    let cryptoCurrency : CryptoCurrency
    
    var name : String{
        return cryptoCurrency.name
    }
    var currency : String {
        return cryptoCurrency.currency
    }
    var price : String {
        return cryptoCurrency.price
    }
    var cryptoLogo : String {
        return cryptoCurrency.logo_url
    }
    
    
}
