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
        //saved
        //saved
    }

    @IBAction func preLoginButton(_ sender: UIButton) {
        login()
    }
    @IBAction func getAccountButton(_ sender: UIButton) {
        
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

