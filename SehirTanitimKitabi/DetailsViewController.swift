//
//  DetailsViewController.swift
//  SehirTanitimKitabi
//
//  Created by ertugrul on 25.07.2022.
//

import UIKit

class DetailsViewController: UIViewController {

    @IBOutlet weak var labelBolge: UILabel!
    @IBOutlet weak var labelSehir: UILabel!
    @IBOutlet weak var imageViewSehir: UIImageView!
    
    var sehir_ismi = ""
    var sehir_bolgesi = ""
    var sehir_resmi = UIImage()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        labelSehir.text = sehir_ismi
        labelBolge.text = sehir_bolgesi
        imageViewSehir.image = sehir_resmi
    }
    

    

}
