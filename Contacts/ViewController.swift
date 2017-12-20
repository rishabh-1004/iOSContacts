//
//  ViewController.swift
//  Contacts
//
//  Created by Rishabh  Sharma on 13/09/17.
//  Copyright © 2017 Learn. All rights reserved.
//

import UIKit

var peopleName = ["Create New Contact","Rishabh","Rahul","Yuvraj"]
var peopleEmail = ["blank","rishabhrajshrm00@gmail.com","sharma.rahulraj1996@gmail.com","skyyuvraj@gmail.com"]
var peoplePhone = ["blank","9078673199","9559794299","7028631452"]
var myIndex = 0

class ViewController: UIViewController, UITableViewDataSource , UITableViewDelegate {
    @IBOutlet weak var heading: UILabel!

        override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return peopleName.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell" , for: indexPath) as UITableViewCell
        cell.textLabel?.text = peopleName[indexPath.row]
       
        return cell
    }
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "Contacts"
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        myIndex = indexPath.row
        if (indexPath.row == 0){
            
            performSegue(withIdentifier: "create", sender: self)
        }
        else{
            
        performSegue(withIdentifier:"segue", sender: self)
        }
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == UITableViewCellEditingStyle.delete{
            peoplePhone.remove(at: indexPath.row)
            peopleEmail.remove(at: indexPath.row)
            peopleName.remove(at: indexPath.row)
            tableView.reloadData()
        }    }
}


