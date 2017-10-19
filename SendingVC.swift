//
//  SendingVC.swift
//  DelegateMayhem
//
//  Created by Andrew Webber on 10/18/17.
//  Copyright © 2017 Andrew Webber. All rights reserved.
//

import UIKit

protocol DataSentDelegate {
    func userData(data: String)
    
}

class SendingVC: UIViewController {
    
    var delegate: DataSentDelegate? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBOutlet weak var txtMessage: UITextField!
    
    @IBAction func SendButton_TouchUpInside(_ sender: Any) {
        
        if delegate != nil{
            if txtMessage.text != nil{
                let message = txtMessage.text
                delegate?.userData(data: message!)
                dismiss(animated: true, completion: nil)
            }
            
        }
        
    }
    


}
