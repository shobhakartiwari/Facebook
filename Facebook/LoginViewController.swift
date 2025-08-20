//
//  ViewController.swift
//  Facebook
//
//  Created by Shobhakar Tiwari on 8/12/25.
//

import UIKit

class LoginViewController: UIViewController {
    var userNameTextField: UITextField!
    var passwordTextField: UITextField!
    var loginButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    func setupUI() {
        
        // Username textfield
        userNameTextField = UITextField()
        userNameTextField.placeholder = "Enter Username"
        userNameTextField.textAlignment = .center
        userNameTextField.borderStyle = .roundedRect
        userNameTextField.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(userNameTextField)
        
        //Password textfiled
        passwordTextField = UITextField()
        passwordTextField.placeholder = "Enter Password"
        passwordTextField.textAlignment = .center
        passwordTextField.borderStyle = .roundedRect
        passwordTextField.isSecureTextEntry = true
        passwordTextField.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(passwordTextField)
        
        // create the button
        loginButton = UIButton(type: .system)
        // title
        loginButton.setTitle("Login", for: .normal)
        // background color
        loginButton.backgroundColor = .systemBlue
        // textcolor
        loginButton.setTitleColor(UIColor.white, for: .normal)
        loginButton.translatesAutoresizingMaskIntoConstraints = false
        
        //add the tap action
        loginButton.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
        
        // add button to the view
        view.addSubview(loginButton)
        
        // set constraints (center in the view)
        NSLayoutConstraint.activate([
            
            // username textfield constraint
            userNameTextField.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            userNameTextField.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -60), // x is positive --->> downward , -ve --->>> upward
            userNameTextField.widthAnchor.constraint(equalToConstant: 250),
            userNameTextField.heightAnchor.constraint(equalToConstant: 40),
            
            //password textfield constraint
            passwordTextField.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            passwordTextField.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 20),
            passwordTextField.widthAnchor.constraint(equalTo: userNameTextField.widthAnchor),
            passwordTextField.heightAnchor.constraint(equalToConstant: 40),
            
            // Login button constraint added
            loginButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            loginButton.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: 30),

            loginButton.widthAnchor.constraint(equalToConstant: 250),
            loginButton.heightAnchor.constraint(equalToConstant: 40)
        ])
            
    }
    
    // Button tap action
    @objc func buttonTapped() {
        
        print("Login Button Tapped!!, username: \(userNameTextField.text ?? "No username")")
    }
}
