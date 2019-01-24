//
//  ColocacionGloboController.swift
//  App2
//
//  Created by Israel Soto Salcido on 1/17/19.
//  Copyright © 2019 Israel Soto Salcido. All rights reserved.
//

import UIKit
class ColocacionGloboController: UIViewController {

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
    
    override func viewDidLoad() {
        pwd = mainView.password
        
        print("ColocacionGloboController loaded")
        print("Setting fields")
        super.viewDidLoad()
        password.isHidden = true
        content1.text = "Text is blablabla"
        content2.text = "Text is blablabla content 2"
        prodName.text = "Product"
        title1.text = "Title 1"
        title2.text = "title 2"

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
            editText.titleLabel?.text = "Edit"
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
            title2.text = "title 2sdfsdf"

        } else {
            print("Password is not valid")
        }
    }
}
