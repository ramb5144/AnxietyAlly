//
//  THomeworkViewController.swift
//  ERP
//
//  Created by Rishi Ambavanekar on 7/2/21.
//

import UIKit
import SwiftUI
import JSQMessagesViewController
import FirebaseAuth
import FirebaseDatabase

class THomeworkViewController: UIViewController {
    @IBAction func Help(_ sender: Any) {
        let mc = self.storyboard?.instantiateViewController(identifier: "TVVC") as! TViewsViewController
        mc.modalPresentationStyle = .fullScreen
        present(mc,animated: true)
    }
    @IBOutlet weak var FirstHomeworkName: UILabel!
    @IBOutlet weak var SecondHomeworkName: UILabel!
    @IBOutlet weak var ThirdHomeworkName: UILabel!
    
    @IBOutlet weak var FirstFirstHomework: UITextField!
    @IBOutlet weak var FirstSecondHomework: UITextField!
    @IBOutlet weak var FirstThirdHomework: UITextField!
    @IBOutlet weak var FirstFourthHomework: UITextField!
    @IBOutlet weak var FirstFifthHomework: UITextField!
    
    @IBOutlet weak var SecondFirstHomework: UITextField!
    @IBOutlet weak var SecondSecondHomework: UITextField!
    @IBOutlet weak var SecondThirdHomework: UITextField!
    @IBOutlet weak var SecondFourthHomework: UITextField!
    @IBOutlet weak var SecondFifthHomework: UITextField!
    
    @IBOutlet weak var ThirdFirstHomework: UITextField!
    @IBOutlet weak var ThirdSecondHomework: UITextField!
    @IBOutlet weak var ThirdThirdHomework: UITextField!
    @IBOutlet weak var ThirdFourthHomework: UITextField!
    @IBOutlet weak var ThirdFifthHomework: UITextField!
    
    @IBOutlet weak var SecondView: UIStackView!
    @IBOutlet weak var ThirdView: UIStackView!
    @IBAction func Send(_ sender: Any) {
        UserDefaults.standard.set(FirstFirstHomework.text, forKey: "FirstFirstSaved")
        UserDefaults.standard.set(FirstSecondHomework.text, forKey: "FirstSecondSaved")
        UserDefaults.standard.set(FirstThirdHomework.text, forKey: "FirstThirdSaved")
        UserDefaults.standard.set(FirstFourthHomework.text, forKey: "FirstFourthSaved")
        UserDefaults.standard.set(FirstFifthHomework.text, forKey: "FirstFifthSaved")
        
        UserDefaults.standard.set(SecondFirstHomework.text, forKey: "SecondFirstSaved")
        UserDefaults.standard.set(SecondSecondHomework.text, forKey: "SecondSecondSaved")
        UserDefaults.standard.set(SecondThirdHomework.text, forKey: "SecondThirdSaved")
        UserDefaults.standard.set(SecondFourthHomework.text, forKey: "SecondFourthSaved")
        UserDefaults.standard.set(SecondFifthHomework.text, forKey: "SecondFifthSaved")
        
        UserDefaults.standard.set(ThirdFirstHomework.text, forKey: "ThirdFirstSaved")
        UserDefaults.standard.set(ThirdSecondHomework.text, forKey: "ThirdSecondSaved")
        UserDefaults.standard.set(ThirdThirdHomework.text, forKey: "ThirdThirdSaved")
        UserDefaults.standard.set(ThirdFourthHomework.text, forKey: "ThirdFourthSaved")
        UserDefaults.standard.set(ThirdFifthHomework.text, forKey: "ThirdFifthSaved")
        
        
        
        let ref1 = Database.database().reference().child("Homework").child(FirstHomeworkName.text ?? "Unknown User").child("one")
        let ref2 = Database.database().reference().child("Homework").child(FirstHomeworkName.text ?? "Unknown User").child("two")
        let ref3 = Database.database().reference().child("Homework").child(FirstHomeworkName.text ?? "Unknown User").child("three")
        let ref4 = Database.database().reference().child("Homework").child(FirstHomeworkName.text ?? "Unknown User").child("four")
        let ref5 = Database.database().reference().child("Homework").child(FirstHomeworkName.text ?? "Unknown User").child("five")
        let FFS = UserDefaults.standard.object(forKey: "FirstFirstSaved")
        let FSS = UserDefaults.standard.object(forKey: "FirstSecondSaved")
        let FTS = UserDefaults.standard.object(forKey: "FirstThirdSaved")
        let FFOS = UserDefaults.standard.object(forKey: "FirstFourthSaved")
        let FFIS = UserDefaults.standard.object(forKey: "FirstFifthSaved")
        ref1.setValue(["First": FFS])
        ref2.setValue(["Second": FSS])
        ref3.setValue(["Third": FTS])
        ref4.setValue(["Fourth": FFOS])
        ref5.setValue(["Fifth": FFIS])

        let ref21 = Database.database().reference().child("Homework").child(SecondHomeworkName.text ?? "Unknown User").child("one")
        let ref22 = Database.database().reference().child("Homework").child(SecondHomeworkName.text ?? "Unknown User").child("two")
        let ref23 = Database.database().reference().child("Homework").child(SecondHomeworkName.text ?? "Unknown User").child("three")
        let ref24 = Database.database().reference().child("Homework").child(SecondHomeworkName.text ?? "Unknown User").child("four")
        let ref25 = Database.database().reference().child("Homework").child(SecondHomeworkName.text ?? "Unknown User").child("five")
        let SFS = UserDefaults.standard.object(forKey: "SecondFirstSaved")
        let SSS = UserDefaults.standard.object(forKey: "SecondSecondSaved")
        let STS = UserDefaults.standard.object(forKey: "SecondThirdSaved")
        let SFOS = UserDefaults.standard.object(forKey: "SecondFourthSaved")
        let SFIS = UserDefaults.standard.object(forKey: "SecondFifthSaved")
        ref21.setValue(["First": SFS])
        ref22.setValue(["Second": SSS])
        ref23.setValue(["Third": STS])
        ref24.setValue(["Fourth": SFOS])
        ref25.setValue(["Fifth": SFIS])
        
        let ref31 = Database.database().reference().child("Homework").child(ThirdHomeworkName.text ?? "Unknown User").child("one")
        let ref32 = Database.database().reference().child("Homework").child(ThirdHomeworkName.text ?? "Unknown User").child("two")
        let ref33 = Database.database().reference().child("Homework").child(ThirdHomeworkName.text ?? "Unknown User").child("three")
        let ref34 = Database.database().reference().child("Homework").child(ThirdHomeworkName.text ?? "Unknown User").child("four")
        let ref35 = Database.database().reference().child("Homework").child(ThirdHomeworkName.text ?? "Unknown User").child("five")
        let TFS = UserDefaults.standard.object(forKey: "ThirdFirstSaved")
        let TSS = UserDefaults.standard.object(forKey: "ThirdSecondSaved")
        let TTS = UserDefaults.standard.object(forKey: "ThirdThirdSaved")
        let TFOS = UserDefaults.standard.object(forKey: "ThirdFourthSaved")
        let TFIS = UserDefaults.standard.object(forKey: "ThirdFifthSaved")
        ref31.setValue(["First": TFS])
        ref32.setValue(["Second": TSS])
        ref33.setValue(["Third": TTS])
        ref34.setValue(["Fourth": TFOS])
        ref35.setValue(["Fifth": TFIS])
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        FirstFirstHomework.text = UserDefaults.standard.object(forKey: "FirstFirstSaved") as? String
        FirstSecondHomework.text = UserDefaults.standard.object(forKey: "FirstSecondSaved") as? String
        FirstThirdHomework.text = UserDefaults.standard.object(forKey: "FirstThirdSaved") as? String
        FirstFourthHomework.text = UserDefaults.standard.object(forKey: "FirstFourthSaved") as? String
        FirstFifthHomework.text = UserDefaults.standard.object(forKey: "FirstFifthSaved") as? String
        
        SecondFirstHomework.text = UserDefaults.standard.object(forKey: "SecondFirstSaved") as? String
        SecondSecondHomework.text = UserDefaults.standard.object(forKey: "SecondSecondSaved") as? String
        SecondThirdHomework.text = UserDefaults.standard.object(forKey: "SecondThirdSaved") as? String
        SecondFourthHomework.text = UserDefaults.standard.object(forKey: "SecondFourthSaved") as? String
        SecondFifthHomework.text = UserDefaults.standard.object(forKey: "SecondFifthSaved") as? String
        
        ThirdFirstHomework.text = UserDefaults.standard.object(forKey: "ThirdFirstSaved") as? String
        ThirdSecondHomework.text = UserDefaults.standard.object(forKey: "ThirdSecondSaved") as? String
        ThirdThirdHomework.text = UserDefaults.standard.object(forKey: "ThirdThirdSaved") as? String
        ThirdFourthHomework.text = UserDefaults.standard.object(forKey: "ThirdFourthSaved") as? String
        ThirdFifthHomework.text = UserDefaults.standard.object(forKey: "ThirdFifthSaved") as? String
        
        
        
        FirstHomeworkName.text = UserDefaults.standard.object(forKey: "Student1") as? String
        SecondHomeworkName.text = UserDefaults.standard.object(forKey: "Student2") as? String
        ThirdHomeworkName.text = UserDefaults.standard.object(forKey: "Student3") as? String

        if SecondHomeworkName.text == nil {
            ThirdView.isHidden = true
        }
        
        if ThirdHomeworkName.text == nil {
            SecondView.isHidden = true
        }
        
        let ref1 = Database.database().reference().child("Homework").child(FirstHomeworkName.text ?? "Unknown User").child("one")
        let ref2 = Database.database().reference().child("Homework").child(FirstHomeworkName.text ?? "Unknown User").child("two")
        let ref3 = Database.database().reference().child("Homework").child(FirstHomeworkName.text ?? "Unknown User").child("three")
        let ref4 = Database.database().reference().child("Homework").child(FirstHomeworkName.text ?? "Unknown User").child("four")
        let ref5 = Database.database().reference().child("Homework").child(FirstHomeworkName.text ?? "Unknown User").child("five")
        let FFS = UserDefaults.standard.object(forKey: "FirstFirstSaved")
        let FSS = UserDefaults.standard.object(forKey: "FirstSecondSaved")
        let FTS = UserDefaults.standard.object(forKey: "FirstThirdSaved")
        let FFOS = UserDefaults.standard.object(forKey: "FirstFourthSaved")
        let FFIS = UserDefaults.standard.object(forKey: "FirstFifthSaved")
        ref1.setValue(["First": FFS])
        ref2.setValue(["Second": FSS])
        ref3.setValue(["Third": FTS])
        ref4.setValue(["Fourth": FFOS])
        ref5.setValue(["Fifth": FFIS])

        let ref21 = Database.database().reference().child("Homework").child(SecondHomeworkName.text ?? "Unknown User").child("one")
        let ref22 = Database.database().reference().child("Homework").child(SecondHomeworkName.text ?? "Unknown User").child("two")
        let ref23 = Database.database().reference().child("Homework").child(SecondHomeworkName.text ?? "Unknown User").child("three")
        let ref24 = Database.database().reference().child("Homework").child(SecondHomeworkName.text ?? "Unknown User").child("four")
        let ref25 = Database.database().reference().child("Homework").child(SecondHomeworkName.text ?? "Unknown User").child("five")
        let SFS = UserDefaults.standard.object(forKey: "SecondFirstSaved")
        let SSS = UserDefaults.standard.object(forKey: "SecondSecondSaved")
        let STS = UserDefaults.standard.object(forKey: "SecondThirdSaved")
        let SFOS = UserDefaults.standard.object(forKey: "SecondFourthSaved")
        let SFIS = UserDefaults.standard.object(forKey: "SecondFifthSaved")
        ref21.setValue(["First": SFS])
        ref22.setValue(["Second": SSS])
        ref23.setValue(["Third": STS])
        ref24.setValue(["Fourth": SFOS])
        ref25.setValue(["Fifth": SFIS])
        
        let ref31 = Database.database().reference().child("Homework").child(ThirdHomeworkName.text ?? "Unknown User").child("one")
        let ref32 = Database.database().reference().child("Homework").child(ThirdHomeworkName.text ?? "Unknown User").child("two")
        let ref33 = Database.database().reference().child("Homework").child(ThirdHomeworkName.text ?? "Unknown User").child("three")
        let ref34 = Database.database().reference().child("Homework").child(ThirdHomeworkName.text ?? "Unknown User").child("four")
        let ref35 = Database.database().reference().child("Homework").child(ThirdHomeworkName.text ?? "Unknown User").child("five")
        let TFS = UserDefaults.standard.object(forKey: "ThirdFirstSaved")
        let TSS = UserDefaults.standard.object(forKey: "ThirdSecondSaved")
        let TTS = UserDefaults.standard.object(forKey: "ThirdThirdSaved")
        let TFOS = UserDefaults.standard.object(forKey: "ThirdFourthSaved")
        let TFIS = UserDefaults.standard.object(forKey: "ThirdFifthSaved")
        ref31.setValue(["First": TFS])
        ref32.setValue(["Second": TSS])
        ref33.setValue(["Third": TTS])
        ref34.setValue(["Fourth": TFOS])
        ref35.setValue(["Fifth": TFIS])
        
        
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        UserDefaults.standard.set(FirstFirstHomework.text, forKey: "FirstFirstSaved")
        UserDefaults.standard.set(FirstSecondHomework.text, forKey: "FirstSecondSaved")
        UserDefaults.standard.set(FirstThirdHomework.text, forKey: "FirstThirdSaved")
        UserDefaults.standard.set(FirstFourthHomework.text, forKey: "FirstFourthSaved")
        UserDefaults.standard.set(FirstFifthHomework.text, forKey: "FirstFifthSaved")
        
        UserDefaults.standard.set(SecondFirstHomework.text, forKey: "SecondFirstSaved")
        UserDefaults.standard.set(SecondSecondHomework.text, forKey: "SecondSecondSaved")
        UserDefaults.standard.set(SecondThirdHomework.text, forKey: "SecondThirdSaved")
        UserDefaults.standard.set(SecondFourthHomework.text, forKey: "SecondFourthSaved")
        UserDefaults.standard.set(SecondFifthHomework.text, forKey: "SecondFifthSaved")
        
        UserDefaults.standard.set(ThirdFirstHomework.text, forKey: "ThirdFirstSaved")
        UserDefaults.standard.set(ThirdSecondHomework.text, forKey: "ThirdSecondSaved")
        UserDefaults.standard.set(ThirdThirdHomework.text, forKey: "ThirdThirdSaved")
        UserDefaults.standard.set(ThirdFourthHomework.text, forKey: "ThirdFourthSaved")
        UserDefaults.standard.set(ThirdFifthHomework.text, forKey: "ThirdFifthSaved")
        
        
        
        let ref1 = Database.database().reference().child("Homework").child(FirstHomeworkName.text ?? "Unknown User").child("one")
        let ref2 = Database.database().reference().child("Homework").child(FirstHomeworkName.text ?? "Unknown User").child("two")
        let ref3 = Database.database().reference().child("Homework").child(FirstHomeworkName.text ?? "Unknown User").child("three")
        let ref4 = Database.database().reference().child("Homework").child(FirstHomeworkName.text ?? "Unknown User").child("four")
        let ref5 = Database.database().reference().child("Homework").child(FirstHomeworkName.text ?? "Unknown User").child("five")
        let FFS = UserDefaults.standard.object(forKey: "FirstFirstSaved")
        let FSS = UserDefaults.standard.object(forKey: "FirstSecondSaved")
        let FTS = UserDefaults.standard.object(forKey: "FirstThirdSaved")
        let FFOS = UserDefaults.standard.object(forKey: "FirstFourthSaved")
        let FFIS = UserDefaults.standard.object(forKey: "FirstFifthSaved")
        ref1.setValue(["First": FFS])
        ref2.setValue(["Second": FSS])
        ref3.setValue(["Third": FTS])
        ref4.setValue(["Fourth": FFOS])
        ref5.setValue(["Fifth": FFIS])

        let ref21 = Database.database().reference().child("Homework").child(SecondHomeworkName.text ?? "Unknown User").child("one")
        let ref22 = Database.database().reference().child("Homework").child(SecondHomeworkName.text ?? "Unknown User").child("two")
        let ref23 = Database.database().reference().child("Homework").child(SecondHomeworkName.text ?? "Unknown User").child("three")
        let ref24 = Database.database().reference().child("Homework").child(SecondHomeworkName.text ?? "Unknown User").child("four")
        let ref25 = Database.database().reference().child("Homework").child(SecondHomeworkName.text ?? "Unknown User").child("five")
        let SFS = UserDefaults.standard.object(forKey: "SecondFirstSaved")
        let SSS = UserDefaults.standard.object(forKey: "SecondSecondSaved")
        let STS = UserDefaults.standard.object(forKey: "SecondThirdSaved")
        let SFOS = UserDefaults.standard.object(forKey: "SecondFourthSaved")
        let SFIS = UserDefaults.standard.object(forKey: "SecondFifthSaved")
        ref21.setValue(["First": SFS])
        ref22.setValue(["Second": SSS])
        ref23.setValue(["Third": STS])
        ref24.setValue(["Fourth": SFOS])
        ref25.setValue(["Fifth": SFIS])
        
        let ref31 = Database.database().reference().child("Homework").child(ThirdHomeworkName.text ?? "Unknown User").child("one")
        let ref32 = Database.database().reference().child("Homework").child(ThirdHomeworkName.text ?? "Unknown User").child("two")
        let ref33 = Database.database().reference().child("Homework").child(ThirdHomeworkName.text ?? "Unknown User").child("three")
        let ref34 = Database.database().reference().child("Homework").child(ThirdHomeworkName.text ?? "Unknown User").child("four")
        let ref35 = Database.database().reference().child("Homework").child(ThirdHomeworkName.text ?? "Unknown User").child("five")
        let TFS = UserDefaults.standard.object(forKey: "ThirdFirstSaved")
        let TSS = UserDefaults.standard.object(forKey: "ThirdSecondSaved")
        let TTS = UserDefaults.standard.object(forKey: "ThirdThirdSaved")
        let TFOS = UserDefaults.standard.object(forKey: "ThirdFourthSaved")
        let TFIS = UserDefaults.standard.object(forKey: "ThirdFifthSaved")
        ref31.setValue(["First": TFS])
        ref32.setValue(["Second": TSS])
        ref33.setValue(["Third": TTS])
        ref34.setValue(["Fourth": TFOS])
        ref35.setValue(["Fifth": TFIS])
        
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
