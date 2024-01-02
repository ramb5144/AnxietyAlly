//
//  HomeworkViewController.swift
//  ERP
//
//  Created by Rishi Ambavanekar on 7/3/21.
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

class HomeworkViewController: UIViewController {
    var ref: DatabaseReference?
    @IBAction func Help(_ sender: Any) {
        let mc = self.storyboard?.instantiateViewController(identifier: "VVC") as! ViewsViewController
        mc.modalPresentationStyle = .fullScreen
        present(mc,animated: true)
    }
    @IBOutlet weak var one: UILabel!
    @IBOutlet weak var two: UILabel!
    @IBOutlet weak var three: UILabel!
    @IBOutlet weak var four: UILabel!
    @IBOutlet weak var five: UILabel!
    @IBOutlet weak var Stack1: UIStackView!
    @IBOutlet weak var Stack2: UIStackView!
    @IBOutlet weak var Stack3: UIStackView!
    @IBOutlet weak var Stack4: UIStackView!
    @IBOutlet weak var Stack5: UIStackView!
    @IBOutlet weak var HomeworkOne: UILabel!
    @IBOutlet weak var HomeworkTwo: UILabel!
    @IBOutlet weak var HomeworkThree: UILabel!
    @IBOutlet weak var Homework: UILabel!
    @IBOutlet weak var HomeworkFive: UILabel!
    @IBAction func Updateit(_ sender: Any) {
        if HomeworkOne.text == "" {
            one.isHidden = true
            Stack1.isHidden = true

        }
        if HomeworkTwo.text == "" {
            two.isHidden = true
            Stack2.isHidden = true
        }
        if HomeworkThree.text == "" {
            three.isHidden = true
            Stack3.isHidden = true

        }
        if Homework.text == "" {
            four.isHidden = true
            Stack4.isHidden = true

        }
        if HomeworkFive.text == "" {
            five.isHidden = true
            Stack5.isHidden = true

        }
        let username = UserDefaults.standard.object(forKey: "UsernameSaved") as? String ?? "Unknown User"
        
        ref = Database.database().reference()
    
    
        databaseHandle = ref?.child("Homework").child(username).child("one").observe(.childAdded, with: { (snapshot) in
        let post = snapshot.value as? String
        self.HomeworkOne.text = post
        print(post)
        if let actualPost = post {
            self.postData.append(String(actualPost))
            
            self.HomeworkOne.reloadInputViews()
            print(actualPost)
            
            self.HomeworkOne.text = post

        }
    })
        
        databaseHandle = ref?.child("Homework").child(username).child("two").observe(.childAdded, with: { (snapshot) in
        let post = snapshot.value as? String
        self.HomeworkTwo.text = post
        print(post)
        if let actualPost = post {
            self.postData.append(String(actualPost))
            
            self.HomeworkTwo.reloadInputViews()
            print(actualPost)
            
            self.HomeworkTwo.text = post

        }
    })
        
        
        databaseHandle = ref?.child("Homework").child(username).child("three").observe(.childAdded, with: { (snapshot) in
        let post = snapshot.value as? String
        self.HomeworkThree.text = post
        print(post)
        if let actualPost = post {
            self.postData.append(String(actualPost))
            
            self.HomeworkThree.reloadInputViews()
            print(actualPost)
            
            self.HomeworkThree.text = post

        }
    })
        
        databaseHandle = ref?.child("Homework").child(username).child("four").observe(.childAdded, with: { (snapshot) in
        let post = snapshot.value as? String
        self.Homework.text = post
        print(post)
        if let actualPost = post {
            self.postData.append(String(actualPost))
            
            self.Homework.reloadInputViews()
            print(actualPost)
            
            self.Homework.text = post

        }
    })
        
        databaseHandle = ref?.child("Homework").child(username).child("five").observe(.childAdded, with: { (snapshot) in
        let post = snapshot.value as? String
        self.HomeworkFive.text = post
        print(post)
        if let actualPost = post {
            self.postData.append(String(actualPost))
            
            self.HomeworkFive.reloadInputViews()
            print(actualPost)
            
            self.HomeworkFive.text = post

        }
    })
    }
    var postData = [String]()
    var databaseHandle: DatabaseHandle?
    override func viewDidLoad() {
        super.viewDidLoad()

        let username = UserDefaults.standard.object(forKey: "UsernameSaved") as? String ?? "Unknown User"
        /*if HomeworkOne.text == "" {
            one.isHidden = true
            Stack1.isHidden = true

        }
        if HomeworkTwo.text == "" {
            two.isHidden = true
            Stack2.isHidden = true
        }
        if HomeworkThree.text == "" {
            three.isHidden = true
            Stack3.isHidden = true

        }
        if Homework.text == "" {
            four.isHidden = true
            Stack4.isHidden = true

        }
        if HomeworkFive.text == "" {
            five.isHidden = true
            Stack5.isHidden = true

        }*/
        ref = Database.database().reference()
    
    
        databaseHandle = ref?.child("Homework").child(username).child("one").observe(.childAdded, with: { (snapshot) in
        let post = snapshot.value as? String
        self.HomeworkOne.text = post
        print(post)
        if let actualPost = post {
            self.postData.append(String(actualPost))
            
            self.HomeworkOne.reloadInputViews()
            print(actualPost)
            
            self.HomeworkOne.text = post

        }
    })
        
        databaseHandle = ref?.child("Homework").child(username).child("two").observe(.childAdded, with: { (snapshot) in
        let post = snapshot.value as? String
        self.HomeworkTwo.text = post
        print(post)
        if let actualPost = post {
            self.postData.append(String(actualPost))
            
            self.HomeworkTwo.reloadInputViews()
            print(actualPost)
            
            self.HomeworkTwo.text = post

        }
    })
        
        
        databaseHandle = ref?.child("Homework").child(username).child("three").observe(.childAdded, with: { (snapshot) in
        let post = snapshot.value as? String
        self.HomeworkThree.text = post
        print(post)
        if let actualPost = post {
            self.postData.append(String(actualPost))
            
            self.HomeworkThree.reloadInputViews()
            print(actualPost)
            
            self.HomeworkThree.text = post

        }
    })
        
        databaseHandle = ref?.child("Homework").child(username).child("four").observe(.childAdded, with: { (snapshot) in
        let post = snapshot.value as? String
        self.Homework.text = post
        print(post)
        if let actualPost = post {
            self.postData.append(String(actualPost))
            
            self.Homework.reloadInputViews()
            print(actualPost)
            
            self.Homework.text = post

        }
    })
        
        databaseHandle = ref?.child("Homework").child(username).child("five").observe(.childAdded, with: { (snapshot) in
        let post = snapshot.value as? String
        self.HomeworkFive.text = post
        print(post)
        if let actualPost = post {
            self.postData.append(String(actualPost))
            
            self.HomeworkFive.reloadInputViews()
            print(actualPost)
            
            self.HomeworkFive.text = post

        }
    })
        
        
        
        
        
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
