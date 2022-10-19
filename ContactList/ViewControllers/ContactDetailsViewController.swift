//
//  ContactDetailsViewController.swift
//  ContactList
//
//  Created by Armen Madoyan on 19.10.2022.
//

import UIKit

class ContactDetailsViewController: UIViewController {
    
    @IBOutlet var phoneNumberLabel: UILabel!
    @IBOutlet var emailLabel: UILabel!
    
    var contact: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        phoneNumberLabel.text = contact.phoneNumber
        emailLabel.text = contact.email
    }
    

}
