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
    let imageName = "" // your image name here
    let code: String = "cdpintro"
    @IBOutlet weak var introContent: UITextView!
    @IBOutlet weak var editText: UIButton!
    @IBOutlet weak var imageBackground: UIImageView!
    @IBOutlet weak var password: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        cdpIntroService = servicesDao.getServiceByCode(code2: code)
        
        
        pwd = mainView.password
        print("ColocacionGloboController loaded")
        print("Setting fields")
        password.isHidden = true
        introContent.text = cdpIntroService?.content1!
//        code = cdpIntroService?.code!
        
        print("Disable text fields ")
        introContent.isEditable = false
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func editText(_ sender: Any) {
        if (introContent.isEditable != true){
            password.isHidden = false
            editText.titleLabel?.text = "Save"
            
        } else {
            introContent.isEditable = false
            editText.titleLabel?.text = "."
            servicesDao.update(code: code, service: Service(
                code: code,
                prodName: "",
                title1: "",
                title2: "",
                content1: introContent.text,
                content2: "",
                image:""
            ))
        }
    }
    
    @IBAction func isPasswordValid(_ sender: Any) {
        print("isPasswordValid entered")
        if (password.text == pwd){
            print("Password valid")
            password.isHidden = true
            introContent.isEditable = true
            
        } else {
            print("Password is not valid")
        }
    }
}
