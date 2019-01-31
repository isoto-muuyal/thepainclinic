//
//  MECelulitisController.swift
//  App2
//
//  Created by Israel Soto Salcido on 1/29/19.
//  Copyright © 2019 Israel Soto Salcido. All rights reserved.
//

import UIKit

class MECelulitisController: UIViewController {
    // DB Access
    let servicesDao = ServicesDAO();
    // Get Passowrd
    let mainView = MainViewController()
    var pwd:String = "1234"
    var asesoriaService: Service?
    var code: String?
    var image: String?
    
    @IBOutlet weak var prodName: UITextView!
    @IBOutlet weak var title1: UITextView!
    @IBOutlet weak var title2: UITextView!
    @IBOutlet weak var content1: UITextView!
    @IBOutlet weak var content2: UITextView!
    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var editText: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        pwd = mainView.password
        asesoriaService = servicesDao.getServiceByCode(code2: "mecelulitis")
        print("me celulitis loaded")
        print("Setting fields")
        password.isHidden = true
        prodName.text = asesoriaService?.prodName
        title1.text = asesoriaService?.title1
        title2.text = asesoriaService?.title2
        content1.text = asesoriaService?.content1!
        content2.text = asesoriaService?.content2
        code = asesoriaService?.code!
        
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
                content2: content2.text!,
                image: image
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
