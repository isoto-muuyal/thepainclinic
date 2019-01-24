//
//  TestViewController3.swift
//  App2
//
//  Created by Israel Soto Salcido on 11/16/18.
//  Copyright © 2018 Israel Soto Salcido. All rights reserved.
//

//
//  TestViewController.swift
//  App2
//
//  Created by Israel Soto Salcido on 11/16/18.
//  Copyright © 2018 Israel Soto Salcido. All rights reserved.
//

import UIKit

class TestViewController3: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor.yellow
        
        // label
        let labelInst = UILabel()
        self.view.addSubview(labelInst)
        labelInst.text = "Page 3"
        labelInst.translatesAutoresizingMaskIntoConstraints = false
        labelInst.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 50).isActive = true
        labelInst.leftAnchor.constraint(equalTo: self.view.leftAnchor, constant: 20).isActive = true
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
