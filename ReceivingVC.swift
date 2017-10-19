//
//  ReceivingVC.swift
//  DelegateMayhem
//
//  Created by Andrew Webber on 10/18/17.
//  Copyright © 2017 Andrew Webber. All rights reserved.
//

import UIKit

class ReceivingVC: UIViewController, DataSentDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var lblViewMessage: UILabel!
    
    func userData(data: String) {
            lblViewMessage.text = data
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showSendingVC"{
            let sendingVC: SendingVC = segue.destination as! SendingVC
            sendingVC.delegate = self
        } 
    }
    
}
