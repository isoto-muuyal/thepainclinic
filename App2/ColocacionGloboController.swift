//
//  ColocacionGloboController.swift
//  App2
//
//  Created by Israel Soto Salcido on 1/17/19.
//  Copyright © 2019 Israel Soto Salcido. All rights reserved.
//

import UIKit
class ColocacionGloboController: UIViewController {

    // DB Access
    let servicesDao = ServicesDAO();
    
    // Titles
    @IBOutlet weak var prodName: UITextView!
    @IBOutlet weak var title1: UITextView!
    @IBOutlet weak var title2: UITextView!
    
    // Content bodyes
    @IBOutlet weak var content1: UITextView!
    @IBOutlet weak var content2: UITextView!
    
    // Edit button
    @IBOutlet weak var editText: UIButton!

    // NSFontAttributes
    
    // Password field
    @IBOutlet weak var password: UITextField!
    
    // Get Passowrd
    let mainView = MainViewController()
    var pwd:String = ""
    
    @IBOutlet weak var nameLabel: UILabel!
    var globoService: Service?
    var code: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        pwd = mainView.password
        globoService = servicesDao.getServiceByCode(code2: "cdpcolocacion")
        print("ColocacionGloboController loaded")
        print("Setting fields")
        password.isHidden = true
        prodName.text = globoService?.prodName
        title1.text = globoService?.title1
        title2.text = globoService?.title2
        content1.text = globoService?.content1!
        content2.text = globoService?.content2
        code = globoService?.code!

        print("Disable text fields ")
        content1.isEditable = false
        content2.isEditable = false
        prodName.isEditable = false
        title1.isEditable = false
        title2.isEditable = false
        
        let format:NSAttributedString = prodName.attributedText
        print(format)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func editText(_ sender: Any) {
        if (content1.isEditable != true){
            password.isHidden = false
            editText.titleLabel?.text = "Save"

        } else {
            content1.isEditable = false
            content2.isEditable = false
            prodName.isEditable = false
            title1.isEditable = false
            title2.isEditable = false
            editText.titleLabel?.text = "."
            servicesDao.update(code: code!, service: Service(
                code: code!,
                prodName: prodName.text!,
                title1: title1.text!,
                title2: title2.text!,
                content1: content1.text!,
                content2: content2.text!
            ))
        }
    }
    
    @IBAction func isPasswordValid(_ sender: Any) {
        print("isPasswordValid entered")
        if (password.text == pwd){
            print("Password valid")
            password.isHidden = true
            content1.isEditable = true
            content2.isEditable = true
            prodName.isEditable = true
            title1.isEditable = true
            title2.isEditable = true

        } else {
            print("Password is not valid")
        }
    }
}
