//
//  ViewController.swift
//  Networking
//
//  Created by Kaique Lopes on 15/03/21.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
                
    }
    @IBAction func getUserAction(_ sender: Any) {
        NetworkingProvider.shared.getUser(id: 257)
    }
    

}

