//
//  ViewController.swift
//  Swift Fun
//
//  Created by Michael on 2018-01-03.
//  Copyright © 2018 Differential Consulting. All rights reserved...
//

import UIKit

class ViewController: UIViewController {

    //var tapCount = 0
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var changeTitleButton: UIButton!
    @IBOutlet weak var topTextField: UITextField!
    @IBOutlet weak var bottomTextField: UITextField!
    @IBOutlet weak var additionSwitch: UISwitch!
    
    @IBAction func changeTitleButtonTapped(_ sender: Any) {
        
        let addition = additionSwitch.isOn
        var sum = 0.0
        
        if addition {
            sum = Double(topTextField.text!)! + Double(bottomTextField.text!)!
            titleLabel.text = "\(topTextField.text!) + \(bottomTextField.text!) = \(sum)"
        } else {
            sum = Double(topTextField.text!)! - Double(bottomTextField.text!)!
            titleLabel.text = "\(topTextField.text!) - \(bottomTextField.text!) = \(sum)"
        }
        
        
 
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

