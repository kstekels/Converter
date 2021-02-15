//
//  AppInfoViewController.swift
//  Converter+
//
//  Created by karlis.stekels on 10/02/2021.
//

import UIKit

class AppInfoViewController: UIViewController {
    var infoText: String = ""

    @IBOutlet weak var infoLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        infoLabel.numberOfLines = 0
        infoLabel.text = infoText
        
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
