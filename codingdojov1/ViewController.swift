//
//  ViewController.swift
//  codingdojov1
//
//  Created by Süleyman Tülbür on 26.12.2021.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var mesajTextField: UITextField!
    
    @IBOutlet weak var mesajLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func oncelikliYollaOnClick(_ sender: Any) {
        emailFunction(color: .red)
    }
    
    
    @IBAction func yollaButonOnClick(_ sender: Any) {
        emailFunction(color: .black)
    }
    
    func emailFunction (color:UIColor) {
        guard let emailText = emailTextField.text else { return }
        guard let mesajText = mesajTextField.text else { return }
        var tempText = ""
        var tempMesaj = ""
        mesajLabel.textColor = color
        
        
        
        
        var emails = emailText.split(separator: ",")
        if !mesajText.isEmpty{
            for email in emails {
                if email.contains("@"){
                    tempText.append("To: \(email) \n")
                    
                    tempMesaj = ""
                    tempMesaj.append("\n mesaj: \(mesajText)")
                    
                    
                }else {
                    tempText = ""
                    tempMesaj = ""
                    tempText.append("Lütfen doğru bir e-posta adresi giriniz!")
                }
                
            }
            tempText.append(tempMesaj)
            
            
            mesajLabel.text = tempText
            
        }else{
            mesajLabel.text = "Boş bir mesaj yollanamaz!"
        }
    }
    
}

