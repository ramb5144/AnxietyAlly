//
//  IViewController.swift
//  ERP
//
//  Created by Rishi Ambavanekar on 7/7/21.
//

import UIKit

class IViewController: UIViewController {

    @IBAction func Next(_ sender: Any) {
        let rc = self.storyboard?.instantiateViewController(identifier: "OCDONE") as! OCDCreaterOneViewController
        rc.modalPresentationStyle = .fullScreen
        self.present(rc,animated: true)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        let username = UserDefaults.standard.object(forKey: "UsernameSaved") as? String ?? "Unknown User"
        let alert = UIAlertController(title: "Log In Successful", message: "You have successfully created an account! Welcome to Anxiety Ally \("\(username)")", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Dismiss", style: .cancel, handler: nil))
        self.present(alert, animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let username = UserDefaults.standard.object(forKey: "UsernameSaved") as? String ?? "Unknown User"
        let alert = UIAlertController(title: "Log In Error", message: "You have successfully created an account! Welcome to Anxiety Ally \(username)", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Dismiss", style: .cancel, handler: nil))
        self.present(alert, animated: true)
        
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
