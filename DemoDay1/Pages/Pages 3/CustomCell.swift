//
//  CustomCell.swift
//  DemoDay1
//
//  Created by octavianus on 05/04/21.
//

import UIKit

class CustomCell: UITableViewCell{
    @IBOutlet weak var loadingIndicator: UIActivityIndicatorView!
    @IBOutlet weak var boldLabel: UILabel!
    @IBOutlet weak var lightLabel: UILabel!
    @IBOutlet weak var switchView: UISwitch!
    
    var user: User! {
        didSet{
            setupView()
        }
    }
    
    
    func setupView(){
        boldLabel.text = "Name: \(user.name)"
        lightLabel.text = "Address \(user.address)"
        
        loadingIndicator.hidesWhenStopped = true
        if user.isActive{
            loadingIndicator.startAnimating()
        }else{
            loadingIndicator.stopAnimating()
        }

        switchView.isOn = user.isActive
    }
    
}
