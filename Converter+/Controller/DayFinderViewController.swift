//
//  ViewController.swift
//  Converter+
//
//  Created by karlis.stekels on 10/02/2021.
//

import UIKit

class DayFinderViewController: UIViewController {

    @IBOutlet weak var dayTextField: UITextField!
    @IBOutlet weak var monthTextField: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var yearTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

    }
    @IBAction func searchPressed(_ sender: UIButton) {
    }
    
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        if segue.identifier == "frpmDayFinderToInfo" {
            let destinationVC = segue.destination as! AppInfoViewController
            
            destinationVC.infoText = "This app will find specific day, which will be searched from user date input"
        }
        // Pass the selected object to the new view controller.
    }

}



