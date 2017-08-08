//
//  ViewController.swift
//  simpleCustomDelegateProtocol
//
//  Created by vignesh on 8/8/17.
//  Copyright © 2017 vignesh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var chosenPillLabel: UILabel!
   
    override func viewDidLoad() {
        super.viewDidLoad()
     
    }

    
    @IBAction func buttonTapped(_ sender: Any) {
    
        let selectedVC = storyboard?.instantiateViewController(withIdentifier: "SecondscreenID") as! SecondViewController
        
        selectedVC.delegate = self
        
        present(selectedVC, animated: true, completion: nil)
    }

}


extension ViewController : customDelegate {
    
    func choosePill(name: String, color: UIColor) {
        chosenPillLabel.text = name
        self.view.backgroundColor = color
    }
    
}
