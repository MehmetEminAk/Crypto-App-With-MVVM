//
//  cryptoTableViewCell.swift
//  Crypto Crazy
//
//  Created by Macbook Air on 24.08.2022.
//

import UIKit

class cryptoTableViewCell: UITableViewCell {

    @IBOutlet weak var cryptoValuesLbl: UILabel!
    @IBOutlet weak var moneySybolLbl: UILabel!
    @IBOutlet weak var cryptoSymbolLbl: UILabel!
    @IBOutlet weak var cryptoNameLbl: UILabel!
    @IBOutlet weak var cryptoLogoImg: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
