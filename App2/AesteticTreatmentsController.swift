//
//  AesteticTreatmentsController.swift
//  App2
//
//  Created by Israel Soto Salcido on 10/29/18.
//  Copyright © 2018 Israel Soto Salcido. All rights reserved.
//

import UIKit

class AesteticTreatmentsController: UIViewController {
    // TODO agregar Pedicure Clinico
    let reafirmacionDeMuslos: String! = "Texto de reafirmacion de muslos"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("AesteticTreatmentsController loaded")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        print("memory warning")
    }
    
    func prepareView(_ text: String) {
        let OneTreatment = storyboard?.instantiateViewController(withIdentifier: "OneTreatmentcontroller") as! OneTreatmentcontroller
        
        OneTreatment.contentText = text
        navigationController?.pushViewController(OneTreatment, animated: true)
    }
    
    @IBAction func sendCelulitis(_ sender: UIButton) {
        prepareView("celulitis")
    }
    
    @IBAction func sendReafirmacionBrazos(_ sender: Any) {
        prepareView("reafirmacion_brazos")
    }
    
    @IBAction func sendEmbellecimientoGluteos(_ sender: Any) {
        prepareView("embellecimiento_gluteos")
    }
    
}
