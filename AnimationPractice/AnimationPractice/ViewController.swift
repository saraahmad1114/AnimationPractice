//
//  ViewController.swift
//  AnimationPractice
//
//  Created by Flatiron School on 10/30/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var topTextfield: UITextField!
    @IBOutlet weak var bottomLabel: UILabel!
    @IBOutlet weak var belowLabel: UILabel!
    @IBOutlet weak var centerLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        topTextfield.backgroundColor = UIColor.blueColor()
        
        //making the labels disappear 
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
        
        UIView.animateWithDuration(2, animations: {
            self.bottomLabel.alpha = 2 },
                completion: { (value: Bool) in
            self.bottomLabel.hidden = true
        })
        
        UIView.animateWithDuration(0.5, delay: 0.4,
        options: .Repeat, animations: {
        self.topTextfield.center.x += self.view.bounds.width
            }, completion: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

