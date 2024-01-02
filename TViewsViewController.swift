//
//  TViewsViewController.swift
//  ERP
//
//  Created by Rishi Ambavanekar on 7/13/21.
//

import UIKit

class TViewsViewController: UIViewController {

    @IBAction func Done(_ sender: Any) {
        let rc = self.storyboard?.instantiateViewController(identifier: "Tabs") as! UITabBarController
        rc.modalPresentationStyle = .fullScreen
        self.present(rc,animated: true)
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
