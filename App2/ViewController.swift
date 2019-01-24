//
//  ViewController.swift
//  App2
//
//  Created by Israel Soto Salcido on 10/10/18.
//  Copyright © 2018 Israel Soto Salcido. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var mainLogo: UIImageView!
    
    @IBOutlet var mainView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        print("Image loadd")
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    @IBAction func goToHome(_ sender: Any) {
        
        print("Button Pressed")
        
    }
    
}

