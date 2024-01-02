//
//  JournalViewController.swift
//  ERP
//
//  Created by Rishi Ambavanekar on 6/25/21.
//

import UIKit

class JournalViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var JournalLabel: UITextField!
    @IBAction func Help(_ sender: Any) {
        let mc = self.storyboard?.instantiateViewController(identifier: "VVC") as! ViewsViewController
        mc.modalPresentationStyle = .fullScreen
        present(mc,animated: true)
    }
    override func viewDidDisappear(_ animated: Bool) {
        UserDefaults.standard.set(JournalLabel.text, forKey: "savedJournaltext")
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        JournalLabel.text = UserDefaults.standard.object(forKey: "savedJournaltext") as? String
        let toolBar = UIToolbar()
        toolBar.sizeToFit()
        
        let doneButton = UIBarButtonItem(barButtonSystemItem: UIBarButtonItem.SystemItem.done, target: self, action: #selector(self.doneClicked))
        
        toolBar.setItems([doneButton], animated: false)
        
        JournalLabel.inputAccessoryView = toolBar

            
        JournalLabel.delegate = self

    }

    @objc func doneClicked() {
        view.endEditing(true)
    }

}
