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
        prepareDb()
        if sqlite3_exec(db, "DROP TABLE services", nil, nil, nil) != SQLITE_OK {
            print("Error dropping table")
        } else {
            print("Table dropped successfully")
        }
        
        if sqlite3_exec(db, "create table if not exists services (id INTEGER PRIMARY KEY AUTOINCREMENT, code VARCHAR, productname VARCHAR, title1 VARCHAR, title2 VARCHAR, content1 VARCHAR, content2 VARCHAR )", nil, nil, nil) != SQLITE_OK {
            print("Error creating table")
        } else {
            print("Table created successfully")
        }
        
        var myServices = [Service]()
        
        let _myService1 = Service( code: String("cdorange"), prodName: String("ORANGE CREAM"), title1: String("GOTERO SUBLINGUAL"), title2: String(""), content1: String("Útil en padecimientos como epilepsía, enfermedad de Parkinson, artitris reumatoide, cefalea, migraña vascular. Mejora la conducción nerviosa, fortalece las vainas de mielina, disminute el dolor de una manera prograsiva"), content2: String("Compuesto 100% de CBD \nSaborizante natural de crema de naranja \nConcentraciones de 500mg en 30ml. \n Se recomienda el uso de 1 a 2 goteros cada 8 horas. \nSin conservadores") )
        let _myService2 = Service( code: String("cdmint"), prodName: String("MINI CHOCOLATE"), title1: String("describing: title1"), title2: String("describing: title2"), content1: String("describing: content1"), content2: String("describing: content2") )
        let _myService3 = Service( code: String("cdmassage"), prodName: String("MASSAGE OIL"), title1: String("describing: title1"), title2: String("describing: title2"), content1: String("describing: content1"), content2: String("describing: content2") )
        let _myService4 = Service( code: String("cdhemp"), prodName: String("HEMP INFUSED PAIN RE-LEAF"), title1: String("describing: title1"), title2: String("describing: title2"), content1: String("describing: content1"), content2: String("describing: content2") )
        let _myService5 = Service( code: String("mecelulitis"), prodName: String("CELULITIS"), title1: String("describing: title1"), title2: String("describing: title2"), content1: String("describing: content1"), content2: String("describing: content2") )
        let _myService6 = Service( code: String("mereafirmacionm"), prodName: String("REAFIRMACIÓN DE MUSLOS"), title1: String("describing: title1"), title2: String("describing: title2"), content1: String("describing: content1"), content2: String("describing: content2") )
        let _myService7 = Service( code: String("mereafirmacionb"), prodName: String("REAFIRMACIÓN DE BRAZOS"), title1: String("describing: title1"), title2: String("describing: title2"), content1: String("describing: content1"), content2: String("describing: content2") )
        let _myService8 = Service( code: String("melevantamiento"), prodName: String("LEVANTAMIENTO DE BUSTO"), title1: String("describing: title1"), title2: String("describing: title2"), content1: String("describing: content1"), content2: String("describing: content2") )
        let _myService9 = Service( code: String("cdpcolocacion"), prodName: String("COLOCACIÓN DE GLOBO GASTRICO"), title1: String("describing: title1"), title2: String("describing: title2"), content1: String("describing: content1"), content2: String("describing: content2") )
        let _myService10 = Service( code: String("cdpasesoria"), prodName: String("ASESORÍA NUTRICIONAL"), title1: String("describing: title1"), title2: String("describing: title2"), content1: String("describing: content1"), content2: String("describing: content2") )
        let _myService11 = Service( code: String("cdpsupervision"), prodName: String("SUPERVISIÓN MEDICA"), title1: String("describing: title1"), title2: String("describing: title2"), content1: String("describing: content1"), content2: String("describing: content2") )
        let _myService12 = Service( code: String("cdpaparatologia"), prodName: String("APARATOLOÍA ESTETICA"), title1: String("describing: title1"), title2: String("describing: title2"), content1: String("describing: content1"), content2: String("describing: content2") )

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
        
        for servi in myServices {
            insertService(service: servi)
        }
        getAllService()
    }
    
    func prepareDb(){
        if sqlite3_open(fileUrl.path, &db) != SQLITE_OK {
            print("Error opening database")
        }
    }
    
    func insertService(service: Service){
        prepareDb()
        // insert query
        let insertQuery = "insert into services (code, productname, title1, title2, content1, content2) values (?,?,?,?,?,?)"
        
        // insert statement
        var insertStatement: OpaquePointer?
        
        // prepare insert query
        if sqlite3_prepare_v2(db, insertQuery, -1, &insertStatement, nil) != SQLITE_OK {
            let errmsg = String(cString: sqlite3_errmsg(db)!)
            print("error preparing insert query: \(errmsg)")
            return
        }
    
        // binding parameters
        if sqlite3_bind_text(insertStatement, 1, service.code, -1, nil) != SQLITE_OK {
            let errmsg = String(cString: sqlite3_errmsg(db)!)
            print("error preparing insert prodname query: \(errmsg)")
            return
        }
        if sqlite3_bind_text(insertStatement, 2, service.prodName!, -1, nil) != SQLITE_OK {
            let errmsg = String(cString: sqlite3_errmsg(db)!)
            print("error preparing insert prodname query: \(errmsg)")
            return
        }
        if sqlite3_bind_text(insertStatement, 3, service.title1!, -1, nil) != SQLITE_OK {
            let errmsg = String(cString: sqlite3_errmsg(db)!)
            print("error preparing insert title 1 query: \(errmsg)")
            return
        }
        if sqlite3_bind_text(insertStatement, 4, service.title2!, -1, nil) != SQLITE_OK {
            let errmsg = String(cString: sqlite3_errmsg(db)!)
            print("error preparing insert title2 query: \(errmsg)")
            return
        }
        if sqlite3_bind_text(insertStatement, 5, service.content1!, -1, nil) != SQLITE_OK {
            let errmsg = String(cString: sqlite3_errmsg(db)!)
            print("error preparing insert content1 query: \(errmsg)")
            return
        }
        if sqlite3_bind_text(insertStatement, 6, service.content2!, -1, nil) != SQLITE_OK {
            let errmsg = String(cString: sqlite3_errmsg(db)!)
            print("error preparing insert content2 query: \(errmsg)")
            return
        }
        // Inserting test value
        if sqlite3_step(insertStatement) != SQLITE_DONE {
            let errmsg = String(cString: sqlite3_errmsg(db)!)
            print("error inserting data: \(errmsg)")
            return
        } else {
            print("inserted correctly")
        }
        
        if sqlite3_finalize(insertStatement) != SQLITE_OK {
            let errmsg = String(cString: sqlite3_errmsg(db)!)
            print("error finalizing prepared statement: \(errmsg)")
        }
    }
    
    func getAllService() -> [Service]{
        prepareDb()
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
            
            serviceList.append( Service(
                    id: Int(id),
                    code: String(describing: code),
                    prodName: String(describing: prodName),
                    title1: String(describing: title1),
                    title2: String(describing: title2),
                    content1: String(describing: content1),
                    content2: String(describing: content2)
                )
            )
        }
        print("Returnging services list of size: ")
        print(serviceList.count)
        return serviceList
    }
    
    func getServiceByCode(code: String) -> Service {
        prepareDb()
        var service: Service?
        var queryStatement: OpaquePointer?
        let query = "SELECT * FROM service where code = \(code)"
        if sqlite3_prepare_v2(db, query, -1, &queryStatement, nil) != SQLITE_OK {
            let errmsg = String(cString: sqlite3_errmsg(db)!)
            print("Error preparing query: \(errmsg)")
        }
        while (sqlite3_step(queryStatement)==SQLITE_ROW){
            let id = sqlite3_column_int(queryStatement, 0)
            let code = String(cString: sqlite3_column_text(queryStatement, 1))
            let prodName = String(cString: sqlite3_column_text(queryStatement, 2))
            let title1 = String(cString: sqlite3_column_text(queryStatement, 3))
            let title2 = String(cString: sqlite3_column_text(queryStatement, 4))
            let content1 = String(cString: sqlite3_column_text(queryStatement, 5))
            let content2 = String(cString: sqlite3_column_text(queryStatement, 6))
            service = Service(
                id: Int(id),
                code: String(describing: code),
                prodName: String(describing: prodName),
                title1: String(describing: title1),
                title2: String(describing: title2),
                content1: String(describing: content1),
                content2: String(describing: content2)
            )
        }
        print("Returning service with code: " + service!.code!)
        return service!
    }
    
}
