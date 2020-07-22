//
//  ViewController.swift
//  JG Programming
//
//  Created by Xchel Alonso Carranza De La O on 15/07/20.
//  Copyright © 2020 Xchel Alonso Carranza De La O. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    private let ADMIN_CODE:String = "AdminVC"
    private let TRAINING_CODE:String = "TrainingVC"
    private var segueLoginCode:String = ""
    
    @IBOutlet weak var preLoginView: UIView!
    @IBOutlet weak var loginView: UIView!
    @IBOutlet weak var userNameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var preLoginItem: UIBarButtonItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        preLogin()
        
    }

    @IBAction func preLoginButton(_ sender: UIButton) {
        login()
    }
    @IBAction func getAccountButton(_ sender: UIButton) {
        sendMessageWA()
    }
    @IBAction func loginButton(_ sender: UIButton) {
        if(userNameTextField.text == "jg"){
            segueLoginCode = ADMIN_CODE
        }else{
            segueLoginCode = TRAINING_CODE
        }
        performSegue(withIdentifier: segueLoginCode, sender: self)
    }
    @IBAction func preLoginBarButton(_ sender: UIBarButtonItem) {
        preLogin()
    }
    
    
    
    @IBAction func userNameTextAction(_ sender: UITextField) {
        self.resignFirstResponder()
    }
    @IBAction func passwordTextAction(_ sender: UITextField) {
        self.resignFirstResponder()
    }
    
    private func sendMessageWA(){
        let messageError:String = "You can't send a message.\nCheck if you have installed WhatsApp"
        let message:String = "Buen día. Quiero solicitar una membresía de JG-Programming"
        let phone:String = "+5219992920229"//+5219991647158
        let urlWhats = "whatsapp://send?phone=\(phone)&text=\(message)"
        var characterSet = CharacterSet.urlQueryAllowed
        characterSet.insert(charactersIn: "?&")
        if let url = urlWhats.addingPercentEncoding(withAllowedCharacters: characterSet){
            if let url = NSURL(string: url){
                if UIApplication.shared.canOpenURL(url as URL){
                    UIApplication.shared.open(url as URL)
                }else{
                    let errorAlert = UIAlertController(title: "Sorry", message: messageError, preferredStyle: .alert)
                    errorAlert.addAction(UIAlertAction(title: "😕", style: .default, handler: nil))
                    self.present(errorAlert, animated: true, completion: nil)
                }
            }
        }
    }
    
    private func preLogin(){
        loginView.isHidden = true
        preLoginItem.title = ""
        preLoginItem.isEnabled = false
        preLoginView.isHidden = false
    }
    private func login(){
        preLoginView.isHidden = true
        loginView.isHidden = false
        preLoginItem.title = "Main"
        preLoginItem.isEnabled = true
    }
}

