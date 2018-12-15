//
//  MainViewController.swift
//  App2
//
//  Created by Israel Soto Salcido on 10/10/18.
//  Copyright © 2018 Israel Soto Salcido. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
    
    @IBOutlet weak var contentLabel:UILabel?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("Main View controller has been loaded")
        self.title = "Menu Principal"
        
        let backgroundImage = UIImageView(frame: UIScreen.main.bounds)
        backgroundImage.image = UIImage(named: "NEW-portada.png")
        backgroundImage.contentMode = UIViewContentMode.scaleAspectFill
        self.view.insertSubview(backgroundImage, at: 0)
        
        contentLabel?.text = "MANYCONTENT"
    }
    
    override func didReceiveMemoryWarning() {
    
        super.didReceiveMemoryWarning()
        print("Memory warning!!")
    }
    
}
