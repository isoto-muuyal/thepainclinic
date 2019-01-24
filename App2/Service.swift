//
//  Services.swift
//  App2
//
//  Created by Israel Soto Salcido on 1/21/19.
//  Copyright © 2019 Israel Soto Salcido. All rights reserved.
//

import Foundation

class Service {
    
    var id: Int
    var prodName: String?
    var title1: String?
    var title2: String?
    var content1: String?
    var content2: String?
    
    init( id: Int,  prodName: String?,  title1: String?,  title2: String?,  content1: String?, content2: String?) {
        self.id = id
        self.prodName = prodName
        self.title1 = title1
        self.title2 = title2
        self.content1 = content1
        self.content2 = content2
    }
    
}
