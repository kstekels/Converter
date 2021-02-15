//
//  TempViewController.swift
//  Converter+
//
//  Created by karlis.stekels on 10/02/2021.
//

import UIKit

class TempViewController: UIViewController {
    var celsiumTemp: Int = 0
    var tempString: String = ""
    
    
    var tempCalculator = TemperatureCalculation()
    
    @IBOutlet weak var celsiusLabel: UILabel!
    @IBOutlet weak var tempSlider: UISlider!
    @IBOutlet weak var convertedTempLabel: UILabel!
    @IBOutlet weak var tempSegmentControl: UISegmentedControl!
    @IBOutlet weak var hintLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tempSegmentControl.setTitle("º F", forSegmentAt: 0)
        tempSegmentControl.setTitle("º K", forSegmentAt: 1)
        hintLabel.text = "º C - Celsius\n" + "º F - Fahrenheit\n" + "º K - Kelvin"
        updateTempSliderLabel(value: Float(celsiumTemp))

        // Do any additional setup after loading the view.
    }
    
    @IBAction func tempSliderChanged(_ sender: UISlider) {
        updateTempSliderLabel(value: sender.value)
    }
    
    @IBAction func tempSegmentControllChanged(_ sender: UISegmentedControl) {
        updateTempSliderLabel(value: Float(celsiumTemp))
        
    }
    
    func updateTempSliderLabel(value: Float) {
        
        celsiumTemp = Int(value)
        celsiusLabel.text = "\(celsiumTemp) º C"
        
        
        
    
        switch tempSegmentControl.selectedSegmentIndex {
        case 0:
            tempString = tempCalculator.convertTemperature(celsiumTemp).fahrenheit + " º F"
            
        default:
            tempString = tempCalculator.convertTemperature(celsiumTemp).kelvin + " º K"
        }
        
        convertedTempLabel.text = tempString
    }
    
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        if segue.identifier == "GoToInfoFromTemp" {
            let destinationVC = segue.destination as! AppInfoViewController
            
            destinationVC.infoText = "This app can calculate degrees from Celsius to fahrenheit/kelvin!\n\n\(celsiumTemp) º C = \(tempString)"
        }
        // Pass the selected object to the new view controller.
    }
    

}
