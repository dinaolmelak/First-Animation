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
    @IBOutlet weak var seeYouLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        helloLabel.center.y -= view.bounds.height
        firstAnimationLabel.center.y += view.bounds.height
        seeYouLabel.alpha = 0.0
    }
    override func viewDidAppear(_ animated: Bool) {
        UIView.animate(withDuration: 1, animations: {
            self.helloLabel.center.y += self.view.bounds.height

        }) { (finished) in
            self.secondAnimation()
        }
        UIView.animate(withDuration: 1, delay: 1.5, options: [], animations: {
            self.view.backgroundColor = #colorLiteral(red: 0.38846326, green: 0.6519199826, blue: 1, alpha: 1)
        }, completion: {(finished) in
            self.hiddenAnimation()
        })
    }

    
    func secondAnimation() {
        UIView.animate(withDuration: 1) {
            self.firstAnimationLabel.center.y -= self.view.bounds.height
        }
    }
    func hiddenAnimation() {
        UIView.animate(withDuration: 2) {
            self.view.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        }
        UIView.animate(withDuration: 1, delay: 1.5, options: [], animations: {
            self.seeYouLabel.alpha = 1.0
        }, completion: nil)
    }
    
}
    

