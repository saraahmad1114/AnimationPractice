//
//  ViewController.swift
//  AnimationPractice
//
//  Created by Flatiron School on 10/30/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var belowLabel: UILabel!
    @IBOutlet weak var centerLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        UIView.animateWithDuration(2, animations: {
            self.centerLabel.alpha = 2
            }, completion: {
                (value: Bool) in
                self.centerLabel.hidden = true
        })
        
        
        UIView.animateWithDuration(2, animations: {
            self.belowLabel.alpha = 2
            }, completion: {
                (value: Bool) in
                self.belowLabel.hidden = true
        })
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

