//
//  CPMOne.swift
//  App2
//
//  Created by Israel Soto Salcido on 11/1/18.
//  Copyright © 2018 Israel Soto Salcido. All rights reserved.
//

import UIKit

class CPMOne: UIViewController {
    
    @IBOutlet weak var CPMOneImage: UIImageView!
    
    @IBOutlet weak var CPMOneText: UITextView!
    
    var contentText: String? = ""
    var imageName = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("CPM one loaded")
        
        if (contentText == "colocacion_globo"){
            contentText = "Es un globo gástrico que se rellena de suero fisiológico teñido de azul, y se introduce en el estómago mediante una sencilla endoscopia que se realiza bajo una ligera sedación."
            imageName = "CPMcolocacion_globo.jpg"
        } else if (contentText == "nutricional"){
            contentText = "Corresponde a una serie de complementos, entre ellos a realizar una historia clinica donde se toman datos personales, como antecedentes de enfermedades hereditarias, patologias recientes, una breve historia sobre su alimentacion para definir como es que esta comiendo el paciente, datos bioquimos que nos reflejan como se encuentra por dentro el paciente, y por ultimo se requiren datos antropometricos (peso, talla, etc.). con todos estos datos se elaborara un plan de alimentacion personalizado para el paciente. En cual se le dara seguimiento hasta obtener los resultados deseados."
            imageName = "CPMasesoria_nutricional.jpg"
        } else if (contentText == "supervicion"){
            contentText = "La asesoría médica consiste en mantener un seguimiento al paciente, al cual se le otorga un plan farmacológico que va a en conjunto con el plan alimenticio asignado por nutrición para lograr una pérdida de peso adecuada, paulatina y siempre cuidando el bienestar del paciente"
            imageName = "CPMsupervicion_medica.jpg"
        } else if (contentText == "aparatologia"){
            contentText = "Proximamente"
            imageName = "CPM_aparatologia_estetica.jpg"
        } else if (contentText == "lipoescultura"){
            contentText = "Lipoescultura ultrasonica, es un procedimiento el cual nos ayuda a perder centímetros de una manera inmediata y constante durante 21 días, este tiene que ir acompañado de 10 sesiones de mesoterapia para ver mejores resultamos."
            imageName = "lipoescultura.jpg"
        } else if (contentText == "mesoterapia_tradicional"){
            contentText = "Consiste en aplicar micro-inyecciones de principios activos en la capa media de la piel. los activos tienen diferentes efectos sobre la dermis como el relleno de arrugas, flacidez hidratación, papada, estrías, etc."
            imageName = "CPMmesoterapia_nutricional.jpg"
        } else if (contentText == "mesoterapia_virtual"){
            contentText = "Consiste en la emisión de una corriente de baja intensidad que aumenta la permeabilidad de la piel, abriendo su poro y permitiendo que el principio activo  aplicado en la superficie penetre hasta la dermis media"
            imageName = "CPMmesoterapia_virtual.jpg"
        }
        
        let image = UIImage(named: imageName)
        CPMOneImage?.image = image
        CPMOneText.text = contentText

    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
    
}
