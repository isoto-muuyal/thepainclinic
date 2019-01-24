//
//  TestViewController.swift
//  App2
//
//  Created by Israel Soto Salcido on 11/16/18.
//  Copyright © 2018 Israel Soto Salcido. All rights reserved.
//

import UIKit

class TestViewController1: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor.yellow
        
        // label
        let labelInst = UILabel()
        self.view.addSubview(labelInst)
        labelInst.text = "Page 1"
        labelInst.translatesAutoresizingMaskIntoConstraints = false
        labelInst.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 100).isActive = true
        labelInst.leftAnchor.constraint(equalTo: self.view.leftAnchor, constant: 100).isActive = true
        
      
        let labelDescription = UILabel()
        self.view.addSubview(labelDescription)
        labelDescription.text = "Corresponde a una serie de complementos, entre ellos a realizar una historia clinica donde se toman datos personales, como antecedentes de enfermedades hereditarias, patologias recientes, una breve historia sobre su alimentacion para definir como es que esta comiendo el paciente, datos bioquimos que nos reflejan como se encuentra por dentro el paciente, y por ultimo se requiren datos antropometricos (peso, talla, etc.). con todos estos datos se elaborara un plan de alimentacion personalizado para el paciente. En cual se le dara seguimiento hasta obtener los resultados deseados."
        labelDescription.translatesAutoresizingMaskIntoConstraints = false
        labelDescription.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 800).isActive = true
        labelDescription.leftAnchor.constraint (equalTo: self.view.leftAnchor, constant: 100).isActive = true
        labelDescription.widthAnchor.constraint(equalTo: self.view.widthAnchor, constant: 600).isActive = true
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
