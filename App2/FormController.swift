//
//  FormController.swift
//  App2
//
//  Created by Israel Soto Salcido on 10/11/18.
//  Copyright © 2018 Israel Soto Salcido. All rights reserved.
//

import UIKit

class FormController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
//    @IBOutlet weak var treatmentPicker: UIPickerView!
//    var treatmentsData: [String] = [String]()
    
    @IBOutlet weak var contactMethodPicker: UIPickerView!
    var contactMethodsData: [String] = [String]()
    
    
    
    
    
    override func viewDidLoad() {
    
        super.viewDidLoad()
        print("Form controller loaded")
        self.contactMethodPicker.delegate = self
        self.contactMethodPicker.dataSource = self
        
        
      //  treatmentsData = ["Tratamiento 1", "Dolor", "Fisico"]
        contactMethodsData = ["Telefono", "SMS", "Correo Eléctronico"]
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        print("memory warning")

    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        print("number of components")
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        print("picker count")
        print(contactMethodsData.count)
        return contactMethodsData.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        print("title for row: ")
        print(row)

        return contactMethodsData[row]
    }
    
}

