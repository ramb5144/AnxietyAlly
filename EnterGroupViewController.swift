//
//  EnterGroupViewController.swift
//  ERP
//
//  Created by Rishi Ambavanekar on 7/5/21.
//

import UIKit

class EnterGroupViewController: UIViewController {
    @IBAction func Help(_ sender: Any) {
        let mc = self.storyboard?.instantiateViewController(identifier: "VVC") as! ViewsViewController
        mc.modalPresentationStyle = .fullScreen
        present(mc,animated: true)
    }
    @IBAction func EnterChat(_ sender: Any) {
        UIApplication.shared.open(URL(string: "https://discord.gg/7UEERQfnmD")! as URL, options: [:], completionHandler: nil)
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
