//
//  SettingsViewController.swift
//  ERP
//
//  Created by Rishi Ambavanekar on 6/19/21.
//

import UIKit

class SettingsViewController: UIViewController, UITextFieldDelegate {

    @IBAction func LogOut(_ sender: UIButton) {
        let mc = self.storyboard?.instantiateViewController(identifier: "Main") as! ViewController
        mc.modalPresentationStyle = .fullScreen
        present(mc,animated: true)
    }
    @IBOutlet weak var UsernameField: UITextField!
    @IBOutlet weak var EmailField: UITextField!
    @IBOutlet weak var FirstLabel: UILabel!
    @IBAction func Help(_ sender: Any) {
        let mc = self.storyboard?.instantiateViewController(identifier: "VVC") as! ViewsViewController
        mc.modalPresentationStyle = .fullScreen
        present(mc,animated: true)
    }
    @IBAction func FirstButtonCreater(_ sender: Any) {
        
        let mc = storyboard?.instantiateViewController(identifier: "OCDONE") as! OCDCreaterOneViewController
        mc.modalPresentationStyle = .fullScreen
        mc.completionHandler = { text in
    
            self.FirstLabel.text = text
            
        }
        present(mc, animated: true)
        //UserDefaults.standard.set(FirstLabel.text, forKey: "saveddtext")
        
    }
    override func viewDidDisappear(_ animated: Bool) {
        //UserDefaults.standard.set(UsernameField.text, forKey: "UsernameSaved")
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        let username = UserDefaults.standard.object(forKey: "UsernameSaved")
        UsernameField.text = UserDefaults.standard.object(forKey: "UsernameSaved") as? String
        EmailField.text = UserDefaults.standard.object(forKey: "EmailSaved") as? String
        
        //FirstLabel.text = UserDefaults.standard.object(forKey: "saveddtext") as! String
        /*NotificationCenter.default.addObserver(self, selector: #selector(didGetNotificationName(_:)), name: Notification.Name("OCDType"), object: nil)*/
        FirstLabel.text = UserDefaults.standard.object(forKey: "savedtext") as? String
        print(FirstLabel)
        let toolBar = UIToolbar()
        toolBar.sizeToFit()
        
        let doneButton = UIBarButtonItem(barButtonSystemItem: UIBarButtonItem.SystemItem.done, target: self, action: #selector(self.doneClicked))
        
        toolBar.setItems([doneButton], animated: false)
        
        UsernameField.inputAccessoryView = toolBar
        EmailField.inputAccessoryView = toolBar

            
        UsernameField.delegate = self
        EmailField.delegate = self

    }
    
    @objc func doneClicked() {
        view.endEditing(true)
    }
        
    /*@objc func didGetNotificationName(_ notification: Notification) {
        
        let text15 = notification.object as! String
        print(text15)
        FirstLabel.text = String(text15)
        print(FirstLabel)
        
    }*/
    

    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
