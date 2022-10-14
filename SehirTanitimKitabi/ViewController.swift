//
//  ViewController.swift
//  SehirTanitimKitabi
//
//  Created by ertugrul on 25.07.2022.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate,UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    var sehirlerDizisi = [Sehirler]()
    var ismi = ""
    var bolge = ""
    var resim = UIImage()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
        let ankara = Sehirler(sehirIsmi: "Ankara", sehirBolgesi: "İç Anadolu", sehirResmi: UIImage(named: "ankara")!)
        let antalya = Sehirler(sehirIsmi: "Antalya", sehirBolgesi: "Akdeniz", sehirResmi: UIImage(named: "antalya")!)
        let diyarbekir = Sehirler(sehirIsmi: "Diyarbakır", sehirBolgesi: "Güney Doğu", sehirResmi: UIImage(named: "diyarbakir")!)
        let erzurum = Sehirler(sehirIsmi: "Erzurum", sehirBolgesi: "Doğu Anadolu", sehirResmi: UIImage(named: "erzurum")!)
        let istanbul = Sehirler(sehirIsmi: "İstanbul", sehirBolgesi: "Marmara", sehirResmi: UIImage(named: "istanbul")!)
        
        sehirlerDizisi = [ankara,antalya,diyarbekir,erzurum,istanbul]
        
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return sehirlerDizisi.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = sehirlerDizisi[indexPath.row].sehirIsmi
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        ismi = sehirlerDizisi[indexPath.row].sehirIsmi
        bolge = sehirlerDizisi[indexPath.row].sehirBolgesi
        resim = sehirlerDizisi[indexPath.row].sehirResmi
        
        performSegue(withIdentifier: "toDetailVC", sender: nil)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetailVC"{
            let destinationVC = segue.destination as! DetailsViewController
            destinationVC.sehir_ismi = ismi
            destinationVC.sehir_bolgesi = bolge
            destinationVC.sehir_resmi = resim
        }
            
    }
    
}

