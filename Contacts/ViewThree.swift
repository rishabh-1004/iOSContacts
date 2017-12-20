//
//  ViewThree.swift
//  Contacts
//
//  Created by Rishabh  Sharma on 14/09/17.
//  Copyright © 2017 Learn. All rights reserved.
//

import UIKit

class ViewThree: UIViewController {
    
    @IBOutlet weak var createLabel: UILabel!
    @IBOutlet weak var nameField: UILabel!
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var emailField: UILabel!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var phoneField: UILabel!
    @IBOutlet weak var phoneTextField: UITextField!
    
    
   
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        nameTextField.resignFirstResponder()
        emailTextField.resignFirstResponder()
        phoneTextField.resignFirstResponder()
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        peopleName.append(nameTextField.text!)
        if (emailTextField.text == ""){
            peopleEmail.append("default@gmail.com")
        }
        else{
        peopleEmail.append(emailTextField.text!)
        }
        
        peoplePhone.append(phoneTextField.text!)
        
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

extension ViewController : UITextFieldDelegate{
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}
