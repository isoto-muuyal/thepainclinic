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
    
    @IBAction func sendReafiracionMuslos(_ sender: UIButton) {
        prepareView("reafirmacion_muslos")
    }
    
    @IBAction func sendReafirmacionBrazos(_ sender: Any) {
        prepareView("reafirmacion_brazos")
    }
    
    @IBAction func sendEmbellecimientoGluteos(_ sender: Any) {
        prepareView("embellecimiento_gluteos")
    }
    
    @IBAction func sendLevantamientoBusto(_ sender: Any) {
        prepareView("levantamiento_busto")
    }
    
    @IBAction func levantamientoFacial(_ sender: Any) {
        prepareView("levantamiento_facial")
    }
    
    @IBAction func sendRemocionOjeras(_ sender: Any) {
        prepareView("remocion_ojeras")
    }
    
    @IBAction func atenuacion_estrias(_ sender: Any) {
        prepareView("atenuacion_estrias")
    }
    
    @IBAction func rejuvenecimiento_manos(_ sender: Any) {
        prepareView("rejuvenecimiento_manos")
    }
    
    @IBAction func sendRejuvenecimientoFacial(_ sender: Any) {
        prepareView("rejuvenecimiento_facial")
    }
    
    @IBAction func sendBlanqueamientoAxilas(_ sender: Any) {
        prepareView("blanqueamiento_axilas")
    }
    
    @IBAction func sendRemocionManchas(_ sender: Any) {
        prepareView("remocion_manchas")
    }
    
    @IBAction func sendRemocionHongos(_ sender: Any) {
        prepareView("remocion_hongos")
    }
    @IBAction func sendAtenuacionTatuajes(_ sender: Any) {
        prepareView("atenuacion_tatuajes")
    }
    
    @IBAction func sendTratamientoHiperhidrosis(_ sender: Any) {
        prepareView("tratamiento_hiperhidrosis")
    }
    
    @IBAction func sendAparatologiaEstetica(_ sender: Any) {
        prepareView("aparatologia_estetica")
    }
    
    @IBAction func sendTratamientoFlacidez(_ sender: Any) {
        prepareView("tratamiento_flacidez")
    }
    
    @IBAction func sendMejorarPiel(_ sender: Any) {
        prepareView("mejorar_piel")
    }
    
}
