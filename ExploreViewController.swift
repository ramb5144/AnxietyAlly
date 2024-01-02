//
//  ExploreViewController.swift
//  ERP
//
//  Created by Rishi Ambavanekar on 6/29/21.
//

import UIKit
import FirebaseAuth
import Firebase
import MessageUI
import Messages
import JSQMessagesViewController
import UserNotificationsUI
import UserNotifications

class ExploreViewController: UIViewController, UITextFieldDelegate {
    
    @IBAction func Help(_ sender: Any) {
        let mc = self.storyboard?.instantiateViewController(identifier: "TVVC") as! TViewsViewController
        mc.modalPresentationStyle = .fullScreen
        present(mc,animated: true)
    }
    var One:Int = 0
    var Two:Int = 0
    var Three:Int = 0

    @IBOutlet weak var ButtonOne: UIButton!
    @IBOutlet weak var ButtonTwo: UIButton!
    @IBOutlet weak var ButtonThree: UIButton!
    @IBOutlet weak var Student: UILabel!
    @IBOutlet weak var StudentThree: UILabel!
    @IBAction func Connect(_ sender: Any) {
        Student.isHidden = false
        if One == 0 {
            if StudentTextField != nil {
            Student.text = StudentTextField.text
            UserDefaults.standard.set(Student.text, forKey: "Student1")
            ButtonOne.isHidden = false
            One = 1
            UserDefaults.standard.set(One, forKey: "OneKey")
            }
        } else if Two == 0 {
            if StudentTextField != nil {
                StudentTwo.text = StudentTextField.text
                UserDefaults.standard.set(StudentTwo.text, forKey: "Student2")
                StudentTwo.isHidden = false
                ButtonTwo.isHidden = false
                Two = 1
            UserDefaults.standard.set(Two, forKey: "TwoKey")
            }
        } else if Three == 0 {
            if StudentTextField != nil {
                StudentThree.text = StudentTextField.text
                UserDefaults.standard.set(StudentThree.text, forKey: "Student3")
                StudentThree.isHidden = false
                ButtonThree.isHidden = false
                Three = 1
            UserDefaults.standard.set(Three, forKey: "ThreeKey")
            }
        }
        
    }
    @IBAction func Button1(_ sender: Any) {
        Student.isHidden = true
        One = 0
    }
    @IBAction func Button2(_ sender: Any) {
        ButtonTwo.isHidden = true
        StudentTwo.isHidden = true
        Two = 0
    }
    @IBAction func Button3(_ sender: Any) {
        ButtonThree.isHidden = true
        StudentThree.isHidden = true
        Three = 0
    }

    @IBOutlet weak var StudentTwo: UILabel!
    @IBOutlet weak var StudentTextField: UITextField!
    
    override func viewWillDisappear(_ animated: Bool) {
        UserDefaults.standard.set(One, forKey: "OneKey")
        UserDefaults.standard.set(Two, forKey: "TwoKey")
        UserDefaults.standard.set(Three, forKey: "ThreeKey")
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        UserDefaults.standard.set(One, forKey: "OneKey")
        UserDefaults.standard.set(Two, forKey: "TwoKey")
        UserDefaults.standard.set(Three, forKey: "ThreeKey")
        if One == 0 {
            ButtonOne.isHidden = true

        } else if One == 1 {
            ButtonOne.isHidden = false

        }
        if Two == 0 {
            ButtonTwo.isHidden = true

        } else if Two == 1 {
            ButtonTwo.isHidden = false

        }
        if Three == 0 {
            ButtonThree.isHidden = true

        } else if Three == 1 {
            ButtonThree.isHidden = false

        }
        Student.text = UserDefaults.standard.object(forKey: "Student1") as? String
        StudentTwo.text = UserDefaults.standard.object(forKey: "Student2") as? String
        StudentThree.text = UserDefaults.standard.object(forKey: "Student3") as? String

    }
    
    override func viewDidDisappear(_ animated: Bool) {
    UserDefaults.standard.set(Student.text, forKey: "Student1")


    }
    
    override func viewDidAppear(_ animated: Bool) {
        Student.text = UserDefaults.standard.object(forKey: "Student1") as? String
        StudentTwo.text = UserDefaults.standard.object(forKey: "Student2") as? String
        StudentThree.text = UserDefaults.standard.object(forKey: "Student3") as? String

        let toolBar = UIToolbar()
        toolBar.sizeToFit()
        
        let doneButton = UIBarButtonItem(barButtonSystemItem: UIBarButtonItem.SystemItem.done, target: self, action: #selector(self.doneClicked))
        
        toolBar.setItems([doneButton], animated: false)
        
        StudentTextField.inputAccessoryView = toolBar


            
        StudentTextField.delegate = self

        
    }
    
    @objc func doneClicked() {
        view.endEditing(true)
    }
}
