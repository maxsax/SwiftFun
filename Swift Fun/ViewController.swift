//
//  ViewController.swift
//  Swift Fun
//
//  Created by Michael on 2018-01-03.
//  Copyright © 2018 Differential Consulting. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var tapCount = 0
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var changeTitleButton: UIButton!
    
    @IBAction func changeTitleButtonTapped(_ sender: Any) {
        tapCount += 1
        print(tapCount)
        
        if tapCount >= 10 {
            
            view.backgroundColor = UIColor.gray
            
            titleLabel.text = "Differential Consulting"
            titleLabel.textColor = UIColor.white
            
            tapCount = 0
        }
        
        changeTitleButton.setTitle("Tap me \(10 - tapCount) more times!", for: [])
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

