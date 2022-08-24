//
//  ViewController.swift
//  Crypto Crazy
//
//  Created by Macbook Air on 24.08.2022.
//

import UIKit

class ViewController: UIViewController ,UITableViewDelegate,UITableViewDataSource{
    
    private var cryptoListViewModel : CryptoListViewModel!
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell  = cryptosTable.dequeueReusableCell(withIdentifier: "cryptoCell", for: indexPath) as! cryptoTableViewCell
        
        let cryptoViewModel = cryptoListViewModel.cryptoAtIndex(index: indexPath.row)
        
        
        
        cell.cryptoNameLbl.text = cryptoViewModel.name
        cell.cryptoSymbolLbl.text = cryptoViewModel.currency
        cell.cryptoValuesLbl.text = cryptoViewModel.price
        DispatchQueue.main.async {
            let data = try! Data(contentsOf: Foundation.URL(string: cryptoViewModel.cryptoLogo)!)
            
            cell.cryptoLogoImg.image = UIImage(data: data)
        }
       
        
        
        
        
        
        return cell
        
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.cryptoListViewModel == nil ? 0 : self.cryptoListViewModel.numberOfRowsInSection()
    }
    @IBOutlet weak var cryptosTable: UITableView!
    override func viewDidLoad() {
        
        super.viewDidLoad()
        getData()
        
        cryptosTable.dataSource = self
        cryptosTable.delegate = self
        
        
        
    }
    func getData(){
        let url = URL(string: "https://api.nomics.com/v1/currencies/ticker?key=it must be key here")
        WebService().downloadCurrencys(url: url!) { cryptos in
            if let cryptos = cryptos {
                self.cryptoListViewModel = CryptoListViewModel(cryptoCurrencyList: cryptos )
                DispatchQueue.main.async {
                    self.cryptosTable.reloadData()
                }
            }
        }
    }


}

