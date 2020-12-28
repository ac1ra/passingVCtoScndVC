//
//  scndViewController.swift
//  nameBack
//
//  Created by ac1ra on 23.12.2020.
//

import UIKit

class scndViewController: UIViewController {

    var sendVC: String!
    var firstName: String!
    
    
    @IBOutlet weak var scnd_txtField: UITextField!
    @IBOutlet weak var scnd_label: UILabel!
    

    @IBAction func bttn_clost(_ sender: Any) {
        sendVC = scnd_txtField.text
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        scnd_label.text = "From VC: \(firstName ?? "nil_0")"
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let vc_frst = segue.destination as? ViewController {
            
            vc_frst.name_get_scnd = sendVC
//          vc_frst.label.text = sendVC
        }
    }

}
