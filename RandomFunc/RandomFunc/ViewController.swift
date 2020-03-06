//
//  ViewController.swift
//  RandomFunc
//
//  Created by Royal, Cindy L on 3/6/20.
//  Copyright © 2020 Royal, Cindy L. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var myLabel: UILabel!
    
    func funct1() {
               myLabel.text = "one"
           }
           
           func funct2() {
                  myLabel.text = "two"
              }
           
           func funct3() {
                  myLabel.text = "three"
              }

    
    @IBAction func myButton(_ sender: Any) {
       
        
        let randomFunc = [funct1, funct2, funct3]
        let randomResult = Int(arc4random_uniform(UInt32(randomFunc.count)))
        randomFunc[randomResult]()
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

