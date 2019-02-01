//
//  FileStorageService.swift
//  App2
//
//  Created by Israel Soto Salcido on 1/30/19.
//  Copyright © 2019 Israel Soto Salcido. All rights reserved.
//

import Foundation
import UIKit

class FileStorageService: UIViewController{
    
    let folderName: String = "theClinic"
    
    func getDirectoryPath() -> NSURL {
        let path = (NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true)[0] as NSString).appendingPathComponent(folderName)
        let url = NSURL(string: path)
        return url!
    }
    
    func saveImageDocumentDirectory(image: UIImage, imageName: String) -> String {
        print("------------ Save image ---------------")
        print("------------ Saving image: " + imageName)
        let fileManager = FileManager.default
        let path = (NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true)[0] as NSString).appendingPathComponent(folderName)
        if !fileManager.fileExists(atPath: path) {
            try! fileManager.createDirectory(atPath: path, withIntermediateDirectories: true, attributes: nil)
        }
        let url = NSURL(string: path)
        let imagePath = url!.appendingPathComponent(imageName)
        let urlString: String = imagePath!.absoluteString
//        let imageData = UIImageJPEGRepresentation(image, 0.5)
        let imageData = UIImagePNGRepresentation(image)
        fileManager.createFile(atPath: urlString as String, contents: imageData, attributes: nil)
        print("File: " +  imageName)
        print("Saved on folder: " + path)
        return imageName
    }
    
    func getImageFromDocumentDirectory(name: String) -> UIImage{
        print("------------ Load image ---------------")
        print("------------ Loading image: " + name)
        let fileManager = FileManager.default
        var image: UIImage
        
        let imagePath = (self.getDirectoryPath() as NSURL).appendingPathComponent(name)
        let urlString: String = imagePath!.absoluteString
        if fileManager.fileExists(atPath: urlString) {
            image = UIImage(contentsOfFile: urlString)!
            print("------------ Image found and returned")
        } else if (name.contains("cdd")){
            image = UIImage(named: "item")!
        } else {
            image = UIImage(named: "treatment")!
        }
        return image
    }
    
}
