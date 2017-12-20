//
//  viewTwo.swift
//  Contacts
//
//  Created by Rishabh  Sharma on 13/09/17.
//  Copyright © 2017 Learn. All rights reserved.
//

import UIKit

class viewTwo: UIViewController {

    @IBOutlet weak var Label1: UILabel!
    
    
    @IBOutlet weak var NameDetail: UILabel!
    @IBOutlet weak var Name: UILabel!
    @IBOutlet weak var email: UILabel!
    @IBOutlet weak var emailDetails: UILabel!
    @IBOutlet weak var phone: UILabel!
    @IBOutlet weak var phoneDetail: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        NameDetail.text = peopleName[myIndex]
        emailDetails.text = peopleEmail[myIndex]
        phoneDetail.text = peoplePhone[myIndex]
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
