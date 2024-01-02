//
//  TLLLViewController.swift
//  ERP
//
//  Created by Rishi Ambavanekar on 7/20/21.
//

import UIKit

class TLLLViewController: UIViewController, UITextFieldDelegate {
    @IBOutlet weak var textFieldName: UITextField!
    
    var code: String = ""
    
    @IBAction func Submit(_ sender: Any) {

        if textFieldName.text == String("ERPTOHEAL") {
            let sc = storyboard?.instantiateViewController(identifier: "Tabs") as! UITabBarController
            sc.modalPresentationStyle = .fullScreen
            present(sc,animated: true)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let toolBar = UIToolbar()
        toolBar.sizeToFit()
        
        let doneButton = UIBarButtonItem(barButtonSystemItem: UIBarButtonItem.SystemItem.done, target: self, action: #selector(self.doneClicked))
        
        toolBar.setItems([doneButton], animated: false)
        
        textFieldName.inputAccessoryView = toolBar


            
        textFieldName.delegate = self

        
    }
    
    @objc func doneClicked() {
        view.endEditing(true)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
