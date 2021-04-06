//
//  ViewController.swift
//  DemoDay1
//
//  Created by octavianus on 01/04/21.
//

import UIKit

class MyBMIViewController: UIViewController {

    @IBOutlet weak var weightInfoLabel: UILabel!
    @IBOutlet weak var weightSlider: UISlider!
    @IBOutlet weak var weightResultLabel: UILabel!
    
    @IBOutlet weak var heightInfoLabel: UILabel!
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var heightResultLabel: UILabel!
    
    @IBOutlet weak var bmiValueLabel: UILabel!
    @IBOutlet weak var bmiStatuslabel: UILabel!
    
    @IBOutlet weak var mainImage: UIImageView!
    @IBOutlet weak var chartContent: UIView!
    
    var bmiValue: Float {
        let height = heightSlider.value / 100 // To M
        let weight = weightSlider.value // Kg
        return weight / pow(2, height)
    }
    
    var doubleNumber: Double = 5.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        
    }
    
    func setupView(){
        weightInfoLabel.text = "Weight"
        heightInfoLabel.text = "Height"
        bmiValueLabel.text = "\(bmiValue) Kg/m2"
        
        mainImage.image = #imageLiteral(resourceName: "squirtle")
        mainImage.animationImages = []
        
        mainImage.backgroundColor = #colorLiteral(red: 0.7450980544, green: 0.1568627506, blue: 0.07450980693, alpha: 1)
        
    }
    
    func getBMIStatus(from bmiValue: Float) -> String{
        if bmiValue < 18.5 {
            return "Underweight"
        }else
        if bmiValue >= 18.5 && bmiValue < 24.9{
            return "Normal"
        }else
        if bmiValue >= 25.0 && bmiValue < 29.9{
            return "Overweight"
        }else{
            return "Obese"
        }
        
    }
    
    

    @IBAction func weightSliderValueChanged(_ sender: UISlider) {
        weightResultLabel.text = "\(String(format: "%.2f", sender.value)) Kg"
    }
    
    @IBAction func heightSliderValueChange(_ sender: UISlider){
        heightResultLabel.text = "\(String(format: "%.2f", sender.value)) Cm"
    }
    
    @IBAction func calculateButtonPressed(_ sender: UIButton){
        bmiValueLabel.text = "\(bmiValue)"
        bmiStatuslabel.text = getBMIStatus(from: bmiValue)
    }
    
    
    
    @IBAction func themeSegmentChanged(_ sender: UISegmentedControl){
        if sender.selectedSegmentIndex == 0 {
            //Light Mode
        }else{
            //Dark Mode
            view.backgroundColor = #colorLiteral(red: 0.06886973232, green: 0.06888934225, blue: 0.06886716932, alpha: 1)
            bmiValueLabel.textColor = UIColor.white
            weightResultLabel.textColor = UIColor(displayP3Red: 246/255, green: 246/255, blue: 246/255, alpha: 1)
        }
    }
    
    @IBAction func changePage(_ sender: UIButton){
        performSegue(withIdentifier: "moveToPage2", sender: self)
    }
    
}

