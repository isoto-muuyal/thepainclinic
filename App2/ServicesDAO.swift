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

    
    init() {
        <#statements#>
    }
    
    func dbInit(){
        var db: OpaquePointer?
        if sqlite3_open(fileUrl.path, &db) != SQLITE_OK {
    print("Error opening database")
    }
    if sqlite3_exec(db, "create table if not exists services (id INTEGER PRIMARY KEY AUTOINCREMENT, productname VARCHAR, title1 VARCHAR, title2 VARCHAR, content1 VARCHAR, content2 VARCHAR )", nil, nil, nil) != SQLITE_OK {
    print("Error creating table")
    }
    
    // insert query
    
    let insertQuery = "insert into services (productname, title1, title2, content1, content2) values (?,?,?,?,?)"
    let insertQuery2 = "insert into services (productname, title1, title2, content1, content2) values ('produ','titulo','tisdfsdf','titulo2','sdfsdf ')"
    
    // insert statement
    var insertStatement: OpaquePointer?
    var insertStatement2: OpaquePointer?
    
    // prepare insert query
    if sqlite3_prepare(db, insertQuery, -1, &insertStatement, nil) != SQLITE_OK {
    let errmsg = String(cString: sqlite3_errmsg(db)!)
    print("error preparing insert query: \(errmsg)")
    return
    }
    
    
    // binding parameters
    if sqlite3_bind_text(insertStatement, 1, "prod name", -1, nil) != SQLITE_OK {
    let errmsg = String(cString: sqlite3_errmsg(db)!)
    print("error preparing insert query: \(errmsg)")
    return
    }
    if sqlite3_bind_text(insertStatement, 2, "title 2", -1, nil) != SQLITE_OK {
    let errmsg = String(cString: sqlite3_errmsg(db)!)
    print("error preparing insert query: \(errmsg)")
    return
    }
    if sqlite3_bind_text(insertStatement, 3, "title 1", -1, nil) != SQLITE_OK {
    let errmsg = String(cString: sqlite3_errmsg(db)!)
    print("error preparing insert query: \(errmsg)")
    return
    }
    if sqlite3_bind_text(insertStatement, 4, "content one", -1, nil) != SQLITE_OK {
    let errmsg = String(cString: sqlite3_errmsg(db)!)
    print("error preparing insert query: \(errmsg)")
    return
    }
    if sqlite3_bind_text(insertStatement, 5, "content tow", -1, nil) != SQLITE_OK {
    let errmsg = String(cString: sqlite3_errmsg(db)!)
    print("error preparing insert query: \(errmsg)")
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
    
    if sqlite3_prepare(db, insertQuery2, 0, &insertStatement, nil) != SQLITE_OK {
    let errmsg = String(cString: sqlite3_errmsg(db)!)
    print("error preparing insert query2: \(errmsg)")
    return
    }
    //        if sqlite3_step(insertStatement2) != SQLITE_DONE {
    //            let errmsg = String(cString: sqlite3_errmsg(db)!)
    //            print("error inserting data2: \(errmsg)")
    //            return
    //        } else {
    //            print("inserted q2 correctly")
    //        }
    //
    // query
    let queryString = "select * from services"
    
    // statement pointer
    var statement:OpaquePointer?
    
    // preparing the query
    if sqlite3_prepare(db, queryString, -1, &statement, nil) != SQLITE_OK {
    let errmsg = String(cString: sqlite3_errmsg(db)!)
    print("Error preparing query: \(errmsg)")
    return
    }
    
    // traversing all the records
    while(sqlite3_step(statement)==SQLITE_ROW ){
    let id = sqlite3_column_int(statement, 0)
    let prodName = sqlite3_column_text(statement, 1)
    let title1 = sqlite3_column_text(statement, 2)
    let title2 = sqlite3_column_text(statement, 3)
    let content1 = sqlite3_column_text(statement, 4)
    let content2 = sqlite3_column_text(statement, 5)
    
    serviceList.append( Service(
    id: Int(id),
    prodName: String(describing: prodName),
    title1: String(describing: title1),
    title2: String(describing: title2),
    content1: String(describing: content1),
    content2: String(describing: content2)
    )
    )
    }
    let service: Service
    service = serviceList[serviceList.count-1]
    print("---------------------")
    print(serviceList.count)
    print("Product name: " + String(service.prodName!))
    print("Title: " + service.title1!)
    print("Content: " + service.content1!)
    print("Subtitle: " + service.title2!)
    print("Sub content: " + service.content2!)
    print("---------------------")
    
    for serv in serviceList {
    print(serv.prodName)
    }
    
    let result = sqlite3_exec(db, "select * from services", nil, nil, nil)
    print (result)
    
    }
    
    
    func insertService(service: Service){
        
    }
    
    func getService(){
        
    }
}
