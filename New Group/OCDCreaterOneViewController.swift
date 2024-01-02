//
//  OCDCreaterOneViewController.swift
//  ERP
//
//  Created by Rishi Ambavanekar on 6/20/21.
//

import UIKit
import Firebase
import FirebaseDatabase
import CoreData

class OCDCreaterOneViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var WordOneTF: UITextField!
    
    @IBOutlet weak var WordTwoTF: UITextField!
    
    @IBOutlet weak var WordThreeTF: UITextField!
    
    @IBOutlet weak var WordFourTF: UITextField!
    
    @IBOutlet weak var WordFiveTF: UITextField!
    
    @IBOutlet weak var PictureOneTF: UITextField!
    
    @IBOutlet weak var PictureTwoTF: UITextField!
    
    @IBOutlet weak var PictureThreeTF: UITextField!
    
    @IBOutlet weak var PictureFourT: UITextField!
    
    @IBOutlet weak var PFiveT: UITextField!
    
    @IBOutlet weak var AOneT: UITextField!
    
    @IBOutlet weak var ATwoT: UITextField!
    
    @IBOutlet weak var AThreeT: UITextField!
    
    @IBOutlet weak var AFourT: UITextField!
    
    @IBOutlet weak var AFiveTF: UITextField!
    
    @IBOutlet weak var SOneTF: UITextField!
    
    @IBOutlet weak var STwoTF: UITextField!
    
    @IBOutlet weak var SThreeTF: UITextField!
    
    @IBOutlet weak var SFourTF: UITextField!
    
    @IBOutlet weak var SFiveTF: UITextField!
    
    @IBOutlet weak var VOneTF: UITextField!
    
    @IBOutlet weak var VTwoTF: UITextField!
    
    @IBOutlet weak var VThreeTF: UITextField!
    
    @IBOutlet weak var VFourTF: UITextField!
    
    @IBOutlet weak var VFiveTF: UITextField!
    
    @IBOutlet weak var ROneTF: UITextField!
    
    @IBOutlet weak var RTwoTF: UITextField!
    
    @IBOutlet weak var RThreeTF: UITextField!
    
    @IBOutlet weak var RFourTF: UITextField!
    
    @IBOutlet weak var TFiveTF: UITextField!
    
    public var completionHandler: ((String?) -> Void)?
    
    @IBAction func Done(_ sender: Any) {
        
        completionHandler?(LabelPick.text)
        let yc = storyboard?.instantiateViewController(identifier: "WEI") as! ExposureWhatViewController
        yc.modalPresentationStyle = .fullScreen
        present(yc,animated: true)
        NotificationCenter.default.post(name: Notification.Name("OCDType"), object: LabelPick.text)
        UserDefaults.standard.set(LabelPick.text, forKey: "savedtext")
        
        UserDefaults.standard.set(WordOneTF.text, forKey: "WordOneSaved")
        UserDefaults.standard.set(WordTwoTF.text, forKey: "WordTwoSaved")
        UserDefaults.standard.set(WordThreeTF.text, forKey: "WordThreeSaved")
        UserDefaults.standard.set(WordFourTF.text, forKey: "WordFourSaved")
        UserDefaults.standard.set(WordFiveTF.text, forKey: "WordFiveSaved")
        UserDefaults.standard.set(PictureOneTF.text, forKey: "PictureOneSaved")
        UserDefaults.standard.set(PictureTwoTF.text, forKey: "PictureTwoSaved")
        UserDefaults.standard.set(PictureThreeTF.text, forKey: "PictureThreeSaved")
        UserDefaults.standard.set(PictureFourT.text, forKey: "PictureFourSaved")
        UserDefaults.standard.set(PFiveT.text, forKey: "PictureFiveSaved")
        UserDefaults.standard.set(AOneT.text, forKey: "ArticleOneSaved")
        UserDefaults.standard.set(ATwoT.text, forKey: "ArticleTwoSaved")
        UserDefaults.standard.set(AThreeT.text, forKey: "ArticleThreeSaved")
        UserDefaults.standard.set(AFourT.text, forKey: "ArticleFourSaved")
        UserDefaults.standard.set(AFiveTF.text, forKey: "ArticleFiveSaved")
        UserDefaults.standard.set(SOneTF.text, forKey: "SoundOneSaved")
        UserDefaults.standard.set(STwoTF.text, forKey: "SoundTwoSaved")
        UserDefaults.standard.set(SThreeTF.text, forKey: "SoundThreeSaved")
        UserDefaults.standard.set(SFourTF.text, forKey: "SoundFourSaved")
        UserDefaults.standard.set(SFiveTF.text, forKey: "SoundFiveSaved")
        UserDefaults.standard.set(VOneTF.text, forKey: "VideoOneSaved")
        UserDefaults.standard.set(VTwoTF.text, forKey: "VideoTwoSaved")
        UserDefaults.standard.set(VThreeTF.text, forKey: "VideoThreeSaved")
        UserDefaults.standard.set(VFourTF.text, forKey: "VideoFourSaved")
        UserDefaults.standard.set(VFiveTF.text, forKey: "VideoFiveSaved")
        UserDefaults.standard.set(ROneTF.text, forKey: "RitualOneSaved")
        UserDefaults.standard.set(RTwoTF.text, forKey: "RitualTwoSaved")
        UserDefaults.standard.set(RThreeTF.text, forKey: "RitualThreeSaved")
        UserDefaults.standard.set(RFourTF.text, forKey: "RitualFourSaved")
        UserDefaults.standard.set(TFiveTF.text, forKey: "RitualFiveSaved")
        
    }
    
    @IBOutlet weak var Scr: UIScrollView!
    
    @IBOutlet weak var RO: UIButton!
    
    @IBOutlet weak var JRO: UIButton!
    
    @IBOutlet weak var HO: UIButton!
    
    @IBOutlet weak var SO: UIButton!
    
    @IBOutlet weak var POO: UIButton!
    
    @IBOutlet weak var SEO: UIButton!
    
    @IBOutlet weak var CO: UIButton!
    
    @IBOutlet weak var SOO: UIButton!
    
    @IBOutlet weak var CHO: UIButton!
    
    @IBOutlet weak var HOO: UIButton!
    
    @IBOutlet weak var NO: UIButton!
    
    @IBOutlet weak var MO: UIButton!
    
    @IBOutlet weak var LabelPick: UILabel!
    
    @IBAction func ReligiousOCDButton(_ sender: Any) {
        
        //NotificationCenter.default.post(name: Notification.Name("OCDType"), object: LabelPick.text)
        LabelPick.text = String("Religious")
        RO.isHidden = true
        JRO.isHidden = true
        HO.isHidden = true
        SO.isHidden = true
        POO.isHidden = true
        SEO.isHidden = true
        CO.isHidden = true
        SOO.isHidden = true
        CHO.isHidden = true
        HOO.isHidden = true
        NO.isHidden = true
        MO.isHidden = true
        UserDefaults.standard.set(LabelPick.text, forKey: "savedtext")
        
        
    }
    
    @IBAction func JustRightButton(_ sender: Any) {
        
        //NotificationCenter.default.post(name: Notification.Name("OCDType"), object: LabelPick.text)
        LabelPick.text = String("Just Right")
        RO.isHidden = true
        JRO.isHidden = true
        HO.isHidden = true
        SO.isHidden = true
        POO.isHidden = true
        SEO.isHidden = true
        CO.isHidden = true
        SOO.isHidden = true
        CHO.isHidden = true
        HOO.isHidden = true
        NO.isHidden = true
        MO.isHidden = true
        UserDefaults.standard.set(LabelPick.text, forKey: "savedtext")

    }
    
    @IBAction func HarmButton(_ sender: Any) {
        
        //NotificationCenter.default.post(name: Notification.Name("OCDType"), object: LabelPick.text)
        LabelPick.text = String("Harm")
        RO.isHidden = true
        JRO.isHidden = true
        HO.isHidden = true
        SO.isHidden = true
        POO.isHidden = true
        SEO.isHidden = true
        CO.isHidden = true
        SOO.isHidden = true
        CHO.isHidden = true
        HOO.isHidden = true
        NO.isHidden = true
        MO.isHidden = true
        UserDefaults.standard.set(LabelPick.text, forKey: "savedtext")

    }
    
    @IBAction func SymmetryButton(_ sender: Any) {
        
        //NotificationCenter.default.post(name: Notification.Name("OCDType"), object: LabelPick.text)
        LabelPick.text = String("Symmetry")
        RO.isHidden = true
        JRO.isHidden = true
        HO.isHidden = true
        SO.isHidden = true
        POO.isHidden = true
        SEO.isHidden = true
        CO.isHidden = true
        SOO.isHidden = true
        CHO.isHidden = true
        HOO.isHidden = true
        NO.isHidden = true
        MO.isHidden = true
        UserDefaults.standard.set(LabelPick.text, forKey: "savedtext")

    }
    
    @IBAction func PureButton(_ sender: Any) {
        
        //NotificationCenter.default.post(name: Notification.Name("OCDType"), object: LabelPick.text)
        LabelPick.text = String("Pure-O")
        RO.isHidden = true
        JRO.isHidden = true
        HO.isHidden = true
        SO.isHidden = true
        POO.isHidden = true
        SEO.isHidden = true
        CO.isHidden = true
        SOO.isHidden = true
        CHO.isHidden = true
        HOO.isHidden = true
        NO.isHidden = true
        MO.isHidden = true
        UserDefaults.standard.set(LabelPick.text, forKey: "savedtext")

    }
    
    @IBAction func SexualButton(_ sender: Any) {
        
        //NotificationCenter.default.post(name: Notification.Name("OCDType"), object: LabelPick.text)
        LabelPick.text = String("Sexual")
        RO.isHidden = true
        JRO.isHidden = true
        HO.isHidden = true
        SO.isHidden = true
        POO.isHidden = true
        SEO.isHidden = true
        CO.isHidden = true
        SOO.isHidden = true
        CHO.isHidden = true
        HOO.isHidden = true
        NO.isHidden = true
        MO.isHidden = true
        UserDefaults.standard.set(LabelPick.text, forKey: "savedtext")

    }
    
    @IBAction func ContaminationButton(_ sender: Any) {
        
        //NotificationCenter.default.post(name: Notification.Name("OCDType"), object: LabelPick.text)
        LabelPick.text = String("Contamination")
        RO.isHidden = true
        JRO.isHidden = true
        HO.isHidden = true
        SO.isHidden = true
        POO.isHidden = true
        SEO.isHidden = true
        CO.isHidden = true
        SOO.isHidden = true
        CHO.isHidden = true
        HOO.isHidden = true
        NO.isHidden = true
        MO.isHidden = true
        UserDefaults.standard.set(LabelPick.text, forKey: "savedtext")

    }
    
    @IBAction func SomaticButton(_ sender: Any) {
        
        //NotificationCenter.default.post(name: Notification.Name("OCDType"), object: LabelPick.text)
        LabelPick.text = String("Somatic")
        RO.isHidden = true
        JRO.isHidden = true
        HO.isHidden = true
        SO.isHidden = true
        POO.isHidden = true
        SEO.isHidden = true
        CO.isHidden = true
        SOO.isHidden = true
        CHO.isHidden = true
        HOO.isHidden = true
        NO.isHidden = true
        MO.isHidden = true
        UserDefaults.standard.set(LabelPick.text, forKey: "savedtext")

    }
    
    @IBAction func CheckingButton(_ sender: Any) {
        
        //NotificationCenter.default.post(name: Notification.Name("OCDType"), object: LabelPick.text)
        LabelPick.text = String("Checking")
        RO.isHidden = true
        JRO.isHidden = true
        HO.isHidden = true
        SO.isHidden = true
        POO.isHidden = true
        SEO.isHidden = true
        CO.isHidden = true
        SOO.isHidden = true
        CHO.isHidden = true
        HOO.isHidden = true
        NO.isHidden = true
        MO.isHidden = true
        UserDefaults.standard.set(LabelPick.text, forKey: "savedtext")

    }
    
    @IBAction func Hoarding(_ sender: Any) {
        
        //NotificationCenter.default.post(name: Notification.Name("OCDType"), object: LabelPick.text)
        LabelPick.text = String("Hoarding")
        RO.isHidden = true
        JRO.isHidden = true
        HO.isHidden = true
        SO.isHidden = true
        POO.isHidden = true
        SEO.isHidden = true
        CO.isHidden = true
        SOO.isHidden = true
        CHO.isHidden = true
        HOO.isHidden = true
        NO.isHidden = true
        MO.isHidden = true
        UserDefaults.standard.set(LabelPick.text, forKey: "savedtext")

    }
    
    @IBAction func NumericalButton(_ sender: Any) {
        
        //NotificationCenter.default.post(name: Notification.Name("OCDType"), object: LabelPick.text)
        LabelPick.text = String("Numerical")
        RO.isHidden = true
        JRO.isHidden = true
        HO.isHidden = true
        SO.isHidden = true
        POO.isHidden = true
        SEO.isHidden = true
        CO.isHidden = true
        SOO.isHidden = true
        CHO.isHidden = true
        HOO.isHidden = true
        NO.isHidden = true
        MO.isHidden = true
        UserDefaults.standard.set(LabelPick.text, forKey: "savedtext")

    }
    
    @IBAction func MiscellaneousButton(_ sender: Any) {
        
        //NotificationCenter.default.post(name: Notification.Name("OCDType"), object: LabelPick.text)
        LabelPick.text = String("Miscellaneous")
        RO.isHidden = true
        JRO.isHidden = true
        HO.isHidden = true
        SO.isHidden = true
        POO.isHidden = true
        SEO.isHidden = true
        CO.isHidden = true
        SOO.isHidden = true
        CHO.isHidden = true
        HOO.isHidden = true
        NO.isHidden = true
        MO.isHidden = true
        UserDefaults.standard.set(LabelPick.text, forKey: "savedtext")

    }
    
    
   @IBAction func PickingButton(_ sender: Any) {
        
        RO.isHidden = false
        JRO.isHidden = false
        HO.isHidden = false
        SO.isHidden = false
        POO.isHidden = false
        SEO.isHidden = false
        CO.isHidden = false
        SOO.isHidden = false
        CHO.isHidden = false
        HOO.isHidden = false
        NO.isHidden = false
        MO.isHidden = false
    UserDefaults.standard.set(LabelPick.text, forKey: "savedtext")
    LabelPick.text = UserDefaults.standard.object(forKey: "savedtext") as? String

    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if LabelPick == nil {
            LabelPick.text = String("Pick Type Of OCD")
        }
        LabelPick.text = UserDefaults.standard.object(forKey: "savedtext") as? String
        WordOneTF.text = UserDefaults.standard.object(forKey: "WordOneSaved") as? String
        WordTwoTF.text = UserDefaults.standard.object(forKey: "WordTwoSaved") as? String
        WordThreeTF.text = UserDefaults.standard.object(forKey: "WordThreeSaved") as? String
        WordFourTF.text = UserDefaults.standard.object(forKey: "WordFourSaved") as? String
        WordFiveTF.text = UserDefaults.standard.object(forKey: "WordFiveSaved") as? String
        PictureOneTF.text = UserDefaults.standard.object(forKey: "PictureOneSaved") as? String
        PictureTwoTF.text = UserDefaults.standard.object(forKey: "PictureTwoSaved") as? String
        PictureThreeTF.text = UserDefaults.standard.object(forKey: "PictureThreeSaved") as? String
        PictureFourT.text = UserDefaults.standard.object(forKey: "PictureFourSaved") as? String
        PFiveT.text = UserDefaults.standard.object(forKey: "PictureFiveSaved") as? String
        AOneT.text = UserDefaults.standard.object(forKey: "ArticleOneSaved") as? String
        ATwoT.text = UserDefaults.standard.object(forKey: "ArticleTwoSaved") as? String
        AThreeT.text = UserDefaults.standard.object(forKey: "ArticleThreeSaved") as? String
        AFourT.text = UserDefaults.standard.object(forKey: "ArticleFourSaved") as? String
        AFiveTF.text = UserDefaults.standard.object(forKey: "ArticleFiveSaved") as? String
        SOneTF.text = UserDefaults.standard.object(forKey: "SoundOneSaved") as? String
        STwoTF.text = UserDefaults.standard.object(forKey: "SoundTwoSaved") as? String
        SThreeTF.text = UserDefaults.standard.object(forKey: "SoundThreeSaved") as? String
        SFourTF.text = UserDefaults.standard.object(forKey: "SoundFourSaved") as? String
        SFiveTF.text = UserDefaults.standard.object(forKey: "SoundFiveSaved") as? String
        VOneTF.text = UserDefaults.standard.object(forKey: "VideoOneSaved") as? String
        VTwoTF.text = UserDefaults.standard.object(forKey: "VideoTwoSaved") as? String
        VThreeTF.text = UserDefaults.standard.object(forKey: "VideoThreeSaved") as? String
        VFourTF.text = UserDefaults.standard.object(forKey: "VideoFourSaved") as? String
        VFiveTF.text = UserDefaults.standard.object(forKey: "VideoFiveSaved") as? String
        ROneTF.text = UserDefaults.standard.object(forKey: "RitualOneSaved") as? String
        RTwoTF.text = UserDefaults.standard.object(forKey: "RitualTwoSaved") as? String
        RThreeTF.text = UserDefaults.standard.object(forKey: "RitualThreeSaved") as? String
        RFourTF.text = UserDefaults.standard.object(forKey: "RitualFourSaved") as? String
        TFiveTF.text = UserDefaults.standard.object(forKey: "RitualFiveSaved") as? String
        
        let toolBar = UIToolbar()
        toolBar.sizeToFit()
        
        let doneButton = UIBarButtonItem(barButtonSystemItem: UIBarButtonItem.SystemItem.done, target: self, action: #selector(self.doneClicked))
        
        toolBar.setItems([doneButton], animated: false)
        
        WordOneTF.inputAccessoryView = toolBar
        WordTwoTF.inputAccessoryView = toolBar
        WordThreeTF.inputAccessoryView = toolBar
        WordFourTF.inputAccessoryView = toolBar
        WordFiveTF.inputAccessoryView = toolBar
        PictureOneTF.inputAccessoryView = toolBar
        PictureTwoTF.inputAccessoryView = toolBar
        PictureThreeTF.inputAccessoryView = toolBar
        PictureFourT.inputAccessoryView = toolBar
        PFiveT.inputAccessoryView = toolBar
        AOneT.inputAccessoryView = toolBar
        ATwoT.inputAccessoryView = toolBar
        AThreeT.inputAccessoryView = toolBar
        AFourT.inputAccessoryView = toolBar
        AFiveTF.inputAccessoryView = toolBar
        SOneTF.inputAccessoryView = toolBar
        STwoTF.inputAccessoryView = toolBar
        SThreeTF.inputAccessoryView = toolBar
        SFourTF.inputAccessoryView = toolBar
        SFiveTF.inputAccessoryView = toolBar
        VOneTF.inputAccessoryView = toolBar
        VTwoTF.inputAccessoryView = toolBar
        VThreeTF.inputAccessoryView = toolBar
        VFourTF.inputAccessoryView = toolBar
        VFiveTF.inputAccessoryView = toolBar
        ROneTF.inputAccessoryView = toolBar
        RTwoTF.inputAccessoryView = toolBar
        RThreeTF.inputAccessoryView = toolBar
        RFourTF.inputAccessoryView = toolBar
        TFiveTF.inputAccessoryView = toolBar
            
        WordOneTF.delegate = self
        WordTwoTF.delegate = self
        WordThreeTF.delegate = self
        WordFourTF.delegate = self
        WordFiveTF.delegate = self
        PictureOneTF.delegate = self
        PictureTwoTF.delegate = self
        PictureThreeTF.delegate = self
        PictureFourT.delegate = self
        PFiveT.delegate = self
        AOneT.delegate = self
        ATwoT.delegate = self
        AThreeT.delegate = self
        AFourT.delegate = self
        AFiveTF.delegate = self
        SOneTF.delegate = self
        STwoTF.delegate = self
        SThreeTF.delegate = self
        SFourTF.delegate = self
        SFiveTF.delegate = self
        VOneTF.delegate = self
        VTwoTF.delegate = self
        VThreeTF.delegate = self
        VFourTF.delegate = self
        VFiveTF.delegate = self
        ROneTF.delegate = self
        RTwoTF.delegate = self
        RThreeTF.delegate = self
        RFourTF.delegate = self
        TFiveTF.delegate = self
        
    }
    
    
    @objc func doneClicked() {
        view.endEditing(true)
    }

}
