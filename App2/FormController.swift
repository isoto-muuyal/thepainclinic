//
//  FormController.swift
//  App2
//
//  Created by Israel Soto Salcido on 10/11/18.
//  Copyright © 2018 Israel Soto Salcido. All rights reserved.
//

import UIKit
import MessageUI

class FormController: UIViewController {
    
    
    
    var contactMethodsData: [String] = [String]()
    
    
    @IBOutlet weak var name: UITextField!
    @IBOutlet weak var birthday: UIDatePicker!
    @IBOutlet weak var address: UITextField!
    @IBOutlet weak var phone: UITextField!
    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var diseases: UITextField!
    @IBOutlet weak var allergies: UITextField!
    @IBOutlet weak var currentMedicine: UITextField!
    @IBOutlet weak var contactName: UITextField!
    @IBOutlet weak var contactRelationship: UITextField!
    @IBOutlet weak var contactPhone: UITextField!
    @IBOutlet weak var contactAddress: UITextField!
    @IBOutlet weak var contactEmail: UITextField!
    var agef: Int = 0
    
    override func viewDidLoad() {
    
        super.viewDidLoad()
        print("Form controller loaded")
        print (birthday.date)
    }
     
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        print("memory warning")

    }
    
    @IBAction func onClickSend(_ sender: Any) {
        createPDF()
        printFile()
    }
    
    func createPDF() {
        let html = "<b>Hello <i></i></b>  <p>Generate PDF file from HTML in Swift</p>"
        
        let fmt = UIMarkupTextPrintFormatter(markupText: html)
        
        // 2. Assign print formatter to UIPrintPageRenderer
        
        let render = UIPrintPageRenderer()
        render.addPrintFormatter(fmt, startingAtPageAt: 0)
        
        // 3. Assign paperRect and printableRect
        
        let page = CGRect(x: 0, y: 0, width: 595.2, height: 841.8) // A4, 72 dpi
        let printable = page.insetBy(dx: 0, dy: 0)
        
        render.setValue(NSValue(cgRect: page), forKey: "paperRect")
        render.setValue(NSValue(cgRect: printable), forKey: "printableRect")
        
        // 4. Create PDF context and draw
        
        let pdfData = NSMutableData()
        UIGraphicsBeginPDFContextToData(pdfData, .zero, nil)
        
        for i in 1...render.numberOfPages {
            UIGraphicsBeginPDFPage();
            let bounds = UIGraphicsGetPDFContextBounds()
            render.drawPage(at: i - 1, in: bounds)
        }
        
        UIGraphicsEndPDFContext();
        
        // 5. Save PDF file
        
        let documentsPath = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true)[0]
        
        pdfData.write(toFile: "\(documentsPath)/file.pdf", atomically: true)
    }
    
    func printFile(){
        
        let gregorian = Calendar(identifier: .gregorian)
        let ageComponents = gregorian.dateComponents([.year], from: birthday.date, to: Date())
        let age = ageComponents.year!
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd"
        let bday = dateFormatter.string(from: birthday.date)
        
        let textToPrint: String = "<center> <h1>The Clinic</h1><h1>Pain Relief</h1>"
            + "<font size=\"2\">Laguna de Tamiahua No. 6963 Col. San Lorenzo CP. 32424 </font> <br><br><hr>"
            + "<br><h2>DATOS GENERALES DEL PACIENTE</h2></center>"
            + "<pre class=\"tab\">"
            + "<h3>Nombre:     " + name.text!
        
        let textToPrint2: String = "<br>Fecha de Nacimiento:  \(bday)   Edad: \(age)"
            + "<br>Domicilio  " + address.text!
            + "<br>Tel:    " + phone.text!
            + "<br>Correo electrónico: " + email.text!
            
        let textToPrint3: String = "<br>Enfermedades:  " + diseases.text!
            + "<br>Alergias:  " +  allergies.text!
            + "<br>Medicamentos que toma actualmente:   " + currentMedicine.text!
            + "<br><br><hr></h2><h2>En caso de emergencia contactar a:</h2> "
            + "<h3><br>Nombre: " +  contactName.text!
            
        let textToPrint4 = "<br>Parentesco:  " + contactRelationship.text!
            + "   Tel:  " + contactPhone.text!
            + "<br>Domicilio:  " + contactAddress.text!
            + "<br>Correo Electrónico: " + contactEmail.text!
        
        let textToPrint5: String = "<br></h3></pre><font size=\"1\">*Toda la informaci[on que nos proporcione es totalmente confidencial y de uso exclusivo para The Clinic según <br> los artículos No. 15 y 16 de <strong>La Ley Federal De Datos Personales en Posesión de Prticulares.</strong> *</font>"
//
//                + "<br> <pre class=\"tab\">              " + name.text! + "</pre>"
//            + "<br> &nbsp;&nbsp;" + address.text!
//            + "<br>&nbsp; " + email.text!
//            + "<br>  " + diseases.text!
//
//        textToPrint += "<br> \(age) " + bday
        let finalToPrint: String = textToPrint + textToPrint2 + textToPrint3 + textToPrint4 + textToPrint5
        // 1
        let printController = UIPrintInteractionController.shared
        
        // 2
        let printInfo = UIPrintInfo(dictionary:nil)
        printInfo.outputType = UIPrintInfoOutputType.general
        printInfo.jobName = "print Job"
        printController.printInfo = printInfo

        // 3
        let formatter = UIMarkupTextPrintFormatter(markupText: finalToPrint)
        formatter.perPageContentInsets = UIEdgeInsets(top: 72, left: 72, bottom: 72, right: 72)
        printController.printFormatter = formatter
        
        // 4
        printController.present(animated: true, completionHandler: nil)
    }
    
}

