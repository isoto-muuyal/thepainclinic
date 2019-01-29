//
//  CDPIntroController.swift
//  App2
//
//  Created by Israel Soto Salcido on 1/28/19.
//  Copyright © 2019 Israel Soto Salcido. All rights reserved.
//

import UIKit

class CDPIntroController: UIViewController {
    
    let servicesDao = ServicesDAO()
    let mainView = MainViewController()
    var pwd:String = "1234"
    var cdpIntroService: Service?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        cdpIntroService = servicesDao.getServiceByCode(code2: "cdpintro")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
}
