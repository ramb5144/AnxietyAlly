//
//  GroupViewController.swift
//  ERP
//
//  Created by Rishi Ambavanekar on 6/25/21.
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
import JGProgressHUD
import MessageKit
import InputBarAccessoryView

struct Message: MessageType {
    var sender: SenderType
    var messageId: String
    var sentDate: Date
    var kind: MessageKind
    
    
}

struct Sender: SenderType {
    var senderId: String
    var displayName: String
    
    
}

class GroupViewController: MessagesViewController, InputBarAccessoryViewDelegate/*, UITableViewDelegate, UITableViewDataSource*/ {
    var ref: DatabaseReference?
    
    @IBOutlet weak var TextGroup: UILabel!
    var postData = [String]()
    var databaseHandle: DatabaseHandle?
    public var isNewConversation = false
    @IBAction func Back(_ sender: Any) {
        let mc = storyboard?.instantiateViewController(identifier: "Tab") as! UITabBarController
        mc.modalPresentationStyle = .fullScreen
        present(mc,animated: true)
    }
    private var messages = [Message]()

    private var selfSender = Sender(senderId: "1", displayName: "Group")
    
    override func updateFocusIfNeeded() {
        let InputText = UserDefaults.standard.object(forKey: "groupText") as? String
        messages.append(Message(sender: selfSender, messageId: "1", sentDate: Date(), kind: .text(InputText ?? "Error")))
    }
    
    override func viewWillAppear(_ animated: Bool) {
        let InputText = UserDefaults.standard.object(forKey: "groupText") as? String
        messages.append(Message(sender: selfSender, messageId: "1", sentDate: Date(), kind: .text(InputText ?? "Error")))
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .compose, target: self, action: #selector(didTapComposeButton))
        let username = UserDefaults.standard.object(forKey: "UsernameSaved")
        ref = Database.database().reference()
        
        
            databaseHandle = ref?.child("Group").observe(.childAdded, with: { (snapshot) in
            let post = snapshot.value as? String
            self.TextGroup.text = post
            print(post)
            if let actualPost = post {
                self.postData.append(String(actualPost))
                
                self.TextGroup.reloadInputViews()
                print(actualPost)
                
                self.TextGroup.text = post

            }
        })

        DispatchQueue.main.async {
            self.messagesCollectionView.reloadData()
            self.messagesCollectionView.reloadDataAndKeepOffset()

        }
        
        
        messagesCollectionView.messagesDataSource = self
        messagesCollectionView.messagesLayoutDelegate = self
        messagesCollectionView.messagesDisplayDelegate = self
        messageInputBar.delegate = self
        
        //PostText.text = UserDefaults.standard.object(forKey: "textInput") as? String
        //tableView.delegate = self
        //tableView.dataSource = self
        let toolBar = UIToolbar()
        toolBar.sizeToFit()
        let doneButton = UIBarButtonItem(barButtonSystemItem: UIBarButtonItem.SystemItem.done, target: self, action: #selector(self.doneClicked))
        
        toolBar.setItems([doneButton], animated: false)
        //loadView()

    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidAppear(animated)
        messageInputBar.inputTextView.becomeFirstResponder()

    }
    
    @objc private func didTapComposeButton() {
        let vc = EnterGroupViewController()
        let navVC = UINavigationController(rootViewController: vc)
        present(navVC, animated: true)
        
    }
    /*override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        tableView.frame = view.bounds
    }*/
    
    @objc func doneClicked() {
        view.endEditing(true)
    }
    
    func inputBar(_ inputBar: InputBarAccessoryView, didPressSendButtonWith text: String) {
        guard !text.replacingOccurrences(of: " ", with: "").isEmpty else {
            return
        }
        let username = UserDefaults.standard.object(forKey: "UsernameSaved")
        let ref = Database.database().reference().child("Group")
        ref.setValue(["username \(username)": text])
        print("Sending: \(text)")
        UserDefaults.standard.set(text, forKey: "groupText")
        //let InputText = UserDefaults.standard.object(forKey: "groupText") as? String
        messages.append(Message(sender: selfSender, messageId: "1", sentDate: Date(), kind: .text(text)))
        
        DispatchQueue.main.async {
            self.messagesCollectionView.reloadData()
            self.messagesCollectionView.reloadDataAndKeepOffset()

        }        //messages.append(Message(sender: selfSender, messageId: "2", sentDate: Date(), kind: .text("HelloWorld")))
        if isNewConversation {
            
        } else {
            
        }
        
    }
    

}

extension GroupViewController: MessagesDataSource, MessagesLayoutDelegate, MessagesDisplayDelegate {
    func currentSender() -> SenderType {
        return selfSender
    }
    
    func messageForItem(at indexPath: IndexPath, in messagesCollectionView: MessagesCollectionView) -> MessageType {
        return messages[indexPath.section]
    }
    
    func numberOfSections(in messagesCollectionView: MessagesCollectionView) -> Int {
        return messages.count
    }
}
