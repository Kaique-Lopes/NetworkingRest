//
//  ViewController.swift
//  Networking
//
//  Created by Kaique Lopes on 15/03/21.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    @IBOutlet weak var idLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameLabel.text = ""
        nameLabel.numberOfLines = 0
        emailLabel.text = ""
        emailLabel.numberOfLines = 0
        idLabel.text = ""
        activityIndicator.hidesWhenStopped = true
        activityIndicator.stopAnimating()
    }
    @IBAction func getUserAction(_ sender: Any) {
        activityIndicator.startAnimating()
        
        NetworkingProvider.shared.getUser(id: 257) { (user) in
            self.activityIndicator.stopAnimating()
            self.nameLabel.text = user.name
            self.emailLabel.text = user.email
            self.idLabel.text = user.id?.description
            
        } failure: { (error) in
            self.activityIndicator.stopAnimating()
            self.nameLabel.text = error.debugDescription
        }
    }
    @IBAction func addUserAction(_ sender: Any) {
        
    }
    

}

