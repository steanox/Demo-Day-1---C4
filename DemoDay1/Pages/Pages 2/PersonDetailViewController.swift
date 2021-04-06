//
//  PersonDetailViewController.swift
//  DemoDay1
//
//  Created by octavianus on 05/04/21.
//

import UIKit

class PersonDetailViewController: UIViewController{
    
    @IBOutlet weak var mainLabel: UILabel!
    var selectedWord: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mainLabel.text = selectedWord
    }
    
}
