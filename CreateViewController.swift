//
//  CreateViewController.swift
//  ERP
//
//  Created by Rishi Ambavanekar on 6/12/21.
//

import UIKit
import FirebaseAuth
import Firebase
import FirebaseAuth
import FirebaseDatabase

class CreateViewController: UIViewController {
    
    var Check:Bool = false
    @IBAction func CheckboxTerms(_ sender: UIButton) {
        if sender.isSelected {
            sender.isSelected = false
            Check = false
        } else {
            sender.isSelected = true
            Check = true
        }
    }
    @IBAction func TermsOfService(_ sender: Any) {
        UIApplication.shared.open(URL(string: "https://sites.google.com/view/anxiety-ally-terms-of-service/home")! as URL, options: [:], completionHandler: nil)
    }
    @IBOutlet weak var UsernameEmailField: UITextField!
    @IBOutlet weak var EmailOnlyInputField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    @IBOutlet weak var Slider: UISegmentedControl!
    @IBAction func RegisterNewUser(_ sender: Any) {
        if Check == true {
            
        let ref = Database.database().reference().child("Usernames")
        //ref.setValue(["Username": UsernameEmailField])
        //let ref2 = Database.database().reference().child(EmailOnlyInputField.text ?? "Unknown User")
        //ref2.setValue(["Password": passwordField.text!, "Email": EmailOnlyInputField.text!])
        UserDefaults.standard.set(UsernameEmailField.text, forKey: "UsernameSaved")
        print(UsernameEmailField)
        UserDefaults.standard.set(EmailOnlyInputField.text, forKey: "EmailSaved")
        didTapRegister()
        Auth.auth().createUser(withEmail: (EmailOnlyInputField.text ?? ""), password: (passwordField.text ?? "")) { (result, error) in
                   if let _eror = error {
                       //something bad happning
                        print(_eror.localizedDescription )
                        print("Error")
                   }else{
                       //user registered successfully
                    print(result)
                   }
                }
        /*let sc = storyboard?.instantiateViewController(identifier: "Tab") as! UITabBarController
        sc.modalPresentationStyle = .fullScreen
        present(sc,animated: true)*/
        let getIndex = self.Slider.selectedSegmentIndex
        print(getIndex)
        switch (getIndex) {
        case 0:
            let rc = self.storyboard?.instantiateViewController(identifier: "OCDI") as! IViewController
            rc.modalPresentationStyle = .fullScreen
            self.present(rc,animated: true)

        case 1:
            let rc = self.storyboard?.instantiateViewController(identifier: "TL") as! TLoginViewController
            rc.modalPresentationStyle = .fullScreen
            self.present(rc,animated: true)

            
        default:
            print("no select")
        }
        } else if Check == false {
            let alert = UIAlertController(title: "Log In Error", message: "We were unable to create a new user. You need to accept the Terms Of Service.", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Dismiss", style: .cancel, handler: nil))
            self.present(alert, animated: true)
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
                

        
        let toolBar = UIToolbar()
        toolBar.sizeToFit()
        
        let doneButton = UIBarButtonItem(barButtonSystemItem: UIBarButtonItem.SystemItem.done, target: self, action: #selector(self.doneClicked))
        
        toolBar.setItems([doneButton], animated: false)
        
        UsernameEmailField.inputAccessoryView = toolBar
        EmailOnlyInputField.inputAccessoryView = toolBar
        passwordField.inputAccessoryView = toolBar
        
    }
    
    @objc func doneClicked() {
        view.endEditing(true)
    }
    
    @objc private func didTapRegister() {
        EmailOnlyInputField.resignFirstResponder()
        UsernameEmailField.resignFirstResponder()
        passwordField.resignFirstResponder()
        
        guard let email = EmailOnlyInputField.text, !email.isEmpty,
              let password = passwordField.text, !password.isEmpty, password.count >= 8,
              let username = UsernameEmailField.text, !username.isEmpty else {
            return
        }
        
        AuthManager.shared.registerNewUser(username: username, email: email, password: password) { registered in
            
            DispatchQueue.main.async {
                if registered {
                    
                } else {
                    
                }
            }
            
        }
        
    }

}


extension CreateViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        if textField == UsernameEmailField {
            EmailOnlyInputField.becomeFirstResponder()
        } else if textField == EmailOnlyInputField {
        passwordField.becomeFirstResponder()
        } else {
            didTapRegister()
        }
        
        return true
        
    }
}

