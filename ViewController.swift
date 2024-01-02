//
//  ViewController.swift
//  ERP
//
//  Created by Rishi Ambavanekar on 6/2/21.
//

import UIKit
import FirebaseUI
import Firebase
import GoogleSignIn
import FirebaseAuth

class ViewController: UIViewController, FUIAuthDelegate {
    @IBOutlet weak var usernameInput: UITextField!
    @IBOutlet weak var passwordInput: UITextField!
    @IBOutlet weak var PorT: UISegmentedControl!
    @IBAction func CAB(_ sender: Any) {
        
        let sc = storyboard?.instantiateViewController(identifier: "CR") as! CreateViewController
        sc.modalPresentationStyle = .popover
        present(sc,animated: true)
        
    }
    let providers: [FUIAuthProvider] = [
      FUIGoogleAuth(),
    ]
    
    
    @IBAction func Student1(_ sender: Any) {
        UserDefaults.standard.set(usernameInput.text, forKey: "EmailSaved")
        print(usernameInput)
        guard let usernameEmail = usernameInput.text, !usernameEmail.isEmpty,
              let password = passwordInput.text, !password.isEmpty, password.count >= 8 else {
            return
        }
        
        Auth.auth().signIn(withEmail: (usernameInput.text ?? ""), password: (passwordInput.text ?? "")) { (result, error) in
                  if let _eror = error{
                      print(_eror.localizedDescription)
                  }else{
                      if let _res = result{
                          print(_res)
                      }
                  }
              }
        
        var username: String?
        var email: String?
        
        
        if usernameEmail.contains("@"), usernameEmail.contains(".") {
            email = usernameEmail
        } else {
           username = usernameEmail
        }
        
        AuthManager.shared.loginUser(username: username,
                                     email: email,
                                     password: password) { success in
            DispatchQueue.main.async {
                if success {
                    //self.dismiss(animated: true, completion: nil)
                    let getIndex = self.PorT.selectedSegmentIndex
                    print(getIndex)
                    switch (getIndex) {
                    case 0:
                        let jc = self.storyboard?.instantiateViewController(identifier: "Tab") as! UITabBarController
                        jc.modalPresentationStyle = .fullScreen
                        self.present(jc,animated: true)
                    case 1:
                        let rc = self.storyboard?.instantiateViewController(identifier: "TLLL") as! TLLLViewController
                        rc.modalPresentationStyle = .popover
                        self.present(rc,animated: true)
                        
                    default:
                        print("no select")
                    }

                } else {
                    let alert = UIAlertController(title: "Log In Error", message: "We were unable to log you in. Username or Email is incorrect.", preferredStyle: .alert)
                    alert.addAction(UIAlertAction(title: "Dismiss", style: .cancel, handler: nil))
                    self.present(alert, animated: true)
                }
            }

        }
    }
    
    func authUI(_ authUI: FUIAuth, didSignInWith authDataResult: AuthDataResult?, error: Error?) {
        if let user = authDataResult?.user {
            print("Nice job! You've signed in as \(user.uid). Your email is: \(user.email ?? "")")
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        usernameInput.text = UserDefaults.standard.object(forKey: "EmailSaved") as? String
        GIDSignIn.sharedInstance()?.presentingViewController = self
        GIDSignIn.sharedInstance().signIn()
        let getIndex = PorT.selectedSegmentIndex
        print(getIndex)
        /*switch (getIndex) {
        case 0:
            let jc = storyboard?.instantiateViewController(identifier: "Tab") as! UITabBarController
            jc.modalPresentationStyle = .fullScreen
            present(jc,animated: true)
        case 1:
            let rc = storyboard?.instantiateViewController(identifier: "TL") as! TLoginViewController
            rc.modalPresentationStyle = .fullScreen
            present(rc,animated: true)
            
        default:
            print("no select")
        }*/

        let toolBar = UIToolbar()
        toolBar.sizeToFit()
        
        let doneButton = UIBarButtonItem(barButtonSystemItem: UIBarButtonItem.SystemItem.done, target: self, action: #selector(self.doneClicked))
        
        toolBar.setItems([doneButton], animated: false)
        
        usernameInput.inputAccessoryView = toolBar
        passwordInput.inputAccessoryView = toolBar
        
    }
    
    @objc func doneClicked() {
        view.endEditing(true)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        let getIndex = PorT.selectedSegmentIndex
        print(getIndex)
        /*switch (getIndex) {
        case 0:
            let jc = storyboard?.instantiateViewController(identifier: "Tab") as! UITabBarController
            jc.modalPresentationStyle = .fullScreen
            present(jc,animated: true)
        case 1:
            let rc = storyboard?.instantiateViewController(identifier: "TL") as! TLoginViewController
            rc.modalPresentationStyle = .fullScreen
            present(rc,animated: true)
            
        default:
            print("no select")
        }*/
    }
    
    
    


}

/*
 let getIndex = PorT.selectedSegmentIndex
 print(getIndex)
 switch (getIndex) {
 case 0:
     let jc = storyboard?.instantiateViewController(identifier: "Tab") as! UITableViewController
     jc.modalPresentationStyle = .fullScreen
     present(jc,animated: true)
 case 1:
     let rc = storyboard?.instantiateViewController(identifier: "Tabs") as! UITableViewController
     rc.modalPresentationStyle = .fullScreen
     present(rc,animated: true)
     
 default:
     print("no select")
 }
 */
