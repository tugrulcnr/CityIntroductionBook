//
//  Sehirler.swift
//  SehirTanitimKitabi
//
//  Created by ertugrul on 25.07.2022.
//
import UIKit
import Foundation

class Sehirler {
    
    var sehirIsmi = ""
    var sehirBolgesi = ""
    var sehirResmi : UIImage
    
    init(sehirIsmi : String, sehirBolgesi : String, sehirResmi: UIImage){
        self.sehirIsmi = sehirIsmi
        self.sehirBolgesi = sehirBolgesi
        self.sehirResmi = sehirResmi
    }
    
    
}
