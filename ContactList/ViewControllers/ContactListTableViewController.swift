//
//  ContactListTableViewController.swift
//  ContactList
//
//  Created by Armen Madoyan on 19.10.2022.
//

import UIKit

class ContactListTableViewController: UITableViewController {
    
    private var contactList = Person.getPerson()

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        contactList.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "contact", for: indexPath)
        let contact = contactList[indexPath.row]
        var content = cell.defaultContentConfiguration()
        content.text = contact.fullname
        cell.contentConfiguration = content

        return cell
    }
   
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let detailsVC = segue.destination as? ContactDetailsViewController
        guard let indexPath = tableView.indexPathForSelectedRow else {return}
        detailsVC?.title = contactList[indexPath.row].fullname
        detailsVC?.contact = contactList[indexPath.row]
        
    }
    

}
