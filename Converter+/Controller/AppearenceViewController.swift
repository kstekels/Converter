//
//  AppearenceViewController.swift
//  Converter+
//
//  Created by karlis.stekels on 10/02/2021.
//

import UIKit

class AppearenceViewController: UIViewController {
    

    @IBOutlet weak var hintLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        hintLabel.text = "\n\nTap on Gear"

        // Do any additional setup after loading the view.
    }
    
    @IBAction func closeButtonPressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func settingsButtonTapped(_ sender: UIButton) {
        openSettings()
        
        
        //overrideUserInterfaceStyle = .dark
    }
    
    func openSettings(){
        guard let settingsURL = URL(string: UIApplication.openSettingsURLString) else {
            return
        }
        
        if UIApplication.shared.canOpenURL(settingsURL){
            UIApplication.shared.open(settingsURL, options: [:]) { (success) in
                print("open: ", success)
            }
        }
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
