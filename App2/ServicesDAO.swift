//
//  ServicesDAO.swift
//  App2
//
//  Created by Israel Soto Salcido on 1/21/19.
//  Copyright © 2019 Israel Soto Salcido. All rights reserved.
//

import Foundation
import SQLite3

class ServicesDAO {
    
    
    let fileUrl = try! FileManager.default.url(for: .documentDirectory, in: .userDomainMask, appropriateFor: nil, create: false).appendingPathComponent("TheClinic.sqlite")
    var serviceList = [Service]()
    var db: OpaquePointer?

    func initDb(){
//        prepareDb()
        let configuring: Bool = false
        if sqlite3_open(fileUrl.path, &db) != SQLITE_OK {
            print("Error opening database")
        }
        if (configuring){
            if sqlite3_exec(db, "DROP TABLE services", nil, nil, nil) != SQLITE_OK {
                print("Error dropping table")
            } else {
                print("Table dropped successfully")
            }
        }
        
        if sqlite3_exec(db, "create table if not exists services (id INTEGER PRIMARY KEY AUTOINCREMENT, code VARCHAR NOT NULL UNIQUE, productname VARCHAR NOT NULL, title1 VARCHAR NOT NULL, title2 VARCHAR NOT NULL, content1 VARCHAR NOT NULL, content2 VARCHAR NOT NULL, image VARCHAR NOT NULL)", nil, nil, nil) != SQLITE_OK {
            print("Error creating table")
        } else {
            print("Table created successfully")
        }
        
        var myServices = [Service]()
        let _myService1 = Service( code: String("cdporange"), prodName: String("ORANGE CREAM"), title1: String("GOTERO SUBLINGUAL"), title2: String("Compuestos"), content1: String("Útil en padecimientos como epilepsía, enfermedad de Parkinson, artitris reumatoide, cefalea, migraña vascular. Mejora la conducción nerviosa, fortalece las vainas de mielina, disminute el dolor de una manera progresiva"), content2: String("Compuesto 100% de CBD \nSaborizante natural de crema de naranja \nConcentraciones de 500mg en 30ml. \n Se recomienda el uso de 1 a 2 goteros cada 8 horas. \nSin conservadores"), image: String("item") )
        let _myService2 = Service( code: String("cdpmint"), prodName: String("MINT CHOCOLATE"), title1: String("GOTERO SUBLINGUAL"), title2: String("Compuestos"), content1: String("Útil en padecimientos como epilepsia, enfermedad de Parkinson, artitris reumatoide, cefalea, migraña vascular. Mejora la conducción nerviosa, fortalece las vainas de milelina, disminuye el dolo de una manera progresiva."), content2: String("Compuesto 100% de CBD \nSaborizante natural de menta chocolate \nConcentraciones de 500mg en 30ml. \nSe recomienda el uso  de 1 a 2 goteros cada 8 horas. \nSin conservadores"), image: String("item") )
        let _myService3 = Service( code: String("cdpmassage"), prodName: String("MASSAGE OIL"), title1: String("ACEITE"), title2: String("df  "), content1: String("Útil en el tratamiento de Parkinson, artitris reumatoide y cefalea"), content2: String(" sdf "), image: String("item") )
        let _myService4 = Service( code: String("cdphemp"), prodName: String("HEMP INFUSED PAIN RE-LEAF"), title1: String("TÉ"), title2: String("  "), content1: String("Útil en el tratamiento de Parkinson, artitris reumatoide y cefalea"), content2: String(" sdf "), image: String("item") )
        let _myService5 = Service( code: String("mecelulitis"), prodName: String("CELULITIS"), title1: String("SERVICIO"), title2: String("sdfs  "), content1: String("Contamos con servicio de carboxiterapia, mesoterapia, cavitación, radio frecuencia y HIFU de la más alta calidad"), content2: String("sdf  "), image: String("treatment"))
        let _myService6 = Service( code: String("mereafirmacionm"), prodName: String("REAFIRMACIÓN DE MUSLOS"), title1: String("SERVICIO"), title2: String(" df "), content1: String("Usamos Electroestimulación y ultrasónido de alta álta frecuencia para mejores resultados"), content2: String("dfs  "), image: String("treatment") )
        let _myService7 = Service( code: String("mereafirmacionb"), prodName: String("REAFIRMACIÓN DE BRAZOS"), title1: String("SERVICIO"), title2: String(" sdfs "), content1: String("Ofrecemos el mejor servicio de carboxiterapia, electroestimulación, HIFU y mesoterapia para los mejores resultados"), content2: String(" sdf "), image: String("treatment") )
        let _myService8 = Service( code: String("melevantamiento"), prodName: String("LEVANTAMIENTO DE BUSTO"), title1: String("SERVICIO"), title2: String("df  "), content1: String("Contamos con las mejores herramientas de mesoterapia, radiofrecuencia y luz pulsada"), content2: String(" sdfs "), image: String("treatment") )
        let _myService9 = Service( code: String("cdpcolocacion"), prodName: String("COLOCACIÓN DE GLOBO GASTRICO"), title1: String("PROCEDIMIENTO"), title2: String("df  "), content1: String("Procedimiento para bajar de peso"), content2: String(" sdf "), image: String("treatment") )
        let _myService10 = Service( code: String("cdpasesoria"), prodName: String("ASESORÍA NUTRICIONAL"), title1: String("DISEÑO DE ALIMENTACIÓN DIARIA"), title2: String(" sdf "), content1: String("Lleve una alimentación saludable"), content2: String("sdfdf"), image: String("treatment") )
        let _myService11 = Service( code: String("cdpsupervision"), prodName: String("SUPERVISIÓN MEDICA"), title1: String("ESPECIALISTAS"), title2: String("  "), content1: String("Supervición para mejor control de situaciones medicas"), content2: String(" sdf "), image: String("treatment") )
        let _myService12 = Service( code: String("cdpaparatologia"), prodName: String("APARATOLOGIA ESTETICA"), title1: String("TECNOLOGÍA"), title2: String("sdf."), content1: String("El mejor equipo estetico"), content2: String("qwe"), image: String("treatment") )
        let _myServiceCDPIntro = Service( code: String("cdpintro"), prodName: String("s "), title1: String("d "), title2: String(" "), content1: String("Descripcion del control del dolor"), content2: String(" sdf "), image: String("treatment") )
        
        
        myServices.append(_myService1)
        myServices.append(_myService2)
        myServices.append(_myService3)
        myServices.append(_myService4)
        myServices.append(_myService5)
        myServices.append(_myService6)
        myServices.append(_myService7)
        myServices.append(_myService8)
        myServices.append(_myService9)
        myServices.append(_myService10)
        myServices.append(_myService11)
        myServices.append(_myService12)
        myServices.append(_myServiceCDPIntro)
        
        if (configuring){
            for servi in myServices {
                print("Inserting with code \(servi.code!)")
                insertService(service: servi)
            }
        }
        var response = [Service]()
        response = getAllServices()
       
        print("------============ Response ============------")
        for res in response {
            print(res.id!)
            print(res.code!)
            print(res.prodName!)
            print(res.title1!)
            print(res.content1!)
            print("-----------------------------------------")
        }
        print("------============ End of Response ============------")
        
        var myserv: Service
        myserv = getServiceByCode(code2: "cdpaparatologia")
        print("--------- Service cdpaparatologia information")
        print(myserv.id!)
        print(myserv.code!)
        print(myserv.prodName!)
        print(myserv.title1!)
        print(myserv.content1!)
    }
    
    func prepareDb(){
        if sqlite3_open(fileUrl.path, &db) != SQLITE_OK {
            print("Error opening database")
        }
    }
    
    func insertService(service: Service){
//        prepareDb()
        // insert query
        let insertQuery = "insert into services (code, productname, title1, title2, content1, content2, image) values (?,?,?,?,?,?,?)"
        
        // insert statement
        var insertStatement: OpaquePointer?
        
        // prepare insert query
        if sqlite3_prepare_v2(db, insertQuery, -1, &insertStatement, nil) != SQLITE_OK {
            let errmsg = String(cString: sqlite3_errmsg(db)!)
            print("error preparing insert query: \(errmsg)")
            return
        }
        // binding parameters
        if sqlite3_bind_text(insertStatement, 1, (service.code! as NSString).utf8String, -1, nil) != SQLITE_OK {
            let errmsg = String(cString: sqlite3_errmsg(db)!)
            print("error preparing insert prodname query: \(errmsg)")
            return
        }
        if sqlite3_bind_text(insertStatement, 2, (service.prodName! as NSString).utf8String, -1, nil) != SQLITE_OK {
            let errmsg = String(cString: sqlite3_errmsg(db)!)
            print("error preparing insert prodname query: \(errmsg)")
            return
        }
        if sqlite3_bind_text(insertStatement, 3, (service.title1! as NSString).utf8String, -1, nil) != SQLITE_OK {
            let errmsg = String(cString: sqlite3_errmsg(db)!)
            print("error preparing insert title 1 query: \(errmsg)")
            return
        }
        if sqlite3_bind_text(insertStatement, 4, (service.title2! as NSString).utf8String, -1, nil) != SQLITE_OK {
            let errmsg = String(cString: sqlite3_errmsg(db)!)
            print("error preparing insert title2 query: \(errmsg)")
            return
        }
        if sqlite3_bind_text(insertStatement, 5, (service.content1! as NSString).utf8String, -1, nil) != SQLITE_OK {
            let errmsg = String(cString: sqlite3_errmsg(db)!)
            print("error preparing insert content1 query: \(errmsg)")
            return
        }
        if sqlite3_bind_text(insertStatement, 6, (service.content2! as NSString).utf8String, -1, nil) != SQLITE_OK {
            let errmsg = String(cString: sqlite3_errmsg(db)!)
            print("error preparing insert content2 query: \(errmsg)")
            return
        }
        if sqlite3_bind_text(insertStatement, 7, (service.image! as NSString).utf8String, -1, nil) != SQLITE_OK {
            let errmsg = String(cString: sqlite3_errmsg(db)!)
            print("error preparing insert image2 query: \(errmsg)")
            return
        }
        // Inserting test value
        if sqlite3_step(insertStatement) != SQLITE_DONE {
            let errmsg = String(cString: sqlite3_errmsg(db)!)
            print("error inserting data: \(errmsg)")
            return
        } else {
            print("inserted correctly with code \(service.code!)")
        }
        
        if sqlite3_finalize(insertStatement) != SQLITE_OK {
            let errmsg = String(cString: sqlite3_errmsg(db)!)
            print("error finalizing prepared statement: \(errmsg)")
        }
    }
    
    func getAllServices() -> [Service]{
//        prepareDb()
        // query
        let queryString = "select * from services"
        
        // statement pointer
        var statement:OpaquePointer?
        
        // preparing the query
        if sqlite3_prepare_v2(db, queryString, -1, &statement, nil) != SQLITE_OK {
            let errmsg = String(cString: sqlite3_errmsg(db)!)
            print("Error preparing query: \(errmsg)")
        }
        
        // traversing all the records
        while(sqlite3_step(statement)==SQLITE_ROW ){
            let id = sqlite3_column_int(statement, 0)
            let code = String(cString: sqlite3_column_text(statement, 1))
            let prodName = String(cString: sqlite3_column_text(statement, 2))
            let title1 = String(cString: sqlite3_column_text(statement, 3))
            let title2 = String(cString: sqlite3_column_text(statement, 4))
            let content1 = String(cString: sqlite3_column_text(statement, 5))
            let content2 = String(cString: sqlite3_column_text(statement, 6))
            let image = String(cString: sqlite3_column_text(statement, 7))
            serviceList.append( Service(
                    id: Int(id),
                    code: String(describing: code),
                    prodName: String(describing: prodName),
                    title1: String(describing: title1),
                    title2: String(describing: title2),
                    content1: String(describing: content1),
                    content2: String(describing: content2),
                    image: String(describing: image)
                )
            )
        }
        print("Returnging services list of size: ")
        print(serviceList.count)
        return serviceList
    }
    
    func getServiceByCode(code2: String) -> Service {
        print("Getting service by code")
        prepareDb()
        var myRes: Service?
        var queryStatement: OpaquePointer?
        let query = "SELECT * FROM services where code = ?"
        var found: Bool = false
        print("Getting service by code using code: ")
        print(code2)

        if sqlite3_prepare_v2(db, query, -1, &queryStatement, nil) != SQLITE_OK {
            let errmsg = String(cString: sqlite3_errmsg(db)!)
            print("Error preparing query in getting by code: \(errmsg)")
        }
        
        if sqlite3_bind_text(queryStatement, 1, code2, -1, nil) != SQLITE_OK {
            let errmsg = String(cString: sqlite3_errmsg(db)!)
            print("Error binding values in getting by code: \(errmsg)")
        }
        print("Getting service by code")

        while (sqlite3_step(queryStatement)==SQLITE_ROW){
            print("Service found found")
            found = true
            let id = sqlite3_column_int(queryStatement, 0)
            let code = String(cString: sqlite3_column_text(queryStatement, 1))
            let prodName = String(cString: sqlite3_column_text(queryStatement, 2))
            let title1 = String(cString: sqlite3_column_text(queryStatement, 3))
            let title2 = String(cString: sqlite3_column_text(queryStatement, 4))
            let content1 = String(cString: sqlite3_column_text(queryStatement, 5))
            let content2 = String(cString: sqlite3_column_text(queryStatement, 6))
            let image = String(cString: sqlite3_column_text(queryStatement, 7))
            myRes = Service(
                id: Int(id),
                code: String(describing: code),
                prodName: String(describing: prodName),
                title1: String(describing: title1),
                title2: String(describing: title2),
                content1: String(describing: content1),
                content2: String(describing: content2),
                image: String(describing: image)
            )
        }
        if (!found){
            print("Item not found")
        }
        print("Returning service with code: " + myRes!.code!)
        print("Returning service with name: " + myRes!.prodName!)
        print("Returning service with content: " + myRes!.content1!)
        print("Returning service with title: " + myRes!.title1!)
        print("Returning service with title: " + myRes!.image!)
        return myRes!
    }
    
    func update(code: String, service: Service) {
        // update query
        let updateQuery = "update services set productname = ?, title1 = ?, title2 = ?, content1 = ?, content2 = ? where code = ?"

        // insert statement
        var updateStatement: OpaquePointer?
        
        // prepare update query
        if sqlite3_prepare_v2(db, updateQuery, -1, &updateStatement, nil) != SQLITE_OK {
            let errmsg = String(cString: sqlite3_errmsg(db)!)
            print("error preparing update query: \(errmsg)")
            return
        }
        // binding parameters
        if sqlite3_bind_text(updateStatement, 1, (service.prodName! as NSString).utf8String, -1, nil) != SQLITE_OK {
            let errmsg = String(cString: sqlite3_errmsg(db)!)
            print("error preparing update prodname query: \(errmsg)")
            return
        }
        if sqlite3_bind_text(updateStatement, 2, (service.title1! as NSString).utf8String, -1, nil) != SQLITE_OK {
            let errmsg = String(cString: sqlite3_errmsg(db)!)
            print("error preparing update title 1 query: \(errmsg)")
            return
        }
        if sqlite3_bind_text(updateStatement, 3, (service.title2! as NSString).utf8String, -1, nil) != SQLITE_OK {
            let errmsg = String(cString: sqlite3_errmsg(db)!)
            print("error preparing update title2 query: \(errmsg)")
            return
        }
        if sqlite3_bind_text(updateStatement, 4, (service.content1! as NSString).utf8String, -1, nil) != SQLITE_OK {
            let errmsg = String(cString: sqlite3_errmsg(db)!)
            print("error preparing update content1 query: \(errmsg)")
            return
        }
        if sqlite3_bind_text(updateStatement, 5, (service.content2! as NSString).utf8String, -1, nil) != SQLITE_OK {
            let errmsg = String(cString: sqlite3_errmsg(db)!)
            print("error preparing update content2 query: \(errmsg)")
            return
        }
        if sqlite3_bind_text(updateStatement, 6, (service.code! as NSString).utf8String, -1, nil) != SQLITE_OK {
            let errmsg = String(cString: sqlite3_errmsg(db)!)
            print("error preparing update content2 query: \(errmsg)")
            return
        }
        // Inserting test value
        if sqlite3_step(updateStatement) != SQLITE_DONE {
            let errmsg = String(cString: sqlite3_errmsg(db)!)
            print("error updating data: \(errmsg)")
            return
        } else {
            print("updated correctly with code \(service.code!)")
        }
        
        if sqlite3_finalize(updateStatement) != SQLITE_OK {
            let errmsg = String(cString: sqlite3_errmsg(db)!)
            print("error finalizing prepared statement: \(errmsg)")
        }

    }
    
}
