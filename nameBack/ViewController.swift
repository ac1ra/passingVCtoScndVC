//
//  ViewController.swift
//  nameBack
//
//  Created by ac1ra on 23.12.2020.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtField: UITextField!
    @IBOutlet weak var label: UILabel!
    
    var name_frst: String?
    
    var name_get_scnd: String?
    
    @IBAction func bttn_firstVC(_ sender: Any) {
        performSegue(withIdentifier: "sendScndVC", sender: self)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        if let fullName = name_frst {
            txtField.text = ""
            label.text = "fullname: \(fullName)"
        }
        else if let nm_scnd = name_get_scnd{
            label.text = "From scndVC: \(nm_scnd)"
        }
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let firstVC = segue.destination as? scndViewController{
            
            firstVC.firstName = txtField.text!
        }
    }
    
    @IBAction func performUnwindSegueOperation(_ sender: UIStoryboardSegue){
        if let scnd_VC_exit = sender.source as? scndViewController {
            scnd_VC_exit.sendVC = label.text
        }
    }
}

