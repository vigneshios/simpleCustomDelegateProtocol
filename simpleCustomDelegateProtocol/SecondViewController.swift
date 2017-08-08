//
//  SecondViewController.swift
//  simpleCustomDelegateProtocol
//
//  Created by vignesh on 8/8/17.
//  Copyright © 2017 vignesh. All rights reserved.
//

import UIKit

protocol customDelegate {
    func choosePill(name: String, color: UIColor)
}


class SecondViewController: UIViewController {

   
    var delegate : customDelegate!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    
    @IBAction func redPillTaken(_ sender: Any) {
    
        
        delegate.choosePill(name: "You have chosen to eat red pill", color: .red)
        dismiss(animated: true, completion: nil)
        
    }
    
    @IBAction func greenPillSelected(_ sender: Any) {
        
        delegate.choosePill(name: "You have chosen to eat green pill", color: .green)
        dismiss(animated: true, completion: nil)
        
    }
    
   

    @IBAction func bluePillSelected(_ sender: Any) {
    
        delegate.choosePill(name: "You have chosen to eat blue pill", color: .blue)
        dismiss(animated: true, completion: nil)
       
        
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
