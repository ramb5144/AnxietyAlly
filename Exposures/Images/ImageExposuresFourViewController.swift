//
//  ImageExposuresFourViewController.swift
//  ERP
//
//  Created by Rishi Ambavanekar on 6/19/21.
//

import UIKit

class ImageExposuresFourViewController: UIViewController, UITextFieldDelegate {
    @IBAction func Back(_ sender: Any) {
        let sc = storyboard?.instantiateViewController(identifier: "Tab") as! UITabBarController
        sc.modalPresentationStyle = .fullScreen
        present(sc,animated: true)
    }
    
    @IBAction func Question(_ sender: Any) {
        let sc = storyboard?.instantiateViewController(identifier: "SEWW") as! SEWWViewController
        sc.modalPresentationStyle = .fullScreen
        present(sc,animated: true)
    }
    @IBAction func Done(_ sender: Any) {
        let firstValue = Double(WEZ.text!)
        let secondValue = Double(WEF.text!)
        let thirdValue = Double(WET.text!)
        let fourthValue = Double(WEFT.text!)
        let fifthValue = Double(WETT.text!)
        let sixthValue = Double(WETTT.text!)

        if firstValue != nil && secondValue != nil {
            if Double((firstValue!)/2) >= Double(secondValue!) {
            let sc = storyboard?.instantiateViewController(identifier: "Celebration") as! CelebrateViewController
            sc.modalPresentationStyle = .fullScreen
            present(sc,animated: true)
            print("WORKED")
        
        
        }
        }
        
        if firstValue != nil && thirdValue != nil {
        if Double((firstValue ?? 0)/2) >= Double(thirdValue ?? 11) {
            let sc = storyboard?.instantiateViewController(identifier: "Celebration") as! CelebrateViewController
            sc.modalPresentationStyle = .fullScreen
            present(sc,animated: true)
            print("WORKED")
        
        
    }
}
        
        if firstValue != nil && fourthValue != nil {
        if Double((firstValue ?? 0)/2) >= Double(fourthValue ?? 11) {
            let sc = storyboard?.instantiateViewController(identifier: "Celebration") as! CelebrateViewController
            sc.modalPresentationStyle = .fullScreen
            present(sc,animated: true)
            print("WORKED")
        
        
    }
        }
        
        if firstValue != nil && fifthValue != nil {
        if Double((firstValue ?? 0)/2) >= Double(fifthValue ?? 11) {
            let sc = storyboard?.instantiateViewController(identifier: "Celebration") as! CelebrateViewController
            sc.modalPresentationStyle = .fullScreen
            present(sc,animated: true)
            print("WORKED")
        
        
    }
        }
        
        if firstValue != nil && sixthValue != nil {
        if Double((firstValue ?? 0)/2) >= Double(sixthValue ?? 11) {
            let sc = storyboard?.instantiateViewController(identifier: "Celebration") as! CelebrateViewController
            sc.modalPresentationStyle = .fullScreen
            present(sc,animated: true)
            print("WORKED")
        
        
    }
        }
    }
    
    @IBOutlet weak var PictureFourL: UILabel!
    @IBOutlet weak var Thirty: UILabel!
    @IBOutlet weak var Twentyfive: UILabel!
    @IBOutlet weak var Twenty: UILabel!
    @IBOutlet weak var Fifteen: UILabel!
    @IBOutlet weak var Ten: UILabel!
    @IBOutlet weak var WEZ: UITextField!
    @IBOutlet weak var WEF: UITextField!
    @IBOutlet weak var WET: UITextField!
    @IBOutlet weak var WEFT: UITextField!
    @IBOutlet weak var WETT: UITextField!
    @IBOutlet weak var WETF: UITextField!
    @IBOutlet weak var WETTT: UITextField!
    @IBOutlet weak var timerLabel: UILabel!
    var timer = Timer()
    var (hours, minutes, seconds) = (0, 0, 0)
    
    
    
    @objc func keepTimer() {
        seconds += 1
        if seconds == 60 {
            minutes += 1
            seconds = 0
        }
        
        if minutes == 60 {
            hours += 1
            minutes = 0
        }
        
        if minutes >= 5 {
            WET.isHidden = false
            Ten.isHidden = false
        }
        
        if minutes >= 10 {
            WEFT.isHidden = false
            Fifteen.isHidden = false
        }
        
        if minutes >= 15 {
            WETT.isHidden = false
            Twenty.isHidden = false
        }
        
        if minutes >= 20 {
            WETF.isHidden = false
            Twentyfive.isHidden = false
        }
        
        if minutes >= 25 {
            WETTT.isHidden = false
            Thirty.isHidden = false
        }
        
        timerLabel.text = "\(hours):\(minutes):\(seconds)"
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        PictureFourL.text = UserDefaults.standard.object(forKey: "PictureFourSaved") as? String
        if PictureFourL.text != nil {
            UIPasteboard.general.string = PictureFourL.text
        }
        let toolBar = UIToolbar()
        toolBar.sizeToFit()
        
        let doneButton = UIBarButtonItem(barButtonSystemItem: UIBarButtonItem.SystemItem.done, target: self, action: #selector(self.doneClicked))
        
        toolBar.setItems([doneButton], animated: false)
        
        WEZ.inputAccessoryView = toolBar
        WEF.inputAccessoryView = toolBar
        WET.inputAccessoryView = toolBar
        WEFT.inputAccessoryView = toolBar
        WETT.inputAccessoryView = toolBar
        WETTT.inputAccessoryView = toolBar

            
        WEZ.delegate = self
        WEF.delegate = self
        WET.delegate = self
        WEFT.delegate = self
        WETT.delegate = self
        WETTT.delegate = self

        timer = Timer.scheduledTimer(timeInterval: 1.00, target: self, selector: #selector(WordsExposureViewController.keepTimer), userInfo: 0, repeats: true)
        

        

    }

    @objc func doneClicked() {
        view.endEditing(true)
    }
    
        func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
            
            let firstValue = Double(WEZ.text!)
            let secondValue = Double(WEF.text!)
            let thirdValue = Double(WET.text!)
            let fourthValue = Double(WEFT.text!)
            let fifthValue = Double(WETT.text!)
            let sixthValue = Double(WETTT.text!)

            if firstValue != nil && secondValue != nil {
                if Double((firstValue!)/2) >= Double(secondValue!) {
                let sc = storyboard?.instantiateViewController(identifier: "Celebration") as! CelebrateViewController
                sc.modalPresentationStyle = .fullScreen
                present(sc,animated: true)
                print("WORKED")
            
            
            }
            }
            
            if firstValue != nil && thirdValue != nil {
            if Double((firstValue ?? 0)/2) >= Double(thirdValue ?? 1) {
                let sc = storyboard?.instantiateViewController(identifier: "Celebration") as! CelebrateViewController
                sc.modalPresentationStyle = .fullScreen
                present(sc,animated: true)
                print("WORKED")
            
            
        }
    }
            
            if firstValue != nil && fourthValue != nil {
            if Double((firstValue ?? 0)/2) >= Double(fourthValue ?? 1) {
                let sc = storyboard?.instantiateViewController(identifier: "Celebration") as! CelebrateViewController
                sc.modalPresentationStyle = .fullScreen
                present(sc,animated: true)
                print("WORKED")
            
            
        }
            }
            
            if firstValue != nil && fifthValue != nil {
            if Double((firstValue ?? 0)/2) >= Double(fifthValue ?? 1) {
                let sc = storyboard?.instantiateViewController(identifier: "Celebration") as! CelebrateViewController
                sc.modalPresentationStyle = .fullScreen
                present(sc,animated: true)
                print("WORKED")
            
            
        }
            }
            
            if firstValue != nil && sixthValue != nil {
            if Double((firstValue ?? 0)/2) >= Double(sixthValue ?? 1) {
                let sc = storyboard?.instantiateViewController(identifier: "Celebration") as! CelebrateViewController
                sc.modalPresentationStyle = .fullScreen
                present(sc,animated: true)
                print("WORKED")
            
            
        }
            }
            return true

    }

}
