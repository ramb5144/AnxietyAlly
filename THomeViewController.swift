//
//  THomeViewController.swift
//  ERP
//
//  Created by Rishi Ambavanekar on 6/30/21.
//

import UIKit
import FirebaseAuth
import Firebase
import FirebaseDatabase
import MessageUI
import Messages
import JSQMessagesViewController
import UserNotificationsUI
import UserNotifications

class THomeViewController: UIViewController {
    @IBOutlet weak var Name: UILabel!
    
    @IBOutlet weak var LevelO: UILabel!
    @IBAction func Help(_ sender: Any) {
        let mc = self.storyboard?.instantiateViewController(identifier: "TVVC") as! TViewsViewController
        mc.modalPresentationStyle = .fullScreen
        present(mc,animated: true)
    }
    @IBOutlet weak var NameTwo: UILabel!
    @IBOutlet weak var LevelTwoO: UILabel!
    @IBOutlet weak var NameThree: UILabel!
    @IBOutlet weak var LevelThreeO: UILabel!
    @IBAction func Update(_ sender: Any) {
        let OneKey = UserDefaults.standard.object(forKey: "OneKey") as? Int
        let TwoKey = UserDefaults.standard.object(forKey: "TwoKey") as? Int
        let ThreeKey = UserDefaults.standard.object(forKey: "ThreeKey") as? Int
        if TwoKey == 0 {
            NameTwo.isHidden = true
            LevelTwoO.isHidden = true
        } else if TwoKey == 1 {
            NameTwo.isHidden = false
            LevelTwoO.isHidden = false
        }
        if ThreeKey == 0 {
            NameThree.isHidden = true
            LevelThreeO.isHidden = true
        } else if ThreeKey == 1 {
            NameThree.isHidden = false
            LevelThreeO.isHidden = false
        }
        Name.text = String("Name: \(UserDefaults.standard.object(forKey: "Student1") as? String ?? "None")")
        NameTwo.text = String("Name: \(UserDefaults.standard.object(forKey: "Student2") as? String ?? "None")")
        NameThree.text = String("Name: \(UserDefaults.standard.object(forKey: "Student3") as? String ?? "None")")
        let usernameGet = UserDefaults.standard.object(forKey: "Student1") as? String ?? "Unknown User"

        if usernameGet != nil && ((usernameGet.contains(".")) != true) && ((usernameGet.contains("#")) == false) && ((usernameGet.contains("$")) == false) && ((usernameGet.contains("[")) == false) && ((usernameGet.contains("]")) == false) {
        
        ref = Database.database().reference()
        
        
            databaseHandle = ref?.child(usernameGet).child("Score").observe(.childAdded, with: { (snapshot) in
            let post = snapshot.value as? Int
            self.LevelO.text = String(Int(post ?? 100))
            print(post)
            if let actualPost = post {
                self.postData.append(String(actualPost))
                
                self.LevelO.reloadInputViews()
                print(actualPost)
                
                self.LevelO.text = String("Level: \(Int(post ?? 100))")

            }
        })
        }
        
        if UserDefaults.standard.object(forKey: "Student1") as? String != nil {
        if UserDefaults.standard.object(forKey: "Student2") as? String != nil {
            let usernameGetTwo = UserDefaults.standard.object(forKey: "Student2") as? String ?? "Unknown User"
        
        
        if usernameGetTwo != nil && ((usernameGetTwo.contains(".")) != true) && ((usernameGetTwo.contains("#")) == false) && ((usernameGetTwo.contains("$")) == false) && ((usernameGetTwo.contains("[")) == false) && ((usernameGetTwo.contains("]")) == false) {
        
        ref = Database.database().reference()
        
        
            databaseHandle = ref?.child(usernameGetTwo ?? "Unknown User").child("Score").observe(.childAdded, with: { (snapshot) in
            let post = snapshot.value as? Int
            self.LevelTwoO.text = String(Int(post ?? 100))
            print(post)
            if let actualPost = post {
                self.postData.append(String(actualPost))
                
                self.LevelTwoO.reloadInputViews()
                print(actualPost)
                
                self.LevelTwoO.text = String("Level: \(Int(post ?? 100))")

            }
        })
        }
        }
        
        
        if UserDefaults.standard.object(forKey: "Student2") as? String != nil {
        if UserDefaults.standard.object(forKey: "Student3") as? String != nil {
            let usernameGetThree = UserDefaults.standard.object(forKey: "Student3") as? String ?? "Unknown User"
        
            if usernameGetThree == "" {
                let usernameGetThree = String("Unknown User")
            }
        if usernameGetThree != nil && ((usernameGetThree.contains(".")) != true) && ((usernameGetThree.contains("#")) == false) && ((usernameGetThree.contains("$")) == false) && ((usernameGetThree.contains("[")) == false) && ((usernameGetThree.contains("]")) == false) {
            let usernameGetThree = UserDefaults.standard.object(forKey: "Student3") as? String ?? "Unknown User"
        ref = Database.database().reference()
        
        
            databaseHandle = ref?.child(usernameGetThree ?? "Unknown User").child("Score").observe(.childAdded, with: { (snapshot) in
            let post = snapshot.value as? Int
            self.LevelThreeO.text = String(Int(post ?? 100))
            print(post)
            if let actualPost = post {
                self.postData.append(String(actualPost))
                
                self.LevelThreeO.reloadInputViews()
                print(actualPost)
                
                self.LevelThreeO.text = String("Level: \(Int(post ?? 100))")

            }
        })
        }
        } else if UserDefaults.standard.object(forKey: "Student2") as? String == nil {
            print("Error")
        }
        }
        }
    }
    
    var ref: DatabaseReference?
    
    var postData = [String]()
    var databaseHandle: DatabaseHandle?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let OneKey = UserDefaults.standard.object(forKey: "OneKey") as? Int
        let TwoKey = UserDefaults.standard.object(forKey: "TwoKey") as? Int
        let ThreeKey = UserDefaults.standard.object(forKey: "ThreeKey") as? Int
        if TwoKey == 0 {
            NameTwo.isHidden = true
            LevelTwoO.isHidden = true
        } else if TwoKey == 1 {
            NameTwo.isHidden = false
            LevelTwoO.isHidden = false
        }
        if ThreeKey == 0 {
            NameThree.isHidden = true
            LevelThreeO.isHidden = true
        } else if ThreeKey == 1 {
            NameThree.isHidden = false
            LevelThreeO.isHidden = false
        }
        Name.text = String("Name: \(UserDefaults.standard.object(forKey: "Student1") as? String ?? "None")")
        NameTwo.text = String("Name: \(UserDefaults.standard.object(forKey: "Student2") as? String ?? "None")")
        NameThree.text = String("Name: \(UserDefaults.standard.object(forKey: "Student3") as? String ?? "None")")
        let usernameGet = UserDefaults.standard.object(forKey: "Student1") as? String ?? "Unknown User"

        if usernameGet != nil && ((usernameGet.contains(".")) != true) && ((usernameGet.contains("#")) == false) && ((usernameGet.contains("$")) == false) && ((usernameGet.contains("[")) == false) && ((usernameGet.contains("]")) == false) {
        
        ref = Database.database().reference()
        
        
            databaseHandle = ref?.child(usernameGet).child("Score").observe(.childAdded, with: { (snapshot) in
            let post = snapshot.value as? Int
            self.LevelO.text = String(Int(post ?? 100))
            print(post)
            if let actualPost = post {
                self.postData.append(String(actualPost))
                
                self.LevelO.reloadInputViews()
                print(actualPost)
                
                self.LevelO.text = String("Level: \(Int(post ?? 100))")

            }
        })
        }
        
        if UserDefaults.standard.object(forKey: "Student1") as? String != nil {
        if UserDefaults.standard.object(forKey: "Student2") as? String != nil {
            let usernameGetTwo = UserDefaults.standard.object(forKey: "Student2") as? String ?? "Unknown User"
        
        
        if usernameGetTwo != nil && ((usernameGetTwo.contains(".")) != true) && ((usernameGetTwo.contains("#")) == false) && ((usernameGetTwo.contains("$")) == false) && ((usernameGetTwo.contains("[")) == false) && ((usernameGetTwo.contains("]")) == false) {
        
        ref = Database.database().reference()
        
        
            databaseHandle = ref?.child(usernameGetTwo ?? "Unknown User").child("Score").observe(.childAdded, with: { (snapshot) in
            let post = snapshot.value as? Int
            self.LevelTwoO.text = String(Int(post ?? 100))
            print(post)
            if let actualPost = post {
                self.postData.append(String(actualPost))
                
                self.LevelTwoO.reloadInputViews()
                print(actualPost)
                
                self.LevelTwoO.text = String("Level: \(Int(post ?? 100))")

            }
        })
        }
        }
        
        
        if UserDefaults.standard.object(forKey: "Student2") as? String != nil {
        if UserDefaults.standard.object(forKey: "Student3") as? String != nil {
            let usernameGetThree = UserDefaults.standard.object(forKey: "Student3") as? String ?? "Unknown User"
        
            if usernameGetThree == "" {
                let usernameGetThree = String("Unknown User")
            }
        if usernameGetThree != nil && ((usernameGetThree.contains(".")) != true) && ((usernameGetThree.contains("#")) == false) && ((usernameGetThree.contains("$")) == false) && ((usernameGetThree.contains("[")) == false) && ((usernameGetThree.contains("]")) == false) {
            let usernameGetThree = UserDefaults.standard.object(forKey: "Student3") as? String ?? "Unknown User"
        ref = Database.database().reference()
        
        
            databaseHandle = ref?.child(usernameGetThree ?? "Unknown User").child("Score").observe(.childAdded, with: { (snapshot) in
            let post = snapshot.value as? Int
            self.LevelThreeO.text = String(Int(post ?? 100))
            print(post)
            if let actualPost = post {
                self.postData.append(String(actualPost))
                
                self.LevelThreeO.reloadInputViews()
                print(actualPost)
                
                self.LevelThreeO.text = String("Level: \(Int(post ?? 100))")

            }
        })
        }
        } else if UserDefaults.standard.object(forKey: "Student2") as? String == nil {
            print("Error")
        }
        }
        }
        /*Name.text = String("Name: \(UserDefaults.standard.object(forKey: "Student1") as? String ?? "Input User Using The Connect Tab!")")
        let usernameGet = UserDefaults.standard.object(forKey: "Student1") as? String ?? "Unknown User"

        if usernameGet != nil && ((usernameGet.contains(".")) != true) && ((usernameGet.contains("#")) == false) && ((usernameGet.contains("$")) == false) && ((usernameGet.contains("[")) == false) && ((usernameGet.contains("]")) == false) {
        
        ref = Database.database().reference()
        
        
            databaseHandle = ref?.child(usernameGet).child("Score").observe(.childAdded, with: { (snapshot) in
            let post = snapshot.value as? Int
            self.LevelO.text = String(Int(post ?? 100))
            print(post)
            if let actualPost = post {
                self.postData.append(String(actualPost))
                
                self.LevelO.reloadInputViews()
                print(actualPost)
                
                self.LevelO.text = String("Level: \(Int(post ?? 100))")

            }
        })
        }*/
        
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
