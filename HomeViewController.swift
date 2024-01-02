//
//  HomeViewController.swift
//  ERP
//
//  Created by Rishi Ambavanekar on 6/3/21.
//

import UIKit
import SwiftUI
import JSQMessagesViewController
import FirebaseAuth
import FirebaseDatabase

class HomeViewController: UIViewController {
    //var messages = [JSQMessage]()
    //JSQMessagesViewController
    
    /*lazy var outgoingBubble: JSQMessagesBubbleImage = {
        return JSQMessagesBubbleImageFactory()!.outgoingMessagesBubbleImage(with: UIColor.jsq_messageBubbleBlue())
    }()*/
    
    @IBAction func Help(_ sender: Any) {
        let mc = self.storyboard?.instantiateViewController(identifier: "VVC") as! ViewsViewController
        mc.modalPresentationStyle = .fullScreen
        present(mc,animated: true)
    }
    
    
    
    @IBOutlet weak var LVThirtyO: UIButton!
    @IBOutlet weak var LVTwentynineO: UIButton!
    @IBOutlet weak var LVTwentyeightO: UIButton!
    @IBOutlet weak var LVTwentysevenO: UIButton!
    @IBOutlet weak var LVTwentysixO: UIButton!
    @IBOutlet weak var LVTwentyfiveO: UIButton!
    @IBOutlet weak var LVTwentyfourO: UIButton!
    @IBOutlet weak var LVTwentythreeO: UIButton!
    @IBOutlet weak var LVTwentytwoO: UIButton!
    @IBOutlet weak var LVTwentyoneO: UIButton!
    @IBOutlet weak var LVTwentyO: UIButton!
    @IBOutlet weak var LVNineteenO: UIButton!
    @IBOutlet weak var LVEighteenO: UIButton!
    @IBOutlet weak var LVSeventeenO: UIButton!
    @IBOutlet weak var LVSixteenO: UIButton!
    @IBOutlet weak var LVFifteenO: UIButton!
    @IBOutlet weak var LVFourteenO: UIButton!
    @IBOutlet weak var LVThirteenO: UIButton!
    @IBOutlet weak var LVTweleveO: UIButton!
    @IBOutlet weak var LVElevenO: UIButton!
    @IBOutlet weak var LVTenO: UIButton!
    @IBOutlet weak var LVNineO: UIButton!
    @IBOutlet weak var LVEightO: UIButton!
    @IBOutlet weak var LVSevenO: UIButton!
    @IBOutlet weak var LVSixO: UIButton!
    @IBOutlet weak var LVFiveO: UIButton!
    @IBOutlet weak var LVFourO: UIButton!
    @IBOutlet weak var LVThreeO: UIButton!
    @IBOutlet weak var LVTwoO: UIButton!
    @IBOutlet weak var LVOneO: UIButton!
    
    var image1 = [UIImage(named: "ButtonDone.png")]
    var saveImageOne:Int = 0
    var saveImageTwo:Int = 0
    var saveImageThree:Int = 0
    var saveImageFour:Int = 0
    var saveImageFive:Int = 0
    var saveImageSix:Int = 0
    var saveImageSeven:Int = 0
    var saveImageEight:Int = 0
    var saveImageNine:Int = 0
    var saveImageTen:Int = 0
    var saveImageEleven:Int = 0
    var saveImageTwelve:Int = 0
    var saveImageThirteen:Int = 0
    var saveImageFourteen:Int = 0
    var saveImageFifteen:Int = 0
    var saveImageSixteen:Int = 0
    var saveImageSeventeen:Int = 0
    var saveImageEighteen:Int = 0
    var saveImageNineteen:Int = 0
    var saveImageTwenty:Int = 0
    var saveImageTwentyOne:Int = 0
    var saveImageTwentyTwo:Int = 0
    var saveImageTwentyThree:Int = 0
    var saveImageTwentyFour:Int = 0
    var saveImageTwentyFive:Int = 0
    var saveImageTwentySix:Int = 0
    var saveImageTwentySeven:Int = 0
    var saveImageTwentyEight:Int = 0
    var saveImageTwentyNine:Int = 0
    var saveImageThirty:Int = 0
    var flag:Int = 0
    
    @IBAction func LV30(_ sender: Any) {
        
        let mc = storyboard?.instantiateViewController(identifier: "RE5") as! RitualsExposuresFiveViewController
        mc.modalPresentationStyle = .fullScreen
        present(mc,animated: true)
        saveImageThirty = 1
        flag = 30
        UserDefaults.standard.set(saveImageThirty, forKey: "LV30Saved")
        let username = UserDefaults.standard.object(forKey: "UsernameSaved") as? String
        
        if username != nil && ((username?.contains(".")) != true) && ((username?.contains("#")) == false) && ((username?.contains("$")) == false) && ((username?.contains("[")) == false) && ((username?.contains("]")) == false) {
        let ref = Database.database().reference().child(username ?? "Unknown User").child("Score")
        ref.setValue(["Level": flag])
        }
    }
    
    @IBAction func LV29(_ sender: Any) {
        
        let mc = storyboard?.instantiateViewController(identifier: "RE4") as! RitualsExposuresFourViewController
        mc.modalPresentationStyle = .fullScreen
        present(mc,animated: true)
        saveImageTwentyNine = 1
        UserDefaults.standard.set(saveImageTwentyNine, forKey: "LV29Saved")
        flag = 30
        UserDefaults.standard.set(flag, forKey: "flagSaved")
        let username = UserDefaults.standard.object(forKey: "UsernameSaved") as? String
        
        if username != nil && ((username?.contains(".")) != true) && ((username?.contains("#")) == false) && ((username?.contains("$")) == false) && ((username?.contains("[")) == false) && ((username?.contains("]")) == false) {
        let ref = Database.database().reference().child(username ?? "Unknown User").child("Score")
        ref.setValue(["Level": flag])
        }
    }
    
    @IBAction func LV28(_ sender: Any) {
        
        let mc = storyboard?.instantiateViewController(identifier: "RE3") as! RitualsExposuresThreeViewController
        mc.modalPresentationStyle = .fullScreen
        present(mc,animated: true)
        saveImageTwentyEight = 1
        UserDefaults.standard.set(saveImageTwentyEight, forKey: "LV28Saved")
        flag = 29
        UserDefaults.standard.set(flag, forKey: "flagSaved")
        let username = UserDefaults.standard.object(forKey: "UsernameSaved") as? String
        
        if username != nil && ((username?.contains(".")) != true) && ((username?.contains("#")) == false) && ((username?.contains("$")) == false) && ((username?.contains("[")) == false) && ((username?.contains("]")) == false) {
        let ref = Database.database().reference().child(username ?? "Unknown User").child("Score")
        ref.setValue(["Level": flag])
        }
    }
    
    @IBAction func LV27(_ sender: Any) {
        
        let mc = storyboard?.instantiateViewController(identifier: "RE2") as! RitualsExposuresTwoViewController
        mc.modalPresentationStyle = .fullScreen
        present(mc,animated: true)
        saveImageTwentySeven = 1
        UserDefaults.standard.set(saveImageTwentySeven, forKey: "LV27Saved")
        flag = 28
        UserDefaults.standard.set(flag, forKey: "flagSaved")
        let username = UserDefaults.standard.object(forKey: "UsernameSaved") as? String
        
        if username != nil && ((username?.contains(".")) != true) && ((username?.contains("#")) == false) && ((username?.contains("$")) == false) && ((username?.contains("[")) == false) && ((username?.contains("]")) == false) {
        let ref = Database.database().reference().child(username ?? "Unknown User").child("Score")
        ref.setValue(["Level": flag])
        }
    }
    
    @IBAction func LV26(_ sender: Any) {
        
        let mc = storyboard?.instantiateViewController(identifier: "RE") as! RitualExposuresViewController
        mc.modalPresentationStyle = .fullScreen
        present(mc,animated: true)
        saveImageTwentySix = 1
        UserDefaults.standard.set(saveImageTwentySix, forKey: "LV26Saved")
        flag = 27
        UserDefaults.standard.set(flag, forKey: "flagSaved")
        let username = UserDefaults.standard.object(forKey: "UsernameSaved") as? String
        
        if username != nil && ((username?.contains(".")) != true) && ((username?.contains("#")) == false) && ((username?.contains("$")) == false) && ((username?.contains("[")) == false) && ((username?.contains("]")) == false) {
        let ref = Database.database().reference().child(username ?? "Unknown User").child("Score")
        ref.setValue(["Level": flag])
        }
    }
    
    @IBAction func LV25(_ sender: Any) {
        
        let mc = storyboard?.instantiateViewController(identifier: "VE5") as! VideosExposuresFiveViewController
        mc.modalPresentationStyle = .fullScreen
        present(mc,animated: true)
        saveImageTwentyFive = 1
        UserDefaults.standard.set(saveImageTwentyFive, forKey: "LV25Saved")
        flag = 26
        UserDefaults.standard.set(flag, forKey: "flagSaved")
        let username = UserDefaults.standard.object(forKey: "UsernameSaved") as? String
        
        if username != nil && ((username?.contains(".")) != true) && ((username?.contains("#")) == false) && ((username?.contains("$")) == false) && ((username?.contains("[")) == false) && ((username?.contains("]")) == false) {
        let ref = Database.database().reference().child(username ?? "Unknown User").child("Score")
        ref.setValue(["Level": flag])
        }
    }
    
    @IBAction func LV24(_ sender: Any) {
        
        let mc = storyboard?.instantiateViewController(identifier: "VE4") as! VideosExposuresFourViewController
        mc.modalPresentationStyle = .fullScreen
        present(mc,animated: true)
        saveImageTwentyFour = 1
        UserDefaults.standard.set(saveImageTwentyFour, forKey: "LV24Saved")
        flag = 25
        UserDefaults.standard.set(flag, forKey: "flagSaved")
        let username = UserDefaults.standard.object(forKey: "UsernameSaved") as? String
        
        if username != nil && ((username?.contains(".")) != true) && ((username?.contains("#")) == false) && ((username?.contains("$")) == false) && ((username?.contains("[")) == false) && ((username?.contains("]")) == false) {
        let ref = Database.database().reference().child(username ?? "Unknown User").child("Score")
        ref.setValue(["Level": flag])
        }
    }
    
    @IBAction func LV23(_ sender: Any) {
        
        let mc = storyboard?.instantiateViewController(identifier: "VE3") as! VideosExposuresThreeViewController
        mc.modalPresentationStyle = .fullScreen
        present(mc,animated: true)
        saveImageTwentyThree = 1
        UserDefaults.standard.set(saveImageTwentyThree, forKey: "LV23Saved")
        flag = 24
        UserDefaults.standard.set(flag, forKey: "flagSaved")
        let username = UserDefaults.standard.object(forKey: "UsernameSaved") as? String
        
        if username != nil && ((username?.contains(".")) != true) && ((username?.contains("#")) == false) && ((username?.contains("$")) == false) && ((username?.contains("[")) == false) && ((username?.contains("]")) == false) {
        let ref = Database.database().reference().child(username ?? "Unknown User").child("Score")
        ref.setValue(["Level": flag])
        }
    }
    
    @IBAction func LVT22(_ sender: Any) {
        
        let mc = storyboard?.instantiateViewController(identifier: "VE2") as! VideosExposuresTwoViewController
        mc.modalPresentationStyle = .fullScreen
        present(mc,animated: true)
        saveImageTwentyTwo = 1
        UserDefaults.standard.set(saveImageTwentyTwo, forKey: "LV22Saved")
        flag = 23
        UserDefaults.standard.set(flag, forKey: "flagSaved")
        let username = UserDefaults.standard.object(forKey: "UsernameSaved") as? String
        
        if username != nil && ((username?.contains(".")) != true) && ((username?.contains("#")) == false) && ((username?.contains("$")) == false) && ((username?.contains("[")) == false) && ((username?.contains("]")) == false) {
        let ref = Database.database().reference().child(username ?? "Unknown User").child("Score")
        ref.setValue(["Level": flag])
        }
    }
    
    @IBAction func LV21(_ sender: Any) {
        
        let mc = storyboard?.instantiateViewController(identifier: "VE") as! VideosExposuresViewController
        mc.modalPresentationStyle = .fullScreen
        present(mc,animated: true)
        saveImageTwentyOne = 1
        UserDefaults.standard.set(saveImageTwentyOne, forKey: "LV21Saved")
        flag = 22
        UserDefaults.standard.set(flag, forKey: "flagSaved")
        let username = UserDefaults.standard.object(forKey: "UsernameSaved") as? String
        
        if username != nil && ((username?.contains(".")) != true) && ((username?.contains("#")) == false) && ((username?.contains("$")) == false) && ((username?.contains("[")) == false) && ((username?.contains("]")) == false) {
        let ref = Database.database().reference().child(username ?? "Unknown User").child("Score")
        ref.setValue(["Level": flag])
        }
    }
    
    @IBAction func LV20(_ sender: Any) {
        
        let mc = storyboard?.instantiateViewController(identifier: "SE5") as! SoundsExposuresFiveViewController
        mc.modalPresentationStyle = .fullScreen
        present(mc,animated: true)
        saveImageTwenty = 1
        UserDefaults.standard.set(saveImageTwenty, forKey: "LV20Saved")
        flag = 21
        UserDefaults.standard.set(flag, forKey: "flagSaved")
        let username = UserDefaults.standard.object(forKey: "UsernameSaved") as? String
        
        if username != nil && ((username?.contains(".")) != true) && ((username?.contains("#")) == false) && ((username?.contains("$")) == false) && ((username?.contains("[")) == false) && ((username?.contains("]")) == false) {
        let ref = Database.database().reference().child(username ?? "Unknown User").child("Score")
        ref.setValue(["Level": flag])
        }
    }
    
    @IBAction func LV19(_ sender: Any) {
        
        let mc = storyboard?.instantiateViewController(identifier: "SE4") as! SoundsExposuresFourViewController
        mc.modalPresentationStyle = .fullScreen
        present(mc,animated: true)
        saveImageNineteen = 1
        UserDefaults.standard.set(saveImageNineteen, forKey: "LV19Saved")
        flag = 20
        UserDefaults.standard.set(flag, forKey: "flagSaved")
        let username = UserDefaults.standard.object(forKey: "UsernameSaved") as? String
        
        if username != nil && ((username?.contains(".")) != true) && ((username?.contains("#")) == false) && ((username?.contains("$")) == false) && ((username?.contains("[")) == false) && ((username?.contains("]")) == false) {
        let ref = Database.database().reference().child(username ?? "Unknown User").child("Score")
        ref.setValue(["Level": flag])
        }
    }
    
    @IBAction func LV18(_ sender: Any) {
        
        let mc = storyboard?.instantiateViewController(identifier: "SE3") as! SoundsExposuresThreeViewController
        mc.modalPresentationStyle = .fullScreen
        present(mc,animated: true)
        saveImageEighteen = 1
        UserDefaults.standard.set(saveImageEighteen, forKey: "LV18Saved")
        flag = 19
        UserDefaults.standard.set(flag, forKey: "flagSaved")
        let username = UserDefaults.standard.object(forKey: "UsernameSaved") as? String
        
        if username != nil && ((username?.contains(".")) != true) && ((username?.contains("#")) == false) && ((username?.contains("$")) == false) && ((username?.contains("[")) == false) && ((username?.contains("]")) == false) {
        let ref = Database.database().reference().child(username ?? "Unknown User").child("Score")
        ref.setValue(["Level": flag])
        }
    }
    
    @IBAction func LV17(_ sender: Any) {
        
        let mc = storyboard?.instantiateViewController(identifier: "SE2") as! SoundExposuresTwoViewController
        mc.modalPresentationStyle = .fullScreen
        present(mc,animated: true)
        saveImageSeventeen = 1
        UserDefaults.standard.set(saveImageSeventeen, forKey: "LV17Saved")
        flag = 18
        UserDefaults.standard.set(flag, forKey: "flagSaved")
        let username = UserDefaults.standard.object(forKey: "UsernameSaved") as? String
        
        if username != nil && ((username?.contains(".")) != true) && ((username?.contains("#")) == false) && ((username?.contains("$")) == false) && ((username?.contains("[")) == false) && ((username?.contains("]")) == false) {
        let ref = Database.database().reference().child(username ?? "Unknown User").child("Score")
        ref.setValue(["Level": flag])
        }
    }
    
    @IBAction func LVT16(_ sender: Any) {
        
        let mc = storyboard?.instantiateViewController(identifier: "SE") as! SoundViewController
        mc.modalPresentationStyle = .fullScreen
        present(mc,animated: true)
        saveImageSixteen = 1
        UserDefaults.standard.set(saveImageSixteen, forKey: "LV16Saved")
        flag = 17
        UserDefaults.standard.set(flag, forKey: "flagSaved")
        let username = UserDefaults.standard.object(forKey: "UsernameSaved") as? String
        
        if username != nil && ((username?.contains(".")) != true) && ((username?.contains("#")) == false) && ((username?.contains("$")) == false) && ((username?.contains("[")) == false) && ((username?.contains("]")) == false) {
        let ref = Database.database().reference().child(username ?? "Unknown User").child("Score")
        ref.setValue(["Level": flag])
        }
    }
    
    @IBAction func LV15(_ sender: Any) {
        
        let mc = storyboard?.instantiateViewController(identifier: "AE5") as! ArticlesExposuresFiveViewController
        mc.modalPresentationStyle = .fullScreen
        present(mc,animated: true)
        saveImageFifteen = 1
        UserDefaults.standard.set(saveImageFifteen, forKey: "LV15Saved")
        flag = 16
        UserDefaults.standard.set(flag, forKey: "flagSaved")
        let username = UserDefaults.standard.object(forKey: "UsernameSaved") as? String
        
        if username != nil && ((username?.contains(".")) != true) && ((username?.contains("#")) == false) && ((username?.contains("$")) == false) && ((username?.contains("[")) == false) && ((username?.contains("]")) == false) {
        let ref = Database.database().reference().child(username ?? "Unknown User").child("Score")
        ref.setValue(["Level": flag])
        }
    }
    
    @IBAction func LV14(_ sender: Any) {
        
        let mc = storyboard?.instantiateViewController(identifier: "AE4") as! ArticlesExposuresFourViewController
        mc.modalPresentationStyle = .fullScreen
        present(mc,animated: true)
        saveImageFourteen = 1
        UserDefaults.standard.set(saveImageFourteen, forKey: "LV14Saved")
        flag = 15
        UserDefaults.standard.set(flag, forKey: "flagSaved")
        let username = UserDefaults.standard.object(forKey: "UsernameSaved") as? String
        
        if username != nil && ((username?.contains(".")) != true) && ((username?.contains("#")) == false) && ((username?.contains("$")) == false) && ((username?.contains("[")) == false) && ((username?.contains("]")) == false) {
        let ref = Database.database().reference().child(username ?? "Unknown User").child("Score")
        ref.setValue(["Level": flag])
        }
    }
    
    @IBAction func LVT13(_ sender: Any) {
        
        let mc = storyboard?.instantiateViewController(identifier: "AE3") as! ArticlesThreeViewController
        mc.modalPresentationStyle = .fullScreen
        present(mc,animated: true)
        saveImageThirteen = 1
        UserDefaults.standard.set(saveImageThirteen, forKey: "LV13Saved")
        flag = 14
        UserDefaults.standard.set(flag, forKey: "flagSaved")
        let username = UserDefaults.standard.object(forKey: "UsernameSaved") as? String
        
        if username != nil && ((username?.contains(".")) != true) && ((username?.contains("#")) == false) && ((username?.contains("$")) == false) && ((username?.contains("[")) == false) && ((username?.contains("]")) == false) {
        let ref = Database.database().reference().child(username ?? "Unknown User").child("Score")
        ref.setValue(["Level": flag])
        }
    }
    
    @IBAction func LVT12(_ sender: Any) {
        
        let mc = storyboard?.instantiateViewController(identifier: "AE2") as! ArticlesTwoViewController
        mc.modalPresentationStyle = .fullScreen
        present(mc,animated: true)
        saveImageTwelve = 1
        UserDefaults.standard.set(saveImageTwelve, forKey: "LV12Saved")
        flag = 13
        UserDefaults.standard.set(flag, forKey: "flagSaved")
        let username = UserDefaults.standard.object(forKey: "UsernameSaved") as? String
        
        if username != nil && ((username?.contains(".")) != true) && ((username?.contains("#")) == false) && ((username?.contains("$")) == false) && ((username?.contains("[")) == false) && ((username?.contains("]")) == false) {
        let ref = Database.database().reference().child(username ?? "Unknown User").child("Score")
        ref.setValue(["Level": flag])
        }
    }
    
    @IBAction func LV11(_ sender: Any) {
        
        let mc = storyboard?.instantiateViewController(identifier: "AE") as! ArticlesExposurersViewController
        mc.modalPresentationStyle = .fullScreen
        present(mc,animated: true)
        saveImageEleven = 1
        UserDefaults.standard.set(saveImageEleven, forKey: "LV11Saved")
        flag = 12
        UserDefaults.standard.set(flag, forKey: "flagSaved")
        let username = UserDefaults.standard.object(forKey: "UsernameSaved") as? String
        
        if username != nil && ((username?.contains(".")) != true) && ((username?.contains("#")) == false) && ((username?.contains("$")) == false) && ((username?.contains("[")) == false) && ((username?.contains("]")) == false) {
        let ref = Database.database().reference().child(username ?? "Unknown User").child("Score")
        ref.setValue(["Level": flag])
        }
    }
    
    @IBAction func LV10(_ sender: Any) {
        
        let mc = storyboard?.instantiateViewController(identifier: "IE5") as! ImageExposuresFiveViewController
        mc.modalPresentationStyle = .fullScreen
        present(mc,animated: true)
        saveImageTen = 1
        UserDefaults.standard.set(saveImageTen, forKey: "LV10Saved")
        flag = 11
        UserDefaults.standard.set(flag, forKey: "flagSaved")
    }
    
    @IBAction func LV9(_ sender: Any) {
        
        let mc = storyboard?.instantiateViewController(identifier: "IE4") as! ImageExposuresFourViewController
        mc.modalPresentationStyle = .fullScreen
        present(mc,animated: true)
        saveImageNine = 1
        UserDefaults.standard.set(saveImageNine, forKey: "LV9Saved")
        flag = 10
        UserDefaults.standard.set(flag, forKey: "flagSaved")
        let username = UserDefaults.standard.object(forKey: "UsernameSaved") as? String
        
        if username != nil && ((username?.contains(".")) != true) && ((username?.contains("#")) == false) && ((username?.contains("$")) == false) && ((username?.contains("[")) == false) && ((username?.contains("]")) == false) {
        let ref = Database.database().reference().child(username ?? "Unknown User").child("Score")
        ref.setValue(["Level": flag])
        }
    }
    
    @IBAction func LV8(_ sender: Any) {
        
        let mc = storyboard?.instantiateViewController(identifier: "IE3") as! ImageExposuresThreeViewController
        mc.modalPresentationStyle = .fullScreen
        present(mc,animated: true)
        saveImageEight = 1
        UserDefaults.standard.set(saveImageEight, forKey: "LV8Saved")
        flag = 9
        UserDefaults.standard.set(flag, forKey: "flagSaved")
        let username = UserDefaults.standard.object(forKey: "UsernameSaved") as? String
        
        if username != nil && ((username?.contains(".")) != true) && ((username?.contains("#")) == false) && ((username?.contains("$")) == false) && ((username?.contains("[")) == false) && ((username?.contains("]")) == false) {
        let ref = Database.database().reference().child(username ?? "Unknown User").child("Score")
        ref.setValue(["Level": flag])
        }
    }
    
    @IBAction func LV7(_ sender: Any) {
        
        let mc = storyboard?.instantiateViewController(identifier: "IE2") as! ImageExposuresTwoViewController
        mc.modalPresentationStyle = .fullScreen
        present(mc,animated: true)
        saveImageSeven = 1
        UserDefaults.standard.set(saveImageSeven, forKey: "LV7Saved")
        flag = 8
        UserDefaults.standard.set(flag, forKey: "flagSaved")
        let username = UserDefaults.standard.object(forKey: "UsernameSaved") as? String
        
        if username != nil && ((username?.contains(".")) != true) && ((username?.contains("#")) == false) && ((username?.contains("$")) == false) && ((username?.contains("[")) == false) && ((username?.contains("]")) == false) {
        let ref = Database.database().reference().child(username ?? "Unknown User").child("Score")
        ref.setValue(["Level": flag])
        }
    }
    
    @IBAction func LV6(_ sender: Any) {
        
        let mc = storyboard?.instantiateViewController(identifier: "IE") as! ImagesExposurersViewController
        mc.modalPresentationStyle = .fullScreen
        present(mc,animated: true)
        saveImageSix = 1
        UserDefaults.standard.set(saveImageSix, forKey: "LV6Saved")
        flag = 7
        UserDefaults.standard.set(flag, forKey: "flagSaved")
        let username = UserDefaults.standard.object(forKey: "UsernameSaved") as? String
        
        if username != nil && ((username?.contains(".")) != true) && ((username?.contains("#")) == false) && ((username?.contains("$")) == false) && ((username?.contains("[")) == false) && ((username?.contains("]")) == false) {
        let ref = Database.database().reference().child(username ?? "Unknown User").child("Score")
        ref.setValue(["Level": flag])
        }
    }
    
    @IBAction func LV1(_ sender: Any) {
        
        let mc = storyboard?.instantiateViewController(identifier: "WE") as! WordsExposureViewController
        mc.modalPresentationStyle = .fullScreen
        present(mc,animated: true)
        saveImageOne = 1
        UserDefaults.standard.set(saveImageOne, forKey: "LV1Saved")
        flag = 2
        UserDefaults.standard.set(flag, forKey: "flagSaved")
        let username = UserDefaults.standard.object(forKey: "UsernameSaved") as? String
        
        if username != nil && ((username?.contains(".")) != true) && ((username?.contains("#")) == false) && ((username?.contains("$")) == false) && ((username?.contains("[")) == false) && ((username?.contains("]")) == false) {
        let ref = Database.database().reference().child(username ?? "Unknown User").child("Score")
        ref.setValue(["Level": flag])
        }

    }
    
    @IBAction func LV2(_ sender: Any) {
        
        let mc = storyboard?.instantiateViewController(identifier: "WE2") as! WordsExposureTwoViewController
        mc.modalPresentationStyle = .fullScreen
        present(mc,animated: true)
        saveImageTwo = 1
        UserDefaults.standard.set(saveImageTwo, forKey: "LV2Saved")
        flag = 3
        UserDefaults.standard.set(flag, forKey: "flagSaved")
        let username = UserDefaults.standard.object(forKey: "UsernameSaved") as? String
        
        if username != nil && ((username?.contains(".")) != true) && ((username?.contains("#")) == false) && ((username?.contains("$")) == false) && ((username?.contains("[")) == false) && ((username?.contains("]")) == false) {
        let ref = Database.database().reference().child(username ?? "Unknown User").child("Score")
        ref.setValue(["Level": flag])
        }
    }
    
    @IBAction func LV3(_ sender: Any) {
        
        let mc = storyboard?.instantiateViewController(identifier: "WE3") as! WordsExposureThreeViewController
        mc.modalPresentationStyle = .fullScreen
        present(mc,animated: true)
        saveImageThree = 1
        UserDefaults.standard.set(saveImageThree, forKey: "LV3Saved")
        flag = 4
        UserDefaults.standard.set(flag, forKey: "flagSaved")

        let username = UserDefaults.standard.object(forKey: "UsernameSaved") as? String
        print(username)
        if username != nil && ((username?.contains(".")) != true) && ((username?.contains("#")) == false) && ((username?.contains("$")) == false) && ((username?.contains("[")) == false) && ((username?.contains("]")) == false) {
        let ref = Database.database().reference().child(username ?? "Unknown User").child("Score")
        ref.setValue(["Level": flag])
        }
    }
    
    @IBAction func LV4(_ sender: Any) {
        
        let mc = storyboard?.instantiateViewController(identifier: "WE4") as! WordsExposureFourViewController
        mc.modalPresentationStyle = .fullScreen
        present(mc,animated: true)
        saveImageFour = 1
        UserDefaults.standard.set(saveImageFour, forKey: "LV4Saved")
        flag = 5
        UserDefaults.standard.set(flag, forKey: "flagSaved")
        let username = UserDefaults.standard.object(forKey: "UsernameSaved") as? String
        
        if username != nil && ((username?.contains(".")) != true) && ((username?.contains("#")) == false) && ((username?.contains("$")) == false) && ((username?.contains("[")) == false) && ((username?.contains("]")) == false) {
        let ref = Database.database().reference().child(username ?? "Unknown User").child("Score")
        ref.setValue(["Level": flag])
        }

    }
    
    @IBAction func LV5(_ sender: Any) {
        
        let mc = storyboard?.instantiateViewController(identifier: "WE5") as! WordsExposureFiveViewController
        mc.modalPresentationStyle = .fullScreen
        present(mc,animated: true)
        saveImageFive = 1
        UserDefaults.standard.set(saveImageFive, forKey: "LV5Saved")
        flag = 6
        UserDefaults.standard.set(flag, forKey: "flagSaved")
        let username = UserDefaults.standard.object(forKey: "UsernameSaved") as? String
        
        if username != nil && ((username?.contains(".")) != true) && ((username?.contains("#")) == false) && ((username?.contains("$")) == false) && ((username?.contains("[")) == false) && ((username?.contains("]")) == false) {
        let ref = Database.database().reference().child(username ?? "Unknown User").child("Score")
        ref.setValue(["Level": flag])
        }
    }
    
    @IBOutlet weak var Scroller: UIScrollView!
    
    

    override func viewDidLoad() {
        // firebaseSearchString is "Super Hero" now
        
        
        
        
        UserDefaults.standard.set(flag, forKey: "flagSaved")
        if (UserDefaults.standard.object(forKey: "flagSaved") as? Int) == 1 {
            LVOneO.setImage(UIImage(named: "Flag.png"), for: .normal)
        }
        if (UserDefaults.standard.object(forKey: "flagSaved") as? Int) == 2 {
            LVTwoO.setImage(UIImage(named: "Flag.png"), for: .normal)
        }
        print(flag)
        print(LVTwoO.currentImage)
        if (UserDefaults.standard.object(forKey: "flagSaved") as? Int) == 3 {
            LVThreeO.setImage(UIImage(named: "Flag.png"), for: .normal)
        }
        if (UserDefaults.standard.object(forKey: "flagSaved") as? Int) == 4 {
            LVFourO.setImage(UIImage(named: "Flag.png"), for: .normal)
        }
        if (UserDefaults.standard.object(forKey: "flagSaved") as? Int) == 5 {
            LVFiveO.setImage(UIImage(named: "Flag.png"), for: .normal)
        }
        if (UserDefaults.standard.object(forKey: "flagSaved") as? Int) == 6 {
            LVSixO.setImage(UIImage(named: "Flag.png"), for: .normal)
        }
        if (UserDefaults.standard.object(forKey: "flagSaved") as? Int) == 7 {
            LVSevenO.setImage(UIImage(named: "Flag.png"), for: .normal)
        }
        if (UserDefaults.standard.object(forKey: "flagSaved") as? Int) == 8 {
            LVEightO.setImage(UIImage(named: "Flag.png"), for: .normal)
        }
        if (UserDefaults.standard.object(forKey: "flagSaved") as? Int) == 9 {
            LVNineO.setImage(UIImage(named: "Flag.png"), for: .normal)
        }
        if (UserDefaults.standard.object(forKey: "flagSaved") as? Int) == 10 {
            LVTenO.setImage(UIImage(named: "Flag.png"), for: .normal)
        }
        if (UserDefaults.standard.object(forKey: "flagSaved") as? Int) == 11 {
            LVElevenO.setImage(UIImage(named: "Flag.png"), for: .normal)
        }
        if (UserDefaults.standard.object(forKey: "flagSaved") as? Int) == 12 {
            LVTweleveO.setImage(UIImage(named: "Flag.png"), for: .normal)
        }
        if (UserDefaults.standard.object(forKey: "flagSaved") as? Int) == 13 {
            LVThirteenO.setImage(UIImage(named: "Flag.png"), for: .normal)
        }
        if (UserDefaults.standard.object(forKey: "flagSaved") as? Int) == 14 {
            LVFourteenO.setImage(UIImage(named: "Flag.png"), for: .normal)
        }
        if (UserDefaults.standard.object(forKey: "flagSaved") as? Int) == 15 {
            LVFifteenO.setImage(UIImage(named: "Flag.png"), for: .normal)
        }
        if (UserDefaults.standard.object(forKey: "flagSaved") as? Int) == 16 {
            LVSixteenO.setImage(UIImage(named: "Flag.png"), for: .normal)
        }
        if (UserDefaults.standard.object(forKey: "flagSaved") as? Int) == 17 {
            LVSeventeenO.setImage(UIImage(named: "Flag.png"), for: .normal)
        }
        if (UserDefaults.standard.object(forKey: "flagSaved") as? Int) == 18 {
            LVEighteenO.setImage(UIImage(named: "Flag.png"), for: .normal)
        }
        if (UserDefaults.standard.object(forKey: "flagSaved") as? Int) == 19 {
            LVNineteenO.setImage(UIImage(named: "Flag.png"), for: .normal)
        }
        if (UserDefaults.standard.object(forKey: "flagSaved") as? Int) == 20 {
            LVTwentyO.setImage(UIImage(named: "Flag.png"), for: .normal)
        }
        if (UserDefaults.standard.object(forKey: "flagSaved") as? Int) == 21 {
            LVTwentyoneO.setImage(UIImage(named: "Flag.png"), for: .normal)
        }
        if (UserDefaults.standard.object(forKey: "flagSaved") as? Int) == 22 {
            LVTwentytwoO.setImage(UIImage(named: "Flag.png"), for: .normal)
        }
        if (UserDefaults.standard.object(forKey: "flagSaved") as? Int) == 23 {
            LVTwentythreeO.setImage(UIImage(named: "Flag.png"), for: .normal)
        }
        if (UserDefaults.standard.object(forKey: "flagSaved") as? Int) == 24 {
            LVTwentyfourO.setImage(UIImage(named: "Flag.png"), for: .normal)
        }
        if (UserDefaults.standard.object(forKey: "flagSaved") as? Int) == 25 {
            LVTwentyfiveO.setImage(UIImage(named: "Flag.png"), for: .normal)
        }
        if (UserDefaults.standard.object(forKey: "flagSaved") as? Int) == 26 {
            LVTwentysixO.setImage(UIImage(named: "Flag.png"), for: .normal)
        }
        if (UserDefaults.standard.object(forKey: "flagSaved") as? Int) == 27 {
            LVTwentysevenO.setImage(UIImage(named: "Flag.png"), for: .normal)
        }
        if (UserDefaults.standard.object(forKey: "flagSaved") as? Int) == 28 {
            LVTwentyeightO.setImage(UIImage(named: "Flag.png"), for: .normal)
        }
        if (UserDefaults.standard.object(forKey: "flagSaved") as? Int) == 29 {
            LVTwentynineO.setImage(UIImage(named: "Flag.png"), for: .normal)
        }
        if (UserDefaults.standard.object(forKey: "flagSaved") as? Int) == 30 {
            LVThirtyO.setImage(UIImage(named: "Flag.png"), for: .normal)
        }

        
        
        
        if (UserDefaults.standard.object(forKey: "LV1Saved") as? Int) == 1 {
            LVOneO.setImage(UIImage(named: "ButtonDone.png"), for: .normal)
            LVTwoO.setImage(UIImage(named: "Flag.png"), for: .normal)
        } else {
            LVOneO.setImage(UIImage(named: "Flag.png"), for: .normal)
        }
        
        if (UserDefaults.standard.object(forKey: "LV2Saved") as? Int) == 1 {
            LVTwoO.setImage(UIImage(named: "ButtonDone (1).png"), for: .normal)
            LVThreeO.setImage(UIImage(named: "Flag.png"), for: .normal)

        } else {
            //LVTwoO.setImage(UIImage(named: "ButtonClicked (5).png"), for: .normal)
        }
        if (UserDefaults.standard.object(forKey: "LV3Saved") as? Int) == 1 {
            LVThreeO.setImage(UIImage(named: "ButtonDone (2).png"), for: .normal)
            LVFourO.setImage(UIImage(named: "Flag.png"), for: .normal)

        } else {
            //LVThreeO.setImage(UIImage(named: "ButtonClicked (6).png"), for: .normal)
        }
        if (UserDefaults.standard.object(forKey: "LV4Saved") as? Int) == 1 {
            LVFourO.setImage(UIImage(named: "ButtonDone (3).png"), for: .normal)
            LVFiveO.setImage(UIImage(named: "Flag.png"), for: .normal)

        } else {
            //LVFourO.setImage(UIImage(named: "ButtonClicked (7).png"), for: .normal)
        }
        
        if (UserDefaults.standard.object(forKey: "LV5Saved") as? Int) == 1 {
            LVFiveO.setImage(UIImage(named: "ButtonDone (4).png"), for: .normal)
            LVSixO.setImage(UIImage(named: "Flag.png"), for: .normal)

        } else {
            //LVFiveO.setImage(UIImage(named: "ButtonClicked (8).png"), for: .normal)
        }
        
        if (UserDefaults.standard.object(forKey: "LV6Saved") as? Int) == 1 {
            LVSixO.setImage(UIImage(named: "ButtonDone (5).png"), for: .normal)
            LVSevenO.setImage(UIImage(named: "Flag.png"), for: .normal)

        } else {
            //LVSixO.setImage(UIImage(named: "ButtonClicked (9).png"), for: .normal)
        }
        if (UserDefaults.standard.object(forKey: "LV7Saved") as? Int) == 1 {
            LVSevenO.setImage(UIImage(named: "ButtonDone (7).png"), for: .normal)
            LVEightO.setImage(UIImage(named: "Flag.png"), for: .normal)

        } else {
            //LVSevenO.setImage(UIImage(named: "ButtonClicked (10).png"), for: .normal)
        }
        if (UserDefaults.standard.object(forKey: "LV8Saved") as? Int) == 1 {
            LVEightO.setImage(UIImage(named: "ButtonDone (8).png"), for: .normal)
            LVNineO.setImage(UIImage(named: "Flag.png"), for: .normal)

        } else {
           //LVEightO.setImage(UIImage(named: "ButtonClicked (11).png"), for: .normal)
        }
        if (UserDefaults.standard.object(forKey: "LV9Saved") as? Int) == 1 {
            LVNineO.setImage(UIImage(named: "ButtonDone (9).png"), for: .normal)
            LVTenO.setImage(UIImage(named: "Flag.png"), for: .normal)

        } else {
            //LVNineO.setImage(UIImage(named: "ButtonClicked (12).png"), for: .normal)
        }
        if (UserDefaults.standard.object(forKey: "LV10Saved") as? Int) == 1 {
            LVTenO.setImage(UIImage(named: "ButtonDone (10).png"), for: .normal)
            LVElevenO.setImage(UIImage(named: "Flag.png"), for: .normal)

        } else {
            //LVTenO.setImage(UIImage(named: "ButtonClicked (13).png"), for: .normal)
        }
        if (UserDefaults.standard.object(forKey: "LV11Saved") as? Int) == 1 {
            LVElevenO.setImage(UIImage(named: "ButtonDone (11).png"), for: .normal)
            LVTweleveO.setImage(UIImage(named: "Flag.png"), for: .normal)

        } else {
            //LVElevenO.setImage(UIImage(named: "ButtonClicked (14).png"), for: .normal)
        }
        if (UserDefaults.standard.object(forKey: "LV12Saved") as? Int) == 1 {
            LVTweleveO.setImage(UIImage(named: "ButtonDone (12).png"), for: .normal)
            LVThirteenO.setImage(UIImage(named: "Flag.png"), for: .normal)

        } else {
            //LVTweleveO.setImage(UIImage(named: "ButtonClicked (15).png"), for: .normal)
        }
        if (UserDefaults.standard.object(forKey: "LV13Saved") as? Int) == 1 {
            LVThirteenO.setImage(UIImage(named: "ButtonDone (13).png"), for: .normal)
            LVFourteenO.setImage(UIImage(named: "Flag.png"), for: .normal)

        } else {
            //LVThirteenO.setImage(UIImage(named: "ButtonClicked (16).png"), for: .normal)
        }
        if (UserDefaults.standard.object(forKey: "LV14Saved") as? Int) == 1 {
            LVFourteenO.setImage(UIImage(named: "ButtonDone (14).png"), for: .normal)
            LVFifteenO.setImage(UIImage(named: "Flag.png"), for: .normal)

        } else {
            //LVFourteenO.setImage(UIImage(named: "ButtonClicked (17).png"), for: .normal)
        }
        if (UserDefaults.standard.object(forKey: "LV15Saved") as? Int) == 1 {
            LVFifteenO.setImage(UIImage(named: "ButtonDone (15).png"), for: .normal)
            LVSixteenO.setImage(UIImage(named: "Flag.png"), for: .normal)

        } else {
            //LVFifteenO.setImage(UIImage(named: "ButtonClicked (18).png"), for: .normal)
        }
        if (UserDefaults.standard.object(forKey: "LV16Saved") as? Int) == 1 {
            LVSixteenO.setImage(UIImage(named: "ButtonDone (16).png"), for: .normal)
            LVSeventeenO.setImage(UIImage(named: "Flag.png"), for: .normal)

        } else {
            //LVSixteenO.setImage(UIImage(named: "ButtonClicked (19).png"), for: .normal)
        }
        if (UserDefaults.standard.object(forKey: "LV17Saved") as? Int) == 1 {
            LVSeventeenO.setImage(UIImage(named: "ButtonDone (17).png"), for: .normal)
            LVEighteenO.setImage(UIImage(named: "Flag.png"), for: .normal)

        } else {
            //LVSeventeenO.setImage(UIImage(named: "ButtonClicked (20).png"), for: .normal)
        }
        if (UserDefaults.standard.object(forKey: "LV18Saved") as? Int) == 1 {
            LVEighteenO.setImage(UIImage(named: "ButtonDone (18).png"), for: .normal)
            LVNineteenO.setImage(UIImage(named: "Flag.png"), for: .normal)

        } else {
            //LVEighteenO.setImage(UIImage(named: "ButtonClicked (21).png"), for: .normal)
        }
        if (UserDefaults.standard.object(forKey: "LV19Saved") as? Int) == 1 {
            LVNineteenO.setImage(UIImage(named: "ButtonDone (19).png"), for: .normal)
            LVTwentyO.setImage(UIImage(named: "Flag.png"), for: .normal)

        } else {
            //LVNineteenO.setImage(UIImage(named: "ButtonClicked (22).png"), for: .normal)
        }
        if (UserDefaults.standard.object(forKey: "LV20Saved") as? Int) == 1 {
            LVTwentyO.setImage(UIImage(named: "ButtonDone (20).png"), for: .normal)
            LVTwentyoneO.setImage(UIImage(named: "Flag.png"), for: .normal)

        } else {
            //LVTwentyO.setImage(UIImage(named: "ButtonClicked (23).png"), for: .normal)
        }
        if (UserDefaults.standard.object(forKey: "LV21Saved") as? Int) == 1 {
            LVTwentyoneO.setImage(UIImage(named: "ButtonDone (21).png"), for: .normal)
            LVTwentytwoO.setImage(UIImage(named: "Flag.png"), for: .normal)

        } else {
            //LVTwentyoneO.setImage(UIImage(named: "ButtonClicked (24).png"), for: .normal)
        }
        if (UserDefaults.standard.object(forKey: "LV22Saved") as? Int) == 1 {
            LVTwentytwoO.setImage(UIImage(named: "ButtonDone (22).png"), for: .normal)
            LVTwentythreeO.setImage(UIImage(named: "Flag.png"), for: .normal)

        } else {
            //LVTwentytwoO.setImage(UIImage(named: "ButtonClicked (25).png"), for: .normal)
        }
        if (UserDefaults.standard.object(forKey: "LV23Saved") as? Int) == 1 {
            LVTwentythreeO.setImage(UIImage(named: "ButtonDone (23).png"), for: .normal)
            LVTwentyfourO.setImage(UIImage(named: "Flag.png"), for: .normal)

        } else {
            //LVTwentythreeO.setImage(UIImage(named: "ButtonClicked (27).png"), for: .normal)
        }
        if (UserDefaults.standard.object(forKey: "LV24Saved") as? Int) == 1 {
            LVTwentyfourO.setImage(UIImage(named: "ButtonDone (24).png"), for: .normal)
            LVTwentyfiveO.setImage(UIImage(named: "Flag.png"), for: .normal)

        } else {
            //LVTwentyfourO.setImage(UIImage(named: "ButtonClicked (28).png"), for: .normal)
        }
        if (UserDefaults.standard.object(forKey: "LV25Saved") as? Int) == 1 {
            LVTwentyfiveO.setImage(UIImage(named: "ButtonDone (25).png"), for: .normal)
            LVTwentysixO.setImage(UIImage(named: "Flag.png"), for: .normal)

        } else {
            //LVTwentyfiveO.setImage(UIImage(named: "ButtonClicked (26).png"), for: .normal)
        }
        if (UserDefaults.standard.object(forKey: "LV26Saved") as? Int) == 1 {
            LVTwentysixO.setImage(UIImage(named: "ButtonDone (26).png"), for: .normal)
            LVTwentysevenO.setImage(UIImage(named: "Flag.png"), for: .normal)

        } else {
            //LVTwentysixO.setImage(UIImage(named: "ButtonClicked (29).png"), for: .normal)
        }
        if (UserDefaults.standard.object(forKey: "LV27Saved") as? Int) == 1 {
            LVTwentysevenO.setImage(UIImage(named: "ButtonDone (27).png"), for: .normal)
            LVTwentyeightO.setImage(UIImage(named: "Flag.png"), for: .normal)

        } else {
            //LVTwentysevenO.setImage(UIImage(named: "ButtonClicked (30).png"), for: .normal)
        }
        if (UserDefaults.standard.object(forKey: "LV28Saved") as? Int) == 1 {
            LVTwentyeightO.setImage(UIImage(named: "ButtonDone (28).png"), for: .normal)
            LVTwentynineO.setImage(UIImage(named: "Flag.png"), for: .normal)

        } else {
            //LVTwentyeightO.setImage(UIImage(named: "ButtonClicked (31).png"), for: .normal)
        }
        if (UserDefaults.standard.object(forKey: "LV29Saved") as? Int) == 1 {
            LVTwentynineO.setImage(UIImage(named: "ButtonDone (29).png"), for: .normal)
            LVThirtyO.setImage(UIImage(named: "Flag.png"), for: .normal)

        } else {
            //LVTwentynineO.setImage(UIImage(named: "ButtonClicked (33).png"), for: .normal)
        }
        if (UserDefaults.standard.object(forKey: "LV30Saved") as? Int) == 1 {
            LVThirtyO.setImage(UIImage(named: "ButtonDone (30).png"), for: .normal)
        } else {
            //LVThirtyO.setImage(UIImage(named: "ButtonClicked (34).png"), for: .normal)
        }
        
    }

    private func handleNotAuthenticated() {
        if Auth.auth().currentUser == nil {
            let gc = storyboard?.instantiateViewController(identifier: "Main") as! ViewController
            gc.modalPresentationStyle = .fullScreen
            present(gc,animated: true)
        }
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

extension String {
    func makeFirebaseString()->String{
        let arrCharacterToReplace = [".","#","$","[","]"]
        var finalString = self

        for character in arrCharacterToReplace{
            finalString = finalString.replacingOccurrences(of: character, with: " ")
        }

        return finalString
    }
}
