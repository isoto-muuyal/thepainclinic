//
//  CPMMany.swift
//  App2
//
//  Created by Israel Soto Salcido on 11/1/18.
//  Copyright © 2018 Israel Soto Salcido. All rights reserved.
//

import UIKit

class CPMMany: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("CPMmany view loaded")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func prepareView(_ text: String) {
        let CPMOne = storyboard?.instantiateViewController(withIdentifier: "CPMOne") as! CPMOne
        
        CPMOne.contentText = text
        navigationController?.pushViewController(CPMOne, animated: true)
    }
    @IBAction func sendCPMGlobo(_ sender: Any) {
        prepareView("colocacion_globo")
    }
    @IBAction func sendNutricional(_ sender: Any) {
        prepareView("nutricional")
    }
    @IBAction func sendSupervicion(_ sender: Any) {
        prepareView("supervicion")
    }
    @IBAction func sendAparatologia(_ sender: Any) {
        prepareView("aparatologia")
    }
    @IBAction func sendLipoescultura(_ sender: Any) {
        prepareView("lipoescultura")
    }
    @IBAction func sendMesoterapia(_ sender: Any) {
        prepareView("mesoterapia_tradicional")
    }
    @IBAction func sendVirtual(_ sender: Any) {
        prepareView("mesoterapia_virtual")
    }
    
}
