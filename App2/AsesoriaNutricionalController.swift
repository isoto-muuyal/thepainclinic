//
//  AsesoriaNutricionalController.swift
//  App2
//
//  Created by Israel Soto Salcido on 1/26/19.
//  Copyright © 2019 Israel Soto Salcido. All rights reserved.
//

import UIKit

class AsesoriaNutricionalController: UIViewController {
    
    // DB Access
    let servicesDao = ServicesDAO();
    let fileStorageService = FileStorageService();

    // Get Passowrd
    let mainView = MainViewController()
    var pwd:String = "1234"
    var myService: Service?
    var code: String?
    var imagePicker = UIImagePickerController()
    var image:String!
    
    // Titles
    @IBOutlet weak var prodName: UITextView!
    @IBOutlet weak var title1: UITextView!
    @IBOutlet weak var title2: UITextView!
    @IBOutlet weak var content1: UITextView!
    @IBOutlet weak var content2: UITextView!
    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var editText: UIButton!
    
    // Form related
    @IBOutlet weak var backgroundImage: UIImageView!
    @IBOutlet weak var defaultImageButton: UIButton!
    @IBOutlet weak var changeImageButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imagePicker.delegate = self
        defaultImageButton.isHidden = true
        changeImageButton.isHidden = true
        
        pwd = mainView.password
        myService = servicesDao.getServiceByCode(code2: "cdpasesoria")
        print("ColocacionGloboController loaded")
        print("Setting fields")
        password.isHidden = true
        prodName.text = myService?.prodName
        title1.text = myService?.title1
        title2.text = myService?.title2
        content1.text = myService?.content1!
        content2.text = myService?.content2
        code = myService?.code!
        image = myService?.image!
        backgroundImage.image = fileStorageService.getImageFromDocumentDirectory(name: code!)
        
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
        } else {
            content1.isEditable = false
            content2.isEditable = false
            prodName.isEditable = false
            title1.isEditable = false
            title2.isEditable = false
            editText.titleLabel?.text = "."
            defaultImageButton.isHidden = true
            changeImageButton.isHidden = true
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
            defaultImageButton.isHidden = false
            changeImageButton.isHidden = false
        } else {
            print("Password is not valid")
        }
    }

    @IBAction func onClickChangeImg(_ sender: Any) {
        imagePicker.sourceType = .photoLibrary
        imagePicker.allowsEditing = true
        present(imagePicker, animated: true, completion: nil)
    }
    
    @IBAction func restoreImage(_ sender: Any) {
        image = "treatment"
        myService?.image = image
        backgroundImage.image = UIImage(named: image)
        fileStorageService.saveImageDocumentDirectory(image: backgroundImage.image!, imageName: code!)
    }
    
    @IBAction func getImageFromDirectory(_ sender: Any) {
        print("Requesting file")
        backgroundImage.image = fileStorageService.getImageFromDocumentDirectory(name: code!)
    }
    
}

extension AsesoriaNutricionalController: UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        if let imageFile = info[UIImagePickerControllerEditedImage] as? UIImage {
            backgroundImage.image = imageFile
            image = fileStorageService.saveImageDocumentDirectory(image: imageFile, imageName: code!)
            print("New image name: " + image)
        }
        dismiss(animated: true, completion: nil)
    }
}
