//
//  ViewController.swift
//  First Animation
//
//  Created by Dinaol Melak on 12/1/19.
//  Copyright © 2019 Dinaol Melak. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var helloLabel: UILabel!
    @IBOutlet weak var firstAnimationLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        helloLabel.center.y -= view.bounds.height
        firstAnimationLabel.center.y += view.bounds.height
        
    }
    override func viewDidAppear(_ animated: Bool) {
        UIView.animate(withDuration: 1) {
            self.helloLabel.center.y += self.view.bounds.height
            self.firstAnimationLabel.center.y -= self.view.bounds.height
        }
        UIView.animate(withDuration: 2) {
            self.view.backgroundColor = #colorLiteral(red: 0.38846326, green: 0.6519199826, blue: 1, alpha: 1)
        }
    }

}

