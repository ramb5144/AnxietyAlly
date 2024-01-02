//
//  CelebrateViewController.swift
//  ERP
//
//  Created by Rishi Ambavanekar on 6/7/21.
//

import UIKit

class CelebrateViewController: UIViewController {
    
    
    
    @IBAction func Home(_ sender: Any) {
        
        let mc = storyboard?.instantiateViewController(identifier: "Tab") as! UITabBarController
        mc.modalPresentationStyle = .fullScreen
        present(mc,animated: true)
        print("WORKED")
        
    }
    
    @IBAction func Repeat(_ sender: Any) {

        dismiss(animated: true, completion: nil)

        
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
